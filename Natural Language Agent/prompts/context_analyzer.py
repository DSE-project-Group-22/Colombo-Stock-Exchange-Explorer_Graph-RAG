"""Context analyzer prompt - keeps it simple"""
from langchain.prompts import PromptTemplate

# Single, simple prompt as a multi-line string
CONTEXT_ANALYZER_PROMPT_STRING = """
You are analyzing a conversation about the Colombo Stock Exchange.

CONVERSATION HISTORY (including latest user message):
{chat_history}

Your task: Reformulate the LAST user message in the conversation to be self-contained.
- Replace pronouns (it, they, that) with specific entity names from the conversation
- Include any context needed to understand the query
- Keep it concise but complete

Reformulated query:"""

# Convert to LangChain template
CONTEXT_ANALYZER_PROMPT = PromptTemplate.from_template(CONTEXT_ANALYZER_PROMPT_STRING)