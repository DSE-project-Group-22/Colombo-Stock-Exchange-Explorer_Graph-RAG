// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'WindForce'}) ON CREATE SET c.id = 'windforce', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor (Skipped - No external auditor from the hardcoded list was identified);

// Query 4
// Step 3: People - Directors and Executives (Skipped - No individual names were identified);

// Query 5
// Step 4: Metrics;

// Query 6
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 7
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 8
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 9
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 10
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 11
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 12
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 13
// Step 5: HAS_METRIC Relationships;

// Query 14
MATCH (c:Company {name: 'WindForce'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6902690000, r.year = 2025;

// Query 15
MATCH (c:Company {name: 'WindForce'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5851800000, r.year = 2024;

// Query 16
MATCH (c:Company {name: 'WindForce'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3015244000, r.year = 2025;

// Query 17
MATCH (c:Company {name: 'WindForce'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2855838000, r.year = 2024;

// Query 18
MATCH (c:Company {name: 'WindForce'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2949902000, r.year = 2025;

// Query 19
MATCH (c:Company {name: 'WindForce'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2555104000, r.year = 2024;

// Query 20
MATCH (c:Company {name: 'WindForce'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2249690000, r.year = 2025;

// Query 21
MATCH (c:Company {name: 'WindForce'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1750594000, r.year = 2024;

// Query 22
MATCH (c:Company {name: 'WindForce'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39424452000, r.year = 2025;

// Query 23
MATCH (c:Company {name: 'WindForce'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38041861000, r.year = 2024;

// Query 24
MATCH (c:Company {name: 'WindForce'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23266654950, r.year = 2025;

// Query 25
MATCH (c:Company {name: 'WindForce'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22994183928, r.year = 2024;

// Query 26
MATCH (c:Company {name: 'WindForce'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28.0, r.year = 2025;

// Query 27
MATCH (c:Company {name: 'WindForce'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28.0, r.year = 2024;

// Query 28
// Step 6: Sectors;

// Query 29
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 30
MERGE (s:Sector {name: 'Automobiles and Components'}) ON CREATE SET s.id = 'automobiles_and_components';

// Query 31
// Step 7: IN_SECTOR Relationships;

// Query 32
MATCH (c:Company {name: 'WindForce'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 33
MATCH (c:Company {name: 'WindForce'}), (s:Sector {name: 'Automobiles and Components'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 34
// Step 8: Products;

// Query 35
MERGE (p:Product {name: 'Solar Power Generation'}) ON CREATE SET p.id = 'solar_power_generation';

// Query 36
MERGE (p:Product {name: 'Wind Power Generation'}) ON CREATE SET p.id = 'wind_power_generation';

// Query 37
MERGE (p:Product {name: 'Hydro Power Generation'}) ON CREATE SET p.id = 'hydro_power_generation';

// Query 38
MERGE (p:Product {name: 'EPC Services'}) ON CREATE SET p.id = 'epc_services';

// Query 39
MERGE (p:Product {name: 'O&M Services'}) ON CREATE SET p.id = 'o_m_services';

// Query 40
MERGE (p:Product {name: 'Electric Vehicles'}) ON CREATE SET p.id = 'electric_vehicles';

// Query 41
// Step 9: OFFERS Relationships;

// Query 42
MATCH (c:Company {name: 'WindForce'}), (p:Product {name: 'Solar Power Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 43
MATCH (c:Company {name: 'WindForce'}), (p:Product {name: 'Wind Power Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 44
MATCH (c:Company {name: 'WindForce'}), (p:Product {name: 'Hydro Power Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 45
MATCH (c:Company {name: 'WindForce'}), (p:Product {name: 'EPC Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 46
MATCH (c:Company {name: 'WindForce'}), (p:Product {name: 'O&M Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 47
MATCH (c:Company {name: 'WindForce'}), (p:Product {name: 'Electric Vehicles'}) MERGE (c)-[:OFFERS]->(p);

// Query 48
// Step 10: Company-Company Relationships (Skipped - No explicit ownership percentages or validated management relationships were identified);

// Total queries: 48
// Generated on: 2025-10-02T22:44:23.628285
