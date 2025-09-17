FROM neo4j:5.13-community

# Set default authentication
ENV NEO4J_AUTH=neo4j/password

# Enable APOC and GDS plugins
ENV NEO4J_PLUGINS='["apoc", "graph-data-science"]'
ENV NEO4J_dbms_security_procedures_unrestricted=gds.*,apoc.*
ENV NEO4J_dbms_security_procedures_allowlist=gds.*,apoc.*

# Allow connections from any host
ENV NEO4J_server_default_listen_address=0.0.0.0
ENV NEO4J_server_bolt_listen_address=0.0.0.0:7687
ENV NEO4J_server_http_listen_address=0.0.0.0:7474
ENV NEO4J_server_config_strict_validation_enabled=false

# Copy custom entrypoint script
COPY entrypoint.sh /startup/entrypoint.sh

# Make the entrypoint script executable
USER root
RUN chmod +x /startup/entrypoint.sh

# Switch back to neo4j user
USER neo4j

# Set custom entrypoint
ENTRYPOINT ["/startup/entrypoint.sh"]

# Expose Neo4j ports
EXPOSE 7474 7687