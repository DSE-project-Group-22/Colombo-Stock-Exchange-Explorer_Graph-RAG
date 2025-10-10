"""
Simple, optimized prompts for visualization Cypher generation.
"""

ENTITY_SEARCH_PROMPT = """Find the EXACT entity names from the database for: {query}

CRITICAL - ENTITY NAME RESOLUTION:
User-provided names are often APPROXIMATE. You MUST find the EXACT names in the database using fuzzy matching.

Examples of user input → database search:
- "banking sector" → Search: MATCH (s:Sector) WHERE s.name CONTAINS 'Bank' RETURN s.name
- "Dialog company" → Search: MATCH (c:Company) WHERE c.name CONTAINS 'Dialog' RETURN c.name
- "commercial bank" → Search: MATCH (c:Company) WHERE c.name CONTAINS 'Commercial' OR c.name CONTAINS 'Bank' RETURN c.name

RULES FOR ENTITY RESOLUTION:
1. ALWAYS use CONTAINS (case-insensitive) or fuzzy matching
2. Extract key words from user input: "banking sector" → search for "Bank"
3. Return EXACT entity names as they appear in database
4. For multiple matches, return all relevant ones (limit 10)
5. Search across: Company.name, Person.name, Sector.name

QUERY PATTERNS TO USE:
✅ MATCH (s:Sector) WHERE toLower(s.name) CONTAINS toLower('bank') RETURN DISTINCT s.name
✅ MATCH (c:Company) WHERE toLower(c.name) CONTAINS toLower('dialog') RETURN c.name, c.ticker_symbol
✅ MATCH (p:Person) WHERE toLower(p.name) CONTAINS toLower('silva') RETURN p.name

❌ NEVER: MATCH (s:Sector {{name: 'banking'}}) - user words aren't exact DB names!

LIMITS:
- Specific entity search: Return max 10 matches
- Exploratory queries: 5-10 examples
- If query asks for "all": Still limit to reasonable number (50 max)

OUTPUT REQUIREMENT:
Return the EXACT entity names as they exist in the database. These will be used in the visualization query."""


VISUALIZATION_CYPHER_PROMPT = """Generate a MINIMAL, TARGETED Cypher query for: {user_query}

{entity_context}

🚨 CRITICAL - USE EXACT ENTITY NAMES FROM SEARCH RESULTS:
You MUST use the EXACT entity names found in the entity search above.
DO NOT use the user's original wording - it's often incorrect!

Examples:
- User said: "banking sector" → Entity found: "Banks" → USE: {{name: "Banks"}}
- User said: "Dialog company" → Entity found: "Dialog Axiata PLC" → USE: {{name: "Dialog Axiata PLC"}}
- User said: "commercial bank" → Entity found: "Commercial Bank of Ceylon PLC" → USE: {{name: "Commercial Bank of Ceylon PLC"}}

❌ WRONG: MATCH (s:Sector {{name: "banking"}}) - This will return EMPTY results!
✅ RIGHT: MATCH (s:Sector {{name: "Banks"}}) - Uses exact name from entity search

If entity search returned multiple entities, you can:
- Use all of them: WHERE c.name IN ["Entity1", "Entity2", "Entity3"]
- Pick the most relevant one based on context
- Use the first one if ambiguous

CRITICAL RULES FOR VISUALIZATION:
1. MUST return paths for visualization, NOT aggregations
2. Use pattern: MATCH path = (n)-[r]-(m) RETURN path
3. NEVER include newlines - keep it on a single line
4. ALWAYS use EXACT entity names from entity_context
5. BE MINIMAL - Only fetch what user explicitly asks for:
   - "Show X" → Query only X and immediate neighbors
   - "Show X and Y" → Query only X-Y relationships
   - "Show connections between X and Y" → Query shortest paths between them
   - "Show a few/some" → LIMIT 3-5
   - "Explore X" → LIMIT 20-50 max

SMART LIMITS (Critical for performance):
- Specific entity queries: LIMIT 50
- Relationship queries: LIMIT 30
- Exploratory queries: LIMIT 20
- Complex paths [*1..2] or more: LIMIT 15
- If user says "show all": LIMIT 100 max

Variable-length paths: Use SHORTEST paths when possible
ALWAYS write the query as a single line

OPTIMIZED EXAMPLES (single line, with limits, using exact entity names):
- MATCH path = (c:Company {{name: 'Dialog Axiata PLC'}})-[*1..2]-(connected) RETURN path LIMIT 50
- MATCH path = (s:Sector {{name: 'Banks'}})<-[:PART_OF_SECTOR]-(c:Company) RETURN path LIMIT 30
- MATCH path = shortestPath((c1:Company {{name: 'Dialog Axiata PLC'}})-[*1..3]-(c2:Company {{name: 'Mobitel (Pvt) Ltd'}})) RETURN path LIMIT 10

AVOID:
- Using user's original words instead of exact entity names (causes empty results!)
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