FROM bashithashamila/neo4j-with-colombo-stock-exchange-data:latest

# 2. Make Neo4j bind to 0.0.0.0 so other containers or hosts can reach it
ENV NEO4J_dbms_default__listen__address=0.0.0.0

# 3. Re-declare the Bolt and HTTP ports (for clarity & tooling)
EXPOSE 7687 7474

