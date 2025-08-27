#!/usr/bin/env python3
"""
LangGraph Nodes for Adaptive Query System
Each node represents a step in the adaptive query process
"""

import os
import sys
import re
import time
from typing import Dict, Any, List, Optional, Literal
from langchain_openai import ChatOpenAI
from langgraph.types import Command
from pydantic import BaseModel, Field

# Add parent directory to path for imports
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from graph_state import AdaptiveQueryState, QueryInfo, InformationGap, PlannedQuery
from nl_to_cypher_query import initialize_graph_qa_chain, query_graph_with_natural_language


# =====================================================================================
# STRUCTURED OUTPUT MODELS FOR LLM
# =====================================================================================

class QueryIntent(BaseModel):
    """Analysis of query intent"""
    intent_type: str = Field(description="Type: comparison, ranking, aggregation, listing, count")
    required_entities: List[str] = Field(description="Entity types needed")
    required_metrics: List[str] = Field(description="Metrics needed")
    required_relationships: List[str] = Field(default_factory=list)


class NextQueryPlan(BaseModel):
    """Plan for next query"""
    query_text: str = Field(description="Natural language query to execute")
    reasoning: str = Field(description="Why this query is needed")
    expected_facts: List[str] = Field(description="What facts we expect to discover")
    priority: int = Field(default=1, description="Priority of this query")


class ProgressAssessment(BaseModel):
    """Assessment of current progress"""
    confidence: float = Field(description="Confidence score 0-1")
    can_answer: bool = Field(description="Whether we can answer the query")
    missing_info: List[str] = Field(description="What information is still missing")
    reasoning: str = Field(description="Explanation of assessment")


# =====================================================================================
# GRAPH SCHEMA - Can be provided or discovered
# =====================================================================================

# This will be populated with the actual schema when provided
GRAPH_SCHEMA = """
Node Labels & Properties
Label Key Properties
Company • id (string, unique)
•⁠  ⁠name (string)
•⁠  ⁠founded_on (date, optional)
•⁠  ⁠listed_on (string, optional)
•⁠  ⁠region (string, optional)
Person • id (string, unique)
•⁠  ⁠name (string)
Sector • id (string, unique)
•⁠  ⁠name (string)
Product • id (string, unique)
•⁠  ⁠name (string)
Metric • id (string, unique)
•⁠  ⁠name (string)
•⁠  ⁠unit (string)
Relationship Types & Properties
Ownership & Shareholdings
●
●
(parent:Company)-[:OWNS]->(child:Company)
•⁠  ⁠pct (float) — percent ownership
•⁠  ⁠as_of (date)
(person:Person)-[:OWNS_SHARES]->(company:Company)
•⁠  ⁠count (int) or pct (float)
•⁠  ⁠as_of (date)
Governance & Roles
●
●
(person:Person)-[:DIRECTOR_OF]->(company:Company)
•⁠  ⁠role (string)
•⁠  ⁠as_of (date)
(person:Person)-[:HOLDS_POSITION]->(company:Company)
•⁠  ⁠title (string)
•⁠  ⁠as_of (date)
Business Classification
●
●
(company:Company)-[:IN_SECTOR]->(sector:Sector)
(no properties)
(company:Company)-[:OFFERS]->(product:Product)
•⁠  ⁠status (string, optional; e.g.
"planned")
Financial Metrics
●
(company:Company)-[:HAS_METRIC]->(metric:Metric)
•⁠  ⁠year (int, optional)
•⁠  ⁠as_of (date, optional)
•⁠  ⁠value (float/int)
Auditing & Management Services
●
●
(company:Company)-[:AUDITED_BY]->(auditor:Company)
•⁠  ⁠year (int)
(manager:Company)-[:MANAGES]->(plantation:Company)
•⁠  ⁠description (string)
"""

def set_graph_schema(schema: str):
    """Set the graph schema for the system to use"""
    global GRAPH_SCHEMA
    GRAPH_SCHEMA = schema

# =====================================================================================
# PLANNER NODE - Plans next queries based on state
# =====================================================================================

def planner_node(state: AdaptiveQueryState) -> AdaptiveQueryState:
    """
    Plans the next query based on current state and discovered facts.
    Uses provided schema or discovers it dynamically.
    """
    print(f"\n📝 PLANNER NODE (Iteration {state.iteration_count + 1})")
    
    llm = ChatOpenAI(model="gpt-5-mini")
    
    # First iteration - analyze intent with schema awareness
    if state.query_intent is None:
        # If no schema provided, first discover it
        if GRAPH_SCHEMA is None and not state.has_fact("graph_schema"):
            state.current_query = PlannedQuery(
                query_text="What is the schema of this graph database? Show me the node types, relationships, and properties available.",
                reasoning="Need to understand the graph structure before planning queries",
                expected_facts=["graph_schema"],
                priority=1
            )
            print("   📊 Discovering graph schema first...")
            return state
        
        # Use provided schema or discovered schema
        schema_context = GRAPH_SCHEMA or state.get_fact("graph_schema", "")
        
        structured_llm = llm.with_structured_output(QueryIntent)
        
        intent = structured_llm.invoke([
            {"role": "system", "content": f"Analyze database query intent. The graph has this schema:\n{schema_context}"},
            {"role": "user", "content": f"Query: {state.original_query}"}
        ])
        
        state.query_intent = intent.intent_type
        
        # Let LLM identify gaps based on schema
        gaps = _identify_information_gaps(state.original_query, schema_context, state, llm)
        state.identified_gaps.extend(gaps)
    
    # Plan next query using LLM with schema context
    next_query = _plan_adaptive_query(state, llm)
    
    if next_query:
        state.current_query = PlannedQuery(
            query_text=next_query.query_text,
            reasoning=next_query.reasoning,
            expected_facts=next_query.expected_facts,
            priority=next_query.priority
        )
        state.needs_replanning = False
        print(f"   Planned: {next_query.query_text}")
    else:
        # No more queries needed
        state.should_continue = False
        print("   No more queries needed")
    
    return state


class IdentifiedGaps(BaseModel):
    """Structured output for identifying information gaps"""
    gaps: List[InformationGap] = Field(
        description="List of specific information gaps that need to be filled to answer the query"
    )
    reasoning: str = Field(
        description="Explanation of why these gaps were identified"
    )


def _identify_information_gaps(query: str, schema: str, state: AdaptiveQueryState, llm: ChatOpenAI) -> List[InformationGap]:
    """
    Use LLM with structured output to identify specific information gaps
    based on the graph schema and user query.
    """
    
    prompt = f"""
    Analyze what specific information needs to be gathered from the graph database to answer this query.
    
    GRAPH SCHEMA:
    {schema}
    
    USER QUERY:
    "{query}"
    
    Based on the schema, identify the SPECIFIC gaps in information needed. For each gap:
    1. Identify the type (e.g., "nodes_Company", "relationship_OWNS", "metric_revenue")
    2. Describe what specific data is needed
    3. Assign priority (1=critical, 2=important, 3=nice-to-have)
    4. Suggest a query that could fill this gap
    
    Examples of gap types based on the schema:
    - "nodes_Company" - need to find Company nodes
    - "relationship_OWNS" - need ownership relationships
    - "metric_market_cap" - need market capitalization metrics
    - "property_founded_on" - need founding dates
    - "relationship_DIRECTOR_OF" - need director relationships
    
    Be specific and actionable. Each gap should map to something queryable in the schema.
    """
    
    structured_llm = llm.with_structured_output(IdentifiedGaps)
    
    try:
        result = structured_llm.invoke([
            {"role": "system", "content": "You are an expert at analyzing graph database schemas and identifying what information is needed to answer queries. Be specific and map gaps directly to the schema elements."},
            {"role": "user", "content": prompt}
        ])
        
        print(f"   📍 Identified {len(result.gaps)} information gaps")
        print(f"      Reasoning: {result.reasoning}")
        
        # Log the gaps for debugging
        for gap in result.gaps[:3]:  # Show first 3
            print(f"      - {gap.description} (priority: {gap.priority})")
        
        return result.gaps
        
    except Exception as e:
        print(f"   ⚠️ Gap identification failed: {e}")
        # Fallback: create basic gaps based on query analysis
        return None



def _plan_adaptive_query(state: AdaptiveQueryState, llm: ChatOpenAI) -> Optional[NextQueryPlan]:
    """
    Fully dynamic query planning using LLM.
    No hardcoded logic - works with any graph schema.
    """
    
    # Get schema context
    schema_context = GRAPH_SCHEMA or state.get_fact("graph_schema", "")
    
    # Build comprehensive context for LLM
    facts_summary = _summarize_facts(state.discovered_facts)
    entities_summary = _summarize_entities(state.entity_mentions)
    gaps_summary = _summarize_gaps(state.identified_gaps)
    queries_summary = _summarize_queries(state.completed_queries)
    
    # Check if we have gaps with suggested queries
    if state.identified_gaps and state.get_highest_priority_gap():
        gap = state.get_highest_priority_gap()
        if gap and gap.suggested_query:
            # Use the suggested query from the gap
            print(f"   Using suggested query from gap: {gap.gap_type}")
            return NextQueryPlan(
                query_text=gap.suggested_query,
                reasoning=f"Filling gap: {gap.description}",
                expected_facts=[gap.gap_type],
                priority=gap.priority
            )
    
    # Create dynamic prompt based on phase
    if state.current_phase == "exploring":
        phase_guidance = "We're in the exploration phase. Focus on discovering the main entities and relationships needed."
    elif state.current_phase == "refining":
        phase_guidance = "We're refining our understanding. Focus on getting specific details and filling gaps."
    elif state.current_phase == "completing":
        phase_guidance = "We're completing the information gathering. Focus on any critical missing pieces."
    else:
        phase_guidance = "Generate the next best query to make progress."
    
    prompt = f"""
    You are planning the next query for a graph database to answer a user's question.
    
    GRAPH SCHEMA:
    {schema_context if schema_context else "Schema not yet discovered - may need to query for it first"}
    
    USER'S QUESTION:
    "{state.original_query}"
    
    CURRENT PHASE:
    {phase_guidance}
    
    WHAT WE'VE DISCOVERED SO FAR:
    {facts_summary if facts_summary else "Nothing discovered yet"}
    
    ENTITIES FOUND:
    {entities_summary if entities_summary else "No entities discovered yet"}
    
    INFORMATION GAPS:
    {gaps_summary if gaps_summary else "No specific gaps identified"}
    
    QUERIES ALREADY EXECUTED ({len(state.completed_queries)}):
    {queries_summary if queries_summary else "No queries executed yet"}
    
    Based on this context, what is the single most important query to execute next?
    The query should:
    1. Be a natural language question that can be converted to a graph database query
    2. Help answer the user's original question
    3. Build on what we've already discovered
    4. Not repeat queries we've already tried
    
    Focus on getting the most valuable information for answering the user's question.
    """
    
    structured_llm = llm.with_structured_output(NextQueryPlan)
    
    try:
        next_query = structured_llm.invoke([
            {"role": "system", "content": "You are an expert at planning graph database queries. Generate queries that work with the given schema."},
            {"role": "user", "content": prompt}
        ])
        
        print(f"   LLM planned: {next_query.reasoning}")
        return next_query
        
    except Exception as e:
        print(f"   LLM planning failed: {e}")
        
        # Fallback: try to get any information
        if len(state.completed_queries) == 0:
            return NextQueryPlan(
                query_text="What information is available in this database?",
                reasoning="Starting with basic discovery since specific planning failed",
                expected_facts=["initial_discovery"],
                priority=1
            )
        return None


def _summarize_facts(facts: Dict[str, Any]) -> str:
    """Summarize discovered facts for context"""
    if not facts:
        return ""
    
    summary = []
    for key, value in list(facts.items())[:10]:  # Limit to prevent token overflow
        if isinstance(value, list):
            summary.append(f"- {key}: {len(value)} items found")
        elif isinstance(value, dict):
            summary.append(f"- {key}: {len(value)} entries")
        else:
            summary.append(f"- {key}: {str(value)[:100]}")  # Truncate long values
    
    return "\n".join(summary)


def _summarize_entities(entities: Dict[str, List[str]]) -> str:
    """Summarize discovered entities"""
    if not entities:
        return ""
    
    summary = []
    for entity_type, entity_list in entities.items():
        if entity_list:
            preview = ", ".join(entity_list[:3])
            if len(entity_list) > 3:
                preview += f", ... ({len(entity_list)} total)"
            summary.append(f"- {entity_type}: {preview}")
    
    return "\n".join(summary)


def _summarize_gaps(gaps: List[InformationGap]) -> str:
    """Summarize information gaps"""
    if not gaps:
        return ""
    
    return "\n".join([f"- {gap.description} (priority: {gap.priority})" for gap in gaps[:5]])


def _summarize_queries(queries: List[QueryInfo]) -> str:
    """Summarize executed queries"""
    if not queries:
        return ""
    
    summary = []
    for q in queries[-5:]:  # Last 5 queries
        status = "✓" if q.success else "✗"
        facts = f" ({len(q.facts_extracted)} facts)" if q.facts_extracted else ""
        summary.append(f"{status} {q.query_text[:80]}{facts}")
    
    return "\n".join(summary)


# Removed duplicate _llm_plan_query - using the new dynamic version above


def suggest_alternative_query(state: AdaptiveQueryState, failed_query: str, llm: ChatOpenAI) -> Optional[NextQueryPlan]:
    """Suggest an alternative query when one fails"""
    
    structured_llm = llm.with_structured_output(NextQueryPlan)
    
    prompt = f"""
    This query failed: "{failed_query}"
    
    Original goal: "{state.original_query}"
    
    Suggest a simpler or alternative query that might work better.
    Focus on getting partial information if the full query is too complex.
    """
    
    try:
        return structured_llm.invoke([
            {"role": "system", "content": "You are helping recover from failed database queries."},
            {"role": "user", "content": prompt}
        ])
    except:
        # Simple fallback
        return NextQueryPlan(
            query_text="List basic information about companies in the database",
            reasoning="Fallback to simple query after failure",
            expected_facts=["basic_company_info"],
            priority=1
        )


# =====================================================================================
# EXECUTOR NODE - Executes the planned query
# =====================================================================================

def executor_node(state: AdaptiveQueryState) -> AdaptiveQueryState:
    """
    Executes the current planned query using nl_to_cypher.
    Handles failures with alternative queries.
    """
    print(f"\n⚡ EXECUTOR NODE")
    
    if not state.current_query:
        print("   No query to execute")
        return state
    
    print(f"   Executing: {state.current_query.query_text}")
    
    try:
        # Initialize and execute query
        chain = initialize_graph_qa_chain()
        result = query_graph_with_natural_language(state.current_query.query_text, chain)
        
        if not result.get("error"):
            state.current_result = result
            print(f"   ✅ Query executed successfully")
        else:
            # Query failed - try alternative
            print(f"   ❌ Query failed: {result.get('result')}")
            state.last_error = str(result.get('result'))
            
            # Try alternative query
            llm = ChatOpenAI(model="gpt-5-mini")
            alt_query = suggest_alternative_query(state, state.current_query.query_text, llm)
            
            if alt_query:
                print(f"   🔄 Trying alternative: {alt_query.query_text}")
                try:
                    alt_result = query_graph_with_natural_language(alt_query.query_text, chain)
                    if not alt_result.get("error"):
                        state.current_result = alt_result
                        # Update the query to reflect what actually worked
                        state.current_query.query_text = alt_query.query_text
                        print(f"   ✅ Alternative query succeeded")
                    else:
                        state.current_result = {"error": True, "result": str(alt_result.get('result'))}
                except:
                    state.current_result = {"error": True, "result": str(result.get('result'))}
            else:
                state.current_result = result
            
    except Exception as e:
        print(f"   ❌ Execution error: {e}")
        state.current_result = {"error": True, "result": str(e)}
        state.last_error = str(e)
    
    return state


# =====================================================================================
# INTERPRETER NODE - Interprets query results
# =====================================================================================

def interpreter_node(state: AdaptiveQueryState) -> AdaptiveQueryState:
    """
    Interprets the query results and extracts facts.
    """
    print(f"\n🔍 INTERPRETER NODE")
    
    if not state.current_result or not state.current_query:
        return state
    
    # Create query info record
    query_info = QueryInfo(
        query_text=state.current_query.query_text,
        result=state.current_result,
        success=not state.current_result.get("error", False)
    )
    
    if query_info.success:
        # Extract facts from result
        facts = _extract_facts(state, state.current_result.get("result", ""))
        query_info.facts_extracted = facts
        print(f"   Extracted {len(facts)} facts")
        
        # Update gaps - remove those that have been filled
        _update_gaps(state, facts)
    else:
        query_info.error_message = str(state.current_result.get("result", "Unknown error"))
        print(f"   Query failed, no facts extracted")
    
    # Record query
    state.record_query_result(query_info)
    
    # Clear current query/result
    state.current_query = None
    state.current_result = None
    
    return state


def _extract_facts(state: AdaptiveQueryState, result_data: Any) -> List[str]:
    """
    Extract facts from query results in a generic, schema-agnostic way.
    Works with any graph database structure.
    """
    facts = []
    
    # Store the raw result first
    result_key = f"result_{state.iteration_count}"
    state.add_discovered_fact(result_key, result_data)
    
    # Handle different result types generically
    if isinstance(result_data, list):
        # Extract entities from list results
        entities_found = []
        relationships_found = []
        
        for item in result_data:
            if isinstance(item, dict):
                # Extract all keys as potential entity properties
                for key, value in item.items():
                    # Store unique values as potential entities
                    if isinstance(value, str) and value:
                        # Dynamically infer entity type using schema
                        entity_type = _infer_entity_type(key, value)
                        state.add_entity(entity_type, value)
                        entities_found.append(value)
                    
                    # Store numeric values as metrics
                    elif isinstance(value, (int, float)):
                        metric_key = f"metric_{key}"
                        if not state.has_fact(metric_key):
                            state.add_discovered_fact(metric_key, {})
                        metrics = state.get_fact(metric_key)
                        # Use first string value as identifier
                        identifier = next((v for v in item.values() if isinstance(v, str)), "unknown")
                        metrics[identifier] = value
                
                # Store the entire dict for relationship tracking
                relationships_found.append(item)
                
            elif isinstance(item, str):
                # Simple string items are entities
                state.add_entity("entity", item)
                entities_found.append(item)
        
        # Record what we found
        if entities_found:
            state.add_discovered_fact(f"entities_from_query_{state.iteration_count}", entities_found)
            facts.append(f"discovered_{len(entities_found)}_entities")
        
        if relationships_found:
            state.add_discovered_fact(f"relationships_from_query_{state.iteration_count}", relationships_found)
            facts.append(f"discovered_{len(relationships_found)}_relationships")
            
    elif isinstance(result_data, dict):
        # Single dict result - extract all information
        for key, value in result_data.items():
            state.add_discovered_fact(key, value)
            facts.append(f"extracted_{key}")
            
    elif isinstance(result_data, str):
        # Parse string results for entities (capitalized words, quoted items, etc.)
        # Extract quoted items
        quoted = re.findall(r'"([^"]+)"', result_data)
        for item in quoted:
            state.add_entity("entity", item)
        
        # Extract potential entities (capitalized multi-word phrases)
        entities = re.findall(r'\b[A-Z][a-z]+(?:\s+[A-Z][a-z]+)*\b', result_data)
        for entity in entities:
            if len(entity) > 2:  # Skip very short matches
                state.add_entity("entity", entity)
        
        if quoted or entities:
            facts.append(f"extracted_{len(quoted) + len(entities)}_entities_from_text")
    
    elif isinstance(result_data, (int, float)):
        # Numeric result - store as metric
        state.add_discovered_fact(f"numeric_result_{state.iteration_count}", result_data)
        facts.append("extracted_numeric_value")
    
    # Always record that we processed something
    if not facts:
        facts.append(f"stored_query_{state.iteration_count}_result")
    
    return facts


def _infer_entity_type(key: str, value: Any = None, schema_context: str = None) -> str:
    """
    Dynamically infer entity type using schema context.
    No hardcoded assumptions - uses the actual graph schema when available.
    """
    # If we have schema, try to match against node labels
    if schema_context or GRAPH_SCHEMA:
        schema = schema_context or GRAPH_SCHEMA
        
        # Extract node labels from schema
        import re
        node_labels = re.findall(r'^(\w+)\s*[•●]', schema, re.MULTILINE)
        
        # Check if the key or value matches any node label
        key_lower = key.lower()
        for label in node_labels:
            label_lower = label.lower()
            if label_lower in key_lower:
                return label
            # Check if value matches the pattern of this entity type
            if value and isinstance(value, str):
                if label_lower in value.lower():
                    return label
        
        # Check for relationship patterns in schema
        if "relationship" in key_lower or "_" in key:
            return "relationship"
    
    # If no schema match, use generic categorization based on value type
    if value:
        if isinstance(value, str):
            # Check if it looks like an ID
            if len(value) < 50 and (value.isalnum() or '-' in value or '_' in value):
                return "identifier"
            else:
                return "text_value"
        elif isinstance(value, (int, float)):
            return "numeric_value"
        elif isinstance(value, bool):
            return "boolean_value"
    
    # Generic fallback
    return "entity"


def _update_gaps(state: AdaptiveQueryState, facts: List[str]) -> None:
    """
    Update information gaps based on extracted facts.
    Generic approach that doesn't assume specific entity types.
    """
    
    # Remove gaps that have been addressed by the facts discovered
    gaps_to_remove = []
    for gap in state.identified_gaps:
        # Check if this gap has been filled based on facts
        if any(gap.gap_type in fact or "discovered" in fact for fact in facts):
            gaps_to_remove.append(gap)
    
    for gap in gaps_to_remove:
        state.identified_gaps.remove(gap)


# =====================================================================================
# EVALUATOR NODE - Evaluates progress and decides next action
# =====================================================================================

class ProgressEvaluation(BaseModel):
    """Structured evaluation of query progress"""
    phase: Literal["exploring", "refining", "completing", "ready"] = Field(
        description="Current phase: exploring (initial discovery), refining (filling gaps), completing (final details), ready (can answer)"
    )
    has_sufficient_information: bool = Field(
        description="Whether we have enough information to answer the original query"
    )
    should_continue: bool = Field(
        description="Whether we should continue querying for more information"
    )
    reasoning: str = Field(
        description="Explanation of the evaluation decision"
    )
    missing_critical_info: Optional[str] = Field(
        default=None,
        description="Description of critical missing information if any"
    )


def evaluator_node(state: AdaptiveQueryState) -> AdaptiveQueryState:
    """
    Evaluates progress using LLM to determine if we can answer the query.
    No arbitrary confidence calculations - uses semantic evaluation.
    """
    print(f"\n📊 EVALUATOR NODE")
    
    # Use LLM to evaluate progress
    evaluation = _evaluate_progress_with_llm(state)
    
    # Update state based on LLM evaluation
    state.current_phase = evaluation.phase
    state.ready_to_synthesize = evaluation.has_sufficient_information or evaluation.phase == "ready"
    state.should_continue = evaluation.should_continue and not state.ready_to_synthesize
    
    print(f"   Phase: {evaluation.phase}")
    print(f"   Has sufficient info: {evaluation.has_sufficient_information}")
    print(f"   Should continue: {evaluation.should_continue}")
    print(f"   Reasoning: {evaluation.reasoning}")
    
    # Check safety termination condition
    if state.iteration_count >= state.max_iterations:
        state.should_continue = False
        state.ready_to_synthesize = True
        print("   Max iterations reached - synthesizing with available data")
    
    # Let LLM decide about consecutive failures
    elif state.consecutive_failures > 0:
        # Ask LLM if we should stop due to failures
        if _should_stop_due_to_failures(state):
            state.should_continue = False
            state.ready_to_synthesize = True
            print(f"   Stopping after {state.consecutive_failures} failures - LLM decision")
    
    return state


def _should_stop_due_to_failures(state: AdaptiveQueryState) -> bool:
    """
    Use LLM to decide if consecutive failures warrant stopping.
    No arbitrary '3 failures' rule - semantic decision based on context.
    """
    llm = ChatOpenAI(model="gpt-5-mini")
    
    prompt = f"""
    We've had {state.consecutive_failures} consecutive query failures while trying to answer: "{state.original_query}"
    
    Failed queries:
    {', '.join([q.query_text for q in state.failed_queries[-state.consecutive_failures:]])}
    
    Facts discovered so far: {len(state.discovered_facts)}
    Entities found: {sum(len(e) for e in state.entity_mentions.values())}
    
    Should we stop trying and work with what we have, or continue attempting different queries?
    Consider:
    - Are the failures due to data not existing or query complexity?
    - Do we have enough information to provide a partial answer?
    - Would different query approaches likely succeed?
    
    Respond with just YES (stop) or NO (continue).
    """
    
    try:
        response = llm.invoke(prompt).content.strip().upper()
        return "YES" in response
    except:
        # Fallback: stop after many failures to prevent infinite loops
        return state.consecutive_failures >= 5


def _evaluate_progress_with_llm(state: AdaptiveQueryState) -> ProgressEvaluation:
    """
    Use LLM to semantically evaluate if we have enough information.
    """
    
    # Prepare context about what we've discovered
    context_parts = [
        f"Original query: {state.original_query}",
        f"\nQueries executed: {len(state.completed_queries)}",
        f"Queries failed: {len(state.failed_queries)}",
        f"\nDiscovered facts: {len(state.discovered_facts)}"
    ]
    
    # List discovered entities
    if state.entity_mentions:
        context_parts.append("\nEntities found:")
        for entity_type, entities in state.entity_mentions.items():
            if entities:
                context_parts.append(f"  - {entity_type}: {len(entities)} items")
    
    # List key facts
    if state.discovered_facts:
        context_parts.append("\nKey facts discovered:")
        for key, value in list(state.discovered_facts.items())[:5]:  # Show first 5
            if not key.startswith('_'):
                context_parts.append(f"  - {key}: {type(value).__name__}")
    
    # List remaining gaps
    if state.identified_gaps:
        context_parts.append("\nInformation gaps remaining:")
        for gap in state.identified_gaps[:3]:  # Show first 3
            context_parts.append(f"  - {gap.description}")
    
    context = "\n".join(context_parts)
    
    # Use LLM with structured output
    llm = ChatOpenAI(model="gpt-5-mini")
    structured_llm = llm.with_structured_output(ProgressEvaluation)
    
    prompt = f"""
    Evaluate the progress of gathering information to answer a query.
    
    {context}
    
    Based on the information discovered so far, determine:
    1. What phase we are in (exploring, refining, completing, or ready)
    2. Whether we have sufficient information to provide a meaningful answer
    3. Whether we should continue gathering more information
    
    Consider:
    - If critical entities or relationships are still missing
    - If the discovered facts are relevant to the original query
    - If gaps are minor details vs essential information
    - If continuing would likely yield valuable new information
    
    Be pragmatic - we don't need perfect information, just enough to give a useful answer.
    """
    
    try:
        evaluation = structured_llm.invoke(prompt)
        return evaluation
    except Exception as e:
        print(f"   LLM evaluation failed: {e}")
        # Fallback evaluation based on basic heuristics
        has_info = bool(state.discovered_facts) and bool(state.entity_mentions)
        phase = "ready" if has_info and not state.identified_gaps else "exploring"
        
        return ProgressEvaluation(
            phase=phase,
            has_sufficient_information=has_info,
            should_continue=not has_info,
            reasoning="Fallback evaluation due to LLM error"
        )


# =====================================================================================
# SYNTHESIZER NODE - Creates final answer
# =====================================================================================

def synthesizer_node(state: AdaptiveQueryState) -> AdaptiveQueryState:
    """
    Synthesizes the final answer using LLM based on discovered facts.
    No hardcoded templates - pure LLM generation.
    """
    print(f"\n✍️ SYNTHESIZER NODE")
    
    # Use LLM to understand query intent
    intent = _determine_query_intent(state.original_query, state)
    print(f"   Intent: {intent.intent_type}")
    print(f"   Format: {intent.format_preference}")
    
    # Let LLM synthesize based on intent and discovered facts
    answer = _llm_synthesize_answer(state, intent)
    
    # Add disclaimer if we had to stop early (let LLM decide if needed)
    if state.consecutive_failures > 0 or state.iteration_count >= state.max_iterations or \
       (state.current_phase != "ready" and state.current_phase != "completing"):
        disclaimer = _generate_disclaimer(state)
        if disclaimer:
            answer += f"\n\n{disclaimer}"
    
    state.final_answer = answer
    
    print(f"   Answer length: {len(answer)} characters")
    print(f"   Phase: {state.current_phase}")
    
    return state


class QueryIntentAnalysis(BaseModel):
    """LLM-determined query intent and formatting preference"""
    intent_type: str = Field(
        description="The semantic intent: listing, ranking, aggregation, counting, comparison, exploration, or other"
    )
    format_preference: str = Field(
        description="How to format the answer: table, list, narrative, statistics, or mixed"
    )
    key_focus: str = Field(
        description="What the query is primarily asking about"
    )
    reasoning: str = Field(
        description="Why this intent and format were chosen"
    )


def _determine_query_intent(query: str, state: AdaptiveQueryState) -> QueryIntentAnalysis:
    """Use LLM to semantically understand query intent - no hardcoded keywords"""
    
    llm = ChatOpenAI(model="gpt-5-mini")
    structured_llm = llm.with_structured_output(QueryIntentAnalysis)
    
    # Provide context about discovered facts for better intent analysis
    context = f"""
    Original query: {query}
    
    Facts discovered: {len(state.discovered_facts)}
    Entity types found: {list(state.entity_mentions.keys())}
    
    Analyze the semantic intent of this query. Consider:
    - Is it asking for a comprehensive list or specific items?
    - Does it want rankings or comparisons?
    - Is it looking for aggregated statistics?
    - What format would best present the answer?
    
    Do not rely on keywords - understand the meaning.
    """
    
    try:
        return structured_llm.invoke(context)
    except Exception as e:
        # Fallback to basic analysis if LLM fails
        return QueryIntentAnalysis(
            intent_type="general",
            format_preference="narrative",
            key_focus="information",
            reasoning=f"Fallback due to error: {e}"
        )


def _llm_synthesize_answer(state: AdaptiveQueryState, intent: QueryIntentAnalysis) -> str:
    """
    Use LLM to synthesize answer based on discovered facts and query intent.
    No hardcoded templates or formatting - pure LLM generation.
    """
    
    llm = ChatOpenAI(model="gpt-5-mini")
    
    # Prepare discovered facts for LLM
    facts_summary = []
    
    # Add entity information
    if state.entity_mentions:
        facts_summary.append("Entities discovered:")
        for entity_type, entities in state.entity_mentions.items():
            facts_summary.append(f"- {entity_type}: {entities}")
    
    # Add key facts (let LLM see all, not truncated)
    if state.discovered_facts:
        facts_summary.append("\nFacts discovered:")
        for key, value in state.discovered_facts.items():
            if not key.startswith('_'):  # Skip internal facts
                facts_summary.append(f"- {key}: {value}")
    
    # Add query results
    if state.completed_queries:
        facts_summary.append(f"\nSuccessfully executed {len(state.completed_queries)} queries")
    
    facts_context = "\n".join(facts_summary)
    
    prompt = f"""
    Generate a natural language answer for this query based on discovered facts.
    
    Original Query: {state.original_query}
    
    Query Intent Analysis:
    - Intent Type: {intent.intent_type}
    - Format Preference: {intent.format_preference}
    - Key Focus: {intent.key_focus}
    
    Discovered Information:
    {facts_context}
    
    Instructions:
    1. Answer the query directly using the discovered facts
    2. Format the answer according to the format preference ({intent.format_preference})
    3. Be comprehensive but concise
    4. If information is missing, acknowledge what couldn't be found
    5. Do not make up information not present in the discovered facts
    6. Use natural language, not technical jargon
    
    Generate the answer:
    """
    
    try:
        answer = llm.invoke(prompt).content
        return answer.strip()
    except Exception as e:
        # Fallback to basic summary if LLM fails
        return f"Based on {len(state.discovered_facts)} discovered facts: {', '.join(list(state.discovered_facts.keys())[:5])}"


def _generate_disclaimer(state: AdaptiveQueryState) -> str:
    """
    Use LLM to generate appropriate disclaimer based on stopping condition.
    """
    
    llm = ChatOpenAI(model="gpt-5-mini")
    
    conditions = []
    if state.consecutive_failures > 0:
        conditions.append(f"{state.consecutive_failures} query failures occurred")
    if state.iteration_count >= state.max_iterations:
        conditions.append("reached maximum query attempts")
    if state.current_phase not in ["ready", "completing"]:
        conditions.append(f"information gathering was in {state.current_phase} phase")
    
    prompt = f"""
    Generate a brief, professional disclaimer for an answer that may be incomplete.
    
    Conditions: {', '.join(conditions)}
    Facts discovered: {len(state.discovered_facts)}
    Entities found: {sum(len(e) for e in state.entity_mentions.values())}
    
    Generate a 1-sentence disclaimer that explains limitations without being apologetic.
    Return empty string if the answer seems complete despite conditions.
    """
    
    try:
        disclaimer = llm.invoke(prompt).content.strip()
        if disclaimer and not disclaimer.startswith("*"):
            disclaimer = f"*{disclaimer}*"
        return disclaimer
    except:
        return "*Note: Answer based on partial information*"


# All synthesis is now LLM-driven - no hardcoded templates!
