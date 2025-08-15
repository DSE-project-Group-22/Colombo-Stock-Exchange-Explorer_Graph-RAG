# Natural Language Agent

Text-to-Cypher query service for Colombo Stock Exchange data using Neo4j GraphRAG and LangChain.

## Virtual Environment Setup

### 1. Create Virtual Environment
```bash
cd "Natural Language Agent"
python3 -m venv venv
```

### 2. Activate Virtual Environment
```bash
# On macOS/Linux:
source venv/bin/activate

# On Windows:
venv\Scripts\activate
```

### 3. Install Dependencies
```bash
pip install -r requirements.txt
```

### 4. Configure Environment
Edit the `.env` file and add your OpenAI API key:
```
OPENAI_API_KEY=your_actual_openai_api_key_here
```

### 5. Run the Service
```bash
python agent.py
```

### 6. Run Tests
```bash
python test_queries.py
```

### 7. Deactivate Virtual Environment
```bash
deactivate
```

## API Endpoints

- **POST** `/query/graphrag` - Neo4j GraphRAG queries (recommended)
- **POST** `/query/langchain` - LangChain queries 
- **GET** `/compare?query=...` - Compare both agents
- **POST** `/cypher/{agent_type}` - Execute raw Cypher
- **GET** `/health` - Health check
- **GET** `/schema/{agent_type}` - Get schema info

## Example Usage

```bash
# Test with curl
curl -X POST "http://localhost:8001/query/graphrag" \
  -H "Content-Type: application/json" \
  -d '{"query": "What are the top 5 companies by market cap?", "top_k": 5}'
```

## Project Structure

```
Natural Language Agent/
├── venv/                    # Virtual environment
├── agents/
│   ├── neo4j_graphrag_agent.py  # Neo4j GraphRAG implementation
│   └── langchain_agent.py       # LangChain implementation
├── schemas/
│   └── cse_schema.py            # CSE-specific schemas
├── .env                         # Environment variables
├── config.py                    # Configuration management
├── agent.py                     # Main FastAPI service
├── requirements.txt             # Dependencies
├── test_queries.py              # Test suite
└── README.md                    # This file
```