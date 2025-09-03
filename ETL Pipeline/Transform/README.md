# Name Normalization ETL Pipeline

A robust, maintainable Python ETL pipeline for normalizing person names in JSON files using advanced NLP techniques and fuzzy matching.

## 🎯 Overview

This pipeline implements a two-pass strategy to ensure accurate name normalization:

1. **Discovery Pass**: Scans all source JSON files to extract a comprehensive set of unique person names
2. **Transformation Pass**: Applies canonical mapping to replace name variations with standardized forms

## 🏗️ Architecture

The pipeline follows the Single Responsibility Principle (SRP) with each function having one clear purpose:

### Configuration & Setup
- `load_config()`: Centralized configuration management
- `setup_logging()`: Logging system configuration

### Core Utilities
- `load_spacy_model()`: NLP model loading and management
- `read_json_file()` / `write_json_file()`: File I/O operations

### Discovery Functions
- `extract_person_names()`: Name extraction from text using spaCy NER
- `run_discovery_orchestrator()`: Manages the discovery pass workflow

### Mapping & Transformation
- `create_canonical_map()`: Creates name variation mappings using fuzzy matching
- `transform_chunk()`: Text transformation with canonical names
- `run_transformation_orchestrator()`: Manages the transformation pass workflow

## 📋 Requirements

- Python 3.8+
- spaCy with English language model
- thefuzz for fuzzy string matching
- python-Levenshtein for optimized string comparison

## 🚀 Quick Start

### Important: Handling Path Issues

If you moved this project from another location, you must recreate the virtual environment to avoid hardcoded path errors:

```bash
# Remove old virtual environment (contains hardcoded paths)
rm -rf transform_env

# Create a fresh virtual environment
cd ETL Pipeline/Transform
python -m venv transform_env
source transform_env/bin/activate
pip install -r requirements.txt
```

### 1. Setup Environment (One-time)

```bash
# Navigate to Transform directory
cd "/Users/bashithashamila/Web Development/Vector Database/Transform"

# Run setup script (installs dependencies and downloads models)
chmod +x setup.sh
./setup.sh
```

### 2. Run the Pipeline

```bash
# Simple way - use the run script
./run.sh

# Or manually
source transform_env/bin/activate
python normalize_names.py
```

### 3. Analyze Results

```bash
# View analysis report
./run.sh analyze

# Or manually check results
cat canonical_name_map.json
ls cleaned_output/
```

### 4. Test Everything

```bash
# Run comprehensive tests
./run.sh test
```

The pipeline creates:
- `cleaned_output/`: Directory with normalized JSON files
- `canonical_name_map.json`: Name mapping for review/editing
- `analysis_report.txt`: Detailed analysis report

## 📊 Expected JSON Structure

The pipeline processes JSON files with this structure:

```json
{
  "metadata": { "...": "..." },
  "retrieved_chunks": {
    "directors_and_executives": [
      "Mr. Mohan Pandithage - Chairman Mr. Rajitha Kariyawasan - Deputy Chairman ...",
      "Directors Ms. A.I. Wanigasekera who was appointed to the Board..."
    ],
    "financial_performance": [ "... " ],
    "...": []
  }
}
```

Only the `directors_and_executives` sections are processed for name normalization.

## ⚙️ Configuration

Modify the configuration in `normalize_names.py`:

```python
def load_config() -> Dict[str, Any]:
    return {
        "SOURCE_DIR": "/path/to/source/json/files",
        "OUTPUT_DIR": "/path/to/output/directory", 
        "CANONICAL_MAP_FILE": "/path/to/canonical_map.json",
        "SIMILARITY_THRESHOLD": 85,  # Fuzzy matching threshold (0-100)
        "LOG_LEVEL": "INFO"
    }
```

## 🔧 Advanced Usage

### Manual Name Mapping Review

After the discovery pass, review and edit `canonical_name_map.json`:

```json
{
  "Mr. Mohan Pandithage": "Mohan Pandithage",
  "Pandithage, Mohan": "Mohan Pandithage",
  "M. Pandithage": "Mohan Pandithage"
}
```

### Adjusting Similarity Threshold

- **Higher values (90-95)**: More conservative clustering, fewer false positives
- **Lower values (70-80)**: More aggressive clustering, may group unrelated names
- **Default (85)**: Balanced approach for most use cases

## 📝 Logging

The pipeline provides comprehensive logging:

```
2025-08-29 10:30:15 - INFO - Starting Name Normalization ETL Pipeline
2025-08-29 10:30:16 - INFO - Successfully loaded spaCy model: en_core_web_sm
2025-08-29 10:30:17 - INFO - Starting discovery pass on 10 JSON files
2025-08-29 10:30:18 - INFO - Discovery pass completed. Total unique names found: 45
2025-08-29 10:30:19 - INFO - Created canonical map with 45 mappings
2025-08-29 10:30:20 - INFO - Starting transformation pass on 10 JSON files
2025-08-29 10:30:21 - INFO - Name Normalization ETL Pipeline completed successfully!
```

## 🛠️ Utility Scripts

The Transform folder includes several utility scripts:

### run.sh - Main Interface
```bash
./run.sh          # Run the ETL pipeline
./run.sh test     # Run comprehensive tests
./run.sh analyze  # Generate analysis report
./run.sh clean    # Clean output files
./run.sh help     # Show help
```

### Individual Scripts
- `normalize_names.py`: Main ETL pipeline script
- `test_pipeline.py`: Comprehensive test suite
- `analyze_results.py`: Result analysis and reporting
- `setup.sh`: Environment setup script

## 🧪 Testing

Run a test to verify the setup:

```bash
python -c "
import spacy
import json
from thefuzz import fuzz
print('✅ All dependencies imported successfully')
print(f'✅ spaCy version: {spacy.__version__}')
nlp = spacy.load('en_core_web_sm')
print('✅ spaCy English model loaded successfully')
print(f'✅ Fuzzy matching test: {fuzz.ratio(\"John Smith\", \"J. Smith\")}')
"
```

## 🐛 Troubleshooting

### Common Issues

1. **spaCy model not found**:
   ```bash
   python -m spacy download en_core_web_sm
   ```

2. **Permission denied on setup.sh**:
   ```bash
   chmod +x setup.sh
   ```

3. **Virtual environment activation issues**:
   ```bash
   deactivate  # if already in a venv
   source transform_env/bin/activate
   ```

### Error Handling

The pipeline includes comprehensive error handling:
- File not found errors are logged and skipped
- JSON parsing errors are reported with file names
- NLP processing errors don't crash the entire pipeline
- Missing directories are created automatically

## 📈 Performance Considerations

- **Memory Usage**: The pipeline loads all names into memory for clustering
- **Processing Time**: Scales linearly with number of files and text volume
- **Disk Space**: Output files have minimal size overhead

For large datasets (>1000 files), consider:
- Processing in batches
- Increasing similarity threshold to reduce clustering time
- Using more powerful hardware for spaCy processing

## 🔒 Data Privacy

- No data is sent to external services
- All processing happens locally
- Original files remain unchanged
- Canonical mapping files can be reviewed before transformation

## 📞 Support

For issues or improvements, check:
- Log files for detailed error messages
- Canonical mapping output for name clustering quality
- Source file structure compatibility

## 🚀 Future Enhancements

Potential improvements:
- Support for additional languages
- Custom name entity recognition models
- Batch processing for very large datasets
- Integration with external name databases
- Web interface for mapping review

---

**Author**: Expert Python Developer  
**Date**: August 29, 2025  
**Version**: 1.0.0
