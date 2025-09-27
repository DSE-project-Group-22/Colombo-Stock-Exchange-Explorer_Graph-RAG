"""Supervisor prompt - simplified"""
from langchain.prompts import PromptTemplate

# Simple supervisor prompt
SUPERVISOR_PROMPT_STRING = """
You are querying the Colombo Stock Exchange Neo4j graph database.

Database has: Companies, People (directors), Sectors, ownership relationships.
Important: Company names often have suffixes like "PLC", "Ltd". Always search for partial names first.

USER QUERY: {user_query}

PREVIOUS ATTEMPTS:
{query_history}

Generate the next NATURAL LANGUAGE query (NOT SQL or Cypher) to answer the user's question.
Examples of good queries:
- "List all companies with 'John Keells' in the name"
- "What companies does John Keells Holdings PLC own?"
- "Show the ownership percentage of John Keells Holdings PLC in each subsidiary"

If you have enough information, respond with "FINAL_ANSWER: [your complete answer]"

Your natural language query or final answer:"""

SUPERVISOR_PROMPT = PromptTemplate.from_template(SUPERVISOR_PROMPT_STRING)