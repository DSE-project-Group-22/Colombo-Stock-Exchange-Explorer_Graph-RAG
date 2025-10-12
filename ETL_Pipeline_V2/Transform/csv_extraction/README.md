# CSV Extraction

This module extracts data from normalized JSON files and converts them into a CSV format for further processing.

## Setup

1. Make the setup script executable and run it:
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```

2. This will create a virtual environment called `csv_env` and install the required dependencies.

## Usage

### Option 1: Use the run script (recommended)
```bash
chmod +x run.sh
./run.sh
```

### Option 2: Manual execution
```bash
source csv_env/bin/activate
python extract_csv.py
deactivate
```

## Output

The script will process all JSON files from `../json_generation/normalized_json/` and create an `all_data.csv` file containing:

- source_file: The original JSON filename
- main_company_name: The main company from the report
- entity_type: Type of entity (company, person, sector, metric, product)
- raw_name: Original name as found in the document
- normalized_name: Processed/standardized name
- id: Normalized ID if available
- additional_data: JSON string with additional entity information

## Dependencies

- pandas==2.0.3
- numpy==1.24.3

## Notes

- The script expects JSON files to be located in `../json_generation/normalized_json/`
- Each JSON file should follow the normalized format from the json_generation step
- The output CSV will be created in the current directory
