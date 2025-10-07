"""
Simple, optimized prompts for visualization Cypher generation.
"""

ENTITY_SEARCH_PROMPT = """Find ALL entities related to: {query}

Perform a COMPREHENSIVE search to identify:
1. Direct name matches (use CONTAINS for partial matches)
2. All entities of requested types (if asking for "all sectors", find ALL Sector nodes)
3. Related entities that provide context

Search across Company.name, Person.name, Sector.name properties.
Be BROAD in your search - better to find too many than miss important ones.
Return entity names, types, and key properties."""


VISUALIZATION_CYPHER_PROMPT = """Generate a VISUALIZATION Cypher query for: {user_query}

{entity_context}

CRITICAL RULES:
1. MUST return paths or nodes/relationships for visualization, NOT aggregations
2. Use pattern: MATCH path = (n)-[r]-(m) RETURN path
3. NEVER include newlines within the Cypher query - keep it on a single line
4. For "show all X and samples of Y" queries:
   - First MATCH all X nodes
   - Use COLLECT and array slicing for samples: COLLECT(y)[0..5]
   - Example: MATCH (s:Sector) OPTIONAL MATCH (s)<-[:IN_SECTOR]-(c:Company) WITH s, COLLECT(c)[0..5] AS companies UNWIND companies AS company MATCH path = (s)<-[:IN_SECTOR]-(company) RETURN path

5. For general exploration: LIMIT to 100-200 for readability
6. Use variable-length paths for connections: [*1..2] or [*1..3]
7. ALWAYS write the query as a single line without line breaks

GOOD EXAMPLES (single line):
- MATCH path = (c:Company {{name: 'Dialog Axiata PLC'}})-[*1..2]-(connected) RETURN path LIMIT 100
- MATCH (s:Sector) OPTIONAL MATCH (s)<-[:IN_SECTOR]-(c:Company) WITH s, COLLECT(c)[0..3] AS sample_companies UNWIND sample_companies AS company MATCH path = (s)<-[:IN_SECTOR]-(company) RETURN path
- MATCH path = (p:Person)-[:DIRECTOR_OF]->(c:Company) WHERE c.sector = 'Banking' RETURN path LIMIT 150

BAD EXAMPLES (has newlines):
- MATCH (c:Company)
  WHERE c.name CONTAINS 'dialog'
  RETURN c

Focus on showing GRAPH STRUCTURE for visualization. Return the query as a SINGLE LINE."""


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