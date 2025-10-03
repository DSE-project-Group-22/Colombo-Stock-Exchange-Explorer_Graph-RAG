// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Ceylon Land & Equity'}) ON CREATE SET c.id = 'ceylon_land_equity', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No explicit auditor firm name found in the provided text, skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'S. V. Rajiyah'}) ON CREATE SET p.id = 's_v_rajiyah';

// Query 6
MERGE (p:Person {name: 'T. A. P. Peiris'}) ON CREATE SET p.id = 't_a_p_peiris';

// Query 7
MERGE (p:Person {name: 'M. R. Ratnasabapathy'}) ON CREATE SET p.id = 'm_r_ratnasabapathy';

// Query 8
MERGE (p:Person {name: 'K. Liyanagamage'}) ON CREATE SET p.id = 'k_liyanagamage';

// Query 9
// Step 4: HOLDS_POSITION Relationships;

// Query 10
MATCH (p:Person {name: 'S. V. Rajiyah'}), (c:Company {name: 'Ceylon Land & Equity'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 11
MATCH (p:Person {name: 'T. A. P. Peiris'}), (c:Company {name: 'Ceylon Land & Equity'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 12
MATCH (p:Person {name: 'M. R. Ratnasabapathy'}), (c:Company {name: 'Ceylon Land & Equity'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 13
MATCH (p:Person {name: 'K. Liyanagamage'}), (c:Company {name: 'Ceylon Land & Equity'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 14
// Step 5: Metrics;

// Query 15
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 16
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 17
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 18
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 19
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 22
// Step 6: HAS_METRIC Relationships;

// Query 23
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 32031000.0, r.year = 2024;

// Query 24
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 306000.0, r.year = 2023;

// Query 25
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 36662000.0, r.year = 2022;

// Query 26
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17741000.0, r.year = 2021;

// Query 27
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4689000.0, r.year = 2020;

// Query 28
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 156511000.0, r.year = 2023;

// Query 29
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 216542000.0, r.year = 2022;

// Query 30
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 427133000.0, r.year = 2021;

// Query 31
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 55524000.0, r.year = 2020;

// Query 32
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 156511000.0, r.year = 2023;

// Query 33
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 213874000.0, r.year = 2022;

// Query 34
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 423260000.0, r.year = 2021;

// Query 35
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50215000.0, r.year = 2020;

// Query 36
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2095193000.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1938682000.0, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1759567000.0, r.year = 2022;

// Query 39
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1353606000.0, r.year = 2021;

// Query 40
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2692971000.0, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1519147000.0, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1761567000.0, r.year = 2022;

// Query 43
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1354057000.0, r.year = 2021;

// Query 44
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.3, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.92, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.44, r.year = 2022;

// Query 47
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.29, r.year = 2021;

// Query 48
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.57, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.41, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.95, r.year = 2022;

// Query 51
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.59, r.year = 2021;

// Query 52
// Step 7: Sectors;

// Query 53
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 54
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 55
// Step 8: IN_SECTOR Relationships;

// Query 56
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 57
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 58
// Step 9: Product nodes creation;

// Query 59
MERGE (p:Product {name: 'Debt Investments'}) ON CREATE SET p.id = 'debt_investments';

// Query 60
MERGE (p:Product {name: 'Equity Investments'}) ON CREATE SET p.id = 'equity_investments';

// Query 61
MERGE (p:Product {name: 'Alternative Asset Investments'}) ON CREATE SET p.id = 'alternative_asset_investments';

// Query 62
// Step 10: OFFERS relationships;

// Query 63
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (p:Product {name: 'Debt Investments'}) MERGE (c)-[:OFFERS]->(p);

// Query 64
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (p:Product {name: 'Equity Investments'}) MERGE (c)-[:OFFERS]->(p);

// Query 65
MATCH (c:Company {name: 'Ceylon Land & Equity'}), (p:Product {name: 'Alternative Asset Investments'}) MERGE (c)-[:OFFERS]->(p);

// Query 66
// Step 11: Company-Company Relationships (OWNS, MANAGES);

// Query 67
MERGE (sub:Company {name: 'Galle Face Capital Partners'}) ON CREATE SET sub.id = 'galle_face_capital_partners';

// Query 68
MATCH (parent:Company {name: 'Ceylon Land & Equity'}), (child:Company {name: 'Galle Face Capital Partners'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 67.4, r.as_of = date('2024-03-31');

// Query 69
MATCH (parent:Company {name: 'Ceylon Land & Equity'}), (child:Company {name: 'Galle Face Capital Partners'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 52.61, r.as_of = date('2023-03-31');

// Total queries: 69
// Generated on: 2025-10-03T00:12:31.724192
