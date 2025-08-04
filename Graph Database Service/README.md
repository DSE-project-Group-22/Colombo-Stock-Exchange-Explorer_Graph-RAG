# Neo4j Graph Database Service

This service uses a pre-built Neo4j image with Colombo Stock Exchange data.

## Quick Start

replace `StrongPasswordHere` with a password more than or equal 8 chracters

```bash
cd "Graph Database Service"
docker build --tag project-neo4j:dev --file Dockerfile .
docker run -d --name neo4j-db -p 7474:7474 -p 7687:7687 -e NEO4J_AUTH=neo4j/StrongPasswordHere project-neo4j:dev
```

## Access Neo4j

- **Browser**: http://localhost:7474
- **Username**: neo4j  
- **Password**: StrongPasswordHere

## Stop Container

```bash
docker stop neo4j-db
docker rm neo4j-db
```

## What's Included

- Neo4j 5.9 with CSE data pre-loaded
- Exposed on ports 7474 (HTTP) and 7687 (Bolt)
- Ready to use for Graph RAG operations
