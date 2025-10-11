# Neo4j Graph Database Service

This service provides Neo4j with Colombo Stock Exchange (CSE) data pre-loaded during the Docker build process.

## Quick Start

# Neo4j Graph Database Setup

This setup creates a Neo4j Docker container with automatic script execution and default credentials.

## Features

- **Default Credentials**: Username: `neo4j`, Password: `password`
- **Automatic Script Execution**: `.cypher` files in `ETL Pipeline/Load/cypher_queries/` run automatically the first time the container starts
- **Persistent Data**: Subsequent restarts reuse the data stored in the `neo4j_data` volume so scripts are not re-executed
- **APOC Plugin**: Pre-installed for advanced procedures
- **Graph Data Science**: Pre-installed for graph algorithms
- **Frontend Ready**: Accessible via HTTP and Bolt protocols

## How to Build and Run

### Option 1: Standalone Graph Database
```bash
cd "Graph Database Service"
docker-compose -f docker-compose-graph-only.yml up --build
```

### Option 2: As part of the main application
Use the existing `docker-compose.yml` in the root directory - the graph-db service is already configured.

## Connection Details

- **Neo4j Browser**: http://localhost:7474
- **Bolt Connection**: bolt://localhost:7687
- **Username**: neo4j
- **Password**: password

## Frontend Integration

Your frontend can connect using these connection strings:

### JavaScript/TypeScript (neo4j-driver)
```javascript
import neo4j from 'neo4j-driver'

const driver = neo4j.driver(
    'bolt://localhost:7687',
    neo4j.auth.basic('neo4j', 'password')
)
```

### Python (neo4j)
```python
from neo4j import GraphDatabase

driver = GraphDatabase.driver(
    "bolt://localhost:7687",
    auth=("neo4j", "password")
)
```

## Script Execution

On the first start (or whenever the `neo4j_data` volume is empty) the container executes all `.cypher` files from `ETL Pipeline/Load/cypher_queries/` in alphabetical order. A marker file (`/data/.seeded`) is written afterwards so later restarts skip re-seeding.

To force a fresh seed, remove the `neo4j_data` volume (for example `docker compose down -v`) or delete the `/data/.seeded` file inside the container before restarting.

### Script Naming Convention
For ordered execution, prefix your scripts with numbers:
- `01_create_constraints.cypher`
- `02_create_nodes.cypher`
- `03_create_relationships.cypher`

## Logs

Check script execution logs:
```bash
docker logs cse-explorer-graph-db
```

## Troubleshooting

1. **Container won't start**: Check if ports 7474 and 7687 are available
2. **Scripts not executing**: Verify script paths and permissions
3. **Connection refused**: Wait for the healthcheck to pass (may take 30-60 seconds)

## File Structure

```
Graph Database Service/
├── Dockerfile                          # Neo4j container definition
├── docker-compose-graph-only.yml       # Standalone compose file
├── scripts/
│   └── init-neo4j.sh                  # Script execution handler
└── README.md                          # This file
```

The container references cypher scripts from:
```
ETL Pipeline/Load/cypher_queries/       # Your existing cypher scripts
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
