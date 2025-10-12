import json
import pandas as pd
import os

# Path to the normalized JSON files from the json_generation step
json_dir = '../json_generation/normalized_json/'
output_csv = 'all_data.csv'

data = []
processed_count = 0

for filename in os.listdir(json_dir):
    if filename.endswith('.json') and filename != 'normalization_summary.json':
        file_path = os.path.join(json_dir, filename)
        try:
            with open(file_path, 'r') as f:
                json_data = json.load(f)
            
            # Skip files that don't have the expected structure
            if 'company' not in json_data:
                print(f"Skipping {filename} - no company data found")
                continue
                
            main_company = json_data['company']['normalized_name']
            processed_count += 1
        except (json.JSONDecodeError, KeyError) as e:
            print(f"Error processing {filename}: {e}")
            continue
        
        # Extract companies (main, subsidiaries, company_holdings)
        data.append({'source_file': filename, 'main_company_name': main_company, 'entity_type': 'company', 
                     'raw_name': json_data['company'].get('raw_name'), 'normalized_name': main_company, 
                     'id': None, 'additional_data': json.dumps(json_data['company'])})
        for sub in json_data.get('subsidiaries', []):
            data.append({'source_file': filename, 'main_company_name': main_company, 'entity_type': 'company', 
                         'raw_name': sub.get('raw_name'), 'normalized_name': sub.get('normalized_name'), 
                         'id': sub.get('normalized_id'), 'additional_data': json.dumps(sub)})
        for holding in json_data.get('shareholdings', {}).get('company_holdings', []):
            holder = holding.get('holder', {})
            data.append({'source_file': filename, 'main_company_name': main_company, 'entity_type': 'company', 
                         'raw_name': holder.get('raw_name'), 'normalized_name': holder.get('normalized_name'), 
                         'id': None, 'additional_data': json.dumps(holding)})
        
        # Extract persons (directors, executives, individual_holdings)
        for dir in json_data.get('directors', []):
            data.append({'source_file': filename, 'main_company_name': main_company, 'entity_type': 'person', 
                         'raw_name': dir.get('raw_name'), 'normalized_name': dir.get('normalized_name'), 
                         'id': dir.get('normalized_id'), 'additional_data': json.dumps(dir)})
        for exec in json_data.get('executives', []):
            data.append({'source_file': filename, 'main_company_name': main_company, 'entity_type': 'person', 
                         'raw_name': exec.get('raw_name'), 'normalized_name': exec.get('normalized_name'), 
                         'id': exec.get('normalized_id'), 'additional_data': json.dumps(exec)})
        for ind_holding in json_data.get('shareholdings', {}).get('individual_holdings', []):
            holder = ind_holding.get('holder', {})
            data.append({'source_file': filename, 'main_company_name': main_company, 'entity_type': 'person', 
                         'raw_name': holder.get('raw_name'), 'normalized_name': holder.get('normalized_name'), 
                         'id': None, 'additional_data': json.dumps(ind_holding)})
        
        # Extract auditors
        if 'auditor' in json_data and json_data['auditor']:
            auditor = json_data['auditor']
            # Handle both dict and other formats
            if isinstance(auditor, dict):
                data.append({'source_file': filename, 'main_company_name': main_company, 'entity_type': 'auditor', 
                             'raw_name': auditor.get('raw_name'), 'normalized_name': auditor.get('normalized_name'), 
                             'id': auditor.get('normalized_id'), 'additional_data': json.dumps(auditor)})
            else:
                # If auditor is a string or other type, handle accordingly
                data.append({'source_file': filename, 'main_company_name': main_company, 'entity_type': 'auditor', 
                             'raw_name': None, 'normalized_name': str(auditor), 
                             'id': None, 'additional_data': json.dumps({'normalized_name': str(auditor)})})
                
        # Extract other entities (sectors, products) - no fuzzy needed, but include for completeness
        for sector in json_data.get('sectors', []):
            data.append({'source_file': filename, 'main_company_name': main_company, 'entity_type': 'sector', 
                         'raw_name': None, 'normalized_name': sector.get('normalized_name'), 
                         'id': None, 'additional_data': json.dumps(sector)})
        for prod in json_data.get('products_services', []):
            data.append({'source_file': filename, 'main_company_name': main_company, 'entity_type': 'product', 
                         'raw_name': prod.get('raw_name'), 'normalized_name': prod.get('normalized_name'), 
                         'id': prod.get('normalized_id'), 'additional_data': json.dumps(prod)})

df = pd.DataFrame(data)
df.to_csv(output_csv, index=False)
print(f"Extracted data from {processed_count} files into {output_csv}")