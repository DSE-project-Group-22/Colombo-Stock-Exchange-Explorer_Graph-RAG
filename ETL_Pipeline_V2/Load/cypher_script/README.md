# Cypher Script Transformation Tool

This tool transforms the `cypher_scripts.txt` file from the query_generation directory into a proper `.cypher` script file.

## Directory Structure
```
cypher_script/
├── README.md
├── transform_cypher.py       # Main transformation script
├── setup_and_run.sh         # Setup script with virtual environment
├── cypher_env/              # Virtual environment (created after running)
└── graph_data.cypher        # Output file (created after running)
```

## Quick Start

### Option 1: Automated Setup and Run
```bash
chmod +x setup_and_run.sh
./setup_and_run.sh
```

### Option 2: Manual Setup
```bash
# Create and activate virtual environment
python3 -m venv cypher_env
source cypher_env/bin/activate

# Run the transformation
python transform_cypher.py
```

### Option 3: Direct Run (without virtual environment)
```bash
python3 transform_cypher.py
```

## What it does

1. **Reads** the `cypher_scripts.txt` file from `../query_generation/`
2. **Transforms** the content to a proper `.cypher` file format
3. **Outputs** the result as `graph_data.cypher`
4. **Displays** statistics about the transformation

## Output

The script will create a `graph_data.cypher` file containing all the Cypher queries that can be directly executed in Neo4j or any Cypher-compatible database.

## Requirements

- Python 3.6+
- No external dependencies required

## Example Output
```
Successfully transformed cypher_scripts.txt to graph_data.cypher
Output file created at: /path/to/cypher_script/graph_data.cypher

Statistics:
- Total lines: 1234
- Total Cypher queries: 567
```

## Troubleshooting

If you encounter any issues:

1. **File not found error**: Ensure the `cypher_scripts.txt` file exists in the `../query_generation/` directory
2. **Permission errors**: Make sure you have write permissions in the current directory
3. **Python not found**: Ensure Python 3 is installed and accessible via `python3` command

## Virtual Environment Commands

```bash
# Activate environment
source cypher_env/bin/activate

# Deactivate environment
deactivate

# Remove environment (if needed)
rm -rf cypher_env
```
