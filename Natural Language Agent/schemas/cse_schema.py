"""
Colombo Stock Exchange (CSE) specific graph schemas and examples
for improved text-to-Cypher query generation
"""

# Neo4j Graph Schema for CSE
CSE_SCHEMA = """
Node properties:
Company {name: STRING, symbol: STRING, sector: STRING, market_cap: FLOAT, pe_ratio: FLOAT, founded_year: INTEGER, description: STRING}
Stock {symbol: STRING, current_price: FLOAT, previous_close: FLOAT, day_change: FLOAT, day_change_percent: FLOAT, volume: INTEGER, market_cap: FLOAT}
Sector {name: STRING, description: STRING, sector_code: STRING}
TradingData {date: DATE, open: FLOAT, high: FLOAT, low: FLOAT, close: FLOAT, volume: INTEGER, adj_close: FLOAT}
News {title: STRING, content: STRING, published_date: DATETIME, source: STRING, sentiment: STRING}
Financial {quarter: STRING, year: INTEGER, revenue: FLOAT, profit: FLOAT, eps: FLOAT, dividend: FLOAT}

Relationship properties:
BELONGS_TO {since: DATE}
HAS_STOCK {listed_date: DATE}
TRADES_ON {exchange: STRING}
HAS_TRADING_DATA {trading_date: DATE}
RELATED_NEWS {relevance_score: FLOAT}
HAS_FINANCIALS {report_type: STRING}
COMPETES_WITH {similarity_score: FLOAT}

The relationships:
(:Company)-[:BELONGS_TO]->(:Sector)
(:Company)-[:HAS_STOCK]->(:Stock)
(:Stock)-[:TRADES_ON]->(:Exchange)
(:Stock)-[:HAS_TRADING_DATA]->(:TradingData)
(:Company)-[:RELATED_NEWS]->(:News)
(:Company)-[:HAS_FINANCIALS]->(:Financial)
(:Company)-[:COMPETES_WITH]->(:Company)
"""

# Example queries for few-shot learning - Updated for actual CSE database structure
CSE_EXAMPLES = [
    {
        "user_input": "What companies are in the database?",
        "cypher_query": "MATCH (c:Company) RETURN c.name, c.id LIMIT 10"
    },
    {
        "user_input": "Show me all sectors",
        "cypher_query": "MATCH (s:Sector) RETURN s.name, s.id"
    },
    {
        "user_input": "Which companies are in the manufacturing sector?",
        "cypher_query": "MATCH (c:Company)-[:IN_SECTOR]->(s:Sector {name: 'Manufacturing'}) RETURN c.name, c.id"
    },
    {
        "user_input": "Who are the directors of Abans Electricals PLC?",
        "cypher_query": "MATCH (p:Person)-[:DIRECTOR_OF]->(c:Company {name: 'Abans Electricals PLC'}) RETURN p.name, r.role"
    },
    {
        "user_input": "What is the revenue of companies?",
        "cypher_query": "MATCH (c:Company)-[r:HAS_METRIC]->(m:Metric {name: 'Revenue'}) RETURN c.name, r.value, r.year ORDER BY r.value DESC"
    },
    {
        "user_input": "Show me companies with their total assets",
        "cypher_query": "MATCH (c:Company)-[r:HAS_METRIC]->(m:Metric {name: 'Total Assets'}) RETURN c.name, r.value ORDER BY r.value DESC"
    },
    {
        "user_input": "What products does Abans Electricals offer?",
        "cypher_query": "MATCH (c:Company {name: 'Abans Electricals PLC'})-[:OFFERS]->(p:Product) RETURN p.name"
    },
    {
        "user_input": "Find companies with high net profit",
        "cypher_query": "MATCH (c:Company)-[r:HAS_METRIC]->(m:Metric {name: 'Net Profit'}) WHERE r.value > 100000000 RETURN c.name, r.value ORDER BY r.value DESC"
    },
    {
        "user_input": "Show me ownership relationships",
        "cypher_query": "MATCH (owner:Company)-[r:OWNS]->(owned:Company) RETURN owner.name, owned.name, r.pct"
    },
    {
        "user_input": "What sectors do companies operate in?",
        "cypher_query": "MATCH (c:Company)-[:IN_SECTOR]->(s:Sector) RETURN c.name, s.name ORDER BY c.name"
    }
]

# Formatted examples for LLM prompts
def get_formatted_examples():
    """Format examples for use in LLM prompts"""
    formatted = []
    for example in CSE_EXAMPLES:
        formatted.append(f"USER INPUT: '{example['user_input']}' QUERY: {example['cypher_query']}")
    return formatted

# Common CSE entities and their variations
CSE_ENTITIES = {
    "sectors": [
        "Banking", "Finance", "Insurance", "Telecommunication", "Manufacturing", 
        "Hotels & Travels", "Power & Energy", "Healthcare", "Construction", 
        "Food & Beverages", "Textile", "Chemical", "IT Services", "Real Estate"
    ],
    "major_companies": [
        "Commercial Bank", "Hatton National Bank", "Dialog Axiata", "John Keells Holdings",
        "Ceylon Tobacco Company", "Nestle Lanka", "Aitken Spence", "Hemas Holdings",
        "Lanka IOC", "Chevron Lubricants", "Singer Sri Lanka", "Cargills Ceylon"
    ],
    "stock_symbols": [
        "COMB", "HNB", "DIAL", "JKH", "CTC", "NEST", "SPEN", "HHL",
        "LIOC", "CHEVRON", "SING", "CARS", "ASIR", "LION"
    ]
}

# Helper function to get schema with entities
def get_enhanced_schema():
    """Get enhanced schema with entity information"""
    entity_info = f"""
    
Common CSE Sectors: {', '.join(CSE_ENTITIES['sectors'])}
Major Companies: {', '.join(CSE_ENTITIES['major_companies'])}
Stock Symbols: {', '.join(CSE_ENTITIES['stock_symbols'])}
    """
    return CSE_SCHEMA + entity_info

