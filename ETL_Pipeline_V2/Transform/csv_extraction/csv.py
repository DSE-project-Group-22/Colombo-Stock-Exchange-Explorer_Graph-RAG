import json
import pandas as pd
import os

# Assume all JSON files are in a directory 'json_files/'
json_dir = 'json_files/'
output_csv = 'all_data.csv'

data = []
for filename in os.listdir(json_dir):
    if filename.endswith('.json'):
        with open(os.path.join(json_dir, filename), 'r') as f:
            json_data = json.load(f)
        
        main_company = json_data['company']['normalized_name']
        
        # Extract companies (main, subsidiaries, company_holdings)
        data.append({'source_file': filename, 'main_company_name': main_company, 'entity_type': 'company', 
                     'raw_name': json_data['company']['raw_name'], 'normalized_name': main_company, 
                     'id': None, 'additional_data': json.dumps(json_data['company'])})
        for sub in json_data.get('subsidiaries', []):
            data.append({'source_file': filename, 'main_company_name': main_company, 'entity_type': 'company', 
                         'raw_name': sub['raw_name'], 'normalized_name': sub['normalized_name'], 
                         'id': sub['normalized_id'], 'additional_data': json.dumps(sub)})
        for holding in json_data['shareholdings']['company_holdings']:
            holder = holding['holder']
            data.append({'source_file': filename, 'main_company_name': main_company, 'entity_type': 'company', 
                         'raw_name': holder['raw_name'], 'normalized_name': holder['normalized_name'], 
                         'id': None, 'additional_data': json.dumps(holding)})
        
        # Extract persons (directors, executives, individual_holdings)
        for dir in json_data.get('directors', []):
            data.append({'source_file': filename, 'main_company_name': main_company, 'entity_type': 'person', 
                         'raw_name': dir['raw_name'], 'normalized_name': dir['normalized_name'], 
                         'id': dir.get('normalized_id'), 'additional_data': json.dumps(dir)})
        for exec in json_data.get('executives', []):
            data.append({'source_file': filename, 'main_company_name': main_company, 'entity_type': 'person', 
                         'raw_name': exec['raw_name'], 'normalized_name': exec['normalized_name'], 
                         'id': exec['normalized_id'], 'additional_data': json.dumps(exec)})
        for ind_holding in json_data['shareholdings']['individual_holdings']:
            holder = ind_holding['holder']
            data.append({'source_file': filename, 'main_company_name': main_company, 'entity_type': 'person', 
                         'raw_name': holder['raw_name'], 'normalized_name': holder['normalized_name'], 
                         'id': None, 'additional_data': json.dumps(ind_holding)})
        
        # Extract other entities (metrics, sectors, products) - no fuzzy needed, but include for completeness
        for sector in json_data.get('sectors', []):
            data.append({'source_file': filename, 'main_company_name': main_company, 'entity_type': 'sector', 
                         'raw_name': None, 'normalized_name': sector['normalized_name'], 
                         'id': None, 'additional_data': json.dumps(sector)})
        for metric in json_data.get('financial_metrics', []):
            data.append({'source_file': filename, 'main_company_name': main_company, 'entity_type': 'metric', 
                         'raw_name': metric['raw_name'], 'normalized_name': metric['normalized_name'], 
                         'id': metric['normalized_id'], 'additional_data': json.dumps(metric)})
        for prod in json_data.get('products_services', []):
            data.append({'source_file': filename, 'main_company_name': main_company, 'entity_type': 'product', 
                         'raw_name': prod['raw_name'], 'normalized_name': prod['normalized_name'], 
                         'id': prod['normalized_id'], 'additional_data': json.dumps(prod)})

df = pd.DataFrame(data)
df.to_csv(output_csv, index=False)
print(f"Extracted data from {len(os.listdir(json_dir))} files into {output_csv}")