# Load Phase - Quick Command Reference

## Essential Commands (macOS/zsh)

### First Time Setup
```bash
cd "ETL Pipeline/Load"
chmod +x setup.sh && ./setup.sh
cp .env.example .env
```

### Run Load Phase
```bash
cd "ETL Pipeline/Load"
chmod +x run.sh && ./run.sh
```

### Manual Activation & Run
```bash
cd "ETL Pipeline/Load"
source load_env/bin/activate
python3 generate_cypher_queries.py
deactivate
```

### Check Status
```bash
cd "ETL Pipeline/Load"
ls cypher_queries/     # See generated files
ls logs/              # Check processing logs
python3 verify.py     # Run verification
```

### Virtual Environment Commands
```bash
# Activate
source load_env/bin/activate

# Check which Python
which python3

# Check installed packages
pip list

# Deactivate
deactivate
```

## Your Current Setup
✅ Virtual environment: `load_env/`  
✅ Input files: `../Transform/cleaned_output/` (11 JSON files)  
✅ Output files: `cypher_queries/` (11 Cypher files)  
✅ API key: Configured in `.env.example`  
✅ Dependencies: Installed in virtual environment  

## Quick Test
```bash
cd "ETL Pipeline/Load"
source load_env/bin/activate
python3 -c "print('✅ Virtual environment active')"
python3 -c "import google.generativeai; print('✅ Gemini AI ready')"
ls cypher_queries/ | wc -l   # Count generated files
```
