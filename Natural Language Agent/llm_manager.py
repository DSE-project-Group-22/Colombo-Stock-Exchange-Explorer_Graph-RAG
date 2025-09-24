"""
Centralized LLM management for the Natural Language Agent.
Provides a singleton ChatOpenAI instance configured from environment.
"""
import threading
import logging
from typing import Optional
from langchain_openai import ChatOpenAI
from config import get_openai_config, settings

logger = logging.getLogger(__name__)


class LLMManager:
    """
    Singleton manager for ChatOpenAI instance.
    Ensures single LLM instance across entire application.
    """
    _instance: Optional['LLMManager'] = None
    _lock = threading.Lock()
    _llm: Optional[ChatOpenAI] = None
    
    def __new__(cls):
        if cls._instance is None:
            with cls._lock:
                if cls._instance is None:
                    cls._instance = super().__new__(cls)
        return cls._instance
    
    def __init__(self):
        """Initialize the LLM manager (only runs once due to singleton)."""
        if self._llm is None:
            self._initialize_llm()
    
    def _initialize_llm(self):
        """Initialize the ChatOpenAI instance with configuration."""
        try:
            # Validate OpenAI key is available
            if not settings.validate_openai_key():
                raise ValueError("OpenAI API key not configured")
            
            # Get OpenAI configuration
            openai_config = get_openai_config()
            
            # Create ChatOpenAI instance
            # Note: gpt-5-mini only supports default temperature (1)
            self._llm = ChatOpenAI(
                model=openai_config["model_name"],
                api_key=openai_config["api_key"],
                max_retries=3,  # Retry on API failures
            )
            
            logger.info(f"LLM initialized with model: {openai_config['model_name']}")
            
        except Exception as e:
            logger.error(f"Failed to initialize LLM: {e}")
            raise
    
    def get_llm(self) -> ChatOpenAI:
        """
        Get the singleton ChatOpenAI instance.
        
        Returns:
            ChatOpenAI: The configured LLM instance
        """
        if self._llm is None:
            self._initialize_llm()
        return self._llm
    
    def reset(self):
        """
        Reset the LLM instance (useful for testing or configuration changes).
        """
        with self._lock:
            self._llm = None
            logger.info("LLM instance reset")


# Global singleton instance
_manager = LLMManager()


def get_llm() -> ChatOpenAI:
    """
    Get the singleton ChatOpenAI instance.
    
    This is the main function to be used throughout the codebase.
    
    Returns:
        ChatOpenAI: The configured LLM instance
        
    Example:
        from llm_manager import get_llm
        
        llm = get_llm()
        response = llm.invoke("Hello, world!")
    """
    return _manager.get_llm()


def reset_llm():
    """
    Reset the LLM instance.
    Useful for testing or when configuration changes.
    """
    _manager.reset()