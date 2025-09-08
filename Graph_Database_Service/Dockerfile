FROM neo4j:5.13-community

# Set default authentication
ENV NEO4J_AUTH=neo4j/password

# Enable APOC and GDS plugins
ENV NEO4J_PLUGINS='["apoc", "graph-data-science"]'
ENV NEO4J_dbms_security_procedures_unrestricted=gds.*,apoc.*
ENV NEO4J_dbms_security_procedures_allowlist=gds.*,apoc.*

# Allow connections from any host
ENV NEO4J_dbms_default__listen__address=0.0.0.0
ENV NEO4J_dbms_connector_bolt_listen__address=:7687
ENV NEO4J_dbms_connector_http_listen__address=:7474

# Copy cypher scripts (note: cypher_queries not cypher_queries/)
COPY ETL_Pipeline/Load/cypher_queries /var/lib/neo4j/import/cypher_queries/

# Copy initialization script
COPY Graph_Database_Service/scripts/init-neo4j.sh /docker-entrypoint-initdb.d/

# Make script executable
USER root
RUN chmod +x /docker-entrypoint-initdb.d/init-neo4j.sh

# Switch back to neo4j user
USER neo4j

EXPOSE 7474 7687