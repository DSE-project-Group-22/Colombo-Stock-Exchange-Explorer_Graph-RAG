# Data Preprocessing for LLM Schema Enhancement

This module performs all the preprocessing, normalization, standardization, and ID mapping required before LLM processing. The output is enriched text files that contain all necessary context for stateless Cypher query generation.

## Features

- **Complete ID Mapping**: Maps all entities to their canonical IDs from entity resolution
- **Context Enrichment**: Adds structured context with entity mappings
- **Standardization**: Normalizes all entity names and relationships
- **Stateless Output**: Each file contains all information needed for Cypher generation
- **Schema Compliance**: Prepares data for complex corporate network schema

## Workflow

1. **Load Entity Mappings**: Load canonical persons and companies from entity resolution
2. **Process Text Files**: Enrich each text file with entity context
3. **Generate Preprocessed Files**: Create enriched files with all ID mappings
4. **LLM Ready**: Files ready for stateless Cypher query generation

## Directory Structure

```
preprocessing/
├── README.md
├── preprocess_data.py          # Main preprocessing script
├── entity_mapper.py            # Entity mapping utilities
├── text_enricher.py           # Text enrichment with context
├── run_preprocessing.sh        # Complete workflow script
└── preprocessed_texts/         # Output directory
    ├── ABANS_ELECTRICALS_PLC_enriched.txt
    ├── ABANS_FINANCE_PLC_enriched.txt
    └── ...
```

## Output Format

Each preprocessed file contains:
- Original annual report text
- Entity mapping tables (persons, companies)
- Relationship context
- Schema definitions
- All necessary IDs for Cypher generation

## Usage

```bash
# Run preprocessing
python3 preprocess_data.py

# Or use the complete workflow
./run_preprocessing.sh
```
