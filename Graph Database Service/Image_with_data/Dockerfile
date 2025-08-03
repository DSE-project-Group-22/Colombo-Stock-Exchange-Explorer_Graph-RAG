# Use official Neo4j image as base
FROM neo4j:5.9

# Ensure Neo4j listens on all interfaces
ENV NEO4J_dbms_default__listen__address=0.0.0.0


# Official entrypoint will run any *.cypher in /docker-entrypoint-initdb.d/
COPY init.cypher /docker-entrypoint-initdb.d/1-init.cypher

# (Optional) Pre-configure your default password
# ENV NEO4J_AUTH=neo4j/YourStrongPassword