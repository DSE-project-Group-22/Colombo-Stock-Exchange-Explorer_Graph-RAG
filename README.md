# Colombo Stock Exchange Explorer with Graph RAG

Natural language querying over Sri Lankan stock market data using Neo4j and RAG.

## Quick Start

```bash
docker compose up -d
```

First startup takes longer due to Neo4j initialization with graph data.

## Required Environment Variables

Create `Natural Language Agent/.env` with:

```bash
OPENAI_API_KEY=your_openai_api_key_here
```

All other configuration (Neo4j, Redis, Kafka) is provided by `docker-compose.yml`.

Optional: Add Langfuse keys for observability (see `Natural Language Agent/.env.example`).

## Access

- Frontend: http://localhost:5173
- API Gateway: http://localhost:8080
- Neo4j Browser: http://localhost:7474
- Kafka UI: http://localhost:8090
