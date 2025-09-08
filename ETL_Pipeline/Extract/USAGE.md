# Quick Start Guide - Semantic Chunking

## 🚀 Getting Started in 5 Minutes (macOS Virtual Environment)

### 1. Initial Setup (One-time)

```bash
# Navigate to your project directory
cd ~/pdf-semantic-chunking

# Create virtual environment (if not already created)
python3 -m venv pdf_chunk_env

# Activate virtual environment
source pdf_chunk_env/bin/activate

# Verify activation (should show pdf_chunk_env path)
which python

# Install dependencies
pip install --upgrade pip
pip install -r requirements.txt
```

### 2. API Key Configuration

```bash
# Get your API key from: https://aistudio.google.com/app/apikey

# Option 1: Environment variable (recommended)
export GOOGLE_API_KEY="your-api-key-here"

# Option 2: Create .env file
echo "GOOGLE_API_KEY=your-api-key-here" > .env

# Verify setup
python test_setup.py
```

### 3. Daily Usage Workflow

```bash
# 1. Navigate to project
cd ~/pdf-semantic-chunking

# 2. Activate virtual environment
source pdf_chunk_env/bin/activate

# 3. Run semantic chunk retrieval
python chunk_retriever.py

# 4. Deactivate when done
deactivate
```

### 4. Batch Processing

```bash
# Activate environment
source pdf_chunk_env/bin/activate

# Process all PDFs in directory
python batch_process.py "annual reports" "batch_output"

# Custom processing
python batch_process.py "/path/to/pdfs" "/path/to/output"
```

## 📁 File Structure (Updated for Semantic Chunking)

```
pdf-semantic-chunking/
├── pdf_chunk_env/           # Virtual environment directory
│   ├── bin/activate         # Activation script
│   ├── lib/python3.x/       # Installed packages
│   └── pyvenv.cfg          # Environment configuration
├── chunk_retriever.py       # Main semantic chunk retrieval
├── batch_process.py        # Batch processing utility
├── test_setup.py          # Setup verification
├── setup.py              # Automated setup
├── requirements.txt       # Dependencies (updated)
├── README.md             # Comprehensive documentation
├── USAGE.md              # This quick start guide
├── .env                  # Your API keys (create this)
├── annual reports/       # Input PDF directory
├── output_semantic/      # Semantic chunk output
└── batch_output/        # Batch processing output
```

## ⚙️ Configuration for Semantic Chunking

Edit `chunk_retriever.py` → `setup_config()` function:

```python
config = {
    "pdf_input_path": "annual reports/YOUR_PDF.pdf",  # Change this
    "output_directory": "output_semantic",            # New output directory
    "embedding_model_name": "models/text-embedding-004",
    "top_k_chunks": 5,                               # Chunks per question
    "collection_name": "pdf_semantic_chunks",        # New collection name
    # No more chunk_size/chunk_overlap - semantic chunking handles this
}
```

## 🔍 Virtual Environment Commands

### Daily Commands

```bash
# Activate (start of work session)
source pdf_chunk_env/bin/activate

# Check if active
which python  # Should show: .../pdf_chunk_env/bin/python
echo $VIRTUAL_ENV  # Should show path to pdf_chunk_env

# Run your scripts
python chunk_retriever.py
python batch_process.py

# Deactivate (end of work session)
deactivate
```

### Management Commands

```bash
# List installed packages
pip list

# Install new package
pip install package_name

# Update package
pip install --upgrade package_name

# Update all packages
pip install --upgrade -r requirements.txt

# Generate requirements
pip freeze > requirements.txt
```

### Troubleshooting Virtual Environment

```bash
# If activation fails
ls -la pdf_chunk_env/bin/activate  # Check if exists

# If wrong Python version
rm -rf pdf_chunk_env
python3 -m venv pdf_chunk_env
source pdf_chunk_env/bin/activate
pip install -r requirements.txt

# If permission issues (macOS)
chmod +x pdf_chunk_env/bin/activate
```

## 📊 Semantic vs Traditional Chunking

### What Changed

**Before (Traditional)**:
```python
# Fixed-size chunks
chunk_size = 1000
chunk_overlap = 200
```

**Now (Semantic)**:
```python
# Semantic boundary-based chunks
SemanticChunker(embeddings, breakpoint_threshold_type="percentile")
```

### Output Differences

**Traditional Output**: `output/filename_chunks.json`
**Semantic Output**: `output_semantic/filename_chunks_semantic.json`

**Metadata Changes**:
```json
{
  "metadata": {
    "chunking_method": "semantic",  // New field
    "chunk_size": "removed",        // No longer used
    "chunk_overlap": "removed"      // No longer used
  }
}
```

## 🚀 Quick Test Run

```bash
# 1. Full test sequence
cd ~/pdf-semantic-chunking
source pdf_chunk_env/bin/activate
python test_setup.py
python chunk_retriever.py
ls -la output_semantic/
deactivate

# 2. One-liner for daily use
cd ~/pdf-semantic-chunking && source pdf_chunk_env/bin/activate && python chunk_retriever.py && deactivate
```

## 📋 Available Question Categories (Same as Before)

1. **directors_and_executives** - Key personnel information
2. **financial_performance** - Financial metrics and data
3. **risk_factors** - Business risks and challenges
4. **business_segments** - Revenue sources and business lines
5. **future_outlook** - Strategy and forward-looking statements
6. **governance_structure** - Corporate governance policies
7. **sustainability_initiatives** - CSR and sustainability programs
8. **market_position** - Competitive landscape information
9. **regulatory_compliance** - Compliance and regulatory matters
10. **operational_highlights** - Key achievements and operations
11. **dividend_policy** - Shareholder returns and dividends
12. **capital_structure** - Funding and capital information
13. **technology_digital** - Digital transformation initiatives
14. **human_resources** - Employee and HR policies
15. **audit_internal_controls** - Audit findings and controls

## 🛠️ Customization

### Adding New Questions (Same Process)
Edit `get_questions_for_schema()` in `chunk_retriever.py`:

```python
def get_questions_for_schema():
    questions = {
        "your_category": "Your custom question here?",
        # ... existing questions
    }
    return questions
```

### Adjusting Semantic Chunking

```python
# In load_and_chunk_semantically() function
text_splitter = SemanticChunker(
    embeddings, 
    breakpoint_threshold_type="percentile"  # or "standard_deviation"
)
```

## 🐛 Troubleshooting

### Virtual Environment Issues

**Problem**: Virtual environment not activating
```bash
# Check if file exists
ls -la pdf_chunk_env/bin/activate

# Recreate if needed
rm -rf pdf_chunk_env
python3 -m venv pdf_chunk_env
source pdf_chunk_env/bin/activate
pip install -r requirements.txt
```

**Problem**: Wrong Python version in virtual environment
```bash
# Check Python version
python --version  # Should be 3.8+

# If wrong, recreate with specific version
python3.9 -m venv pdf_chunk_env
```

### Semantic Chunking Issues

**Problem**: SemanticChunker import error
```bash
# Install missing dependency
pip install langchain-experimental>=0.0.50
```

**Problem**: Empty semantic chunks
```bash
# Check PDF content
python -c "
from langchain_community.document_loaders import PyPDFLoader
loader = PyPDFLoader('annual reports/YOUR_PDF.pdf')
docs = loader.load()
print(f'Pages: {len(docs)}')
print(f'First page preview: {docs[0].page_content[:200]}')
"
```

### Common Errors

1. **API Key Error**:
   ```bash
   export GOOGLE_API_KEY="your-actual-key"
   source pdf_chunk_env/bin/activate
   python test_setup.py
   ```

2. **PDF Not Found**:
   ```bash
   ls -la "annual reports/"  # Check if PDF exists
   # Update pdf_input_path in setup_config()
   ```

3. **Memory Issues**:
   ```bash
   # Monitor memory usage
   top -o MEM  # On macOS
   # Use smaller PDFs for testing
   ```

## 💡 Pro Tips

### Create Aliases for Convenience

Add to your `~/.bash_profile` or `~/.zshrc`:

```bash
# PDF Chunking aliases
alias pdfchunk='cd ~/pdf-semantic-chunking && source pdf_chunk_env/bin/activate'
alias pdftest='cd ~/pdf-semantic-chunking && source pdf_chunk_env/bin/activate && python test_setup.py'
alias pdfrun='cd ~/pdf-semantic-chunking && source pdf_chunk_env/bin/activate && python chunk_retriever.py'
alias pdfbatch='cd ~/pdf-semantic-chunking && source pdf_chunk_env/bin/activate && python batch_process.py'
```

### Automation Script

```bash
# Create automation script
cat > run_semantic_chunking.sh << 'EOF'
#!/bin/bash
echo "🚀 Starting PDF Semantic Chunk Retrieval System"
cd ~/pdf-semantic-chunking
source pdf_chunk_env/bin/activate

# Verify setup
echo "🔍 Verifying setup..."
python test_setup.py

# Run chunking
echo "🔄 Running semantic chunk retrieval..."
python chunk_retriever.py

echo "✅ Completed! Check output_semantic/ directory"
deactivate
EOF

chmod +x run_semantic_chunking.sh
./run_semantic_chunking.sh
```

## 📞 Support Checklist

Before asking for help:

1. ✅ Virtual environment activated: `which python`
2. ✅ Dependencies installed: `pip list | grep langchain`
3. ✅ API key set: `echo $GOOGLE_API_KEY`
4. ✅ PDF file exists: `ls -la "annual reports/"`
5. ✅ Test setup passes: `python test_setup.py`

---

**Remember**: 
- Always activate virtual environment before running scripts
- Semantic chunking creates variable-size chunks based on meaning
- Output goes to `output_semantic/` directory with `_semantic.json` suffix
- Deactivate virtual environment when done: `deactivate`