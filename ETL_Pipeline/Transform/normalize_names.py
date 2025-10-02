#!/usr/bin/env python3
"""
Name Normalization ETL Pipeline

This script performs name normalization on a collection of JSON files using a two-pass strategy:
1. Discovery Pass: Extract all unique person names from source files
2. Transformation Pass: Apply canonical mapping and save cleaned files

"""

import os
import json
import logging
from pathlib import Path
from typing import Dict, Set, Any, Optional
import spacy
from thefuzz import fuzz
import re


def load_config() -> Dict[str, Any]:
    """
    Provide all configuration variables in one place.
    
    Returns:
        Dict[str, Any]: Configuration dictionary containing paths, filenames, and parameters
    """
    # Get the base directory (workspace root)
    base_dir = Path(__file__).parent.parent.parent  # Goes up to CSE Explorer_Graph RAG
    
    return {
        "SOURCE_DIR": str(base_dir / "ETL Pipeline" / "Extract" / "batch_output"),
        "OUTPUT_DIR": str(base_dir / "ETL Pipeline" / "Transform" / "cleaned_output"),
        "CANONICAL_MAP_FILE": str(base_dir / "ETL Pipeline" / "Transform" / "canonical_name_map.json"),
        "SIMILARITY_THRESHOLD": 85,  # Fuzzy matching threshold (0-100) for name parts
        "LOG_LEVEL": "INFO"
    }


def setup_logging() -> None:
    """
    Configure the logging system with timestamp and log level.
    
    Action: Set up a basic logger that prints INFO level and above to console
    """
    logging.basicConfig(
        level=logging.INFO,
        format='%(asctime)s - %(levelname)s - %(message)s',
        datefmt='%Y-%m-%d %H:%M:%S'
    )


def load_spacy_model(model_name: str) -> spacy.Language:
    """
    Load and return the spaCy NLP model.
    
    Args:
        model_name (str): The name of the spaCy model to load (e.g., 'en_core_web_sm')
        
    Returns:
        spacy.Language: The loaded spaCy model object
        
    Raises:
        SystemExit: If the model cannot be loaded
    """
    try:
        nlp = spacy.load(model_name)
        logging.info(f"Successfully loaded spaCy model: {model_name}")
        return nlp
    except OSError as e:
        logging.error(f"Failed to load spaCy model '{model_name}'. Please install it using: python -m spacy download {model_name}")
        raise SystemExit(1) from e


def read_json_file(file_path: str) -> Dict[str, Any]:
    """
    Read and parse a single JSON file.
    
    Args:
        file_path (str): Path to the JSON file
        
    Returns:
        Dict[str, Any]: The parsed data as a Python dictionary
        
    Raises:
        FileNotFoundError: If the file doesn't exist
        json.JSONDecodeError: If the file contains invalid JSON
    """
    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            data = json.load(file)
        logging.debug(f"Successfully read JSON file: {file_path}")
        return data
    except FileNotFoundError as e:
        logging.error(f"File not found: {file_path}")
        raise
    except json.JSONDecodeError as e:
        logging.error(f"Invalid JSON in file {file_path}: {e}")
        raise
    except Exception as e:
        logging.error(f"Unexpected error reading file {file_path}: {e}")
        raise


def write_json_file(data: Dict[str, Any], file_path: str) -> None:
    """
    Write a dictionary to a JSON file in human-readable format.
    
    Args:
        data (Dict[str, Any]): The data to write
        file_path (str): Path where the JSON file will be saved
    """
    try:
        # Ensure the directory exists
        os.makedirs(os.path.dirname(file_path), exist_ok=True)
        
        with open(file_path, 'w', encoding='utf-8') as file:
            json.dump(data, file, indent=2, ensure_ascii=False)
        logging.debug(f"Successfully wrote JSON file: {file_path}")
    except Exception as e:
        logging.error(f"Error writing JSON file {file_path}: {e}")
        raise


def extract_person_names(text: str, nlp_model: spacy.Language) -> Set[str]:
    """
    Find all person names within a single block of text using spaCy NER.
    
    Args:
        text (str): The text to process
        nlp_model (spacy.Language): The loaded spaCy model
        
    Returns:
        Set[str]: A set of unique person names found in the text
    """
    if not text or not isinstance(text, str):
        return set()
    
    try:
        # Process the text with spaCy
        doc = nlp_model(text)
        
        # Extract person names (PERSON entities)
        person_names = set()
        for ent in doc.ents:
            if ent.label_ == "PERSON":
                # Clean the name by removing extra whitespace and common prefixes/suffixes
                clean_name = _clean_person_name(ent.text)
                if clean_name and len(clean_name) > 2:  # Filter out very short names
                    person_names.add(clean_name)
        
        return person_names
    except Exception as e:
        logging.warning(f"Error processing text for person names: {e}")
        return set()


def _clean_person_name(name: str) -> str:
    """
    Clean a person name by removing common prefixes, suffixes, and extra whitespace.
    
    Args:
        name (str): The raw name string
        
    Returns:
        str: The cleaned name
    """
    # Remove common prefixes and suffixes
    prefixes = ['Mr.', 'Mrs.', 'Ms.', 'Dr.', 'Prof.', 'Hon.', 'Rev.', 'Sr.', 'Jr.']
    suffixes = ['Chairman', 'CEO', 'Director', 'Manager', 'Officer', 'President', 'Secretary']
    
    # Remove patterns like "appointed w.e.f.", "resigned w.e.f.", etc.
    name = re.sub(r'\s*\([^)]*\)', '', name)  # Remove content in parentheses
    name = re.sub(r'\s*(appointed|resigned|w\.e\.f\.|effective).*$', '', name, flags=re.IGNORECASE)
    
    # Split and clean each part
    parts = []
    for part in name.split():
        part = part.strip('.,')
        if part and part not in prefixes and part not in suffixes:
            parts.append(part)
    
    return ' '.join(parts).strip()


def run_discovery_orchestrator(source_dir: str, nlp_model: spacy.Language) -> Set[str]:
    """
    Manage and orchestrate the entire discovery pass to extract all person names.
    
    Args:
        source_dir (str): Directory containing source JSON files
        nlp_model (spacy.Language): The loaded spaCy model
        
    Returns:
        Set[str]: A set containing every unique person name found across all files
    """
    all_names = set()
    json_files = [f for f in os.listdir(source_dir) if f.endswith('.json') and f != 'batch_processing_summary.json']
    
    logging.info(f"Starting discovery pass on {len(json_files)} JSON files")
    
    for filename in json_files:
        file_path = os.path.join(source_dir, filename)
        try:
            # Read the JSON file
            data = read_json_file(file_path)
            
            # Extract text from directors_and_executives section
            directors_chunks = data.get('retrieved_chunks', {}).get('directors_and_executives', [])
            
            # Process each chunk of text
            for chunk in directors_chunks:
                if isinstance(chunk, str):
                    names_in_chunk = extract_person_names(chunk, nlp_model)
                    all_names.update(names_in_chunk)
            
            logging.info(f"Processed {filename}: found {len(names_in_chunk)} names in this file")
            
        except Exception as e:
            logging.error(f"Error processing file {filename}: {e}")
            continue
    
    logging.info(f"Discovery pass completed. Total unique names found: {len(all_names)}")
    return all_names


def custom_name_similarity(name1: str, name2: str, threshold: int) -> bool:
    """
    Custom similarity check for names: requires exact surname match, same structure,
    and part-wise compatibility (abbreviations or fuzzy match).
    
    Args:
        name1 (str): First name
        name2 (str): Second name
        threshold (int): Similarity threshold for non-abbreviation parts
        
    Returns:
        bool: True if names are considered similar
    """
    name1 = name1.lower()
    name2 = name2.lower()
    parts1 = name1.split()
    parts2 = name2.split()
    
    # Fallback for short/incomplete names
    if len(parts1) < 2 or len(parts2) < 2:
        return fuzz.ratio(name1, name2) >= threshold
    
    # Must have same surname
    if parts1[-1] != parts2[-1]:
        return False
    
    # Must have same number of given name parts
    given1 = parts1[:-1]
    given2 = parts2[:-1]
    if len(given1) != len(given2):
        return False
    
    # Check each given name part
    for p1, p2 in zip(given1, given2):
        if len(p1) == 1 or len(p2) == 1:
            # Abbreviation check: shorter must prefix the longer
            short, long = (p1, p2) if len(p1) < len(p2) else (p2, p1)
            if not long.startswith(short):
                return False
        else:
            # Fuzzy match for full parts
            if fuzz.ratio(p1, p2) < threshold:
                return False
    
    return True


def create_canonical_map(names: Set[str], threshold: int) -> Dict[str, str]:
    """
    Cluster similar names and create a mapping from name variations to canonical forms.
    
    Args:
        names (Set[str]): Set of all extracted names
        threshold (int): Fuzzy matching threshold (0-100)
        
    Returns:
        Dict[str, str]: Mapping from original names to canonical names
    """
    logging.info(f"Creating canonical map for {len(names)} names with threshold {threshold}")
    
    names_list = list(names)
    canonical_map = {}
    processed = set()
    
    for i, name1 in enumerate(names_list):
        if name1 in processed:
            continue
            
        # Find the canonical form (longest name in the cluster)
        cluster = [name1]
        
        for j, name2 in enumerate(names_list[i+1:], i+1):
            if name2 in processed:
                continue
                
            # Use custom similarity instead of raw fuzz.ratio
            if custom_name_similarity(name1, name2, threshold):
                cluster.append(name2)
                processed.add(name2)
        
        # Choose canonical name (longest name in cluster, or first if same length)
        canonical_name = max(cluster, key=len)
        
        # Map all names in cluster to canonical name
        for name in cluster:
            canonical_map[name] = canonical_name
        
        processed.add(name1)
        
        if len(cluster) > 1:
            logging.debug(f"Clustered {len(cluster)} names to '{canonical_name}': {cluster}")
    
    logging.info(f"Created canonical map with {len(canonical_map)} mappings")
    return canonical_map


def transform_chunk(text: str, name_map: Dict[str, str]) -> str:
    """
    Replace all name variations in a single block of text with their canonical versions.
    
    Args:
        text (str): The original text
        name_map (Dict[str, str]): The canonical name mapping
        
    Returns:
        str: The transformed text with canonical names
    """
    if not text or not isinstance(text, str):
        return text
    
    transformed_text = text
    
    # Sort names by length (longest first) to avoid partial replacements
    sorted_names = sorted(name_map.keys(), key=len, reverse=True)
    
    for original_name in sorted_names:
        canonical_name = name_map[original_name]
        if original_name != canonical_name:
            # Use word boundaries to avoid partial matches
            pattern = r'\b' + re.escape(original_name) + r'\b'
            transformed_text = re.sub(pattern, canonical_name, transformed_text, flags=re.IGNORECASE)
    
    return transformed_text


def run_transformation_orchestrator(source_dir: str, output_dir: str, name_map: Dict[str, str]) -> None:
    """
    Manage and orchestrate the entire transformation pass.
    
    Args:
        source_dir (str): Directory containing source JSON files
        output_dir (str): Directory where cleaned files will be saved
        name_map (Dict[str, str]): The canonical name mapping
    """
    # Ensure output directory exists
    os.makedirs(output_dir, exist_ok=True)
    
    json_files = [f for f in os.listdir(source_dir) if f.endswith('.json') and f != 'batch_processing_summary.json']
    
    logging.info(f"Starting transformation pass on {len(json_files)} JSON files")
    
    transformation_stats = {
        "files_processed": 0,
        "total_replacements": 0,
        "files_with_changes": 0
    }
    
    for filename in json_files:
        source_file_path = os.path.join(source_dir, filename)
        output_file_path = os.path.join(output_dir, filename)
        
        try:
            # Read the original file
            data = read_json_file(source_file_path)
            
            # Track changes for this file
            file_changes = 0
            
            # Transform directors_and_executives chunks
            if 'retrieved_chunks' in data and 'directors_and_executives' in data['retrieved_chunks']:
                directors_chunks = data['retrieved_chunks']['directors_and_executives']
                
                for i, chunk in enumerate(directors_chunks):
                    if isinstance(chunk, str):
                        original_chunk = chunk
                        transformed_chunk = transform_chunk(chunk, name_map)
                        directors_chunks[i] = transformed_chunk
                        
                        if original_chunk != transformed_chunk:
                            file_changes += 1
            
            # Update metadata to indicate transformation
            if 'metadata' not in data:
                data['metadata'] = {}
            data['metadata']['name_normalization_applied'] = True
            data['metadata']['name_normalization_date'] = "2025-08-29"
            data['metadata']['names_standardized'] = file_changes > 0
            
            # Write the transformed file
            write_json_file(data, output_file_path)
            
            transformation_stats["files_processed"] += 1
            transformation_stats["total_replacements"] += file_changes
            if file_changes > 0:
                transformation_stats["files_with_changes"] += 1
            
            logging.info(f"Transformed {filename}: {file_changes} chunks modified")
            
        except Exception as e:
            logging.error(f"Error transforming file {filename}: {e}")
            continue
    
    logging.info(f"Transformation pass completed: {transformation_stats}")


def main() -> None:
    """
    Main entry point that controls the overall ETL workflow.
    """
    # Setup
    config = load_config()
    setup_logging()
    
    logging.info("Starting Name Normalization ETL Pipeline")
    logging.info(f"Source directory: {config['SOURCE_DIR']}")
    logging.info(f"Output directory: {config['OUTPUT_DIR']}")
    
    try:
        # Load spaCy model
        nlp_model = load_spacy_model('en_core_web_sm')
        
        # Discovery Pass
        logging.info("=== DISCOVERY PASS ===")
        all_names = run_discovery_orchestrator(config['SOURCE_DIR'], nlp_model)
        
        if not all_names:
            logging.warning("No person names found in source files. Exiting.")
            return
        
        # Create canonical mapping
        logging.info("=== MAPPING CREATION ===")
        canonical_map = create_canonical_map(all_names, config['SIMILARITY_THRESHOLD'])
        
        # Save canonical map for review
        write_json_file(canonical_map, config['CANONICAL_MAP_FILE'])
        logging.info(f"Canonical name mapping saved to: {config['CANONICAL_MAP_FILE']}")
        logging.info("You may review and manually edit the mapping file before proceeding.")
        
        # Transformation Pass
        logging.info("=== TRANSFORMATION PASS ===")
        run_transformation_orchestrator(
            config['SOURCE_DIR'], 
            config['OUTPUT_DIR'], 
            canonical_map
        )
        
        logging.info("Name Normalization ETL Pipeline completed successfully!")
        logging.info(f"Cleaned files are available in: {config['OUTPUT_DIR']}")
        
    except KeyboardInterrupt:
        logging.info("Process interrupted by user")
    except Exception as e:
        logging.error(f"Pipeline failed with error: {e}")
        raise


if __name__ == "__main__":
    main()