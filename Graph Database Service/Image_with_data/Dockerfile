FROM neo4j:5.9

# Set environment variables
ENV NEO4J_dbms_default__listen__address=0.0.0.0
ENV NEO4J_AUTH=neo4j/password



# Copy initialization script and startup script
COPY init.cypher /tmp/init.cypher
COPY startup.sh /startup/startup.sh

# Make startup script executable
RUN chmod +x /startup/startup.sh

# Expose ports
EXPOSE 7687 7474

# Use custom startup script
ENTRYPOINT ["tini", "-g", "--", "/startup/startup.sh"]