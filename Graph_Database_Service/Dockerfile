FROM neo4j:5.13-community

# --- Neo4j config ---
ENV NEO4J_AUTH=neo4j/password
ENV NEO4J_PLUGINS='["apoc", "graph-data-science"]'
ENV NEO4J_dbms_security_procedures_unrestricted=gds.*,apoc.*
ENV NEO4J_dbms_security_procedures_allowlist=gds.*,apoc.*
ENV NEO4J_server_default_listen_address=0.0.0.0
ENV NEO4J_server_bolt_listen_address=0.0.0.0:7687
ENV NEO4J_server_http_listen_address=0.0.0.0:7474
ENV NEO4J_server_config_strict_validation_enabled=false

# Copy entrypoint (from build context) into image
COPY ./entrypoint.sh /startup/entrypoint.sh

# Normalize line endings + make executable (run as root)
USER root
RUN sed -i 's/\r$//' /startup/entrypoint.sh && chmod 755 /startup/entrypoint.sh

# Back to neo4j user
USER neo4j

# Use sh explicitly so we don't depend on the script's shebang
ENTRYPOINT ["/bin/sh", "/startup/entrypoint.sh"]

EXPOSE 7474 7687
