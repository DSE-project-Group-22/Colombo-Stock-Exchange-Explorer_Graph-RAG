// Query 1
MERGE (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}) ON CREATE SET c.id = 'citizens_development_business_finance_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a.k._pathirage';

// Query 3
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/ Managing Director', r.as_of = date('2024-01-01');

// Query 4
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's._selliah';

// Query 5
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-01-01');

// Query 6
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k.m.p_karunaratne';

// Query 7
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-01-01');

// Query 8
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g.l.h._premaratne';

// Query 9
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-01');

// Query 10
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 11
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-01-01');

// Query 12
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. million';

// Query 13
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25599, r.year = 2025;

// Query 14
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23894, r.year = 2024;

// Query 15
MERGE (m:Metric {name: 'Net interest income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs. million';

// Query 16
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Net interest income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11391, r.year = 2025;

// Query 17
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Net interest income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9093, r.year = 2024;

// Query 18
MERGE (m:Metric {name: 'Total operating income'}) ON CREATE SET m.id = 'total_operating_income', m.unit = 'Rs. million';

// Query 19
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Total operating income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14105, r.year = 2025;

// Query 20
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Total operating income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10767, r.year = 2024;

// Query 21
MERGE (m:Metric {name: 'Profit before taxes'}) ON CREATE SET m.id = 'profit_before_taxes', m.unit = 'Rs. million';

// Query 22
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Profit before taxes'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7922, r.year = 2025;

// Query 23
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Profit before taxes'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4599, r.year = 2024;

// Query 24
MERGE (m:Metric {name: 'Profit before income tax'}) ON CREATE SET m.id = 'profit_before_income_tax', m.unit = 'Rs. million';

// Query 25
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Profit before income tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5751, r.year = 2025;

// Query 26
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Profit before income tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3706, r.year = 2024;

// Query 27
MERGE (m:Metric {name: 'Profit after tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs. million';

// Query 28
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4005, r.year = 2025;

// Query 29
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2516, r.year = 2024;

// Query 30
MERGE (m:Metric {name: 'Loans and receivables to customers'}) ON CREATE SET m.id = 'loans_and_receivables_to_customers', m.unit = 'Rs. million';

// Query 31
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Loans and receivables to customers'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 110867, r.year = 2025;

// Query 32
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Loans and receivables to customers'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 85964, r.year = 2024;

// Query 33
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs. million';

// Query 34
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 156936, r.year = 2025;

// Query 35
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 128778, r.year = 2024;

// Query 36
MERGE (m:Metric {name: 'Total equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs. million';

// Query 37
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Total equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23936, r.year = 2025;

// Query 38
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Total equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20208, r.year = 2024;

// Query 39
MERGE (m:Metric {name: 'Deposits from customers'}) ON CREATE SET m.id = 'deposits_from_customers', m.unit = 'Rs. million';

// Query 40
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Deposits from customers'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 86849, r.year = 2025;

// Query 41
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Deposits from customers'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 73259, r.year = 2024;

// Query 42
MERGE (m:Metric {name: 'Operating profit margin'}) ON CREATE SET m.id = 'operating_profit_margin', m.unit = '%';

// Query 43
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Operating profit margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30.95, r.year = 2025;

// Query 44
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Operating profit margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.25, r.year = 2024;

// Query 45
MERGE (m:Metric {name: 'Net interest margin'}) ON CREATE SET m.id = 'net_interest_margin', m.unit = '%';

// Query 46
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Net interest margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.97, r.year = 2025;

// Query 47
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Net interest margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.77, r.year = 2024;

// Query 48
MERGE (m:Metric {name: 'Cost to income ratio'}) ON CREATE SET m.id = 'cost_to_income_ratio', m.unit = '%';

// Query 49
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Cost to income ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48.40, r.year = 2025;

// Query 50
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Cost to income ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50.40, r.year = 2024;

// Query 51
MERGE (m:Metric {name: 'Return on average assets (ROA) - After tax'}) ON CREATE SET m.id = 'return_on_average_assets_roa_after_tax', m.unit = '%';

// Query 52
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Return on average assets (ROA) - After tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.80, r.year = 2025;

// Query 53
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Return on average assets (ROA) - After tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.15, r.year = 2024;

// Query 54
MERGE (m:Metric {name: 'Earnings per share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs.';

// Query 55
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Earnings per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 56.53, r.year = 2025;

// Query 56
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Earnings per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 35.95, r.year = 2024;

// Query 57
MERGE (m:Metric {name: 'Earnings yield'}) ON CREATE SET m.id = 'earnings_yield', m.unit = '%';

// Query 58
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Earnings yield'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24.06, r.year = 2025;

// Query 59
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Earnings yield'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.12, r.year = 2024;

// Query 60
MERGE (m:Metric {name: 'Return on Equity (ROE) - After Tax'}) ON CREATE SET m.id = 'return_on_equity_roe_after_tax', m.unit = '%';

// Query 61
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Return on Equity (ROE) - After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18.15, r.year = 2025;

// Query 62
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Return on Equity (ROE) - After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.10, r.year = 2024;

// Query 63
MERGE (m:Metric {name: 'Dividend per share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs.';

// Query 64
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.00, r.year = 2025;

// Query 65
MATCH (c:Company {name: 'CITIZENS DEVELOPMENT BUSINESS FINANCE PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.00, r.year = 2024;

// Total queries: 65
// Generated on: 2025-09-03T16:10:45.487376
