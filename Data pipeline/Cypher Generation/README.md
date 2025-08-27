# Gemini Cypher Generation Module

This module generates comprehensive Neo4j Cypher queries from enriched annual report data using Google's Gemini API.

## Overview

The **Cypher Generation module** is the **final stage** of the CSE Explorer data processing workflow. It processes enriched text files (from the Data Extraction preprocessing pipeline) and uses Gemini AI to generate complex corporate network Cypher queries with 9 relationship types.

🔄 **Pipeline Flow**: Data Collection → Data Extraction → **Cypher Generation**

## Features

- **Gemini AI Integration**: Uses Google's free Gemini API for intelligent Cypher generation
- **Batch Processing**: Processes all 13 enriched files automatically
- **Rate Limiting**: Handles free tier API limits with automatic delays
- **Schema Compliance**: Generates queries following the exact 9.1 Database Schema
- **Ready-to-Execute**: Output files are directly usable in Neo4j
- **macOS Optimized**: Tested and optimized for macOS environments with zsh shell

## Prerequisites

- **macOS** (tested on macOS 10.15+)
- **Python 3.8+**
- **Google Gemini API key** (free tier available)
- **Preprocessed enriched text files** from Data Extraction module
- **Internet connection** for API calls
- **zsh shell** (default on macOS)

## macOS Installation & Setup

### Quick Setup
```bash
# Navigate to Cypher Generation directory
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Cypher Generation"

# Install Python dependencies
pip3 install -r requirements.txt

# Copy environment template
cp .env.example .env

# Edit .env file to add your API key
nano .env
# Replace: GEMINI_API_KEY=your_gemini_api_key_here
# With:    GEMINI_API_KEY=your_actual_api_key_here

# Test the setup
python3 test_setup.py
```

### Get Free Gemini API Key
1. Go to [Google AI Studio](https://makersuite.google.com/app/apikey)
2. Sign in with Google account
3. Click "Create API Key"
4. Copy the key to your `.env` file

### Verify Prerequisites
```bash
# Check if enriched files exist from previous pipeline
if [ -d "../Data Extraction/preprocessing/preprocessed_texts" ]; then
    echo "✅ Enriched files found: $(ls ../Data\ Extraction/preprocessing/preprocessed_texts/*_enriched.txt 2>/dev/null | wc -l)"
else
    echo "❌ No enriched files found. Please run Data Extraction pipeline first."
    echo "Run: cd '../Data Extraction' && python3 run_entity_resolution.py && cd preprocessing && ./run_preprocessing.sh"
fi
```

## Running the Pipeline (macOS Commands)

### Individual Module Execution (Cypher Generation Only)
```bash
# Navigate to Cypher Generation directory
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Cypher Generation"

# Generate all Cypher files
echo "🔄 Starting Cypher Generation for all companies..."
python3 generate_cypher.py

# Check results
echo "✅ Cypher Generation completed!"
echo "📊 Generated files: $(ls generated_cypher/*.cypher 2>/dev/null | wc -l)"
ls -la generated_cypher/
```

### Generate All Cypher Files
```bash
# Navigate to Cypher Generation directory
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Cypher Generation"

# Run the generation pipeline for all companies
python3 generate_cypher.py

# Check progress and results
ls -la generated_cypher/

# Count generated files
find generated_cypher -name "*.cypher" | wc -l

# Check file sizes
du -h generated_cypher/*.cypher
```

### Generate Specific Company
```bash
# Generate Cypher for specific company
python3 generate_cypher.py --file AITKEN_SPENCE_PLC_enriched.txt

# Generate with verbose output
python3 generate_cypher.py --file AITKEN_SPENCE_PLC_enriched.txt --verbose

# Check specific output
cat generated_cypher/AITKEN_SPENCE_PLC.cypher
head -20 generated_cypher/AITKEN_SPENCE_PLC.cypher
```

### Automated Setup and Generation
```bash
# Use the automated script
chmod +x run_generation.sh
./run_generation.sh

# This will:
# 1. Check dependencies
# 2. Verify API key configuration
# 3. Run generation pipeline
# 4. Show results summary
```

### Monitor Generation Progress
```bash
# Monitor file creation during generation
watch -n 5 'ls -la generated_cypher/ | tail -10'

# Monitor API calls and rate limiting
tail -f generation.log &
python3 generate_cypher.py

# Check processing time per file
grep "Processing:" generation.log | tail -10
```

## File Structure

```
Cypher Generation/
├── config.py                      # Configuration management
├── gemini_client.py               # Gemini API client
├── generate_cypher.py             # Main generation script
├── run_generation.sh              # Setup and execution script
├── requirements.txt               # Python dependencies
├── .env.example                   # Environment template
├── .env                          # Your API configuration (create from example)
└── generated_cypher/             # Output directory
    ├── AITKEN_SPENCE_PLC.cypher
    ├── ABANS_FINANCE_PLC.cypher
    └── ... (13 total files)
```

## Generated Output

Each enriched text file produces a corresponding `.cypher` file containing:

### Node Creation
```cypher
// Companies (using pre-mapped IDs)
CREATE (:Company {id: 'company_uuid', name: 'Company Name', listed_on: 'CSE'});

// New entities (Sectors, Products, Metrics)
CREATE (:Sector {id: 'sector_financial_services', name: 'Financial Services'});
CREATE (:Product {id: 'product_banking_services', name: 'Banking Services'});
CREATE (:Metric {id: 'metric_revenue', name: 'Revenue', unit: 'LKR'});
```

### Comprehensive Relationships
```cypher
// Ownership & Shareholdings
MATCH (parent:Company {id: 'company_parent'})
MATCH (child:Company {id: 'company_child'})
CREATE (parent)-[:OWNS {pct: 75.5, as_of: date('2024-01-01')}]->(child);

// Governance & Roles
MATCH (p:Person {id: 'person_uuid'})
MATCH (c:Company {id: 'company_uuid'})
CREATE (p)-[:DIRECTOR_OF {role: 'Chairman', as_of: date('2024-01-01')}]->(c);

// Financial Metrics
MATCH (c:Company {id: 'company_uuid'})
MATCH (m:Metric {id: 'metric_revenue'})
CREATE (c)-[:HAS_METRIC {year: 2024, value: 1500000000, as_of: date('2024-12-31')}]->(m);

// ... and 6 more relationship types
```

## Configuration

### Environment Variables (.env)
```bash
# Required
GEMINI_API_KEY=your_actual_api_key_here

# Optional (with defaults)
MAX_TOKENS=8192
TEMPERATURE=0.1
TOP_P=0.8
TOP_K=40
```

### API Settings
- **Model**: `gemini-1.5-flash` (free tier)
- **Rate Limiting**: 5-second delays between requests
- **Token Limit**: 8192 tokens (suitable for enriched files)
- **Temperature**: 0.1 (focused, deterministic output)

## Processing Workflow

1. **Load Enriched File**: Reads complete enriched text with schema and entity mappings
2. **Create Prompt**: Builds comprehensive prompt with schema instructions
3. **Generate Cypher**: Uses Gemini API to create queries following exact schema
4. **Clean Output**: Removes markdown formatting and non-Cypher content
5. **Validate Syntax**: Basic validation of generated Cypher
6. **Save File**: Creates corresponding `.cypher` file ready for Neo4j

## Schema Coverage

The generated Cypher queries include all 9 relationship types:

### Ownership & Shareholdings
- `OWNS` - Company ownership with percentages and dates
- `OWNS_SHARES` - Personal shareholding with counts/percentages

### Governance & Roles
- `DIRECTOR_OF` - Board positions with roles and dates
- `HOLDS_POSITION` - Executive positions with titles and dates

### Business Classification
- `IN_SECTOR` - Business sector classifications
- `OFFERS` - Products and services with status

### Financial Metrics
- `HAS_METRIC` - Financial data with values, years, and units

### Auditing & Management
- `AUDITED_BY` - Auditing relationships with years
- `MANAGES` - Management services with descriptions

## Error Handling & Troubleshooting (macOS)

### API Key Issues
```bash
# Check if API key is set
python3 -c "from config import Config; print('API Key configured:', bool(Config.GEMINI_API_KEY and Config.GEMINI_API_KEY != 'your_gemini_api_key_here'))"

# Test API key validity
python3 test_setup.py

# Manually test API connection
python3 -c "
from gemini_client import GeminiClient
client = GeminiClient()
try:
    response = client.generate_cypher('Test prompt')
    print('✅ API connection working')
except Exception as e:
    print(f'❌ API error: {e}')
"
```

### Rate Limiting Issues
```bash
# Check current rate limits in logs
grep -i "rate\|quota\|limit" generation.log

# Monitor API call frequency
grep "Making API call" generation.log | tail -10

# Adjust delays if needed (edit config.py)
nano config.py
# Increase REQUEST_DELAY from 5 to 10 seconds if needed
```

### Dependency Issues
```bash
# Update pip and dependencies
pip3 install --upgrade pip
pip3 install -r requirements.txt --force-reinstall

# Check specific packages
python3 -c "import google.generativeai; print('✅ google-generativeai:', google.generativeai.__version__)"
python3 -c "import python_dotenv; print('✅ python-dotenv installed')"

# Install missing packages individually
pip3 install google-generativeai python-dotenv requests
```

### File and Permission Issues
```bash
# Check input files exist
ls -la "../Data Extraction/preprocessing/preprocessed_texts/"

# Create output directory if missing
mkdir -p generated_cypher

# Fix permissions
chmod +x run_generation.sh
chmod 755 generated_cypher

# Check file permissions
ls -la generated_cypher/
```

### Network and Connectivity Issues
```bash
# Test internet connectivity
ping -c 3 generativelanguage.googleapis.com

# Test API endpoint
curl -s "https://generativelanguage.googleapis.com/v1beta/models" > /dev/null && echo "✅ API endpoint reachable" || echo "❌ API endpoint unreachable"

# Check DNS resolution
nslookup generativelanguage.googleapis.com

# Test with different network (if using VPN/proxy)
# Disable VPN and try again
```

### Generation Quality Issues
```bash
# Check generated file syntax
python3 -c "
import os
for f in os.listdir('generated_cypher'):
    if f.endswith('.cypher'):
        with open(f'generated_cypher/{f}', 'r') as file:
            content = file.read()
            create_count = content.count('CREATE')
            match_count = content.count('MATCH')
            print(f'{f}: {create_count} CREATE, {match_count} MATCH statements')
"

# Validate Cypher syntax (basic check)
python3 -c "
import re
for f in ['generated_cypher/AITKEN_SPENCE_PLC.cypher']:
    try:
        with open(f, 'r') as file:
            content = file.read()
            # Basic syntax checks
            if 'CREATE' in content and 'MATCH' in content:
                print(f'✅ {f}: Contains expected Cypher statements')
            else:
                print(f'❌ {f}: Missing expected Cypher statements')
    except FileNotFoundError:
        print(f'❌ {f}: File not found')
"
```

### Memory and Performance Issues
```bash
# Monitor memory usage during generation
top -o MEM -stats pid,command,mem

# Check available memory
vm_stat | head -5

# Free up memory if needed
sudo purge

# Process files individually if memory issues
for file in ../Data\ Extraction/preprocessing/preprocessed_texts/*_enriched.txt; do
    echo "Processing: $file"
    python3 generate_cypher.py --file "$(basename "$file")"
    sleep 10  # Rest between files
done
```

### Debug Mode
```bash
# Run with maximum verbosity
python3 generate_cypher.py --verbose --debug

# Check detailed logs
tail -50 generation.log

# Test with single small file first
python3 generate_cypher.py --file ACCESS_ENGINEERING_PLC_enriched.txt --verbose
```

## Integration with Complete Pipeline

### Sequential Pipeline Execution (Complete Flow)
```bash
# Run complete pipeline: Data Collection → Data Extraction → Cypher Generation

# 1. Data Collection
echo "🔄 Starting Data Collection..."
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Data Collection"
python3 annual_report_finder.py

# 2. Data Extraction
echo "🔄 Starting Data Extraction..."
cd "../Data Extraction"
python3 run_entity_resolution.py
cd preprocessing && ./run_preprocessing.sh && cd ..

# 3. Cypher Generation (Current Module)
echo "🔄 Starting Cypher Generation..."
cd "../Cypher Generation"
python3 generate_cypher.py

# 4. Pipeline Summary
echo "✅ Complete pipeline finished!"
echo "📊 Downloaded PDFs: $(ls '../Data Collection/reports'/*.pdf 2>/dev/null | wc -l)"
echo "📊 Extracted files: $(ls '../Data Extraction/extracted_texts'/*.txt 2>/dev/null | wc -l)"
echo "📊 Generated Cypher: $(ls 'generated_cypher'/*.cypher 2>/dev/null | wc -l)"
```

### Integration with Previous Pipeline (Data Extraction)
```bash
# Coming from Data Extraction module
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Cypher Generation"

# Verify prerequisite files exist
if [ -d "../Data Extraction/preprocessing/preprocessed_texts" ]; then
    enriched_count=$(ls ../Data\ Extraction/preprocessing/preprocessed_texts/*_enriched.txt 2>/dev/null | wc -l)
    echo "✅ Found $enriched_count enriched files"
    
    # Generate Cypher files
    python3 generate_cypher.py
    
    # Verify results
    cypher_count=$(ls generated_cypher/*.cypher 2>/dev/null | wc -l)
    echo "✅ Generated $cypher_count Cypher files"
else
    echo "❌ Enriched files not found. Please run Data Extraction pipeline first."
    echo "Run: cd '../Data Extraction' && python3 run_entity_resolution.py && cd preprocessing && ./run_preprocessing.sh"
fi
```

### Standalone Cypher Generation Execution
```bash
# Run ONLY Cypher Generation (this module)
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Cypher Generation"

echo "🔄 Starting Cypher Generation (standalone)..."

# Check prerequisites
if [ -f ".env" ] && grep -q "GEMINI_API_KEY=" .env && ! grep -q "your_gemini_api_key_here" .env; then
    echo "✅ API key configured"
else
    echo "❌ Please configure your Gemini API key in .env file"
    exit 1
fi

# Generate Cypher files
python3 generate_cypher.py

# Results summary
echo "✅ Cypher Generation completed!"
echo "📊 Generated files: $(ls generated_cypher/*.cypher 2>/dev/null | wc -l)"
echo "📊 Total statements: $(find generated_cypher -name "*.cypher" -exec grep -c "CREATE\|MATCH\|MERGE" {} \; 2>/dev/null | awk '{sum+=$1} END {print sum}')"
```

### Integration with Neo4j Database
```bash
# Import generated Cypher files to Neo4j (macOS)

# Option 1: Using cypher-shell (if Neo4j installed locally)
# Start Neo4j first
neo4j start

# Import all generated files
for cypher_file in generated_cypher/*.cypher; do
    echo "Importing: $cypher_file"
    cat "$cypher_file" | cypher-shell -u neo4j -p your_password
done

# Option 2: Using Neo4j Browser
echo "Open Neo4j Browser: http://localhost:7474"
echo "Copy and paste queries from generated_cypher/ files"
open http://localhost:7474

# Option 3: Docker Neo4j
docker run \
    --name neo4j-cse \
    -p7474:7474 -p7687:7687 \
    -d \
    -v $(pwd)/generated_cypher:/var/lib/neo4j/import \
    -e NEO4J_AUTH=neo4j/password \
    neo4j:latest

# Wait for Neo4j to start then import
sleep 30
docker exec neo4j-cse cypher-shell -u neo4j -p password < generated_cypher/AITKEN_SPENCE_PLC.cypher
```

## Usage Examples (macOS)

### Basic Generation
```bash
# Navigate to directory
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Cypher Generation"

# Generate all Cypher files
python3 generate_cypher.py
```

### Advanced Usage
```bash
# Generate specific company with verbose logging
python3 generate_cypher.py --file AITKEN_SPENCE_PLC_enriched.txt --verbose

# Check generation help
python3 generate_cypher.py --help

# Monitor generation progress
tail -f generation.log &
python3 generate_cypher.py

# Time the complete generation process
time python3 generate_cypher.py
```

### Batch Processing with Error Handling
```bash
# Generate all files with comprehensive error handling
python3 generate_cypher.py 2>&1 | tee generation.log

# Check success rate
echo "Generated files: $(ls generated_cypher/*.cypher 2>/dev/null | wc -l)"
echo "Expected files: $(ls ../Data\ Extraction/preprocessing/preprocessed_texts/*_enriched.txt 2>/dev/null | wc -l)"

# Retry failed generations
python3 -c "
import os
expected = set(f.replace('_enriched.txt', '.cypher') for f in os.listdir('../Data Extraction/preprocessing/preprocessed_texts') if f.endswith('_enriched.txt'))
generated = set(f for f in os.listdir('generated_cypher') if f.endswith('.cypher'))
missing = expected - generated
if missing:
    print('Missing files:', missing)
    for f in missing:
        input_file = f.replace('.cypher', '_enriched.txt')
        print(f'Retry: python3 generate_cypher.py --file {input_file}')
else:
    print('✅ All files generated successfully')
"
```

### Performance Monitoring (macOS)
```bash
# Monitor resource usage during generation
top -pid $(pgrep -f generate_cypher.py)

# Check network usage (API calls)
nettop -p $(pgrep -f generate_cypher.py)

# Check disk usage
du -sh generated_cypher/

# Monitor API rate limiting
grep -i "rate\|quota\|delay" generation.log | tail -10
```

### Generation Statistics
```bash
# Count total Cypher statements across all files
find generated_cypher -name "*.cypher" -exec grep -c "CREATE\|MATCH\|MERGE" {} \; | awk '{sum+=$1} END {print "Total statements: " sum}'

# Average file size
find generated_cypher -name "*.cypher" -exec wc -c {} \; | awk '{sum+=$1; count++} END {print "Average size: " sum/count " bytes"}'

# Show file sizes
ls -lah generated_cypher/*.cypher | awk '{print $5, $9}' | sort -hr

# Check relationship type coverage
grep -h "CREATE.*-\[:.*\]->" generated_cypher/*.cypher | sort | uniq -c | sort -nr
```

The Cypher Generation module completes the transformation from simple annual report text to complex, queryable corporate network data ready for advanced graph analytics in Neo4j.
