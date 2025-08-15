FROM neo4j:5.9

# Install APOC core plugin (copy from labs to plugins directory)
RUN cp /var/lib/neo4j/labs/apoc-* /var/lib/neo4j/plugins/

# Set default authentication
ENV NEO4J_AUTH=neo4j/password
ENV NEO4J_server_default__listen__address=0.0.0.0

# Configure APOC security settings
ENV NEO4J_dbms_security_procedures_unrestricted=apoc.*
ENV NEO4J_dbms_security_procedures_allowlist=apoc.*

# Copy init script
COPY Image_with_data/init.cypher /var/lib/neo4j/import/init.cypher

# Pre-load data during build with correct neo4j-admin syntax
RUN neo4j-admin dbms set-initial-password password && \
    neo4j start && \
    sleep 15 && \
    cypher-shell -u neo4j -p password --database neo4j < /var/lib/neo4j/import/init.cypher && \
    neo4j stop && \
    rm /var/lib/neo4j/import/init.cypher

EXPOSE 7687 7474
CMD ["neo4j", "console"]