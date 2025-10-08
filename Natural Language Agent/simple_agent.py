"""Simple agent with MCP tools integration - Tool-calling loop architecture"""
import logging
from typing import TypedDict, Dict, Any, Optional, List
from langgraph.graph import StateGraph, END
from langgraph.prebuilt import ToolNode
from langchain_core.messages import BaseMessage, HumanMessage, SystemMessage, AIMessage
from llm_manager import get_llm
from config import settings
import redis
from langfuse import Langfuse
from langfuse.langchain import CallbackHandler
from prompts.simple_agent import (
    SIMPLE_AGENT_SYSTEM_PROMPT,
    USER_PROMPT_TEMPLATE
)

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

# Initialize Langfuse client once at module level if enabled
langfuse_client = None
if settings.langfuse_enabled and settings.langfuse_public_key and settings.langfuse_secret_key:
    try:
        langfuse_client = Langfuse(
            public_key=settings.langfuse_public_key,
            secret_key=settings.langfuse_secret_key,
            host=settings.langfuse_host
        )
        logger.info("Langfuse client initialized successfully")
    except Exception as e:
        logger.warning(f"Could not initialize Langfuse client: {e}")
        langfuse_client = None


class SimpleAgentState(TypedDict):
    """Minimal state for agent with tool-calling loop"""
    chat_history: str
    messages: List[BaseMessage]
    iteration: int
    # Streaming context fields
    correlation_id: Optional[str]
    user_id: Optional[str]
    thread_id: Optional[str]
    redis_client: Optional[Any]
    step_counter: int


async def agent_node(state: SimpleAgentState) -> Dict[str, Any]:
    """
    Simple agent node that:
    1. Takes messages
    2. Decides to call tools or respond
    3. Returns updated messages
    """
    from agent_tools import get_all_tools
    from helpers.redis_helper import publish_intermediate_step, create_message
    
    llm = get_llm()
    
    # Get streaming context
    correlation_id = state.get('correlation_id')
    user_id = state.get('user_id')
    thread_id = state.get('thread_id')
    redis_client = state.get('redis_client')
    step_counter = state.get('step_counter', 0)
    
    # Get all available tools (MCP + Neo4j)
    try:
        tools = await get_all_tools()
        logger.info(f"Agent has access to {len(tools)} tools")
        
        # Critical: Verify we have at least the essential tools
        if not tools or len(tools) == 0:
            error_msg = "Critical error: Unable to load any tools. Cannot process queries without database access."
            logger.error(error_msg)
            
            # Publish error step if we have streaming context
            if correlation_id and redis_client:
                message = create_message(
                    message_type="step",
                    status="error",
                    title="System Error",
                    description="Unable to access database tools. Please contact support.",
                    content=None
                )
                
                await publish_intermediate_step(
                    redis_client=redis_client,
                    correlation_id=correlation_id,
                    user_id=user_id,
                    thread_id=thread_id,
                    message=message
                )
                step_counter += 1
            
            # Return error message instead of proceeding
            return {
                "messages": [AIMessage(content=error_msg)],
                "iteration": state['iteration'] + 1,
                "step_counter": step_counter
            }
            
    except Exception as e:
        logger.error(f"Failed to get tools: {e}")
        error_msg = f"Failed to initialize agent tools: {str(e)}. Cannot process queries without database access."
        
        # Publish error step if we have streaming context
        if correlation_id and redis_client:
            message = create_message(
                message_type="step",
                status="error",
                title="Tool Initialization Failed",
                description="Unable to initialize required tools. Please check system configuration.",
                content=None
            )
            
            await publish_intermediate_step(
                redis_client=redis_client,
                correlation_id=correlation_id,
                user_id=user_id,
                thread_id=thread_id,
                message=message
            )
            step_counter += 1
        
        # Return error instead of continuing without tools
        return {
            "messages": [AIMessage(content=error_msg)],
            "iteration": state['iteration'] + 1,
            "step_counter": step_counter
        }
    
    # Bind tools to LLM
    llm_with_tools = llm.bind_tools(tools) if tools else llm
    
    # Get chat history from state (needed for all iterations)
    chat_history = state.get('chat_history', '')
    
    # On first iteration, set up the conversation
    if state['iteration'] == 0:
        system_msg = SystemMessage(content=SIMPLE_AGENT_SYSTEM_PROMPT)
        
        # Create user message from chat history
        if chat_history:
            # Use the prompt template for formatting
            user_content = USER_PROMPT_TEMPLATE.format(chat_history=chat_history)
            user_msg = HumanMessage(content=user_content)
        else:
            user_msg = HumanMessage(content="No conversation history provided.")
        
        messages = [system_msg, user_msg]
        logger.info("First iteration: Setting up conversation context")
    else:
        messages = state['messages']
        logger.info(f"Iteration {state['iteration']}: Continuing with {len(messages)} messages")
    
    # Publish thinking step if we have streaming context
    if correlation_id and redis_client:
        # Extract the user's actual query from chat history
        user_query = ""
        if chat_history:
            lines = chat_history.split('\n')
            # Get the last user message
            for line in reversed(lines):
                if line.startswith('Human:'):
                    user_query = line.replace('Human:', '').strip()
                    break
        
        message = create_message(
            message_type="step",
            status="thinking",
            title="Analyzing your question",
            description=user_query[:150] if user_query else "Processing your request",
            content=None
        )
        
        await publish_intermediate_step(
            redis_client=redis_client,
            correlation_id=correlation_id,
            user_id=user_id,
            thread_id=thread_id,
            message=message
        )
        step_counter += 1
    
    # Get LLM response
    try:
        response = await llm_with_tools.ainvoke(messages)
        messages.append(response)
        
        # Log if tools are being called
        if hasattr(response, 'tool_calls') and response.tool_calls:
            logger.info(f"LLM is calling {len(response.tool_calls)} tools")
            for tc in response.tool_calls:
                logger.info(f"  Tool: {tc.get('name', 'unknown')}")
        else:
            logger.info("LLM provided final answer without tool calls")
            # Publish agent response step if no tools
            if correlation_id and redis_client:
                response_preview = response.content[:200] if response.content else "Formulating response..."
                
                message = create_message(
                    message_type="step",
                    status="processing",
                    title="Preparing response",
                    description=response_preview,
                    content=None
                )
                
                await publish_intermediate_step(
                    redis_client=redis_client,
                    correlation_id=correlation_id,
                    user_id=user_id,
                    thread_id=thread_id,
                    message=message
                )
                step_counter += 1
            
    except Exception as e:
        logger.error(f"Error invoking LLM: {e}")
        error_msg = AIMessage(content=f"I encountered an error while processing: {str(e)}")
        messages.append(error_msg)
        
        # Publish error step
        if correlation_id and redis_client:
            error_str = str(e)
            if "timeout" in error_str.lower():
                title = "Taking longer than expected"
                desc = "Still working on your request"
            else:
                title = "Minor hiccup"
                desc = "Working around the issue"
            
            message = create_message(
                message_type="step",
                status="error",
                title=title,
                description=desc,
                content=None
            )
            
            await publish_intermediate_step(
                redis_client=redis_client,
                correlation_id=correlation_id,
                user_id=user_id,
                thread_id=thread_id,
                message=message
            )
            step_counter += 1
    
    return {
        "messages": messages,
        "iteration": state['iteration'] + 1,
        "step_counter": step_counter
    }


async def tool_node(state: SimpleAgentState) -> Dict[str, Any]:
    """Execute tools if the last message has tool calls"""
    from agent_tools import get_all_tools
    from helpers.redis_helper import publish_intermediate_step, create_message
    
    logger.info("Executing tool calls")
    
    # Get streaming context
    correlation_id = state.get('correlation_id')
    user_id = state.get('user_id')
    thread_id = state.get('thread_id')
    redis_client = state.get('redis_client')
    step_counter = state.get('step_counter', 0)
    
    try:
        tools = await get_all_tools()
        tool_executor = ToolNode(tools)
        
        # Get tool calls from last message
        last_message = state['messages'][-1]
        if hasattr(last_message, 'tool_calls') and last_message.tool_calls:
            # Publish tool call steps
            for tool_call in last_message.tool_calls:
                if correlation_id and redis_client:
                    tool_name = tool_call.get('name', 'unknown')
                    tool_args = tool_call.get('args', {})
                    
                    # Get the query from args if available
                    query = tool_args.get('query', '') or tool_args.get('question', '') or ''
                    if not query and tool_args:
                        # If no query field, use first string value or stringify args
                        for value in tool_args.values():
                            if isinstance(value, str):
                                query = value[:150]
                                break
                        if not query:
                            query = str(tool_args)[:150]
                    
                    message = create_message(
                        message_type="step",
                        status="calling_tool",
                        title=f"Searching {tool_name.replace('_', ' ')}",
                        description=query[:150] if query else "Looking up information",
                        content={"tool": tool_name}
                    )
                    
                    await publish_intermediate_step(
                        redis_client=redis_client,
                        correlation_id=correlation_id,
                        user_id=user_id,
                        thread_id=thread_id,
                        message=message
                    )
                    step_counter += 1
        
        # Execute tools and get results
        # Use ainvoke for async tools
        result = await tool_executor.ainvoke({"messages": state['messages']})
        
        # ToolNode only returns the tool messages, we need to append them
        tool_messages = result['messages']
        logger.info(f"Tool execution completed, got {len(tool_messages)} tool message(s)")
        
        # Publish tool result steps
        if correlation_id and redis_client and tool_messages:
            for tool_msg in tool_messages:
                # Tool messages contain the results
                result = str(tool_msg.content) if hasattr(tool_msg, 'content') else ""
                
                # Simple result analysis
                if "no results" in result.lower() or "not found" in result.lower():
                    title = "No results found"
                    desc = "The search didn't return any matching data"
                elif result.startswith('[') or result.startswith('{'):
                    title = "Found information"
                    desc = "Processing the results"
                elif result:
                    title = "Retrieved information"
                    # Take first 150 chars of result as description
                    desc = result[:150] + "..." if len(result) > 150 else result
                else:
                    title = "Completed search"
                    desc = "Moving to next step"
                
                message = create_message(
                    message_type="step",
                    status="processing",
                    title=title,
                    description=desc,
                    content=None  # Don't send raw results to frontend
                )
                
                await publish_intermediate_step(
                    redis_client=redis_client,
                    correlation_id=correlation_id,
                    user_id=user_id,
                    thread_id=thread_id,
                    message=message
                )
                step_counter += 1
        
        # Append tool messages to existing message history
        updated_messages = state['messages'] + tool_messages
        
        return {
            "messages": updated_messages,
            "iteration": state['iteration'],
            "step_counter": step_counter
        }
    except Exception as e:
        logger.error(f"Error executing tools: {e}")
        
        # Publish error step
        if correlation_id and redis_client:
            error_str = str(e)
            if "connection" in error_str.lower() or "unavailable" in error_str.lower():
                title = "Connection issue"
                desc = "Trying alternative approach"
            else:
                title = "Tool temporarily unavailable"
                desc = "Using cached information instead"
            
            message = create_message(
                message_type="step",
                status="error",
                title=title,
                description=desc,
                content=None
            )
            
            await publish_intermediate_step(
                redis_client=redis_client,
                correlation_id=correlation_id,
                user_id=user_id,
                thread_id=thread_id,
                message=message
            )
            step_counter += 1
        
        # Add error message to continue the conversation
        messages = state['messages'].copy()
        messages.append(AIMessage(content=f"Tool execution failed: {str(e)}. Let me try to answer based on what I know."))
        return {
            "messages": messages,
            "iteration": state['iteration'],
            "step_counter": step_counter
        }


def should_continue(state: SimpleAgentState) -> str:
    """Check if we should continue or end"""
    messages = state['messages']
    
    if not messages:
        logger.warning("No messages in state, ending")
        return "end"
    
    last_message = messages[-1]
    
    # Check iteration limit
    if state['iteration'] >= settings.max_agent_iterations:
        logger.warning(f"Reached max iterations ({settings.max_agent_iterations}), forcing end")
        return "end"
    
    # If there are tool calls, continue to tools
    if hasattr(last_message, 'tool_calls') and last_message.tool_calls:
        logger.info(f"Iteration {state['iteration']}: Continuing to tool execution")
        return "tools"
    
    # No tool calls means the agent provided final answer
    logger.info(f"Iteration {state['iteration']}: Agent provided final answer, ending")
    return "end"


def build_simple_graph(langfuse_handler=None):
    """Build the agent graph with tool-calling loop
    
    Args:
        langfuse_handler: Optional Langfuse callback handler for tracing
    """
    logger.info("Building simple agent graph with MCP tools")
    
    graph = StateGraph(SimpleAgentState)
    
    # Add nodes
    graph.add_node("agent", agent_node)
    graph.add_node("tools", tool_node)
    
    # Set entry
    graph.set_entry_point("agent")
    
    # Add conditional edges
    graph.add_conditional_edges(
        "agent",
        should_continue,
        {
            "tools": "tools",
            "end": END
        }
    )
    
    # After tools, always go back to agent
    graph.add_edge("tools", "agent")
    
    logger.info("Graph construction complete")
    
    # Compile the graph
    compiled_graph = graph.compile()
    
    # Attach Langfuse handler if provided
    if langfuse_handler:
        compiled_graph = compiled_graph.with_config({"callbacks": [langfuse_handler]})
        logger.info("Langfuse handler attached to graph")
    
    return compiled_graph


async def execute_simple_agent(
    thread_id: str, 
    user_message: str, 
    redis_client: Optional[redis.Redis] = None,
    correlation_id: Optional[str] = None,
    user_id: Optional[str] = None
) -> str:
    """
    Execute the agent with MCP tools and return the answer.
    
    Args:
        thread_id: Conversation thread ID
        user_message: User's latest query
        redis_client: Redis connection for chat history
        correlation_id: Request correlation ID for streaming
        user_id: User ID for streaming
        
    Returns:
        Final answer string
    """
    langfuse_handler = None
    trace = None
    
    try:
        # Initialize Langfuse handler with session tracking if client is available
        if langfuse_client:
            try:
                # Create handler - it will use the already initialized langfuse_client
                # No need to pass credentials again as the client is already configured
                langfuse_handler = CallbackHandler()
                logger.info(f"Langfuse handler created for thread: {thread_id}")
                
                # We'll track the trace for later updates
                trace = True  # Flag to indicate we have tracing enabled
            except Exception as e:
                logger.warning(f"Could not create Langfuse handler: {e}")
                langfuse_handler = None
                trace = None
        
        # Get chat history if available
        chat_history = ""
        if redis_client:
            from helpers.redis_helper import get_chat_history
            chat_history = await get_chat_history(redis_client, thread_id)
            logger.info(f"Loaded {len(chat_history)} chars of history for thread {thread_id}")
        else:
            logger.info("No Redis client provided, starting with empty history")
        
        # Add current message to history if not already there
        if user_message and user_message not in chat_history:
            if chat_history:
                chat_history += f"\nHuman: {user_message}"
            else:
                chat_history = f"Human: {user_message}"
        
        # Initial state with streaming context
        initial_state = {
            "chat_history": chat_history,
            "messages": [],
            "iteration": 0,
            # Streaming context
            "correlation_id": correlation_id,
            "user_id": user_id,
            "thread_id": thread_id,
            "redis_client": redis_client,
            "step_counter": 0
        }
        
        logger.info(f"Starting simple agent for thread {thread_id}")
        
        # Build graph with Langfuse handler if available
        graph = build_simple_graph(langfuse_handler)
        
        # Invoke with metadata for Langfuse tracing if handler exists
        if langfuse_handler:
            result = await graph.ainvoke(
                initial_state,
                config={
                    "metadata": {
                        "langfuse_session_id": thread_id,
                        "langfuse_trace_name": "simple-agent-query",
                        "thread_id": thread_id,
                        "agent_type": "simple_agent"
                    }
                }
            )
        else:
            result = await graph.ainvoke(initial_state)
        
        # Extract final answer from last AI message without tool calls
        final_message = None
        for msg in reversed(result['messages']):
            if isinstance(msg, AIMessage):
                # Check if it's a final answer (no tool calls)
                if not (hasattr(msg, 'tool_calls') and msg.tool_calls):
                    final_message = msg.content
                    break
        
        if final_message:
            logger.info(f"Agent completed successfully with answer of {len(final_message)} chars")
        else:
            logger.warning("No final answer found in messages")
            final_message = "I was unable to generate a complete answer. Please try rephrasing your question."
        
        # Log success metrics if Langfuse is enabled
        if trace and langfuse_handler:
            try:
                # The handler automatically tracks everything, but we can log additional info
                logger.info(f"Langfuse trace completed - iterations: {result.get('iteration', 0)}, messages: {len(result.get('messages', []))}")
            except Exception as e:
                logger.warning(f"Could not log Langfuse metrics: {e}")
        
        return final_message
        
    except Exception as e:
        logger.error(f"Error in execute_simple_agent: {e}", exc_info=True)
        
        # Log error if Langfuse is enabled
        if trace:
            logger.error(f"Langfuse trace failed with error: {e}")
        
        return f"I apologize, but I encountered an error: {str(e)}"
    
    finally:
        # Ensure Langfuse flushes all events for async operations
        if langfuse_client:
            try:
                langfuse_client.flush()
                logger.debug("Langfuse events flushed successfully")
            except Exception as e:
                logger.warning(f"Could not flush Langfuse events: {e}")


# For backwards compatibility with existing code
execute_agent_query = execute_simple_agent