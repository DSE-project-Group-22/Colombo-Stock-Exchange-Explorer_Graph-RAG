"""
Simple, optimized prompts for visualization Cypher generation.
"""

ENTITY_SEARCH_PROMPT = """Extract entity names MENTIONED in the query: {query}

YOUR JOB: Find ONLY the specific entities (companies, people, sectors) that are MENTIONED BY NAME in the user's query.
DO NOT try to answer or solve the query - only extract entity names.

EXAMPLES:

Query: "Show Dialog and Mobitel"
→ Entities mentioned: "Dialog", "Mobitel"
→ Cypher: MATCH (c:Company) WHERE toLower(c.name) CONTAINS 'dialog' OR toLower(c.name) CONTAINS 'mobitel' RETURN c.name LIMIT 10

Query: "Banking sector companies"
→ Entities mentioned: "banking" (sector)
→ Cypher: MATCH (s:Sector) WHERE toLower(s.name) CONTAINS 'bank' RETURN s.name LIMIT 5

Query: "Companies with 3 directors in common"
→ Entities mentioned: NONE (this is a pattern query, no specific entities)
→ Cypher: RETURN NULL LIMIT 0

Query: "Directors on multiple boards"
→ Entities mentioned: NONE (pattern query)
→ Cypher: RETURN NULL LIMIT 0

Query: "John Silva's connections"
→ Entities mentioned: "John Silva" (person)
→ Cypher: MATCH (p:Person) WHERE toLower(p.name) CONTAINS 'silva' RETURN p.name LIMIT 10

CRITICAL RULES:
1. ONLY extract entities explicitly MENTIONED by name
2. Use fuzzy matching with CONTAINS (case-insensitive)
3. If NO entities are mentioned (pattern queries), return: RETURN NULL LIMIT 0
4. Limit results to 10 matches max
5. Return EXACT entity names as they exist in the database

DO NOT try to solve pattern-matching queries - just extract named entities."""


VISUALIZATION_CYPHER_PROMPT = """Generate a MINIMAL, BUG-FREE Cypher query for visualization: {user_query}

{entity_context}

🎯 TWO QUERY TYPES:

1️⃣ IF ENTITIES PROVIDED (entity_context has results):
   - Use EXACT entity names from entity_context
   - DO NOT use user's original wording
   - Example: User said "Dialog" → Entity found "Dialog Axiata PLC" → USE: {{name: "Dialog Axiata PLC"}}

2️⃣ IF NO ENTITIES (entity_context is empty):
   - Generate pattern-based query from user intent
   - Focus on graph patterns, not entity names
   - Examples:
     * "companies with 3 directors in common" → Find Company pairs with shared directors
     * "directors on multiple boards" → Find Person nodes with degree > 1

CRITICAL RULES FOR VISUALIZATION:
1. MUST return paths: MATCH path = ... RETURN path
2. NEVER return aggregations (COUNT, collect, etc.) - return actual paths
3. Single line query (no newlines)
4. ALWAYS include LIMIT clause

PATTERN QUERY EXAMPLES (no entities needed):

Query: "Companies with 3 directors in common"
Cypher: MATCH path = (a:Company)<-[:HOLDS_POSITION]-(p:Person)-[:HOLDS_POSITION]->(b:Company) WHERE id(a) < id(b) WITH a, b, collect(DISTINCT p) AS directors WHERE size(directors) >= 3 MATCH innerPath = (a)<-[:HOLDS_POSITION]-(d:Person)-[:HOLDS_POSITION]->(b) WHERE d IN directors RETURN innerPath LIMIT 30

Query: "Directors serving on multiple boards"
Cypher: MATCH path = (p:Person)-[r:HOLDS_POSITION]->(c:Company) WITH p, count(DISTINCT c) as board_count WHERE board_count > 1 MATCH displayPath = (p)-[:HOLDS_POSITION]->(companies:Company) RETURN displayPath LIMIT 50

Query: "All companies in banking sector"
Cypher: MATCH path = (s:Sector)<-[:PART_OF_SECTOR]-(c:Company) WHERE toLower(s.name) CONTAINS 'bank' RETURN path LIMIT 30

ENTITY-BASED EXAMPLES (entities provided):

Query: "Show Dialog and Mobitel" (entities: "Dialog Axiata PLC", "Mobitel (Pvt) Ltd")
Cypher: MATCH path = (c:Company)-[*1..2]-(connected) WHERE c.name IN ['Dialog Axiata PLC', 'Mobitel (Pvt) Ltd'] RETURN path LIMIT 50

Query: "Banking sector companies" (entity: "Banks")
Cypher: MATCH path = (s:Sector {{name: 'Banks'}})<-[:PART_OF_SECTOR]-(c:Company) RETURN path LIMIT 30

PERFORMANCE LIMITS:
- Pattern queries: LIMIT 30-50
- Entity queries: LIMIT 50
- Complex paths [*1..2]: LIMIT 30
- Exploratory: LIMIT 20

ALWAYS: Single line, return paths, include LIMIT, bug-free syntax."""


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