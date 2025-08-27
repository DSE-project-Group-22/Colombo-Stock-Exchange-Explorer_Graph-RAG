#!/usr/bin/env python3
"""
Run entity resolution pipeline on extracted texts.
Processes all files in the input directory each time (no incremental processing).
"""

import argparse
import sys
import os
from pathlib import Path
from entity_resolution import EntityResolutionPipeline


def main():
    parser = argparse.ArgumentParser(description="Run person entity resolution on extracted annual reports")
    parser.add_argument(
        "--input-dir", 
        type=str, 
        default="extracted_texts",
        help="Directory containing extracted text files (default: extracted_texts)"
    )
    parser.add_argument(
        "--output-dir", 
        type=str, 
        default="output",
        help="Directory to save results (default: output)"
    )
    parser.add_argument(
        "--threshold", 
        type=float, 
        default=0.85,
        help="Similarity threshold for entity matching (default: 0.85)"
    )
    parser.add_argument(
        "--verbose", 
        action="store_true",
        help="Enable verbose logging"
    )
    
    args = parser.parse_args()
    
    # Check if input directory exists
    input_path = Path(args.input_dir)
    if not input_path.exists():
        print(f"Error: Input directory '{args.input_dir}' does not exist")
        sys.exit(1)
    
    # Get all text files to process
    all_files = list(input_path.glob("*.txt"))
    
    print(f"📊 Directory: {args.input_dir}")
    print(f"📊 Total text files: {len(all_files)}")
    print(f"🔄 Processing all files (no incremental processing)")
    
    if len(all_files) == 0:
        print("❌ No text files found in the input directory!")
        print(f"💡 Make sure there are .txt files in {args.input_dir}")
        return
    
    print(f"Found {len(all_files)} files to process:")
    for file in all_files:
        print(f"  - {file.name}")
    
    # Run pipeline
    try:
        pipeline = EntityResolutionPipeline(
            extracted_texts_dir=args.input_dir,
            output_dir=args.output_dir
        )
        
        # Update similarity threshold if provided
        pipeline.resolver.similarity_threshold = args.threshold
        
        print(f"\nStarting entity resolution with threshold {args.threshold}")
        print(f"Processing all {len(all_files)} files...")
        
        # Process all files
        pipeline.run()
        
        print(f"\nResults saved to: {args.output_dir}")
        print("Files created:")
        output_path = Path(args.output_dir)
        for file in output_path.glob("*"):
            print(f"  - {file.name}")
            
        print(f"\n✅ Successfully processed {len(all_files)} files")
            
    except Exception as e:
        print(f"Error running pipeline: {e}")
        if args.verbose:
            import traceback
            traceback.print_exc()
        sys.exit(1)


if __name__ == "__main__":
    main()
