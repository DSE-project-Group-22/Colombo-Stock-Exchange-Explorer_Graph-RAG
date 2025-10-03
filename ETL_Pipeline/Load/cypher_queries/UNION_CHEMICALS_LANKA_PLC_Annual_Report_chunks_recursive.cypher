// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Union Chemicals Lanka'}) ON CREATE SET c.id = 'union_chemicals_lanka', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No specific auditor from the hardcoded list was identified. Skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'K. M. Dissanayake'}) ON CREATE SET p.id = 'k_m_dissanayake';

// Query 6
MERGE (p:Person {name: 'H. A. D. U. G. Gunasekera'}) ON CREATE SET p.id = 'h_a_d_u_g_gunasekera';

// Query 7
MERGE (p:Person {name: 'U. L. Pushpakumara'}) ON CREATE SET p.id = 'u_l_pushpakumara';

// Query 8
MERGE (p:Person {name: 'B. A. J. K. Premachandra'}) ON CREATE SET p.id = 'b_a_j_k_premachandra';

// Query 9
MERGE (p:Person {name: 'W. K. P. Malwattege'}) ON CREATE SET p.id = 'w_k_p_malwattege';

// Query 10
// Step 4: HOLDS_POSITION Relationships;

// Query 11
MATCH (p:Person {name: 'K. M. Dissanayake'}), (c:Company {name: 'Union Chemicals Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 12
MATCH (p:Person {name: 'H. A. D. U. G. Gunasekera'}), (c:Company {name: 'Union Chemicals Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-12-25');

// Query 13
MATCH (p:Person {name: 'U. L. Pushpakumara'}), (c:Company {name: 'Union Chemicals Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-25');

// Query 14
MATCH (p:Person {name: 'B. A. J. K. Premachandra'}), (c:Company {name: 'Union Chemicals Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 15
MATCH (p:Person {name: 'W. K. P. Malwattege'}), (c:Company {name: 'Union Chemicals Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 16
// Step 5: Metrics;

// Query 17
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 18
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 19
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 24
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 25
// Step 6: HAS_METRIC Relationships;

// Query 26
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1650200000.0, r.year = 2024;

// Query 27
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1612800000.0, r.year = 2023;

// Query 28
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 342900000.0, r.year = 2024;

// Query 29
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 356000000.0, r.year = 2023;

// Query 30
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 239322000.0, r.year = 2024;

// Query 31
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 246884000.0, r.year = 2023;

// Query 32
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1476000000.0, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1314400000.0, r.year = 2023;

// Query 34
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1267100000.0, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1110600000.0, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 159.55, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 164.59, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.0, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22.0, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.11, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.10, r.year = 2023;

// Query 42
// Step 7: Sectors;

// Query 43
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 44
// Step 8: IN_SECTOR Relationships;

// Query 45
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 46
// Step 9: Product nodes creation;

// Query 47
MERGE (p:Product {name: 'Latex Products'}) ON CREATE SET p.id = 'latex_products';

// Query 48
MERGE (p:Product {name: 'Chemicals'}) ON CREATE SET p.id = 'chemicals';

// Query 49
MERGE (p:Product {name: 'Plastics'}) ON CREATE SET p.id = 'plastics';

// Query 50
MERGE (p:Product {name: 'Polyvinyl/Acrylic Emulsions'}) ON CREATE SET p.id = 'polyvinyl_acrylic_emulsions';

// Query 51
MERGE (p:Product {name: 'Adhesives'}) ON CREATE SET p.id = 'adhesives';

// Query 52
MERGE (p:Product {name: 'Coatings'}) ON CREATE SET p.id = 'coatings';

// Query 53
MERGE (p:Product {name: 'Paint Ingredients'}) ON CREATE SET p.id = 'paint_ingredients';

// Query 54
MERGE (p:Product {name: 'Textile Industry Emulsions'}) ON CREATE SET p.id = 'textile_industry_emulsions';

// Query 55
MERGE (p:Product {name: 'Specialties'}) ON CREATE SET p.id = 'specialties';

// Query 56
MERGE (p:Product {name: 'Solvents'}) ON CREATE SET p.id = 'solvents';

// Query 57
MERGE (p:Product {name: 'Polyolefins'}) ON CREATE SET p.id = 'polyolefins';

// Query 58
MERGE (p:Product {name: 'Coating Resins'}) ON CREATE SET p.id = 'coating_resins';

// Query 59
MERGE (p:Product {name: 'Surfactants'}) ON CREATE SET p.id = 'surfactants';

// Query 60
MERGE (p:Product {name: 'Personal Care Products'}) ON CREATE SET p.id = 'personal_care_products';

// Query 61
// Step 10: OFFERS Relationships;

// Query 62
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (p:Product {name: 'Latex Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 63
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (p:Product {name: 'Chemicals'}) MERGE (c)-[:OFFERS]->(p);

// Query 64
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (p:Product {name: 'Plastics'}) MERGE (c)-[:OFFERS]->(p);

// Query 65
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (p:Product {name: 'Polyvinyl/Acrylic Emulsions'}) MERGE (c)-[:OFFERS]->(p);

// Query 66
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (p:Product {name: 'Adhesives'}) MERGE (c)-[:OFFERS]->(p);

// Query 67
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (p:Product {name: 'Coatings'}) MERGE (c)-[:OFFERS]->(p);

// Query 68
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (p:Product {name: 'Paint Ingredients'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (p:Product {name: 'Textile Industry Emulsions'}) MERGE (c)-[:OFFERS]->(p);

// Query 70
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (p:Product {name: 'Specialties'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (p:Product {name: 'Solvents'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (p:Product {name: 'Polyolefins'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (p:Product {name: 'Coating Resins'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (p:Product {name: 'Surfactants'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Union Chemicals Lanka'}), (p:Product {name: 'Personal Care Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
// Step 11: Company-Company Relationships (OWNS, MANAGES) - None identified.;

// Total queries: 76
// Generated on: 2025-10-03T01:27:56.257079
