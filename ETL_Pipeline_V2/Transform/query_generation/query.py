import pandas as pd
import json

def escape_cypher_string(s):
    if s is None:
        return ''
    return s.replace('\\', '\\\\').replace("'", "\\'")

matched_csv = 'fuzzy_matched_data.csv'
output_txt = 'cypher_scripts.txt'

df = pd.read_csv(matched_csv)

with open(output_txt, 'w') as f:
    for source_file, group in df.groupby('source_file'):
        f.write(f"// Queries for {source_file}\n")
        
        main_company = group['main_company_name'].iloc[0]
        main_canon_name_esc = escape_cypher_string(group[group['entity_type'] == 'company']['canonical_name'].iloc[0])  # First is main
        
        # Step 1-2: Main Company (similar to example)
        f.write("// Step 1: Main Company;\n")
        company_data = json.loads(group[group['entity_type'] == 'company']['additional_data'].iloc[0])
        
        # Handle optional fields
        founded_on = company_data.get('founded_on')
        listed_on = company_data.get('listed_on')
        listed_on_esc = escape_cypher_string(listed_on)
        
        set_clauses = [f"c.id = '{escape_cypher_string(group[group['entity_type'] == 'company']['canonical_id'].iloc[0])}'"]
        set_clauses.append("c.region = 'Sri Lanka'")
        
        if listed_on is not None:
            set_clauses.append(f"c.listed_on = '{listed_on_esc}'")
        
        if founded_on is not None:
            set_clauses.append(f"c.founded_on = date('{founded_on}')")
        
        set_str = ', '.join(set_clauses)
        f.write(f"MERGE (c:Company {{name: '{main_canon_name_esc}'}}) ON CREATE SET {set_str};\n\n")
        
        # Step 3: Auditor (if present, else skip like example)
        if 'auditor' in company_data and company_data['auditor'] is not None:
            f.write("// Step 2: Auditor;\n")
            auditor_esc = escape_cypher_string(company_data['auditor']['normalized_name'])
            f.write(f"MERGE (a:Auditor {{name: '{auditor_esc}'}});\n")
            f.write(f"MATCH (c:Company {{name: '{main_canon_name_esc}'}}), (a:Auditor {{name: '{auditor_esc}'}}) MERGE (c)-[:AUDITED_BY]->(a);\n\n")
        
        # Step 4: Persons (fuzzy canonical)
        f.write("// Step 3: People - Directors and Executives;\n")
        persons = group[group['entity_type'] == 'person']
        for _, row in persons.iterrows():
            canon_name_esc = escape_cypher_string(row['canonical_name'])
            canon_id_esc = escape_cypher_string(row['canonical_id'])
            f.write(f"MERGE (p:Person {{name: '{canon_name_esc}'}}) ON CREATE SET p.id = '{canon_id_esc}';\n")
        
        # Step 5: HOLDS_POSITION Relationships
        f.write("// Step 4: HOLDS_POSITION Relationships;\n")
        for _, row in persons.iterrows():
            add_data = json.loads(row['additional_data'])
            title_esc = escape_cypher_string(add_data.get('normalized_title', 'Board Member'))
            as_of = add_data.get('as_of_date')
            as_of_str = f"date('{as_of}')" if as_of is not None else 'null'
            canon_name_esc = escape_cypher_string(row['canonical_name'])
            f.write(f"MATCH (p:Person {{name: '{canon_name_esc}'}}), (c:Company {{name: '{main_canon_name_esc}'}}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = '{title_esc}', r.as_of = {as_of_str};\n")
        
        # Metrics (Step 5-6: Create Metric nodes, HAS_METRIC rels)
        f.write("// Step 5: Metrics;\n")
        metrics = group[group['entity_type'] == 'metric']
        for _, row in metrics.iterrows():
            metric_data = json.loads(row['additional_data'])
            unit_esc = escape_cypher_string(metric_data.get('unit', ''))
            canon_name_esc = escape_cypher_string(row['canonical_name'])
            canon_id_esc = escape_cypher_string(row['canonical_id'])
            f.write(f"MERGE (m:Metric {{name: '{canon_name_esc}'}}) ON CREATE SET m.id = '{canon_id_esc}', m.unit = '{unit_esc}';\n")
        f.write("// Step 6: HAS_METRIC Relationships;\n")
        for _, row in metrics.iterrows():
            add_data = json.loads(row['additional_data'])
            value = add_data.get('normalized_value', 0)
            year = add_data.get('year', None)
            as_of = add_data.get('as_of_date')
            as_of_str = f"date('{as_of}')" if as_of is not None else 'null'
            year_str = f"{year}" if year is not None else 'null'
            canon_name_esc = escape_cypher_string(row['canonical_name'])
            f.write(f"MATCH (c:Company {{name: '{main_canon_name_esc}'}}), (m:Metric {{name: '{canon_name_esc}'}}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = {value}, r.year = {year_str}, r.as_of = {as_of_str};\n")
        
        # Sectors (Step 7-8)
        f.write("// Step 7: Sectors;\n")
        sectors = group[group['entity_type'] == 'sector']
        for _, row in sectors.iterrows():
            canon_name_esc = escape_cypher_string(row['canonical_name'])
            sector_id = row['canonical_name'].lower().replace(' ', '_')
            sector_id_esc = escape_cypher_string(sector_id)
            f.write(f"MERGE (s:Sector {{name: '{canon_name_esc}'}}) ON CREATE SET s.id = '{sector_id_esc}';\n")
        f.write("// Step 8: IN_SECTOR Relationships;\n")
        for _, row in sectors.iterrows():
            canon_name_esc = escape_cypher_string(row['canonical_name'])
            f.write(f"MATCH (c:Company {{name: '{main_canon_name_esc}'}}), (s:Sector {{name: '{canon_name_esc}'}}) MERGE (c)-[:IN_SECTOR]->(s);\n")
        
        # Products (Step 9-10)
        f.write("// Step 9: Product nodes creation;\n")
        products = group[group['entity_type'] == 'product']
        for _, row in products.iterrows():
            canon_name_esc = escape_cypher_string(row['canonical_name'])
            canon_id_esc = escape_cypher_string(row['canonical_id'])
            f.write(f"MERGE (p:Product {{name: '{canon_name_esc}'}}) ON CREATE SET p.id = '{canon_id_esc}';\n")
        f.write("// Step 10: OFFERS Relationships;\n")
        for _, row in products.iterrows():
            canon_name_esc = escape_cypher_string(row['canonical_name'])
            f.write(f"MATCH (c:Company {{name: '{main_canon_name_esc}'}}), (p:Product {{name: '{canon_name_esc}'}}) MERGE (c)-[:OFFERS]->(p);\n")
        
        # Subsidiaries/Company Holdings (Step 11: OWNS)
        f.write("// Step 11: Company-Company Relationships (OWNS);\n")
        companies = group[(group['entity_type'] == 'company') & (group['normalized_name'] != main_company)]  # Exclude main
        for _, row in companies.iterrows():
            canon_name_esc = escape_cypher_string(row['canonical_name'])
            canon_id_esc = escape_cypher_string(row['canonical_id'])
            f.write(f"MERGE (sub:Company {{name: '{canon_name_esc}'}}) ON CREATE SET sub.id = '{canon_id_esc}';\n")
        for _, row in companies.iterrows():
            add_data = json.loads(row['additional_data'])
            pct = add_data.get('ownership_percent', 0)
            as_of = add_data.get('as_of_date')
            as_of_str = f"date('{as_of}')" if as_of is not None else 'null'
            canon_name_esc = escape_cypher_string(row['canonical_name'])
            f.write(f"MATCH (parent:Company {{name: '{main_canon_name_esc}'}}), (child:Company {{name: '{canon_name_esc}'}}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = {pct}, r.as_of = {as_of_str};\n")
        
        # Person Holdings (Step 12: OWNS_SHARES)
        f.write("// Step 12: Person-Company Relationships (OWNS_SHARES);\n")
        person_holdings = persons[persons['additional_data'].str.contains('share_count', na=False)]  # Filter those with shares
        for _, row in person_holdings.iterrows():
            add_data = json.loads(row['additional_data'])
            count = add_data.get('share_count', 0)
            as_of = add_data.get('as_of_date')
            as_of_str = f"date('{as_of}')" if as_of is not None else 'null'
            canon_name_esc = escape_cypher_string(row['canonical_name'])
            f.write(f"MATCH (p:Person {{name: '{canon_name_esc}'}}), (c:Company {{name: '{main_canon_name_esc}'}}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = {count}, r.as_of = {as_of_str};\n")
        
        f.write("\n// End of queries for this file\n\n")

print(f"Cypher scripts generated in {output_txt}")