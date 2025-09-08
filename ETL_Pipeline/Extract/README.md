# PDF Semantic Chunk Retrieval System

A modular Python system for retrieving and storing relevant text chunks from PDF documents using **semantic chunking**, Google Gemini Embedding API, and ChromaDB. This system focuses on **chunk retrieval only** - it does not generate answers or perform Q&A operations.

## Overview

This system processes PDF files to extract text chunks that are semantically coherent and most relevant to a predefined set of questions. Unlike traditional fixed-size chunking, it uses **semantic chunking** that creates variable-size chunks based on meaning and context, providing more accurate and contextually relevant results.

## Key Features

- **Semantic Chunking**: Advanced chunking that preserves semantic coherence
- **Modular Architecture**: Clean separation of concerns with single-responsibility functions
- **Vector-Based Retrieval**: Uses Google Gemini embeddings for semantic similarity search
- **Virtual Environment Support**: Complete virtual environment setup for Mac
- **In-Memory Processing**: Fast processing with ChromaDB in-memory vector store
- **Structured Output**: Well-organized JSON output with metadata
- **Comprehensive Logging**: Detailed progress tracking and debugging information
- **Batch Processing**: Process multiple PDFs efficiently

## System Requirements

### macOS Requirements

- **macOS**: 10.14+ (Mojave or later)
- **Python**: 3.8+ (recommended: 3.9 or 3.10)
- **Memory**: 4GB+ RAM (8GB+ recommended for large PDFs)

### Python Dependencies (installed via virtual environment)

```bash
google-generativeai>=0.3.0
langchain>=0.1.0
langchain-community>=0.0.10
langchain-google-genai>=0.0.5
langchain-experimental>=0.0.50  # Required for SemanticChunker
chromadb>=0.4.0
pypdf>=3.0.0
scikit-learn>=1.0
numpy>=1.20.0
python-dotenv>=1.0.0
tqdm>=4.65.0
```

## Installation & Setup (macOS with Virtual Environment)

### 1. Clone/Download the Project

```bash
# Create project directory
mkdir ~/pdf-semantic-chunking
cd ~/pdf-semantic-chunking

# Download or copy all project files here
```

### 2. Create and Activate Virtual Environment

```bash
# Create virtual environment (using your existing name)
python3 -m venv pdf_chunk_env

# Activate virtual environment
source pdf_chunk_env/bin/activate

# You should see (pdf_chunk_env) in your terminal prompt
```

### 3. Install Dependencies

```bash
# Upgrade pip first
pip install --upgrade pip

# Install all dependencies
pip install -r requirements.txt

# Verify installation
python test_setup.py
```

### 4. Set Up Google API Key

```bash
# Get your API key from: https://aistudio.google.com/app/apikey

# Option 1: Set environment variable
export GOOGLE_API_KEY="your-google-ai-api-key-here"

# Option 2: Create .env file
echo "GOOGLE_API_KEY=your-google-ai-api-key-here" > .env
```

### 5. Prepare Your PDF Files

```bash
# Create directory for PDFs (if not exists)
mkdir "annual reports"

# Copy your PDF files to this directory
cp /path/to/your/pdfs/*.pdf "annual reports/"
```

## Usage

### Daily Usage (After Initial Setup)

```bash
# 1. Navigate to project directory
cd ~/pdf-semantic-chunking

# 2. Activate virtual environment
source pdf_chunk_env/bin/activate

# 3. Verify setup (optional)
python test_setup.py

# 4. Run semantic chunk retrieval
python chunk_retriever.py

# 5. Deactivate when done
deactivate
```

### Single PDF Processing

```bash
# Activate virtual environment
source pdf_chunk_env/bin/activate

# Process single PDF (modify pdf_input_path in setup_config())
python chunk_retriever.py

# Output will be in output_semantic/ directory
```

### Batch Processing Multiple PDFs

```bash
# Activate virtual environment
source pdf_chunk_env/bin/activate

# Process all PDFs in a directory
python batch_process.py "annual reports" "batch_output"

# Custom directories
python batch_process.py "/path/to/pdfs" "/path/to/output"
```

### Configuration

Edit `chunk_retriever.py` → `setup_config()` function:

```python
config = {
    "pdf_input_path": "annual reports/YOUR_PDF.pdf",  # Change this
    "output_directory": "output_semantic",            # Semantic chunks output
    "embedding_model_name": "models/text-embedding-004",
    "top_k_chunks": 5,                               # Chunks per question
    "collection_name": "pdf_semantic_chunks",        # Vector DB collection
}
```

## What's New: Semantic Chunking

### Traditional vs Semantic Chunking

**Traditional Chunking (Old)**:
- Fixed size (e.g., 1000 characters)
- Fixed overlap (e.g., 200 characters)
- May break sentences/paragraphs awkwardly

**Semantic Chunking (New)**:
- Variable size based on semantic boundaries
- Preserves topic coherence
- Better context preservation
- More accurate retrieval results

### Technical Implementation

```python
# OLD: RecursiveCharacterTextSplitter
text_splitter = RecursiveCharacterTextSplitter(
    chunk_size=1000,
    chunk_overlap=200,
    separators=["\n\n", "\n", " ", ""]
)

# NEW: SemanticChunker
from langchain_experimental.text_splitter import SemanticChunker
text_splitter = SemanticChunker(
    embeddings, 
    breakpoint_threshold_type="percentile"
)
```

## Output Structure

The system generates JSON files with semantic chunking metadata:

```json
{
  "metadata": {
    "source_pdf": "path/to/source.pdf",
    "processing_date": "2025-08-29",
    "chunking_method": "semantic",
    "total_questions": 15,
    "embedding_model": "models/text-embedding-004",
    "top_k_chunks": 5,
    "total_chunks_retrieved": 75
  },
  "retrieved_chunks": {
    "directors_and_executives": [
      "Semantically coherent chunk about directors...",
      "Another semantic chunk about executives...",
      // ... more chunks
    ],
    // ... other question categories
  }
}
```

### Output File Naming

- Single PDF: `output_semantic/YOUR_PDF_chunks_semantic.json`
- Batch processing: `batch_output/batch_processing_summary.json`

## Virtual Environment Management

### Common Commands

```bash
# Activate virtual environment
source pdf_chunk_env/bin/activate

# Check if virtual environment is active
which python  # Should show: .../pdf_chunk_env/bin/python

# Install new package
pip install package_name

# List installed packages
pip list

# Update requirements.txt
pip freeze > requirements.txt

# Deactivate virtual environment
deactivate
```

### Updating Dependencies

```bash
# Activate virtual environment
source pdf_chunk_env/bin/activate

# Update specific package
pip install --upgrade langchain-experimental

# Update all packages
pip install --upgrade -r requirements.txt

# If you have conflicts, recreate environment
deactivate
rm -rf pdf_chunk_env
python3 -m venv pdf_chunk_env
source pdf_chunk_env/bin/activate
pip install -r requirements.txt
```

## Project Structure

```
pdf-semantic-chunking/
├── pdf_chunk_env/           # Virtual environment (don't commit)
├── chunk_retriever.py       # Main semantic chunk retrieval script
├── batch_process.py        # Batch processing utility
├── test_setup.py          # Setup verification
├── setup.py              # Automated setup
├── requirements.txt       # Python dependencies
├── README.md             # This comprehensive guide
├── USAGE.md              # Quick start guide
├── .env.example          # Environment template
├── .env                  # Your API keys (don't commit)
├── annual reports/       # Input PDF directory
├── output_semantic/      # Single file semantic output
└── batch_output/        # Batch processing output
```

## Troubleshooting

### Virtual Environment Issues

```bash
# Virtual environment not activating
ls -la pdf_chunk_env/bin/activate  # Check if file exists

# Python not found after activation
which python  # Should show virtual env path

# Permission issues on Mac
chmod +x pdf_chunk_env/bin/activate

# Recreate virtual environment
rm -rf pdf_chunk_env
python3 -m venv pdf_chunk_env
source pdf_chunk_env/bin/activate
pip install -r requirements.txt
```

### Common Issues

1. **API Key Error**:
   ```bash
   export GOOGLE_API_KEY="your-actual-key"
   # Or edit .env file
   ```

2. **SemanticChunker Import Error**:
   ```bash
   pip install langchain-experimental>=0.0.50
   ```

3. **Memory Issues with Large PDFs**:
   - Use smaller PDFs for testing
   - Increase system memory
   - Process files individually

4. **Permission Denied on macOS**:
   ```bash
   # If needed, grant permission to Terminal in System Preferences
   sudo xcode-select --install  # Install command line tools
   ```

### Performance Optimization

- **Optimal chunk semantics**: Let the semantic chunker determine sizes
- **Top-K Setting**: 3-7 chunks per question
- **Memory usage**: ~200MB per 1000 semantic chunks
- **Processing speed**: ~30-60 seconds per average PDF

## Automation Script

Create a shell script for daily use:

```bash
# Create run_chunking.sh
cat > run_chunking.sh << 'EOF'
#!/bin/bash
cd ~/pdf-semantic-chunking
source pdf_chunk_env/bin/activate
echo "🚀 Starting semantic chunk retrieval..."
python chunk_retriever.py
echo "✅ Completed! Check output_semantic/ directory"
deactivate
EOF

# Make executable
chmod +x run_chunking.sh

# Run with
./run_chunking.sh
```

## Next Steps

1. **Test Semantic Chunking**: Compare results with traditional chunking
2. **Fine-tune Questions**: Modify questions in `get_questions_for_schema()`
3. **Batch Processing**: Process multiple PDFs using `batch_process.py`
4. **Custom Analysis**: Use retrieved chunks for further processing
5. **Integration**: Integrate with Q&A or analysis systems

## License & Support

This script is provided for educational and research purposes. The semantic chunking approach provides more contextually relevant results compared to traditional fixed-size chunking.

---

**Note**: This system uses semantic chunking for improved chunk retrieval. It does not generate answers but provides semantically coherent text chunks for further analysis.