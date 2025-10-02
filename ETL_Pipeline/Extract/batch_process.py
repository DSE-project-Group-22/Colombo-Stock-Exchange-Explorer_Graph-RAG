#!/usr/bin/env python3
"""
Batch PDF Chunk Retrieval Script

This script processes multiple PDF files in a directory using the chunk_retriever.py module.
It's designed to work with the existing chunk retrieval system for bulk processing.

Usage:
    python batch_process.py [input_directory] [output_directory]

Example:
    python batch_process.py "annual reports" "batch_output"
"""

import os
import sys
import json
import time
from pathlib import Path
from typing import List, Dict, Any
import chromadb  # Import for client management

# Import the main chunk retriever functions
try:
    from chunk_retriever import (
        setup_config, 
        get_questions_for_schema, 
        load_and_chunk_pdf,  # Updated function name
        create_in_memory_vector_db,
        retrieve_relevant_chunks,
        save_chunks_to_json
    )
except ImportError:
    print("❌ Error: Could not import chunk_retriever.py")
    print("   Make sure chunk_retriever.py is in the same directory")
    sys.exit(1)


def find_pdf_files(directory: str) -> List[str]:
    """
    Find all PDF files in the specified directory.
    
    Args:
        directory (str): Directory to search for PDF files
        
    Returns:
        List[str]: List of PDF file paths
    """
    pdf_files = []
    
    if not os.path.exists(directory):
        print(f"❌ Directory not found: {directory}")
        return pdf_files
    
    for file in os.listdir(directory):
        if file.lower().endswith('.pdf'):
            pdf_path = os.path.join(directory, file)
            pdf_files.append(pdf_path)
    
    return sorted(pdf_files)


def process_single_pdf(pdf_path: str, config: Dict[str, Any], questions: Dict[str, str]) -> Dict[str, Any]:
    """
    Process a single PDF file and return results summary.
    
    Args:
        pdf_path (str): Path to the PDF file
        config (Dict[str, Any]): Configuration dictionary
        questions (Dict[str, str]): Questions dictionary
        
    Returns:
        Dict[str, Any]: Processing results summary
    """
    start_time = time.time()
    result_summary = {
        "pdf_path": pdf_path,
        "success": False,
        "error": None,
        "chunks_created": 0,
        "chunks_retrieved": 0,
        "processing_time": 0,
        "output_file": None
    }
    
    try:
        print(f"\n📄 Processing: {os.path.basename(pdf_path)}")
        
        # Update config for this specific PDF
        config["pdf_input_path"] = pdf_path
        
        # Make collection name unique to this PDF to prevent chunk accumulation
        pdf_stem = Path(pdf_path).stem
        config["collection_name"] = f"pdf_chunks_{pdf_stem}"
        
        # Step 1: Load and chunk PDF using recursive chunking
        chunks = load_and_chunk_pdf(pdf_path, config)
        result_summary["chunks_created"] = len(chunks)
        
        # Step 2: Create vector database (with unique collection)
        # Create a fresh Chroma client for isolation
        chroma_client = chromadb.Client()
        # Optional: Delete if somehow exists (though unique name should prevent)
        try:
            chroma_client.delete_collection(name=config["collection_name"])
        except:
            pass
        # Pass the client to create_in_memory_vector_db (modify chunk_retriever.py if needed to accept client arg; see notes below)
        # Assuming create_in_memory_vector_db accepts client kwarg; if not, add it there as Chroma(..., client=chroma_client)
        vector_db = create_in_memory_vector_db(chunks, config)  # Update function to use client if necessary
        
        # Step 3: Retrieve relevant chunks
        results = retrieve_relevant_chunks(vector_db, questions, config)
        result_summary["chunks_retrieved"] = sum(len(chunks) for chunks in results.values())
        
        # Step 4: Save results to JSON
        json_path = save_chunks_to_json(results, pdf_path, config)
        result_summary["output_file"] = json_path
        result_summary["success"] = True
        
        processing_time = time.time() - start_time
        result_summary["processing_time"] = processing_time
        
        print(f"✅ Completed: {os.path.basename(pdf_path)} ({processing_time:.1f}s)")
        
    except Exception as e:
        processing_time = time.time() - start_time
        result_summary["processing_time"] = processing_time
        result_summary["error"] = str(e)
        print(f"❌ Failed: {os.path.basename(pdf_path)} - {str(e)}")
    
    return result_summary


def save_batch_summary(results: List[Dict[str, Any]], output_dir: str) -> str:
    """
    Save a summary of the batch processing results.
    
    Args:
        results (List[Dict[str, Any]]): List of processing results
        output_dir (str): Output directory
        
    Returns:
        str: Path to the summary file
    """
    summary_data = {
        "batch_processing_summary": {
            "total_files": len(results),
            "successful_files": sum(1 for r in results if r["success"]),
            "failed_files": sum(1 for r in results if not r["success"]),
            "total_chunks_created": sum(r["chunks_created"] for r in results),
            "total_chunks_retrieved": sum(r["chunks_retrieved"] for r in results),
            "total_processing_time": sum(r["processing_time"] for r in results),
            "processing_timestamp": time.strftime("%Y-%m-%d %H:%M:%S")
        },
        "file_results": results
    }
    
    summary_path = os.path.join(output_dir, "batch_processing_summary.json")
    
    with open(summary_path, 'w', encoding='utf-8') as f:
        json.dump(summary_data, f, indent=2, ensure_ascii=False)
    
    return summary_path


def main():
    """
    Main function for batch processing PDFs.
    """
    print("🔄 PDF Batch Recursive Chunk Retrieval System")
    print("=" * 50)
    
    # Parse command line arguments
    if len(sys.argv) > 1:
        input_dir = sys.argv[1]
    else:
        input_dir = "annual reports"
    
    if len(sys.argv) > 2:
        output_dir = sys.argv[2]
    else:
        output_dir = "batch_output"
    
    print(f"📁 Input directory: {input_dir}")
    print(f"📁 Output directory: {output_dir}")
    
    # Create output directory
    os.makedirs(output_dir, exist_ok=True)
    
    # Find PDF files
    pdf_files = find_pdf_files(input_dir)
    if not pdf_files:
        print(f"❌ No PDF files found in '{input_dir}'")
        return 1
    
    print(f"📚 Found {len(pdf_files)} PDF files to process")
    
    # Setup configuration and questions
    config = setup_config()
    config["output_directory"] = output_dir  # Override output directory
    questions = get_questions_for_schema()
    
    # Setup Google API 
    api_key = os.getenv(config["google_api_key_env_var"])
    if not api_key:
        print(f"❌ Error: {config['google_api_key_env_var']} environment variable not set")
        return 1
    
    print(f"✓ Google API key found")
    
    # Process each PDF
    results = []
    total_start_time = time.time()
    
    for i, pdf_path in enumerate(pdf_files, 1):
        print(f"\n[{i}/{len(pdf_files)}] " + "="*40)
        result = process_single_pdf(pdf_path, config, questions)
        results.append(result)
    
    # Generate batch summary
    total_processing_time = time.time() - total_start_time
    summary_path = save_batch_summary(results, output_dir)
    
    # Print final summary
    successful = sum(1 for r in results if r["success"])
    failed = len(results) - successful
    total_chunks = sum(r["chunks_retrieved"] for r in results)
    
    print(f"\n" + "="*50)
    print("📊 BATCH PROCESSING COMPLETED")
    print(f"✅ Successful: {successful}/{len(results)} files")
    if failed > 0:
        print(f"❌ Failed: {failed}/{len(results)} files")
    print(f"📄 Total chunks retrieved: {total_chunks:,}")
    print(f"⏱️  Total processing time: {total_processing_time:.1f} seconds")
    print(f"📋 Summary saved: {summary_path}")
    print("="*50)
    
    if failed > 0:
        print("\n❌ Failed files:")
        for result in results:
            if not result["success"]:
                print(f"   - {os.path.basename(result['pdf_path'])}: {result['error']}")
    
    return 0 if failed == 0 else 1


if __name__ == "__main__":
    sys.exit(main())