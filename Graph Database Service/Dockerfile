# Graph Database Service Dockerfile
FROM neo4j:5.15-community

# Set environment variables
ENV NEO4J_AUTH=neo4j/password
ENV NEO4J_dbms_security_procedures_unrestricted=gds.*,apoc.*
ENV NEO4J_dbms_security_procedures_allowlist=gds.*,apoc.*

# Copy custom configuration if needed
# COPY neo4j.conf /conf/

# Expose Neo4j ports
EXPOSE 7474 7687

# Use default Neo4j entrypoint
CMD ["neo4j"]
