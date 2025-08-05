# Neo4j Graph Database Service

This service provides Neo4j with Colombo Stock Exchange (CSE) data pre-loaded during the Docker build process.

## Quick Start

```bash
cd "Graph Database Service"
docker build --tag project-neo4j:dev --file Dockerfile .
docker run -d --name neo4j-db -p 7474:7474 -p 7687:7687 project-neo4j:dev
```

## Access Neo4j

- **Browser**: http://localhost:7474
- **Username**: `neo4j`  
- **Password**: `password`

The CSE data is automatically loaded and ready to use immediately.

## Stop Container

```bash
docker stop neo4j-db
docker rm neo4j-db
```

## What's Included

- **Neo4j 5.9** with CSE data pre-loaded during build
- **Fixed credentials**: `neo4j/password` (no password change required)
- **Ports exposed**: 7474 (HTTP Browser) and 7687 (Bolt Protocol)
- **Ready for Graph RAG operations** - data is immediately available

## Technical Details

- Data loading happens during Docker build process for faster container startup
- Uses `neo4j-admin dbms set-initial-password` for proper authentication setup
- CSE data is loaded via `init.cypher` script during build
- Container starts immediately with data ready to query

## Docker Commands Reference

```bash
# Build the image
docker build --tag project-neo4j:dev --file Dockerfile .

# Run in background
docker run -d --name neo4j-db -p 7474:7474 -p 7687:7687 project-neo4j:dev

# View logs
docker logs neo4j-db

# Stop and cleanup
docker stop neo4j-db && docker rm neo4j-db
```