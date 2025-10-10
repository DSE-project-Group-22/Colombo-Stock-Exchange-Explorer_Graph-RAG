"""
Simple, optimized prompts for visualization Cypher generation.
"""

ENTITY_SEARCH_PROMPT = """Find ONLY the specific entities needed for: {query}

CRITICAL - Be SMART and MINIMAL:
1. If query mentions specific names → Find ONLY those exact entities (use = or CONTAINS)
2. If query asks for "a few" or "some" → Limit to 3-5 examples
3. If query asks for "all" explicitly → Find all, but still be reasonable
4. If query is about relationships (e.g., "common directors") → Find only the KEY entities involved, not everything

LIMITS:
- Default: Return max 10 entities unless query explicitly needs more
- For exploratory queries: 5-10 entities max
- For specific entities: Only return what's explicitly mentioned

Search efficiently across Company.name, Person.name, Sector.name properties.
PRIORITIZE relevance over completeness - fewer, more relevant results are better."""


VISUALIZATION_CYPHER_PROMPT = """Generate a MINIMAL, TARGETED Cypher query for: {user_query}

{entity_context}

CRITICAL RULES FOR EFFICIENCY:
1. MUST return paths for visualization, NOT aggregations
2. Use pattern: MATCH path = (n)-[r]-(m) RETURN path
3. NEVER include newlines - keep it on a single line
4. BE MINIMAL - Only fetch what user explicitly asks for:
   - "Show X" → Query only X and immediate neighbors
   - "Show X and Y" → Query only X-Y relationships
   - "Show connections between X and Y" → Query shortest paths between them
   - "Show a few/some" → LIMIT 3-5
   - "Explore X" → LIMIT 20-50 max

5. SMART LIMITS (Critical for performance):
   - Specific entity queries: LIMIT 50
   - Relationship queries: LIMIT 30
   - Exploratory queries: LIMIT 20
   - Complex paths [*1..2] or more: LIMIT 15
   - If user says "show all": LIMIT 100 max

6. Variable-length paths: Use SHORTEST paths when possible
7. ALWAYS write the query as a single line

OPTIMIZED EXAMPLES (single line, with limits):
- MATCH path = (c:Company {{name: 'Dialog Axiata PLC'}})-[*1..2]-(connected) RETURN path LIMIT 50
- MATCH (s:Sector) OPTIONAL MATCH (s)<-[:IN_SECTOR]-(c:Company) WITH s, COLLECT(c)[0..3] AS sample_companies UNWIND sample_companies AS company MATCH path = (s)<-[:IN_SECTOR]-(company) RETURN path
- MATCH path = shortestPath((c1:Company {{name: 'Company A'}})-[*1..3]-(c2:Company {{name: 'Company B'}})) RETURN path LIMIT 10

AVOID:
- Queries without LIMIT clauses
- Variable paths without upper bounds
- Fetching all nodes of a type unless explicitly requested

Token efficiency matters - smaller result sets = faster responses."""


def get_entity_search_prompt(query: str) -> str:
    """Get the entity search prompt for a given query."""
    return ENTITY_SEARCH_PROMPT.format(query=query)


def get_visualization_prompt(user_query: str, entity_context: str = "") -> str:
    """
    Get the visualization Cypher generation prompt.
    
    Args:
        user_query: The user's natural language query
        entity_context: Context about entities found in search
    
    Returns:
        The formatted prompt for Cypher generation
    """
    if entity_context:
        entity_context = f"""
The following entities were found in the database:
{entity_context}

IMPORTANT: Use the EXACT entity names from these results in your query."""
    
    return VISUALIZATION_CYPHER_PROMPT.format(
        user_query=user_query,
        entity_context=entity_context
    )