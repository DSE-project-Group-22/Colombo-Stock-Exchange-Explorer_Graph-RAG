#!/usr/bin/env python3
"""
Configuration module for Gemini-based Cypher Generation
"""

import os
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

class Config:
    """Configuration settings for Cypher generation"""
    
    # Gemini API Configuration
    GEMINI_API_KEY = os.getenv('GEMINI_API_KEY')
    
    # Generation Parameters
    MAX_TOKENS = int(os.getenv('MAX_TOKENS', 8192))
    TEMPERATURE = float(os.getenv('TEMPERATURE', 0.1))
    TOP_P = float(os.getenv('TOP_P', 0.8))
    TOP_K = int(os.getenv('TOP_K', 40))
    
    # File Paths
    PREPROCESSED_TEXTS_DIR = os.getenv('PREPROCESSED_TEXTS_DIR', '../Data Extraction/preprocessing/preprocessed_texts')
    OUTPUT_DIR = os.getenv('OUTPUT_DIR', './generated_cypher')
    
    # Generation Settings
    MODEL_NAME = "gemini-1.5-flash"  # Free tier model
    
    @classmethod
    def validate(cls):
        """Validate configuration"""
        if not cls.GEMINI_API_KEY:
            raise ValueError("GEMINI_API_KEY environment variable is required")
        
        if cls.GEMINI_API_KEY == "your_gemini_api_key_here":
            raise ValueError("Please replace the placeholder API key with your actual Gemini API key")
        
        return True
