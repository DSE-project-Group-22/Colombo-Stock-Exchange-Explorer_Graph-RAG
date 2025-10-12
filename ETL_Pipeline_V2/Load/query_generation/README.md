# Query Generation Script

This script generates Cypher queries from fuzzy matched CSV data for loading into a Neo4j graph database.

## Description

The `query.py` script processes a CSV file containing fuzzy matched entity data and generates corresponding Cypher queries to create nodes and relationships in a Neo4j graph database. It handles various entity types including companies, persons, metrics, sectors, products, and their relationships.

## Prerequisites

- Python 3.7 or higher
- Virtual environment (recommended)

## Setup Instructions

### 1. Create and Activate Virtual Environment

**On macOS/Linux:**
```bash
cd /path/to/query_generation
python3 -m venv venv
source venv/bin/activate
```

**On Windows:**
```bash
cd \path\to\query_generation
python -m venv venv
venv\Scripts\activate
```

### 2. Install Dependencies

```bash
pip install -r requirements.txt
```

### 3. Prepare Input Data

Ensure you have the required input file:
- `fuzzy_matched_data.csv` - The CSV file containing fuzzy matched entity data

The CSV should contain the following columns:
- `source_file`
- `main_company_name`
- `entity_type` (company, person, metric, sector, product)
- `canonical_name`
- `canonical_id`
- `normalized_name`
- `additional_data` (JSON string with entity-specific data)

## Usage

### Run the Script

```bash
python query.py
```

### Output

The script will generate:
- `cypher_scripts.txt` - Contains Cypher queries organized by source file

## Generated Query Structure

The script creates queries for:
1. **Companies** - Main company nodes with basic properties
2. **Auditors** - Auditor nodes and AUDITED_BY relationships
3. **Persons** - Person nodes (directors, executives)
4. **Position Relationships** - HOLDS_POSITION relationships between persons and companies
5. **Metrics** - Metric nodes and HAS_METRIC relationships
6. **Sectors** - Sector nodes and IN_SECTOR relationships
7. **Products** - Product nodes and OFFERS relationships
8. **Company Ownership** - OWNS relationships between companies
9. **Share Ownership** - OWNS_SHARES relationships between persons and companies

## Deactivating Virtual Environment

When finished, deactivate the virtual environment:

```bash
deactivate
```

## Dependencies

- `pandas>=2.1.0` - For CSV data processing and manipulation

## Error Handling

Ensure your input CSV file has the correct structure and that all JSON data in the `additional_data` column is properly formatted before running the script.
