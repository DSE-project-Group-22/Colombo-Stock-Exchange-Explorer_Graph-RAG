"""
Sample test queries for the Supervisor Agent.
These queries test different aspects of the agent's capabilities.
"""

# Test queries organized by complexity and type
TEST_QUERIES = [
    # Simple entity queries
    "List all companies",
    "List all sectors",
    
    # Entity resolution queries
    "What companies does John Keells own?",
    "Who are the directors of Commercial Bank?",
    
    # Relationship queries
    "Which companies share at least 3 directors in common?",
    "What companies are audited by Ernst & Young?",
    
    # Aggregation queries
    "List the top 5 companies by market capitalization",
    "What are the most common products offered?",
    
    # Complex multi-step queries
    "Who are the directors of Commercial Bank of Ceylon and what other companies are they directors of?",
    "What companies does John Keells Holdings own and what are their ownership percentages?",
    
    # Financial metrics queries
    "Show me companies with revenue over 1 billion",
    "Which companies have the highest profit margins?",
    
    # Sector-based queries
    "List all companies in the Banking sector",
    "Which sectors have the most companies?",
]

# Advanced test queries for stress testing
ADVANCED_QUERIES = [
    "Find all companies that have common directors with John Keells Holdings and list those directors",
    "What is the ownership structure of the top 5 companies by market cap?",
    "Which companies have changed auditors in the last 3 years?",
    "Find companies where the same person is both a director and a major shareholder",
    "List all companies owned by other companies with their ownership percentages",
]

# Error recovery test queries (intentionally challenging)
ERROR_TEST_QUERIES = [
    "What companies does XYZ Corporation own?",  # Non-existent company
    "List directors of company",  # Incomplete query
    "Show me the best companies",  # Ambiguous query
]