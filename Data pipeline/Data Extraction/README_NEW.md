# Data Extraction Pipeline

This module extracts structured data from annual reports and transforms it into a complex corporate network schema using an LLM-based preprocessing approach.

## Overview

The Data Extraction Pipeline transforms simple annual report text into comprehensive corporate network data through three main components:

1. **Entity Resolution**: Resolves duplicate entities from extracted annual report data
2. **Data Preprocessing**: Enriches text files with entity mappings and schema specifications for LLM processing  
3. **Complex Schema Generation**: Uses LLM to generate comprehensive Cypher queries for advanced corporate network analysis

## Features

- **Advanced Entity Resolution**: Deduplicates and normalizes person and company entities using ML techniques
- **Stateless LLM Processing**: Pre-processes all entity mappings and schema specifications for self-contained files
- **Complex Corporate Schema**: Supports 9 relationship types covering ownership, governance, financial metrics, and auditing
- **Production Ready**: Clean, modular architecture with comprehensive documentation
- **Ready-to-Execute Output**: Generates Neo4j Cypher queries for immediate import

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

## Quick Start

### Prerequisites
- Python 3.8+
- Neo4j Database (for final import)
- LLM API access (OpenAI, Claude, etc.)

### Installation
```bash
cd "Data pipeline/Data Extraction"
pip install -r requirements.txt
python -m spacy download en_core_web_sm
```

### Usage

1. **Run entity resolution** (if starting fresh):
   ```bash
   python run_entity_resolution.py
   ```

2. **Run data preprocessing**:
   ```bash
   cd preprocessing
   ./run_preprocessing.sh
   ```

3. **Process with LLM**:
   - Choose any file from `preprocessing/preprocessed_texts/`
   - Send entire file content to your LLM for Cypher generation
   - See `preprocessing/LLM_USAGE_GUIDE.md` for detailed instructions

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

## Key Components

### Entity Resolution
- **Input**: 13 annual report text files
- **Output**: 100 canonical persons, 17 companies with consistent UUIDs
- **Features**: Fuzzy matching, graph-based clustering, comprehensive deduplication

### Data Preprocessing
- **Input**: Entity resolution output + original texts
- **Output**: 13 enriched text files ready for LLM processing
- **Features**: Complete schema embedding, entity ID pre-mapping, stateless design

### LLM Processing
- **Input**: Any enriched text file (self-contained)
- **Output**: Complex Cypher queries with all 9 relationship types
- **Features**: Exact schema compliance, ready-to-execute queries

## Output Examples

### Entity Resolution Results
```json
{
  "entity_id": "person_2ba12344-5981-5bae-3dd0-869f278aeb63",
  "canonical_name": "Robert A. Iger",
  "alternative_names": ["Robert Iger", "Bob Iger", "R. Iger"],
  "companies": ["Disney", "ABC"],
  "years": [2023, 2024],
  "roles": ["CEO", "Chairman"]
}
```

### Generated Cypher Queries
```cypher
// Node creation
CREATE (:Sector {id: 'sector_financial_services', name: 'Financial Services'});
CREATE (:Metric {id: 'metric_revenue', name: 'Revenue', unit: 'LKR'});

// Complex relationships
MATCH (p:Person {id: 'person_2ba12344-5981-5bae-3dd0-869f278aeb63'})
MATCH (c:Company {id: 'company_abc123-def4-56gh-78ij-90klmnopqrst'})
CREATE (p)-[:DIRECTOR_OF {role: 'Chairman', as_of: date('2024-01-01')}]->(c);

MATCH (c:Company {id: 'company_abc123-def4-56gh-78ij-90klmnopqrst'})
MATCH (m:Metric {id: 'metric_revenue'})
CREATE (c)-[:HAS_METRIC {year: 2024, value: 1500000000, as_of: date('2024-12-31')}]->(m);
```

## Configuration

Key settings in `config.py`:
- **Entity Resolution**: Similarity thresholds, feature weights
- **Preprocessing**: Schema specifications, entity naming conventions
- **Output Formats**: JSON/CSV options, validation rules

## Testing & Validation

- **Entity Resolution**: Comprehensive test suite with known duplicates
- **Preprocessing**: Schema completeness validation
- **LLM Ready**: All files tested for stateless processing capability

## Production Deployment

### Docker Support
```bash
docker build -t data-extraction .
docker run -v $(pwd)/extracted_texts:/app/extracted_texts \
           -v $(pwd)/output:/app/output \
           data-extraction
```

### Integration Points
- **Input**: Annual report PDF extraction results
- **Output**: Neo4j-ready Cypher queries
- **APIs**: Entity resolution and preprocessing endpoints
- **Monitoring**: Comprehensive logging and validation

## Documentation

- `preprocessing/LLM_USAGE_GUIDE.md` - Complete LLM processing guide
- `preprocessing/COMPLETION_SUMMARY.md` - Implementation summary
- `preprocessing/README.md` - Technical details

## Status

✅ **Production Ready**: Clean architecture, comprehensive testing, documentation complete
🚀 **13 enriched files** ready for LLM processing
📊 **100% schema completeness** validated
🔄 **Stateless design** enables scalable LLM processing

---

**Next Steps**: Use any enriched file from `preprocessing/preprocessed_texts/` with your LLM to generate complex corporate network Cypher queries.
