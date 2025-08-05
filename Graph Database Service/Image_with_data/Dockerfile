# FROM neo4j:5.9

# # Set build-time environment for data loading
# ENV NEO4J_AUTH=neo4j/tempbuildpass
# ENV NEO4J_dbms_default__listen__address=0.0.0.0

# # Copy data and scripts
# COPY init.cypher /tmp/init.cypher
# COPY startup.sh /startup/startup.sh
# RUN chmod +x /startup/startup.sh

# # Install curl for health checks (if not present)
# USER root
# RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
# USER neo4j

# # Load data during build
# RUN neo4j start & \
#     echo "Waiting for Neo4j to start..." && \
#     sleep 30 && \
#     until cypher-shell -u neo4j -p tempbuildpass "RETURN 1;" > /dev/null 2>&1; do \
#         echo "Still waiting for Neo4j..." && sleep 5; \
#     done && \
#     echo "Loading CSE data..." && \
#     cypher-shell -u neo4j -p tempbuildpass < /tmp/init.cypher && \
#     echo "Data loaded successfully!" && \
#     neo4j stop && \
#     sleep 10

# # Clean up
# RUN rm /tmp/init.cypher

# EXPOSE 7687 7474
# ENTRYPOINT ["/startup/startup.sh"]
# CMD ["neo4j"]