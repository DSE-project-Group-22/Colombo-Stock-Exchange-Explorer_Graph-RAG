# Load Phase Usage Guide

# Load Phase Usage Guide

## Quick Start (For macOS/zsh)

### Option 1: One-Command Setup and Run
```bash
# Navigate to the Load directory
cd "ETL Pipeline/Load"

# Setup everything (virtual environment + dependencies)
chmod +x setup.sh && ./setup.sh

# Configure API key (already done - your key is in .env.example)
cp .env.example .env

# Run the entire Load phase
chmod +x run.sh && ./run.sh
```

### Option 2: Manual Virtual Environment Setup
```bash
# Navigate to Load directory
cd "ETL Pipeline/Load"

# Create virtual environment
python3 -m venv load_env

# Activate virtual environment (macOS/zsh)
source load_env/bin/activate

# Upgrade pip and install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Configure environment
cp .env.example .env
# Your Gemini API key is already configured in .env.example

# Run the Load phase
python3 generate_cypher_queries.py

# Deactivate when done
deactivate
```

## Verify Your Setup

```bash
# Check if virtual environment is active
cd "ETL Pipeline/Load"
source load_env/bin/activate

# Verify Python path (should show your virtual environment)
which python3

# Check installed packages
pip list

# Test dependencies
python3 -c "import google.generativeai; print('✅ Gemini AI ready')"
python3 -c "from dotenv import load_dotenv; print('✅ Environment variables ready')"

# Run verification script
python3 verify.py
```

## Current Status Check

Based on your workspace structure, you already have:
- ✅ Virtual environment (`load_env/`) 
- ✅ Generated Cypher files (`cypher_queries/`)
- ✅ Processing logs (`logs/`)
- ✅ API key configured

To run again or process new files:
```bash
cd "ETL Pipeline/Load"
source load_env/bin/activate
python3 generate_cypher_queries.py
```

## What This Does

Based on your workspace structure, you already have:
- ✅ Virtual environment (`load_env/`) 
- ✅ Generated Cypher files (`cypher_queries/`)
- ✅ Processing logs (`logs/`)
- ✅ API key configured

To run again or process new files:
```bash
cd "ETL Pipeline/Load"
source load_env/bin/activate
python3 generate_cypher_queries.py
```

The Load phase takes the normalized JSON files from the Transform phase and converts them into Cypher queries for Neo4j. Here's the complete process:

### Input
- Normalized JSON files from `../Transform/cleaned_output/`
- Each file contains structured company data with sections for:
  - Directors and executives
  - Financial performance metrics
  - Business segments
  - Risk factors
  - Future outlook
  - Governance structure

### Processing
1. **AI Analysis**: Each JSON file is sent to Google Gemini AI
2. **Data Extraction**: The AI identifies and extracts:
   - Company information
   - People and their roles
   - Financial metrics and values
   - Business sectors
3. **Query Generation**: Creates Cypher queries following a strict schema
4. **Validation**: Ensures all queries are syntactically correct

### Output
- **Cypher Files**: Individual `.cypher` files for each company
- **Processing Logs**: Detailed logs in `logs/` directory
- **Summary Report**: `generation_summary.json` with processing statistics

## Example Output

For a company like "Dipped Products PLC", the system generates:

```cypher
// Query 1 - Create company node
MERGE (c:Company {name: 'Dipped Products PLC'}) 
ON CREATE SET c.id = 'dipped_products_plc';

// Query 2 - Create person node
MERGE (p:Person {name: 'Mohan Pandithage'}) 
ON CREATE SET p.id = 'mohan_pandithage';

// Query 3 - Create relationship
MATCH (p:Person {name: 'Mohan Pandithage'}), 
      (c:Company {name: 'Dipped Products PLC'}) 
MERGE (p)-[r:HOLDS_POSITION]->(c) 
ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-01-01');

// Additional queries for metrics, sectors, etc...
```

## Integration with Neo4j

Once generated, you can load the data into Neo4j:

### Option 1: Neo4j Browser
1. Open Neo4j Browser
2. Copy and paste queries from the `.cypher` files
3. Execute them

### Option 2: Command Line
```bash
# Using cypher-shell
cat cypher_queries/COMPANY_NAME.cypher | cypher-shell -u neo4j -p your_password
```

### Option 3: Python Script
```python
from neo4j import GraphDatabase

driver = GraphDatabase.driver("bolt://localhost:7687", 
                             auth=("neo4j", "password"))

with driver.session() as session:
    with open("cypher_queries/COMPANY_NAME.cypher", "r") as f:
        queries = f.read().split(';')
        for query in queries:
            if query.strip():
                session.run(query)
```

## Troubleshooting

### Common Issues

1. **Missing API Key**:
   ```
   Error: GEMINI_API_KEY environment variable not set!
   ```
   Solution: Create `.env` file with your Gemini API key

2. **No Input Files**:
   ```
   No JSON files found in source directory
   ```
   Solution: Run the Transform phase first

3. **API Rate Limits**:
   ```
   Error: API quota exceeded
   ```
   Solution: Wait and retry, or upgrade your Gemini API plan

### Performance Tips

- The system processes files sequentially to respect API limits
- Large datasets may take time - monitor the logs for progress
- Failed files can be reprocessed individually

## Quality Assurance

The system ensures high-quality output through:
- **Schema Validation**: All queries follow the defined graph schema
- **Data Integrity**: MERGE operations prevent duplicate nodes
- **Error Recovery**: Failed files don't stop the entire process
- **Comprehensive Logging**: All issues are logged for debugging

## Next Steps

After running the Load phase:
1. **Review Generated Files**: Check `cypher_queries/` folder
2. **Load into Neo4j**: Use any of the integration methods above
3. **Verify Data**: Query your Neo4j database to ensure data loaded correctly
4. **Build Applications**: Use the knowledge graph for analytics, search, etc.

## File Structure After Processing

```
Load/
├── cypher_queries/                   # Generated Cypher files
│   ├── DIPPED_PRODUCTS_PLC.cypher   # Company-specific queries
│   ├── HATTON_NATIONAL_BANK.cypher
│   ├── ...
│   └── generation_summary.json      # Processing summary
├── logs/                            # Processing logs
│   └── load_process_YYYYMMDD_HHMMSS.log
├── load_env/                        # Virtual environment
├── .env                            # Your API configuration
└── [script files]
```
