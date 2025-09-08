# Load Phase - Cypher Query Generator

This module converts normalized JSON data from the Transform phase into Cypher queries for creating a Neo4j knowledge graph. It uses Google's Gemini AI to analyze structured company data and generate appropriate graph database queries.

## Features

- **Automated Cypher Generation**: Converts JSON company data into Neo4j Cypher queries
- **Schema Compliance**: Follows a strict graph schema for companies, people, metrics, and sectors
- **AI-Powered Analysis**: Uses Google Gemini to intelligently extract and structure data
- **Batch Processing**: Processes multiple JSON files simultaneously
- **Error Handling**: Comprehensive logging and error recovery
- **Summary Reporting**: Generates processing summaries and statistics

## Graph Schema

The system creates the following node types and relationships:

### Node Types
- **Company**: Represents companies with id and name properties
- **Person**: Represents individuals with id and name properties  
- **Metric**: Represents financial metrics with id, name, and unit properties
- **Sector**: Represents business sectors with id and name properties

### Relationships
- **HOLDS_POSITION**: Person → Company (with title and as_of properties)
- **HAS_METRIC**: Company → Metric (with value and year properties)
- **IN_SECTOR**: Company → Sector (no additional properties)

## Prerequisites

1. **Python 3.8+** ✅ (You have Python 3.13)
2. **Google Gemini API Key** ✅ (Already configured in `.env.example`)
3. **Transform Phase Output** ✅ (11 JSON files in `../Transform/cleaned_output/`)
4. **Virtual Environment** ✅ (Already created as `load_env/`)

## Setup

### Quick Start (Automated)
```bash
# Navigate to Load directory
cd "ETL Pipeline/Load"

# 1. Setup virtual environment and install dependencies
chmod +x setup.sh
./setup.sh

# 2. Configure API key (already done if you see your key in .env.example)
cp .env.example .env
# Your Gemini API key is already in .env.example

# 3. Run the Load phase
chmod +x run.sh
./run.sh
```

### Manual Setup (Step by Step)
```bash
# Navigate to Load directory
cd "ETL Pipeline/Load"

# 1. Create and activate virtual environment
python3 -m venv load_env
source load_env/bin/activate

# 2. Install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# 3. Configure environment
cp .env.example .env
# Your API key is already configured

# 4. Run the script
python3 generate_cypher_queries.py
```

## Usage

### Option 1: Automated Run (Recommended)
```bash
cd "ETL Pipeline/Load"
./run.sh
```
This script will:
- Activate the virtual environment automatically
- Check for required files and API key
- Process all JSON files from Transform phase
- Generate Cypher queries
- Create logs and summary reports

### Option 2: Manual Run
```bash
cd "ETL Pipeline/Load"

# Activate virtual environment
source load_env/bin/activate

# Run the main script
python3 generate_cypher_queries.py

# Deactivate when done
deactivate
```

### What it does:
1. Reads all JSON files from `../Transform/cleaned_output/`
2. Sends each file to Gemini AI for analysis
3. Generates Cypher queries following the schema
4. Saves queries to `cypher_queries/` folder
5. Creates processing logs and summary reports

## Current Status

Based on your workspace, the Load phase is **already set up and has been run**:

```
Load/
├── load_env/          ✅ Virtual environment ready
├── cypher_queries/    ✅ Generated Cypher files (11 files)
├── logs/             ✅ Processing logs available
└── .env.example      ✅ API key configured
```

You can immediately use the generated Cypher files or re-run the process with new data.

## File Overview

## File Overview

```
Load/
├── cypher_queries/           # ✅ Generated Cypher files (ready for Neo4j)
│   ├── DIPPED_PRODUCTS_PLC_Annual_Report_chunks_recursive.cypher
│   ├── First_Capital_Treasuries_PLC_Annual_Report_chunks_recursive.cypher
│   └── ... (9 more company files)
├── logs/                    # ✅ Processing logs
├── load_env/               # ✅ Virtual environment
└── [script files]         # ✅ All processing scripts
```

## Generated Cypher Files

Each `.cypher` file contains:
- Company node creation
- Person nodes and HOLDS_POSITION relationships
- Metric nodes and HAS_METRIC relationships  
- Sector nodes and IN_SECTOR relationships
- Comments and metadata

Example output:
```cypher
// Query 1
MERGE (c:Company {name: 'Dipped Products PLC'}) ON CREATE SET c.id = 'dipped_products_plc';

// Query 2
MERGE (p:Person {name: 'Mohan Pandithage'}) ON CREATE SET p.id = 'mohan_pandithage';

// Query 3
MATCH (p:Person {name: 'Mohan Pandithage'}), (c:Company {name: 'Dipped Products PLC'}) 
MERGE (p)-[r:HOLDS_POSITION]->(c) 
ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-01-01');
```

## Configuration

### Environment Variables
- `GEMINI_API_KEY`: Your Google Gemini API key (required)

### File Paths
- Source: `../Transform/cleaned_output/`
- Output: `./cypher_queries/`
- Logs: `./logs/`

## Error Handling

The system includes comprehensive error handling:
- **API Errors**: Retry logic and graceful degradation
- **File Errors**: Detailed logging of file processing issues
- **JSON Parsing**: Validation and error reporting
- **Query Generation**: Fallback mechanisms for incomplete data

## Logging

Detailed logs are saved to `logs/` directory including:
- Processing timestamps
- File-by-file results
- Error details and stack traces
- Performance metrics

## Integration with Neo4j

The generated `.cypher` files can be executed in Neo4j:

1. **Neo4j Browser**:
   ```cypher
   // Copy and paste queries directly
   ```

2. **Neo4j Shell**:
   ```bash
   cat Company1.cypher | cypher-shell -u neo4j -p password
   ```

3. **Python Driver**:
   ```python
   from neo4j import GraphDatabase
   
   with open('Company1.cypher', 'r') as f:
       queries = f.read().split(';')
       for query in queries:
           if query.strip():
               session.run(query)
   ```

## Quality Assurance

The system ensures high-quality output through:
- **Schema Validation**: Strict adherence to defined node/relationship types
- **Data Validation**: Verification of extracted information
- **Idempotency**: MERGE operations prevent duplicate data
- **Completeness Checks**: Validation that all required data is extracted

## Troubleshooting

### Common Issues

1. **API Key Not Set**:
   ```
   Error: GEMINI_API_KEY environment variable not set!
   ```
   Solution: Copy `.env.example` to `.env` and add your API key

2. **No Source Files**:
   ```
   Warning: No JSON files found in source directory
   ```
   Solution: Ensure Transform phase has completed successfully

3. **JSON Parsing Errors**:
   ```
   Error: Failed to parse JSON response
   ```
   Solution: Check API quota and response format

### Performance Tips
- Process files in smaller batches for large datasets
- Monitor API usage and quotas
- Use appropriate Gemini model (flash vs pro) based on needs

## Dependencies

- `google-generativeai`: For Gemini AI integration
- `python-dotenv`: For environment variable management
- Built-in modules: `json`, `os`, `logging`, `datetime`
