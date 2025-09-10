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
    # Neo4j Configuration
    neo4j_uri: str = os.getenv("NEO4J_URI", "bolt://localhost:7687")
    neo4j_user: str = os.getenv("NEO4J_USER", "neo4j")
    neo4j_password: str = os.getenv("NEO4J_PASSWORD", "password")
    neo4j_database: str = os.getenv("NEO4J_DATABASE", "neo4j")
    
    # Docker-specific Neo4j URI (for containerized deployment)
    neo4j_uri_docker: str = os.getenv("NEO4J_URI_DOCKER", "bolt://graph-db:7687")
    
    # OpenAI Configuration
    openai_api_key: Optional[str] = os.getenv("OPENAI_API_KEY")
    
    # Redis Configuration
    redis_host: str = os.getenv("REDIS_HOST", "localhost")
    redis_port: int = int(os.getenv("REDIS_PORT", "6379"))
    redis_db: int = int(os.getenv("REDIS_DB", "0"))
    redis_password: Optional[str] = os.getenv("REDIS_PASSWORD", None)
    redis_ttl_hours: int = int(os.getenv("REDIS_TTL_HOURS", "24"))
    
    # Service Configuration
    host: str = os.getenv("HOST", "0.0.0.0")
    port: int = int(os.getenv("PORT", "8001"))
    
    # Environment
    environment: str = os.getenv("ENVIRONMENT", "development")
    
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
        "model_name": "gpt-5-mini",
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