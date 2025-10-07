#!/usr/bin/env python3
"""
PDF Text Semantic Chunk Retrieval System

This script processes PDF files to retrieve and store text chunks relevant to 
a predefined set of questions. It uses a **semantic chunking** strategy 
to create more contextually coherent chunks.

The script performs:
1. PDF loading and **semantic** text chunking
2. Vector embedding creation using Google Gemini API
3. Similarity-based chunk retrieval for predefined questions
4. Structured JSON output of retrieved chunks with detailed metadata

Author: AI Assistant (Updated for Semantic Chunking)
Date: August 29, 2025
"""

import os
import json
import logging
from pathlib import Path
from typing import Dict, List, Any
from datetime import datetime

# Third-party imports
from langchain_experimental.text_splitter import SemanticChunker
from langchain_community.document_loaders import PyPDFLoader
from langchain_community.vectorstores import Chroma
from langchain_google_genai import GoogleGenerativeAIEmbeddings
import google.generativeai as genai

# Import for new chunking method
try:
    from langchain_text_splitters import RecursiveCharacterTextSplitter
except ImportError:
    try:
        from langchain.text_splitter import RecursiveCharacterTextSplitter
    except ImportError:
        print("Warning: Could not import RecursiveCharacterTextSplitter")

# Configure logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
logger = logging.getLogger(__name__)


def setup_config() -> Dict[str, Any]:
    """
    Returns a dictionary of all configurable parameters for the chunk retrieval system.
    """
    config = {
        # File paths
        "pdf_input_path": "annual reports/HATTON_NATIONAL_BANK_PLC_Annual_Report.pdf",
        "output_directory": "output_semantic",
        
        # Model configuration
        "embedding_model_name": "models/text-embedding-004",
        
        # Chunking parameters
        "chunk_size": 1000,
        "chunk_overlap": 50,
        "separators": ["\n\n", "\n", " ", ""],
        
        # Retrieval parameters
        "top_k_chunks": 5,
        
        # Vector database configuration
        "collection_name": "pdf_semantic_chunks",
        "persist_directory": None,
        
        # API configuration
        "google_api_key_env_var": "GOOGLE_API_KEY",
    }
    
    print(f"✓ Configuration loaded with {len(config)} parameters for RECURSIVE chunking")
    return config


def get_questions_for_schema() -> Dict[str, str]:
    """
    Returns the dictionary of predefined questions for data extraction.
    """
    questions = {
        "company_overview": "What is the company's name, ticker symbol, founding date, listing date, and industry?",
        "sectors": "What sectors or industries does the company operate in?",
        "auditor_details": "Who is the company's auditor, and what are the audit details including year and period?",
        "board_of_directors": "Who are the members of the board of directors, their titles, independence status, and appointment dates?",
        "executives": "Who are the key executives, their positions, departments, and appointment dates?",
        "company_holdings": "What are the company's holdings in other companies, including ownership percentages and share counts?",
        "individual_holdings": "What are the shareholdings of individuals in the company, including percentages and counts?",
        "financial_metrics": "What are the key financial metrics such as revenue, profit, assets, equity, ratios, and their values for specific years?",
        "products_services": "What products, services, or brands does the company offer, including descriptions and launch dates?",
        "subsidiaries": "What are the company's subsidiaries, their relationships, ownership percentages, and descriptions?",
        "governance_structure": "What is the corporate governance structure and policies?",
        "risk_factors": "What are the main risk factors and challenges facing the company?",
        "operational_highlights": "What are the key operational highlights and achievements?",
        "capital_structure": "What is the capital structure and funding sources?",
        "regulatory_compliance": "What regulatory requirements and compliance measures are mentioned?"
    }
    
    print(f"✓ Loaded {len(questions)} predefined questions for chunk retrieval")
    return questions


# def load_and_chunk_semantically(pdf_path: str, embeddings: GoogleGenerativeAIEmbeddings) -> List[Any]:
#     """
#     Loads a PDF and splits it into chunks using SemanticChunker.
#     
#     Args:
#         pdf_path (str): Path to the PDF file
#         embeddings (GoogleGenerativeAIEmbeddings): Initialized embedding model
#         
#     Returns:
#         List[Any]: List of document chunks
#     """
#     print(f"📄 Loading PDF from: {pdf_path}")
#     if not os.path.exists(pdf_path):
#         raise FileNotFoundError(f"PDF file not found: {pdf_path}")
#     
#     try:
#         loader = PyPDFLoader(pdf_path)
#         documents = loader.load()
#         print(f"✓ Loaded PDF with {len(documents)} pages")
#         
#         # Initialize SemanticChunker with the embeddings model
#         text_splitter = SemanticChunker(
#             embeddings, breakpoint_threshold_type="percentile"
#         )
#         
#         # Combine all page content into a single text block for the chunker
#         full_text = "\n\n".join(doc.page_content for doc in documents)
#         
#         # Create chunks
#         chunks = text_splitter.create_documents([full_text])
#         print(f"✓ Created {len(chunks)} semantic chunks")
#         
#         return chunks
#         
#     except Exception as e:
#         logger.error(f"Error loading/chunking PDF: {str(e)}")
#         raise


# Commented out - using alternative chunking approach
# def load_and_chunk_pdf(pdf_path: str, config: Dict[str, Any]) -> List[Any]:
#     """
#     Loads and splits the PDF into chunks using RecursiveCharacterTextSplitter.
# 
#     Args:
#         pdf_path (str): Path to the PDF file
#         config (Dict[str, Any]): Configuration dictionary
# 
#     Returns:
#         List[Any]: List of document chunks
# 
#     Raises:
#         FileNotFoundError: If PDF file doesn't exist
#         Exception: If PDF loading or chunking fails
#     """
#     print(f"📄 Loading PDF from: {pdf_path}")
# 
#     # Check if file exists
#     if not os.path.exists(pdf_path):
#         raise FileNotFoundError(f"PDF file not found: {pdf_path}")
# 
#     try:
#         # Load PDF
#         loader = PyPDFLoader(pdf_path)
#         documents = loader.load()
#         print(f"✓ Loaded PDF with {len(documents)} pages")
# 
#         # Initialize text splitter
#         text_splitter = RecursiveCharacterTextSplitter(
#             chunk_size=config["chunk_size"],
#             chunk_overlap=config["chunk_overlap"],
#             separators=config["separators"]
#         )
# 
#         # Split documents into chunks
#         chunks = text_splitter.split_documents(documents)
#         print(f"✓ Created {len(chunks)} text chunks")
# 
#         # Log chunk statistics
#         if chunks:
#             avg_chunk_length = sum(len(chunk.page_content) for chunk in chunks) / len(chunks)
#             print(f" - Average chunk length: {avg_chunk_length:.0f} characters")
#             print(f" - Chunk size range: {config['chunk_size']} characters")
#             print(f" - Chunk overlap: {config['chunk_overlap']} characters")
# 
#         return chunks
# 
#     except Exception as e:
#         logger.error(f"Error loading and chunking PDF: {str(e)}")
#         raise


def load_and_chunk_pdf(pdf_path: str, config: Dict[str, Any]) -> List[Any]:
    """
    Loads and splits the PDF into chunks using RecursiveCharacterTextSplitter.

    Args:
        pdf_path (str): Path to the PDF file
        config (Dict[str, Any]): Configuration dictionary

    Returns:
        List[Any]: List of document chunks

    Raises:
        FileNotFoundError: If PDF file doesn't exist
        Exception: If PDF loading or chunking fails
    """
    print(f"📄 Loading PDF from: {pdf_path}")

    # Check if file exists
    if not os.path.exists(pdf_path):
        raise FileNotFoundError(f"PDF file not found: {pdf_path}")

    try:
        # Load PDF
        loader = PyPDFLoader(pdf_path)
        documents = loader.load()
        print(f"✓ Loaded PDF with {len(documents)} pages")

        # Initialize text splitter
        text_splitter = RecursiveCharacterTextSplitter(
            chunk_size=config["chunk_size"],
            chunk_overlap=config["chunk_overlap"],
            separators=config["separators"]
        )

        # Split documents into chunks
        chunks = text_splitter.split_documents(documents)
        print(f"✓ Created {len(chunks)} text chunks")

        # Log chunk statistics
        if chunks:
            avg_chunk_length = sum(len(chunk.page_content) for chunk in chunks) / len(chunks)
            print(f" - Average chunk length: {avg_chunk_length:.0f} characters")
            print(f" - Chunk size range: {config['chunk_size']} characters")
            print(f" - Chunk overlap: {config['chunk_overlap']} characters")

        return chunks

    except Exception as e:
        logger.error(f"Error loading and chunking PDF: {str(e)}")
        raise


# Commented out - using alternative approach
# def create_in_memory_vector_db(chunks: List[Any], embeddings: GoogleGenerativeAIEmbeddings, config: Dict[str, Any]) -> Chroma:
#     """
#     Creates the ChromaDB from chunks using the provided Google Gemini embeddings.
#     
#     Args:
#         chunks (List[Any]): List of document chunks
#         embeddings (GoogleGenerativeAIEmbeddings): Initialized embedding model
#         config (Dict[str, Any]): Configuration dictionary
#         
#     Returns:
#         Chroma: ChromaDB vector store instance
#     """
#     print(f"🔧 Creating in-memory vector database...")
#     
#     try:
#         vector_db = Chroma.from_documents(
#             documents=chunks,
#             embedding=embeddings,
#             collection_name=config["collection_name"],
#             persist_directory=config["persist_directory"]
#         )
#         
#         print(f"✓ Vector database created with {len(chunks)} chunks")
#         return vector_db
#         
#     except Exception as e:
#         logger.error(f"Error creating vector database: {str(e)}")
#         raise


def create_in_memory_vector_db(chunks: List[Any], config: Dict[str, Any]) -> Chroma:
    """
    Creates the ChromaDB from chunks using Google Gemini embeddings.

    Args:
        chunks (List[Any]): List of document chunks
        config (Dict[str, Any]): Configuration dictionary

    Returns:
        Chroma: ChromaDB vector store instance

    Raises:
        ValueError: If API key is not available
        Exception: If vector database creation fails
    """
    print(f"🔧 Creating in-memory vector database...")

    # Check for Google API key
    api_key = os.getenv(config["google_api_key_env_var"])
    if not api_key:
        raise ValueError(f"Google API key not found in environment variable: {config['google_api_key_env_var']}")

    try:
        # Configure Google AI
        genai.configure(api_key=api_key)
        print("✓ Google AI API configured")

        # Initialize embeddings
        embeddings = GoogleGenerativeAIEmbeddings(
            model=config["embedding_model_name"],
            google_api_key=api_key
        )
        print(f"✓ Initialized embeddings with model: {config['embedding_model_name']}")

        # Create vector store
        print(f"🔄 Creating vector embeddings for {len(chunks)} chunks...")
        vector_db = Chroma.from_documents(
            documents=chunks,
            embedding=embeddings,
            collection_name=config["collection_name"],
            persist_directory=config["persist_directory"]  # None for in-memory
        )

        print(f"✓ Vector database created successfully")
        print(f" - Collection name: {config['collection_name']}")
        print(f" - Storage type: In-memory")
        print(f" - Total chunks indexed: {len(chunks)}")

        return vector_db

    except Exception as e:
        logger.error(f"Error creating vector database: {str(e)}")
        raise


# Commented out function - using alternative chunking approach
# def create_in_memory_vector_db_old(chunks: List[Any], embeddings: GoogleGenerativeAIEmbeddings, config: Dict[str, Any]) -> Chroma:
#     """
#     Creates the ChromaDB from chunks using the provided Google Gemini embeddings.
#     """
#     print(f"🔧 Creating in-memory vector database...")
#     
#     try:
#         vector_db = Chroma.from_documents(
#             documents=chunks,
#             embedding=embeddings,
#             collection_name=config["collection_name"],
#             persist_directory=config["persist_directory"]
#         )
#         print(f"✓ Vector database created with {len(chunks)} chunks")
#         return vector_db
#         
#     except Exception as e:
#         logger.error(f"Error creating vector database: {str(e)}")
#         raise



def retrieve_relevant_chunks(vector_db: Chroma, questions: Dict[str, str], config: Dict[str, Any]) -> Dict[str, List[str]]:
    """
    Takes the vector DB and questions, performs retrieval for all questions.
    """
    print(f"🔍 Retrieving relevant chunks for {len(questions)} questions...")
    results = {}
    top_k = config["top_k_chunks"]
    
    for question_id, question_text in questions.items():
        try:
            # Perform similarity search
            relevant_docs = vector_db.similarity_search(question_text, k=top_k)
            
            # Extract text content from documents
            chunk_texts = [doc.page_content for doc in relevant_docs]
            results[question_id] = chunk_texts
            
            print(f"  ✓ {question_id}: Retrieved {len(chunk_texts)} chunks")
            
        except Exception as e:
            logger.error(f"Error retrieving chunks for {question_id}: {str(e)}")
            results[question_id] = []
    
    print(f"✓ Chunk retrieval completed for all questions")
    total_chunks = sum(len(chunks) for chunks in results.values())
    print(f"  - Total chunks retrieved: {total_chunks}")
    print(f"  - Average chunks per question: {total_chunks / len(questions):.1f}")
    
    return results


def save_chunks_to_json(results: Dict[str, List[str]], pdf_path: str, config: Dict[str, Any]) -> str:
    """
    Saves the final dictionary to a JSON file with updated metadata.
    """
    print(f"💾 Saving retrieved chunks to JSON file...")
    
    try:
        # Create output directory
        output_dir = config["output_directory"]
        os.makedirs(output_dir, exist_ok=True)
        
        # Generate output filename
        pdf_name = Path(pdf_path).stem
        output_filename = f"{pdf_name}_chunks_recursive.json"
        output_path = os.path.join(output_dir, output_filename)
        
        # Prepare metadata
        total_chunks_retrieved = sum(len(chunks) for chunks in results.values())
        
        output_data = {
            "metadata": {
                "source_pdf": pdf_path,
                "processing_date": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
                "chunking_method": "recursive",
                "total_questions": len(results),
                "embedding_model": config["embedding_model_name"],
                "top_k_chunks": config["top_k_chunks"],
                "total_chunks_retrieved": total_chunks_retrieved,
                "collection_name": config["collection_name"]
            },
            "retrieved_chunks": results
        }
        
        # Save to JSON file
        with open(output_path, 'w', encoding='utf-8') as f:
            json.dump(output_data, f, indent=2, ensure_ascii=False)
        
        print(f"✓ Results saved to: {output_path}")
        print(f"  - Total chunks saved: {total_chunks_retrieved}")
        
        return output_path
        
    except Exception as e:
        logger.error(f"Error saving results: {str(e)}")
        raise


def main():
    """
    Main orchestrator function updated for a semantic chunking workflow.
    """
    print("🚀 Starting PDF RECURSIVE Chunk Retrieval System")
    print("=" * 60)
    
    try:
        # Load configuration
        config = setup_config()
        
        # Load questions
        questions = get_questions_for_schema()
        
        # Setup Google API
        api_key = os.getenv(config["google_api_key_env_var"])
        if not api_key:
            raise ValueError(f"Please set the {config['google_api_key_env_var']} environment variable")
        
        print("✓ Google API key found")
        
        # Load and chunk PDF using recursive character text splitter
        chunks = load_and_chunk_pdf(config["pdf_input_path"], config)
        
        # Create vector database
        vector_db = create_in_memory_vector_db(chunks, config)
        
        # Retrieve relevant chunks
        results = retrieve_relevant_chunks(vector_db, questions, config)
        
        # Save results
        output_path = save_chunks_to_json(results, config["pdf_input_path"], config)
        
        print("\n" + "=" * 60)
        print("✅ RECURSIVE CHUNK RETRIEVAL COMPLETED SUCCESSFULLY!")
        print(f"📄 Output saved to: {output_path}")
        print("=" * 60)
        
    except (FileNotFoundError, ValueError) as e:
        logger.error(f"Configuration/File error: {str(e)}")
        print(f"❌ Error: {str(e)}")
        return 1
        
    except Exception as e:
        logger.error(f"Unexpected error: {str(e)}")
        print(f"❌ Unexpected error occurred: {str(e)}")
        return 1
        
    finally:
        print("🔚 Script execution completed")


if __name__ == "__main__":
    main()