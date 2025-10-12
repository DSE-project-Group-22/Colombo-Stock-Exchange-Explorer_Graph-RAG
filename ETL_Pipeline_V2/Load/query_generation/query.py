import pandas as pd
import json

def escape_cypher_string(s):
    if s is None or pd.isnull(s):
        return ''
    return str(s).replace('\\', '\\\\').replace("'", "\\'")

matched_csv = 'fuzzy_matched_data.csv'
output_txt = 'cypher_scripts.txt'

df = pd.read_csv(matched_csv)

with open(output_txt, 'w') as f:
    for source_file, group in df.groupby('source_file'):
        f.write(f"// ============================================\n")
        f.write(f"// Queries for {source_file}\n")
        f.write(f"// ============================================\n\n")
        
        # Get main company info
        main_company_rows = group[group['entity_type'] == 'company']
        if main_company_rows.empty:
            f.write(f"// WARNING: No company found in {source_file}\n\n")
            continue
            
        main_company_row = main_company_rows.iloc[0]
        main_canon_name = main_company_row['canonical_name']
        main_canon_name_esc = escape_cypher_string(main_canon_name)
        main_canon_id_esc = escape_cypher_string(main_company_row['canonical_id'])
        
        # Parse company additional data
        try:
            company_data = json.loads(main_company_row['additional_data'])
        except:
            company_data = {}
        
        # ============================================
        # STEP 1: Create Main Company Node
        # ============================================
        f.write("// STEP 1: Create Main Company Node\n")
        
        founded_on = company_data.get('founded_on')
        listed_on = company_data.get('listed_on')
        listed_on_esc = escape_cypher_string(listed_on)
        
        set_clauses = [f"c.id = '{main_canon_id_esc}'"]
        set_clauses.append("c.region = 'Sri Lanka'")
        
        if listed_on:
            set_clauses.append(f"c.listed_on = '{listed_on_esc}'")
        
        if founded_on:
            set_clauses.append(f"c.founded_on = date('{founded_on}')")
        
        set_str = ', '.join(set_clauses)
        f.write(f"MERGE (c:Company {{name: '{main_canon_name_esc}'}}) ON CREATE SET {set_str};\n\n")
        
        # ============================================
        # STEP 2: Create Auditor Node and Relationship
        # ============================================
        f.write("// STEP 2: Create Auditor Node and AUDITED_BY Relationship\n")
        
        # Check if auditor exists in the group as a separate entity
        auditor_rows = group[group['entity_type'] == 'auditor']
        
        if not auditor_rows.empty:
            for _, auditor_row in auditor_rows.iterrows():
                auditor_canon_name = auditor_row['canonical_name']
                auditor_canon_id = auditor_row['canonical_id']
                
                if pd.isnull(auditor_canon_name):
                    continue
                    
                auditor_canon_name_esc = escape_cypher_string(auditor_canon_name)
                auditor_canon_id_esc = escape_cypher_string(auditor_canon_id)
                
                # Create auditor node
                f.write(f"MERGE (a:Auditor {{name: '{auditor_canon_name_esc}'}}) ON CREATE SET a.id = '{auditor_canon_id_esc}';\n")
                
                # Create relationship
                f.write(f"MATCH (c:Company {{name: '{main_canon_name_esc}'}}), (a:Auditor {{name: '{auditor_canon_name_esc}'}}) ")
                f.write(f"MERGE (c)-[:AUDITED_BY]->(a);\n")
        else:
            f.write("// No auditor found for this company\n")
        
        f.write("\n")
        
        # ============================================
        # STEP 3: Create Person Nodes (Directors & Executives)
        # ============================================
        f.write("// STEP 3: Create Person Nodes - Directors and Executives\n")
        persons = group[group['entity_type'] == 'person']
        for _, row in persons.iterrows():
            canon_name = row['canonical_name']
            canon_id = row['canonical_id']
            if pd.isnull(canon_name):
                continue
            canon_name_esc = escape_cypher_string(canon_name)
            canon_id_esc = escape_cypher_string(canon_id)
            f.write(f"MERGE (p:Person {{name: '{canon_name_esc}'}}) ON CREATE SET p.id = '{canon_id_esc}';\n")
        f.write("\n")
        
        # ============================================
        # STEP 4: Create HOLDS_POSITION Relationships
        # ============================================
        f.write("// STEP 4: Create HOLDS_POSITION Relationships\n")
        for _, row in persons.iterrows():
            canon_name = row['canonical_name']
            if pd.isnull(canon_name):
                continue
            
            try:
                add_data = json.loads(row['additional_data'])
            except:
                add_data = {}
            
            title = add_data.get('normalized_title', 'Board Member')
            title_esc = escape_cypher_string(title)
            as_of = add_data.get('as_of_date')
            as_of_str = f"date('{as_of}')" if as_of else 'null'
            canon_name_esc = escape_cypher_string(canon_name)
            
            f.write(f"MATCH (p:Person {{name: '{canon_name_esc}'}}), (c:Company {{name: '{main_canon_name_esc}'}}) ")
            f.write(f"MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = '{title_esc}', r.as_of = {as_of_str};\n")
        f.write("\n")
        
        # ============================================
        # STEP 5: Create Sector Nodes
        # ============================================
        f.write("// STEP 5: Create Sector Nodes\n")
        sectors = group[group['entity_type'] == 'sector']
        for _, row in sectors.iterrows():
            canon_name = row['canonical_name']
            if pd.isnull(canon_name):
                continue
            
            canon_name_esc = escape_cypher_string(canon_name)
            sector_id = canon_name.lower().replace(' ', '_').replace('&', 'and')
            sector_id_esc = escape_cypher_string(sector_id)
            
            f.write(f"MERGE (s:Sector {{name: '{canon_name_esc}'}}) ON CREATE SET s.id = '{sector_id_esc}';\n")
        f.write("\n")
        
        # ============================================
        # STEP 6: Create IN_SECTOR Relationships
        # ============================================
        f.write("// STEP 6: Create IN_SECTOR Relationships\n")
        for _, row in sectors.iterrows():
            canon_name = row['canonical_name']
            if pd.isnull(canon_name):
                continue
            
            canon_name_esc = escape_cypher_string(canon_name)
            f.write(f"MATCH (c:Company {{name: '{main_canon_name_esc}'}}), (s:Sector {{name: '{canon_name_esc}'}}) ")
            f.write(f"MERGE (c)-[:IN_SECTOR]->(s);\n")
        f.write("\n")
        
        # ============================================
        # STEP 7: Create Product Nodes
        # ============================================
        f.write("// STEP 7: Create Product Nodes\n")
        products = group[group['entity_type'] == 'product']
        for _, row in products.iterrows():
            canon_name = row['canonical_name']
            if pd.isnull(canon_name):
                continue
            
            canon_name_esc = escape_cypher_string(canon_name)
            canon_id_esc = escape_cypher_string(row['canonical_id'])
            f.write(f"MERGE (p:Product {{name: '{canon_name_esc}'}}) ON CREATE SET p.id = '{canon_id_esc}';\n")
        f.write("\n")
        
        # ============================================
        # STEP 8: Create OFFERS Relationships
        # ============================================
        f.write("// STEP 8: Create OFFERS Relationships\n")
        for _, row in products.iterrows():
            canon_name = row['canonical_name']
            if pd.isnull(canon_name):
                continue
            
            canon_name_esc = escape_cypher_string(canon_name)
            f.write(f"MATCH (c:Company {{name: '{main_canon_name_esc}'}}), (p:Product {{name: '{canon_name_esc}'}}) ")
            f.write(f"MERGE (c)-[:OFFERS]->(p);\n")
        f.write("\n")
        
        # ============================================
        # STEP 9: Create Subsidiary Companies and OWNS Relationships
        # ============================================
        f.write("// STEP 9: Create Subsidiary Company Nodes and OWNS Relationships\n")
        
        # Get all companies except the main one
        companies = group[(group['entity_type'] == 'company') & 
                         (group['canonical_name'] != main_canon_name)]
        
        for _, row in companies.iterrows():
            canon_name = row['canonical_name']
            if pd.isnull(canon_name):
                continue
            
            canon_name_esc = escape_cypher_string(canon_name)
            canon_id_esc = escape_cypher_string(row['canonical_id'])
            
            # Create subsidiary company node
            f.write(f"MERGE (sub:Company {{name: '{canon_name_esc}'}}) ON CREATE SET sub.id = '{canon_id_esc}';\n")
        
        # Create OWNS relationships
        for _, row in companies.iterrows():
            canon_name = row['canonical_name']
            if pd.isnull(canon_name):
                continue
            
            try:
                add_data = json.loads(row['additional_data'])
            except:
                add_data = {}
            
            pct = add_data.get('ownership_percent', 0)
            as_of = add_data.get('as_of_date')
            as_of_str = f"date('{as_of}')" if as_of else 'null'
            canon_name_esc = escape_cypher_string(canon_name)
            
            f.write(f"MATCH (parent:Company {{name: '{main_canon_name_esc}'}}), (child:Company {{name: '{canon_name_esc}'}}) ")
            f.write(f"MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = {pct}, r.as_of = {as_of_str};\n")
        f.write("\n")
        
        # ============================================
        # STEP 10: Create OWNS_SHARES Relationships
        # ============================================
        f.write("// STEP 10: Create Person-Company OWNS_SHARES Relationships\n")
        
        for _, row in persons.iterrows():
            canon_name = row['canonical_name']
            if pd.isnull(canon_name):
                continue
            
            try:
                add_data = json.loads(row['additional_data'])
            except:
                add_data = {}
            
            # Only create relationship if share_count exists
            if 'share_count' in add_data and add_data['share_count']:
                count = add_data.get('share_count', 0)
                as_of = add_data.get('as_of_date')
                as_of_str = f"date('{as_of}')" if as_of else 'null'
                canon_name_esc = escape_cypher_string(canon_name)
                
                f.write(f"MATCH (p:Person {{name: '{canon_name_esc}'}}), (c:Company {{name: '{main_canon_name_esc}'}}) ")
                f.write(f"MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = {count}, r.as_of = {as_of_str};\n")
        
        f.write("\n// ============================================\n")
        f.write(f"// End of queries for {source_file}\n")
        f.write("// ============================================\n\n\n")

print(f"✅ Cypher scripts generated successfully in {output_txt}")