from pydantic_settings import BaseSettings, SettingsConfigDict
from pydantic import Field
from typing import Optional

class Settings(BaseSettings):
    # ✅ Pydantic v2 settings config (replaces inner class Config)
    model_config = SettingsConfigDict(
        env_file=".env",
        case_sensitive=False,
        extra="ignore",   # or "forbid" if you prefer to remove the envs instead
    )

    # Database Configuration
    database_url: str = Field(..., env="DATABASE_URL")
    postgres_user: str = Field(..., env="POSTGRES_USER")
    postgres_password: str = Field(..., env="POSTGRES_PASSWORD")
    postgres_db: str = Field(..., env="POSTGRES_DB")
    postgres_host: str = Field(default="localhost", env="POSTGRES_HOST")
    postgres_port: int = Field(default=5432, env="POSTGRES_PORT")

    # JWT Configuration
    jwt_secret_key: str = Field(..., env="JWT_SECRET_KEY")
    jwt_algorithm: str = Field(default="HS256", env="JWT_ALGORITHM")
    jwt_access_token_expire_minutes: int = Field(default=30, env="JWT_ACCESS_TOKEN_EXPIRE_MINUTES")
    jwt_refresh_token_expire_days: int = Field(default=7, env="JWT_REFRESH_TOKEN_EXPIRE_DAYS")

    # Development Configuration
    development_mode: bool = Field(default=False, env="DEVELOPMENT_MODE")

    # Service URLs
    nl_agent_url: str = Field(..., env="NL_AGENT_URL")
    rag_service_url: str = Field(..., env="RAG_SERVICE_URL")
    data_pipeline_url: str = Field(..., env="DATA_PIPELINE_URL")

    # API Configuration
    api_host: str = Field(default="0.0.0.0", env="API_HOST")
    api_port: int = Field(default=8080, env="API_PORT")
    api_reload: bool = Field(default=False, env="API_RELOAD")

    # ✅ Add these so pydantic doesn’t error on your compose envs
    graph_backend_url: Optional[str] = Field(default=None, env="GRAPH_BACKEND_URL")
    kafka_bootstrap_servers: Optional[str] = Field(default=None, env="KAFKA_BOOTSTRAP_SERVERS")
    redis_url: Optional[str] = Field(default=None, env="REDIS_URL")

settings = Settings()