// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'PMF Finance'}) ON CREATE SET c.id = 'pmf_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No auditor from the hardcoded list found for PMF Finance, skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Chandula Abeywickrema'}) ON CREATE SET p.id = 'chandula_abeywickrema';

// Query 6
MERGE (p:Person {name: 'Travis Waas'}) ON CREATE SET p.id = 'travis_waas';

// Query 7
MERGE (p:Person {name: 'Rangana Koralage'}) ON CREATE SET p.id = 'rangana_koralage';

// Query 8
MERGE (p:Person {name: 'Krystle Wijesuriya'}) ON CREATE SET p.id = 'krystle_wijesuriya';

// Query 9
MERGE (p:Person {name: 'Nirmal De Silva'}) ON CREATE SET p.id = 'nirmal_de_silva';

// Query 10
MERGE (p:Person {name: 'Nadeeka Jayawickrama'}) ON CREATE SET p.id = 'nadeeka_jayawickrama';

// Query 11
// Step 4: HOLDS_POSITION Relationships;

// Query 12
MATCH (p:Person {name: 'Chandula Abeywickrema'}), (c:Company {name: 'PMF Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 13
MATCH (p:Person {name: 'Chandula Abeywickrema'}), (c:Company {name: 'PMF Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 14
MATCH (p:Person {name: 'Travis Waas'}), (c:Company {name: 'PMF Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'Rangana Koralage'}), (c:Company {name: 'PMF Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'Krystle Wijesuriya'}), (c:Company {name: 'PMF Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Nirmal De Silva'}), (c:Company {name: 'PMF Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Nadeeka Jayawickrama'}), (c:Company {name: 'PMF Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-08-29');

// Query 19
// Step 5: Metrics;

// Query 20
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 29
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 30
// Step 6: HAS_METRIC Relationships;

// Query 31
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3344778000, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2095447000, r.year = 2023;

// Query 33
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 969470000, r.year = 2022;

// Query 34
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28443000, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -150551000, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 201250000, r.year = 2022;

// Query 37
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1105230000, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 752650000, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 494200000, r.year = 2022;

// Query 40
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -24990000, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -183824000, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 140174000, r.year = 2022;

// Query 43
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 67402000, r.year = 2021;

// Query 44
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -79954000, r.year = 2020;

// Query 45
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19262000, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -154014000, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 191800000, r.year = 2022;

// Query 48
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 67799000, r.year = 2021;

// Query 49
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -80086000, r.year = 2020;

// Query 50
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16317201000, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11529826000, r.year = 2023;

// Query 52
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8279690000, r.year = 2022;

// Query 53
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.05, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.38, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2723352000, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2710954000, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.74, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.13, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.71, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5.91, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.73, r.year = 2022;

// Query 62
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.68, r.year = 2021;

// Query 63
MATCH (c:Company {name: 'PMF Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -9.45, r.year = 2020;

// Query 64
// Step 7: Sectors;

// Query 65
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 66
// Step 8: IN_SECTOR Relationships;

// Query 67
MATCH (c:Company {name: 'PMF Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 68
// Step 9: Products;

// Query 69
MERGE (p:Product {name: 'Finance Leases'}) ON CREATE SET p.id = 'finance_leases';

// Query 70
MERGE (p:Product {name: 'Gold Loans'}) ON CREATE SET p.id = 'gold_loans';

// Query 71
MERGE (p:Product {name: 'Term Loans'}) ON CREATE SET p.id = 'term_loans';

// Query 72
MERGE (p:Product {name: 'Margin Trading'}) ON CREATE SET p.id = 'margin_trading';

// Query 73
MERGE (p:Product {name: 'Entrepreneur Loans'}) ON CREATE SET p.id = 'entrepreneur_loans';

// Query 74
MERGE (p:Product {name: 'Short-term Investments'}) ON CREATE SET p.id = 'short_term_investments';

// Query 75
MERGE (p:Product {name: 'Public Deposits'}) ON CREATE SET p.id = 'public_deposits';

// Query 76
MERGE (p:Product {name: 'Renewable Energy Financing'}) ON CREATE SET p.id = 'renewable_energy_financing';

// Query 77
// Step 10: OFFERS Relationships;

// Query 78
MATCH (c:Company {name: 'PMF Finance'}), (p:Product {name: 'Finance Leases'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'PMF Finance'}), (p:Product {name: 'Gold Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'PMF Finance'}), (p:Product {name: 'Term Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'PMF Finance'}), (p:Product {name: 'Margin Trading'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'PMF Finance'}), (p:Product {name: 'Entrepreneur Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'PMF Finance'}), (p:Product {name: 'Short-term Investments'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'PMF Finance'}), (p:Product {name: 'Public Deposits'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'PMF Finance'}), (p:Product {name: 'Renewable Energy Financing'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 85
// Generated on: 2025-10-03T01:52:50.310998
