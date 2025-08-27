# Data Extraction Pipeline

This module extracts structured data from annual reports and transforms it into a complex corporate network schema using an LLM-based preprocessing approach.

## Overview

The **Data Extraction Pipeline** is the **second stage** of the CSE Explorer data processing workflow. It transforms simple annual report text into comprehensive corporate network data through three main components:

🔄 **Pipeline Flow**: Data Collection → **Data Extraction** → Cypher Generation

1. **Entity Resolution**: Resolves duplicate entities from extracted annual report data
2. **Data Preprocessing**: Enriches text files with entity mappings and schema specifications for LLM processing  
3. **Complex Schema Generation**: Uses LLM to generate comprehensive Cypher queries for advanced corporate network analysis

## Features

- **Advanced Entity Resolution**: Deduplicates and normalizes person and company entities using ML techniques
- **Stateless LLM Processing**: Pre-processes all entity mappings and schema specifications for self-contained files
- **Complex Corporate Schema**: Supports 9 relationship types covering ownership, governance, financial metrics, and auditing
- **Production Ready**: Clean, modular architecture with comprehensive documentation
- **Ready-to-Execute Output**: Generates Neo4j Cypher queries for immediate import
- **macOS Optimized**: Tested and optimized for macOS environments with zsh shell

## Prerequisites

- **macOS** (tested on macOS 10.15+)
- **Python 3.8+**
- **spaCy English model** for natural language processing
- **Neo4j Database** (for final import - optional)
- **LLM API access** (OpenAI, Claude, etc.) for Cypher generation
- **zsh shell** (default on macOS)

## macOS Installation & Setup

### Quick Setup
```bash
# Navigate to Data Extraction directory
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Data Extraction"

# Install Python dependencies
pip3 install -r requirements.txt

# Install spaCy English model
python3 -m spacy download en_core_web_sm

# Verify installation
python3 -c "import spacy; nlp = spacy.load('en_core_web_sm'); print('✅ spaCy model loaded successfully')"

# Verify other dependencies
python3 -c "import pandas, numpy, networkx, thefuzz; print('✅ Core packages installed')"
```

## Running the Pipeline (macOS Commands)

### Individual Module Execution (Data Extraction Only)
```bash
# Navigate to Data Extraction directory
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Data Extraction"

# Step 1: Entity Resolution (if starting fresh)
echo "🔄 Starting Entity Resolution..."
python3 run_entity_resolution.py

# Check output
ls -la output/
cat output/resolution_summary.txt

# Step 2: Data Preprocessing for LLM
echo "🔄 Starting Data Preprocessing..."
cd preprocessing

# Make script executable
chmod +x run_preprocessing.sh

# Run the preprocessing pipeline
./run_preprocessing.sh

# Return to main directory
cd ..

# Step 3: Validate Results
echo "🔄 Validating preprocessing results..."
cd preprocessing
python3 test_llm_processing.py
python3 validate_schema.py
cd ..

echo "✅ Data Extraction completed!"
echo "📊 Enriched files ready: $(ls preprocessing/preprocessed_texts/*_enriched.txt 2>/dev/null | wc -l)"
```

### Step-by-Step Execution
```bash
# Navigate to Data Extraction directory
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Data Extraction"

# Step 1: Entity Resolution (if starting fresh)
python3 run_entity_resolution.py

# Check output
ls -la output/
cat output/resolution_summary.txt

# Step 2: Data Preprocessing for LLM
cd preprocessing

# Make script executable
chmod +x run_preprocessing.sh

# Run the preprocessing pipeline
./run_preprocessing.sh

# Check enriched files
ls -la preprocessed_texts/

# Count enriched files
find preprocessed_texts -name "*_enriched.txt" | wc -l

# Step 3: Validate Preprocessing Results
python3 test_llm_processing.py
python3 validate_schema.py

# Return to main directory
cd ..
```

### Monitor Processing Progress
```bash
# Monitor file creation during preprocessing
watch -n 2 'ls -la preprocessing/preprocessed_texts/ | tail -10'

# Check processing logs
tail -f preprocessing/preprocessing.log &

# Monitor memory usage during entity resolution
top -pid $(pgrep -f run_entity_resolution.py)
```

## Architecture

```
Data Extraction/
├── config.py                   # Configuration settings
├── entity_resolution.py        # Entity resolution pipeline
├── run_entity_resolution.py    # Entity resolution runner
├── requirements.txt            # Python dependencies
├── Dockerfile                  # Container configuration
├── extracted_texts/            # Input annual report texts (13 files)
├── output/                     # Entity resolution results
│   ├── canonical_person_entities.json   # 100 resolved persons
│   ├── neo4j_company_nodes.json        # 17 companies
│   └── entity_mapping.json             # ID mappings
└── preprocessing/              # LLM preprocessing system
    ├── entity_mapper.py        # Entity ID management
    ├── text_enricher.py        # Context enrichment
    ├── preprocess_data.py      # Main preprocessing logic
    ├── run_preprocessing.sh    # Preprocessing workflow
    ├── validate_schema.py      # Schema validation
    ├── test_llm_processing.py  # Testing utilities
    ├── preprocessed_texts/     # LLM-ready enriched files (13 files)
    └── *.md                    # Documentation
```

## Complex Corporate Schema

The system generates a comprehensive corporate network with **9 relationship types**:

### Ownership & Shareholdings
- `OWNS` - Company ownership with percentages
- `OWNS_SHARES` - Personal shareholding in companies

### Governance & Roles  
- `DIRECTOR_OF` - Board positions and directorships
- `HOLDS_POSITION` - Executive roles and management positions

### Business Classification
- `IN_SECTOR` - Business sector classifications
- `OFFERS` - Products and services offered

### Financial Metrics
- `HAS_METRIC` - Financial data and performance metrics

### Auditing & Management
- `AUDITED_BY` - Auditing relationships between companies
- `MANAGES` - Management services (e.g., plantation management)

## Troubleshooting (macOS)

### spaCy Model Issues
```bash
# Reinstall spaCy model
python3 -m spacy download en_core_web_sm --force

# Check available models
python3 -m spacy info

# Test model loading
python3 -c "import spacy; nlp = spacy.load('en_core_web_sm'); print('✅ Model loaded:', nlp.meta['name'])"

# Clear spaCy cache if issues persist
python3 -c "import spacy; spacy.util.clear_cache()"
```

### Python Dependencies Issues
```bash
# Update pip and setuptools
pip3 install --upgrade pip setuptools wheel

# Reinstall requirements with force
pip3 install -r requirements.txt --force-reinstall

# Check specific packages individually
python3 -c "import pandas; print('✅ pandas:', pandas.__version__)"
python3 -c "import numpy; print('✅ numpy:', numpy.__version__)"
python3 -c "import networkx; print('✅ networkx:', networkx.__version__)"
python3 -c "import thefuzz; print('✅ thefuzz installed')"

# Install missing packages individually if needed
pip3 install pandas numpy networkx python-Levenshtein thefuzz
```

### File Permission Issues
```bash
# Make scripts executable
chmod +x run_entity_resolution.py
chmod +x preprocessing/run_preprocessing.sh

# Check and fix directory permissions
sudo chown -R $(whoami) .
chmod -R 755 .

# Check directory permissions
ls -la extracted_texts/
ls -la output/
ls -la preprocessing/

# Create missing directories if needed
mkdir -p output preprocessing/preprocessed_texts
```

### Memory and Performance Issues
```bash
# Check available memory
vm_stat | head -5

# Monitor memory usage during processing
top -o MEM -stats pid,command,mem

# Free up memory (restart if needed)
sudo purge

# Check disk space
df -h

# Clean up temporary files
rm -rf ~/.cache/pip
find . -name "__pycache__" -type d -exec rm -rf {} + 2>/dev/null
```

### Processing Errors
```bash
# Check for corrupted text files
find extracted_texts -name "*.txt" -size 0
find extracted_texts -name "*.txt" -exec file {} \;

# Validate input data
python3 -c "
import os
text_files = [f for f in os.listdir('extracted_texts') if f.endswith('.txt')]
print(f'Text files found: {len(text_files)}')
for f in text_files[:5]:
    with open(f'extracted_texts/{f}', 'r') as file:
        content = file.read()
        print(f'{f}: {len(content)} characters')
"

# Test entity resolution with single file
python3 -c "
from entity_resolution import *
# Test with minimal data
"

# Check preprocessing logs
tail -20 preprocessing/preprocessing.log
```

### Docker Alternative (if native setup fails)
```bash
# Build and run in Docker
docker build -t data-extraction .

# Run entity resolution in Docker
docker run -it --rm \
  -v "$(pwd)/extracted_texts:/app/extracted_texts" \
  -v "$(pwd)/output:/app/output" \
  data-extraction python3 run_entity_resolution.py

# Run preprocessing in Docker
docker run -it --rm \
  -v "$(pwd):/app" \
  data-extraction bash -c "cd preprocessing && ./run_preprocessing.sh"
```

## Integration with Complete Pipeline

### Sequential Pipeline Execution
```bash
# Run complete pipeline: Data Collection → Data Extraction → Cypher Generation

# 1. Data Collection (if not done)
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Data Collection"
python3 annual_report_finder.py

# 2. Data Extraction (Current Module)
echo "🔄 Starting Data Extraction..."
cd "../Data Extraction"
python3 run_entity_resolution.py
cd preprocessing && ./run_preprocessing.sh && cd ..

# 3. Cypher Generation (next step)
echo "🔄 Starting Cypher Generation..."
cd "../Cypher Generation"
python3 generate_cypher.py

echo "✅ Complete pipeline finished!"
```

### Integration with Previous Pipeline (Data Collection)
```bash
# If coming from Data Collection module
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Data Extraction"

# Process the collected PDFs (requires additional PDF processing - not implemented)
# Current implementation works with pre-extracted text files
echo "📝 Note: PDF extraction not implemented. Using pre-extracted text files."

# Proceed with entity resolution
python3 run_entity_resolution.py
```

### Integration with Next Pipeline (Cypher Generation)
```bash
# After Data Extraction completion
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Data Extraction"

# Verify preprocessing completed
if [ -d "preprocessing/preprocessed_texts" ] && [ "$(ls -1 preprocessing/preprocessed_texts/*_enriched.txt 2>/dev/null | wc -l)" -eq 13 ]; then
    echo "✅ Data Extraction complete! Ready for Cypher Generation."
    
    # Navigate to Cypher Generation
    cd "../Cypher Generation"
    
    # Generate Cypher files
    python3 generate_cypher.py
    
    echo "✅ Cypher files generated!"
else
    echo "❌ Data Extraction not complete. Please run preprocessing first."
fi
```

### Standalone Data Extraction Execution
```bash
# Run ONLY Data Extraction (this module)
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Data Extraction"

echo "🔄 Starting Data Extraction (standalone)..."

# Entity Resolution
python3 run_entity_resolution.py

# Preprocessing
cd preprocessing && ./run_preprocessing.sh && cd ..

# Results Summary
echo "✅ Data Extraction completed!"
echo "📊 Resolved entities: $(ls output/*.json 2>/dev/null | wc -l)"
echo "📊 Enriched files: $(ls preprocessing/preprocessed_texts/*_enriched.txt 2>/dev/null | wc -l)"
```

## Performance Expectations

- **Entity Resolution**: 2-5 minutes for 13 files
- **Preprocessing**: 1-2 minutes for all enriched files
- **Memory Usage**: ~1-2GB RAM peak
- **Output Size**: ~14KB per enriched file
- **Success Rate**: 100% (validated and tested)

## Status

✅ **Production Ready**: Clean architecture, comprehensive testing, documentation complete  
🚀 **13 enriched files** ready for LLM processing  
📊 **100% schema completeness** validated  
🔄 **Stateless design** enables scalable LLM processing  

---

**Next Steps**: Use any enriched file from `preprocessing/preprocessed_texts/` with your LLM to generate complex corporate network Cypher queries.