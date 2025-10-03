// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Trans Asia Hotels'}) ON CREATE SET c.id = 'trans_asia_hotels', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No external auditor from the hardcoded list was identified.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'K. N. J. Balendra'}) ON CREATE SET p.id = 'k_n_j_balendra';

// Query 6
MERGE (p:Person {name: 'J. G. A. Cooray'}) ON CREATE SET p.id = 'j_g_a_cooray';

// Query 7
MERGE (p:Person {name: 'S. Rajendra'}) ON CREATE SET p.id = 's_rajendra';

// Query 8
MERGE (p:Person {name: 'M. R. Svensson'}) ON CREATE SET p.id = 'm_r_svensson';

// Query 9
MERGE (p:Person {name: 'C. L. P. Gunawardane'}) ON CREATE SET p.id = 'c_l_p_gunawardane';

// Query 10
MERGE (p:Person {name: 'S. A. Atukorale'}) ON CREATE SET p.id = 's_a_atukorale';

// Query 11
// Step 4: HOLDS_POSITION Relationships;

// Query 12
MATCH (p:Person {name: 'K. N. J. Balendra'}), (c:Company {name: 'Trans Asia Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 13
MATCH (p:Person {name: 'J. G. A. Cooray'}), (c:Company {name: 'Trans Asia Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 14
MATCH (p:Person {name: 'S. Rajendra'}), (c:Company {name: 'Trans Asia Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 15
MATCH (p:Person {name: 'M. R. Svensson'}), (c:Company {name: 'Trans Asia Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 16
MATCH (p:Person {name: 'C. L. P. Gunawardane'}), (c:Company {name: 'Trans Asia Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 17
MATCH (p:Person {name: 'S. A. Atukorale'}), (c:Company {name: 'Trans Asia Hotels'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2025-03-31');

// Query 18
// Step 5: Metrics;

// Query 19
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 23
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Times';

// Query 26
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 28
// Step 6: HAS_METRIC Relationships;

// Query 29
MATCH (c:Company {name: 'Trans Asia Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4465690000, r.year = 2025;

// Query 30
MATCH (c:Company {name: 'Trans Asia Hotels'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4461845000, r.year = 2024;

// Query 31
MATCH (c:Company {name: 'Trans Asia Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 229944000, r.year = 2025;

// Query 32
MATCH (c:Company {name: 'Trans Asia Hotels'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 173117000, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'Trans Asia Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.15, r.year = 2025;

// Query 34
MATCH (c:Company {name: 'Trans Asia Hotels'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.87, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Trans Asia Hotels'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.0, r.year = 2025;

// Query 36
MATCH (c:Company {name: 'Trans Asia Hotels'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.0, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Trans Asia Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9603375000, r.year = 2025;

// Query 38
MATCH (c:Company {name: 'Trans Asia Hotels'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9495731000, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Trans Asia Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6836816000, r.year = 2025;

// Query 40
MATCH (c:Company {name: 'Trans Asia Hotels'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6362166000, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Trans Asia Hotels'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.10, r.year = 2025;

// Query 42
MATCH (c:Company {name: 'Trans Asia Hotels'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.21, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Trans Asia Hotels'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4466000000, r.year = 2025;

// Query 44
MATCH (c:Company {name: 'Trans Asia Hotels'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4462000000, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Trans Asia Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 328529000, r.year = 2025;

// Query 46
MATCH (c:Company {name: 'Trans Asia Hotels'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 233975000, r.year = 2024;

// Query 47
// Step 7: Sectors;

// Query 48
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 49
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 50
// Step 8: IN_SECTOR Relationships;

// Query 51
MATCH (c:Company {name: 'Trans Asia Hotels'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 52
MATCH (c:Company {name: 'Trans Asia Hotels'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 53
// Step 9: Products;

// Query 54
MERGE (p:Product {name: 'Cinnamon Lakeside Hotel'}) ON CREATE SET p.id = 'cinnamon_lakeside_hotel';

// Query 55
MERGE (p:Product {name: 'Investment Property Rental'}) ON CREATE SET p.id = 'investment_property_rental';

// Query 56
// Step 10: OFFERS Relationships;

// Query 57
MATCH (c:Company {name: 'Trans Asia Hotels'}), (p:Product {name: 'Cinnamon Lakeside Hotel'}) MERGE (c)-[:OFFERS]->(p);

// Query 58
MATCH (c:Company {name: 'Trans Asia Hotels'}), (p:Product {name: 'Investment Property Rental'}) MERGE (c)-[:OFFERS]->(p);

// Query 59
// Step 11: Company-Company Relationships (OWNS, MANAGES);

// Query 60
// OWNS relationships for 'Asian Hotels and Properties' and 'John Keells Holdings' were skipped due to missing explicit ownership percentages.;

// Query 61
// MANAGES relationships were not explicitly identified in the required context.;

// Total queries: 61
// Generated on: 2025-10-03T00:46:23.640096
