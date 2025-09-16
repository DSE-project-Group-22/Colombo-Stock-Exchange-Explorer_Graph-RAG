# LangGraph Agent Implementation Plan

## Overview
Replace the `generate_dummy_response()` function in `server.py` with a fully functional LangGraph agent that:
- Loads conversation history from Redis
- Uses the supervisor agent for graph database queries
- Maintains conversation context
- Returns comprehensive responses

## Architecture

### Integration Point
- **Location**: `server.py` line 280
- **Current**: `agent_content = generate_dummy_response(request.message, request.thread_id)`
- **Replace with**: `agent_content = await execute_agent_query(request.thread_id, request.message, redis_client)`
- **Note**: Agent response is already saved to Redis at line 295 via `store_message()`

### Layer Architecture

```
┌─────────────────────────────────────┐
│         server.py (FastAPI)         │
│  - Handles HTTP requests            │
│  - Manages Redis storage (done)     │
└──────────────┬──────────────────────┘
               │
               ▼
┌─────────────────────────────────────┐
│     execute_agent_query()           │
│  - Loads transcript from Redis      │
│  - Calls pure agent                 │
│  - Returns response string          │
└──────────────┬──────────────────────┘
               │
               ▼
┌─────────────────────────────────────┐
│   run_agent_with_transcript()       │
│  - Pure LangGraph implementation    │
│  - No Redis knowledge               │
│  - Uses supervisor for queries      │
└─────────────────────────────────────┘
```

## Implementation Details

### 1. State Schema (Updated)

```python
class AgentState(TypedDict):
    messages: Annotated[List[BaseMessage], add_messages]  # Current execution only
    conversation_transcript: str  # Pre-loaded from Redis with latest message
    iteration_count: int
    max_iterations: int
```



### 2. Redis Helper Functions

```python
def load_transcript_from_redis(redis_client: redis.Redis, thread_id: str) -> str:
    """
    Load messages and format as transcript:
    Human: first message
    Agent: first response
    Human: second message
    Agent: second response
    """
```

### 3. Tool Definition

```python
@tool
def query_graph_database(query: str) -> str:
    """Execute natural language query against CSE graph database"""
    result = run_supervisor_query(
        user_query=query,
        max_iterations=10,  # Hardcoded
        verbose=False       # Hardcoded
    )
    return result.get('answer', 'No answer generated')
```

### 4. Main Agent Node (Updated)

```python
def main_agent_node(state: AgentState) -> Dict:
    """
    System Prompt Structure:
    - Full conversation transcript (includes latest user message)
    - Instructions to analyze transcript and respond
    
    Message Handling:
    - Uses messages array for current execution tracking
    - LangGraph automatically manages tool calls and responses
    """
    
    system_prompt = f"""
    You are an intelligent assistant for the Colombo Stock Exchange.
    
    CONVERSATION HISTORY:
    {state['conversation_transcript']}
    
    Please analyze the conversation above and answer the last question asked by the user.
    Use the query_graph_database tool when you need to retrieve information from the database.
    Provide a comprehensive response based on the full conversation context.
    """
    
    # Add system prompt to messages
    messages_for_llm = [SystemMessage(content=system_prompt)] + state["messages"]
    
    # Invoke LLM with tools
    llm_with_tools = llm.bind_tools([query_graph_database])
    response = llm_with_tools.invoke(messages_for_llm)
    
    return {
        "messages": [response],
        "iteration_count": state["iteration_count"] + 1
    }
```

### 5. Graph Construction

```python
def build_conversation_graph():
    graph = StateGraph(AgentState)
    graph.add_node("main_agent", main_agent_node)
    graph.add_node("tools", ToolNode([query_graph_database]))
    graph.add_edge(START, "main_agent")
    graph.add_conditional_edges("main_agent", should_continue, {"tools": "tools", END: END})
    graph.add_edge("tools", "main_agent")
    return graph.compile()
```

### 6. Core Agent Function (Pure, No Redis) - Updated

```python
async def run_agent_with_transcript(
    conversation_transcript: str
) -> str:
    """
    Pure agent execution:
    1. Initialize state with transcript (already includes latest user message)
    2. Use reference message to avoid duplication
    3. Run graph
    4. Extract last AIMessage content
    5. Return response string
    
    Note: conversation_transcript already ends with "Human: {latest_message}"
    """
    
    # Initialize state with reference message (not actual message to avoid duplication)
    initial_state = {
        "messages": [HumanMessage(content="Please answer the last question asked in the conversation history above.")],
        "conversation_transcript": conversation_transcript,
        "iteration_count": 0,
        "max_iterations": 10
    }
    
    # Build and run graph
    graph = build_conversation_graph()
    config = {"configurable": {"thread_id": "current"}}
    result = await graph.ainvoke(initial_state, config)
    
    # Extract final AI message (last AIMessage without tool calls)
    final_message = None
    for message in reversed(result["messages"]):
        if isinstance(message, AIMessage) and not message.tool_calls:
            final_message = message
            break
    
    return final_message.content if final_message else "I couldn't generate a response."
```

### 7. Wrapper Function (Handles Redis) - Updated

```python
async def execute_agent_query(
    thread_id: str,
    user_message: str,
    redis_client: Optional[redis.Redis] = None
) -> str:
    """
    Redis wrapper:
    1. Load transcript from Redis
    2. Format as "Human: ...\nAgent: ..."
    3. Append new user message to transcript
    4. Call run_agent_with_transcript() with complete transcript
    5. Return response (Redis save handled by server.py)
    """
    
    # Load existing transcript
    transcript = ""
    if redis_client:
        transcript = load_transcript_from_redis(redis_client, thread_id)
    
    # Append new user message to transcript (this is the key - message appears ONLY in transcript)
    if transcript:
        transcript += f"\nHuman: {user_message}"
    else:
        transcript = f"Human: {user_message}"
    
    # Call agent with complete transcript (including latest message)
    response = await run_agent_with_transcript(transcript)
    
    # Note: Redis save is handled by server.py at line 295
    return response
```

## Key Design Decisions (Updated)

### Avoiding Message Duplication
- **Problem**: Latest user message would appear twice (in transcript and messages array)
- **Solution**: Use a reference message in the messages array
- **Implementation**: 
  - Transcript contains: `"...Human: {actual_user_message}"`
  - Messages array starts with: `HumanMessage("Please answer the last question asked in the conversation history above.")`

### Conversation Transcript Format
```
Human: What companies does John Keells own?
Agent: Let me look that up for you...
Human: Also tell me their ownership percentages  # Latest message appears ONLY here
```

### Messages Array Evolution (Current Execution)
```python
# Initial
[HumanMessage("Please answer the last question asked in the conversation history above.")]

# After main_agent (if tool needed)
[HumanMessage("..."), AIMessage(tool_calls=[...])]

# After tools
[HumanMessage("..."), AIMessage(...), ToolMessage(content="...")]

# After main_agent (final)
[HumanMessage("..."), AIMessage(...), ToolMessage(...), AIMessage("Final comprehensive response")]
```

### System Prompt Template (Updated)
```python
system_prompt = f"""
You are an intelligent assistant for the Colombo Stock Exchange.

CONVERSATION HISTORY:
{state['conversation_transcript']}

Please analyze the conversation above and answer the last question asked by the user.
Use the query_graph_database tool when you need to retrieve information from the database.
Provide a comprehensive response based on the full conversation context.
Your response should directly address what the user is asking for.
"""
```

**Note**: Removed current execution context since we're using messages array for tracking

## Integration Steps

1. **Create agent.py** with all components
2. **Import in server.py**: 
   ```python
   from agent import execute_agent_query
   ```
3. **Replace line 280 in server.py**:
   ```python
   # OLD: agent_content = generate_dummy_response(request.message, request.thread_id)
   # NEW: agent_content = await execute_agent_query(request.thread_id, request.message, redis_client)
   ```
4. **Update metadata** at line 287-290:
   ```python
   metadata=MessageMetadata(
       agent_type="langgraph",
       model="gpt-4o-mini",
       processing_time=time_taken
   )
   ```

## Testing Strategy

### Test Cases

1. **Single Query**:
   - Input: "What are the top 5 companies by market cap?"
   - Expected: Direct answer with company list

2. **Multi-turn Conversation**:
   - Turn 1: "Tell me about John Keells"
   - Turn 2: "What companies do they own?"
   - Expected: Context-aware response about ownership

3. **Complex Query**:
   - Input: "Compare the financial metrics of banks vs technology companies"
   - Expected: Multiple tool calls, comprehensive comparison

### Test Functions

```python
# Test without Redis
async def test_pure_agent():
    transcript = "Human: What is the market cap of Commercial Bank?"
    response = await run_agent_with_transcript(transcript, "")
    assert "Commercial Bank" in response

# Test with Redis
async def test_with_redis():
    response = await execute_agent_query("test_thread", "Tell me about banks", redis_client)
    assert response is not None
```

## Error Handling

1. **Redis Connection Failure**: Continue without history
2. **Supervisor Query Failure**: Return helpful error message
3. **LLM API Failure**: Return apology with error details
4. **Max Iterations Reached**: Return partial results with explanation

## Performance Considerations

- **Max Iterations**: 10 (safety limit)
- **Supervisor Max Iterations**: 10 (hardcoded in tool)
- **Redis TTL**: 24 hours (from settings)
- **Conversation Transcript Limit**: Consider truncating very long histories

## File Structure

```
agent.py
├── # Imports and Configuration
├── # State Schema Definition
├── # Redis Helper Functions
│   ├── load_transcript_from_redis()
│   └── format_messages_as_transcript()
├── # Tool Definitions
│   └── @tool query_graph_database()
├── # Agent Nodes
│   ├── main_agent_node()
│   └── should_continue()
├── # Graph Construction
│   └── build_conversation_graph()
├── # Core Agent Functions (Pure)
│   └── run_agent_with_transcript()
├── # Wrapper Functions (Redis Integration)
│   ├── execute_agent_query()
│   └── execute_agent_query_sync()
└── # Test Code
```

## Benefits of This Design

1. **Separation of Concerns**: Redis logic isolated from agent logic
2. **Testability**: Can test agent without Redis dependency
3. **Reusability**: Agent can work with any transcript source
4. **Maintainability**: Clear structure and responsibilities
5. **Context Awareness**: Full conversation history in every decision
6. **Comprehensive Responses**: Agent addresses entire conversation context

## Next Steps

1. Implement agent.py following this plan
2. Update server.py integration point
3. Test with sample conversations
4. Add comprehensive error handling
5. Optimize for performance if needed
6. Document usage in README