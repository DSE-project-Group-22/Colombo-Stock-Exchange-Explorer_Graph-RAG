"""
Configuration management for Natural Language Agent
"""
import os
from typing import Optional
from pydantic_settings import BaseSettings
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()


class Settings(BaseSettings):
    # OpenAI Configuration
    openai_api_key: Optional[str] = os.getenv("OPENAI_API_KEY")
    openai_model: str = os.getenv("OPENAI_MODEL", "gpt-5-mini")
    
    # Neo4j Configuration
    neo4j_uri: str = os.getenv("NEO4J_URI", "bolt://localhost:7687")
    neo4j_user: str = os.getenv("NEO4J_USER", "neo4j")
    neo4j_password: str = os.getenv("NEO4J_PASSWORD", "password")
    neo4j_database: str = os.getenv("NEO4J_DATABASE", "neo4j")
    
    # Docker-specific Neo4j URI (for containerized deployment)
    neo4j_uri_docker: str = os.getenv("NEO4J_URI_DOCKER", "bolt://graph-db:7687")
    
    # Redis Configuration
    redis_host: str = os.getenv("REDIS_HOST", "localhost")
    redis_port: int = int(os.getenv("REDIS_PORT", "6379"))
    redis_db: int = int(os.getenv("REDIS_DB", "0"))
    redis_password: Optional[str] = os.getenv("REDIS_PASSWORD", None)
    redis_ttl_hours: int = int(os.getenv("REDIS_TTL_HOURS", "24"))
    
    # Kafka Configuration
    kafka_bootstrap_servers: str = os.getenv("KAFKA_BOOTSTRAP_SERVERS", "kafka:29092")
    kafka_group_id: str = os.getenv("KAFKA_GROUP_ID", "nl-agent-group")
    kafka_request_topic: str = os.getenv("KAFKA_REQUEST_TOPIC", "chat.requests")
    
    # Agent Configuration
    agent_max_iterations: int = int(os.getenv("AGENT_MAX_ITERATIONS", "10"))
    supervisor_max_iterations: int = int(os.getenv("SUPERVISOR_MAX_ITERATIONS", "7"))  # Reduced: 2 entity resolution + 5 data queries
    agent_verbose: bool = os.getenv("AGENT_VERBOSE", "true").lower() == "true"
    max_agent_iterations: int = int(os.getenv("MAX_AGENT_ITERATIONS", "10"))  # Max iterations for tool-calling loop
    entity_resolution_max_attempts: int = int(os.getenv("ENTITY_RESOLUTION_MAX_ATTEMPTS", "2"))  # Max attempts to resolve an entity
    
    # GraphCypherQAChain Configuration
    cypher_qa_top_k: int = int(os.getenv("CYPHER_QA_TOP_K", "100"))  # Number of results to return from Cypher queries
    cypher_verbose: bool = os.getenv("CYPHER_VERBOSE", os.getenv("AGENT_VERBOSE", "true")).lower() == "true"  # Log Cypher queries
    
    # Service Configuration
    host: str = os.getenv("HOST", "0.0.0.0")
    port: int = int(os.getenv("PORT", "8001"))
    
    # Environment
    environment: str = os.getenv("ENVIRONMENT", "development")
    
    # Langfuse Configuration
    langfuse_public_key: Optional[str] = os.getenv("LANGFUSE_PUBLIC_KEY")
    langfuse_secret_key: Optional[str] = os.getenv("LANGFUSE_SECRET_KEY")
    langfuse_host: str = os.getenv("LANGFUSE_HOST", "https://cloud.langfuse.com")
    langfuse_enabled: bool = os.getenv("LANGFUSE_ENABLED", "false").lower() == "true"
    
    # Tavily Configuration (for web search tool if needed)
    tavily_api_key: Optional[str] = os.getenv("TAVILY_API_KEY")
    tavily_max_results: int = int(os.getenv("TAVILY_MAX_RESULTS", "3"))
    tavily_search_depth: str = os.getenv("TAVILY_SEARCH_DEPTH", "basic")
    tavily_include_answer: bool = os.getenv("TAVILY_INCLUDE_ANSWER", "false").lower() == "true"
    
    @property
    def is_development(self) -> bool:
        return self.environment.lower() == "development"
    
    @property
    def is_production(self) -> bool:
        return self.environment.lower() == "production"
    
    @property
    def effective_neo4j_uri(self) -> str:
        """
        Returns the appropriate Neo4j URI based on environment.
        Uses Docker URI if running in container, otherwise local URI.
        """
        if os.getenv("DOCKER_CONTAINER") or not self.is_development:
            return self.neo4j_uri_docker
        return self.neo4j_uri
    
    def validate_openai_key(self) -> bool:
        """Validate that OpenAI API key is present"""
        return bool(self.openai_api_key and self.openai_api_key != "your_openai_api_key_here")
    
    def validate_tavily_key(self) -> bool:
        """
        Validate that Tavily API key is configured and not empty.
        Returns True if key exists and is not empty, False otherwise.
        """
        return bool(self.tavily_api_key and self.tavily_api_key.strip())
    
    class Config:
        env_file = ".env"
        case_sensitive = False


# Global settings instance
settings = Settings()


def get_neo4j_connection_params() -> dict:
    """Get Neo4j connection parameters"""
    return {
        "uri": settings.effective_neo4j_uri,
        "auth": (settings.neo4j_user, settings.neo4j_password),
        "database": settings.neo4j_database
    }


def get_openai_config() -> dict:
    """Get OpenAI configuration"""
    if not settings.validate_openai_key():
        raise ValueError(
            "OpenAI API key not configured. Please set OPENAI_API_KEY in .env file"
        )
    
    return {
        "api_key": settings.openai_api_key,
        "model_name": settings.openai_model,
    }


def get_redis_connection_params() -> dict:
    """Get Redis connection parameters"""
    return {
        "host": settings.redis_host,
        "port": settings.redis_port,
        "db": settings.redis_db,
        "password": settings.redis_password,
        "decode_responses": True,  # Return strings instead of bytes
    }


def get_redis_url() -> str:
    """Get Redis URL for connection"""
    auth = f":{settings.redis_password}@" if settings.redis_password else ""
    return f"redis://{auth}{settings.redis_host}:{settings.redis_port}/{settings.redis_db}"