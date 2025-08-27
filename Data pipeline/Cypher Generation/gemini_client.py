#!/usr/bin/env python3
"""
Gemini API client for Cypher query generation
"""

import google.generativeai as genai
import time
import logging
from typing import Optional
from config import Config

class GeminiCypherGenerator:
    """Gemini API client for generating Cypher queries from enriched text"""
    
    def __init__(self):
        """Initialize the Gemini client"""
        self.config = Config()
        self.config.validate()
        
        # Configure Gemini API
        genai.configure(api_key=self.config.GEMINI_API_KEY)
        
        # Initialize the model
        self.model = genai.GenerativeModel(self.config.MODEL_NAME)
        
        # Setup logging
        logging.basicConfig(level=logging.INFO)
        self.logger = logging.getLogger(__name__)
        
        # Generation configuration
        self.generation_config = genai.types.GenerationConfig(
            max_output_tokens=self.config.MAX_TOKENS,
            temperature=self.config.TEMPERATURE,
            top_p=self.config.TOP_P,
            top_k=self.config.TOP_K,
        )
    
    def create_cypher_prompt(self, enriched_content: str) -> str:
        """Create a focused prompt for Cypher generation"""
        
        prompt = f"""You are an expert Neo4j Cypher query generator. I will provide you with enriched annual report data that contains:

1. Complete schema specification (9.1 Database Schema)
2. Pre-mapped entity IDs for companies and persons
3. Detailed instructions for relationship types
4. Original annual report text for information extraction

Your task is to generate comprehensive, ready-to-execute Cypher queries that:

✅ Follow the EXACT schema definition provided
✅ Use EXACT entity IDs from the mappings
✅ Create new entities (Sector, Product, Metric) with consistent naming
✅ Extract ALL applicable relationship types from the text
✅ Include proper property names and data types
✅ Use proper date formats (YYYY-MM-DD)

IMPORTANT GUIDELINES:
- Generate ONLY valid Cypher queries (no explanations)
- Use exact entity IDs provided in the mappings
- Follow the relationship property specifications exactly
- Create comprehensive queries covering all 9 relationship types where applicable
- Start with node creation, then relationships
- Use proper Cypher syntax with MATCH and CREATE statements

Here is the enriched data:

{enriched_content}

Generate the comprehensive Cypher queries now:"""

        return prompt
    
    def generate_cypher(self, enriched_content: str, company_name: str) -> Optional[str]:
        """Generate Cypher queries using Gemini API"""
        
        try:
            self.logger.info(f"Generating Cypher queries for {company_name}...")
            
            # Create the prompt
            prompt = self.create_cypher_prompt(enriched_content)
            
            # Generate content using Gemini
            response = self.model.generate_content(
                prompt,
                generation_config=self.generation_config
            )
            
            # Check if generation was successful
            if response.text:
                self.logger.info(f"✅ Successfully generated Cypher for {company_name}")
                return response.text.strip()
            else:
                self.logger.error(f"❌ Empty response for {company_name}")
                return None
                
        except Exception as e:
            self.logger.error(f"❌ Error generating Cypher for {company_name}: {e}")
            
            # Handle rate limiting for free tier
            if "quota" in str(e).lower() or "rate" in str(e).lower():
                self.logger.warning("Rate limit hit. Waiting 60 seconds...")
                time.sleep(60)
            
            return None
    
    def clean_cypher_output(self, cypher_text: str) -> str:
        """Clean and format the generated Cypher output"""
        
        if not cypher_text:
            return ""
        
        # Remove markdown code blocks if present
        if "```cypher" in cypher_text:
            cypher_text = cypher_text.split("```cypher")[1]
            if "```" in cypher_text:
                cypher_text = cypher_text.split("```")[0]
        elif "```" in cypher_text:
            cypher_text = cypher_text.split("```")[1]
            if "```" in cypher_text:
                cypher_text = cypher_text.split("```")[0]
        
        # Clean up extra whitespace and newlines
        lines = [line.strip() for line in cypher_text.split('\n') if line.strip()]
        
        # Remove non-Cypher content (explanations, etc.)
        cypher_lines = []
        for line in lines:
            # Keep lines that look like Cypher commands
            if (line.startswith(('CREATE', 'MATCH', 'MERGE', 'SET', 'RETURN', '//', '--')) or
                'CREATE' in line or 'MATCH' in line or 'MERGE' in line):
                cypher_lines.append(line)
        
        return '\n'.join(cypher_lines)
    
    def validate_cypher_syntax(self, cypher_text: str) -> bool:
        """Basic validation of Cypher syntax"""
        
        if not cypher_text:
            return False
        
        # Check for basic Cypher keywords
        cypher_keywords = ['CREATE', 'MATCH', 'MERGE', 'SET', 'RETURN']
        has_cypher = any(keyword in cypher_text.upper() for keyword in cypher_keywords)
        
        # Check for basic Neo4j patterns
        has_nodes = '(' in cypher_text and ')' in cypher_text
        has_relationships = '[' in cypher_text and ']' in cypher_text
        
        return has_cypher and (has_nodes or has_relationships)
