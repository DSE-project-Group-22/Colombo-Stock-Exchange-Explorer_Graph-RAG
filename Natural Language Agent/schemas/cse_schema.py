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

# Example queries for few-shot learning
CSE_EXAMPLES = [
    {
        "user_input": "What are the top 5 companies by market capitalization?",
        "cypher_query": "MATCH (c:Company)-[:HAS_STOCK]->(s:Stock) RETURN c.name, c.symbol, s.market_cap ORDER BY s.market_cap DESC LIMIT 5"
    },
    {
        "user_input": "Show me banking sector companies",
        "cypher_query": "MATCH (c:Company)-[:BELONGS_TO]->(sec:Sector {name: 'Banking'}) RETURN c.name, c.symbol, c.market_cap"
    },
    {
        "user_input": "Find stocks that increased more than 5% today",
        "cypher_query": "MATCH (s:Stock) WHERE s.day_change_percent > 5.0 RETURN s.symbol, s.current_price, s.day_change_percent ORDER BY s.day_change_percent DESC"
    },
    {
        "user_input": "Which companies have PE ratio below 15?",
        "cypher_query": "MATCH (c:Company) WHERE c.pe_ratio < 15 AND c.pe_ratio > 0 RETURN c.name, c.symbol, c.pe_ratio ORDER BY c.pe_ratio ASC"
    },
    {
        "user_input": "Show me the highest volume stocks today",
        "cypher_query": "MATCH (s:Stock) RETURN s.symbol, s.volume, s.current_price ORDER BY s.volume DESC LIMIT 10"
    },
    {
        "user_input": "What are the telecommunications companies?",
        "cypher_query": "MATCH (c:Company)-[:BELONGS_TO]->(sec:Sector) WHERE sec.name CONTAINS 'Telecom' OR sec.name CONTAINS 'Communication' RETURN c.name, c.symbol"
    },
    {
        "user_input": "Find companies with market cap above 10 billion LKR",
        "cypher_query": "MATCH (c:Company) WHERE c.market_cap > 10000000000 RETURN c.name, c.symbol, c.market_cap ORDER BY c.market_cap DESC"
    },
    {
        "user_input": "Show me recent news about Dialog Axiata",
        "cypher_query": "MATCH (c:Company {symbol: 'DIAL'})-[:RELATED_NEWS]->(n:News) RETURN n.title, n.published_date, n.sentiment ORDER BY n.published_date DESC LIMIT 5"
    },
    {
        "user_input": "What is the average PE ratio in the banking sector?",
        "cypher_query": "MATCH (c:Company)-[:BELONGS_TO]->(sec:Sector {name: 'Banking'}) WHERE c.pe_ratio > 0 RETURN AVG(c.pe_ratio) as avg_pe_ratio"
    },
    {
        "user_input": "Show me companies founded after 1990",
        "cypher_query": "MATCH (c:Company) WHERE c.founded_year > 1990 RETURN c.name, c.symbol, c.founded_year ORDER BY c.founded_year DESC"
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