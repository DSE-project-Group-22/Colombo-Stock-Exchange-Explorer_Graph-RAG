// Query 1
MERGE (c:Company {name: 'Commercial Development Company PLC'}) ON CREATE SET c.id = 'commercial_development_company_plc', c.region = 'Sri Lanka', c.listed_on = 'Diri Savi Board of the CSE';

// Query 2
MERGE (c:Company {name: 'Commercial Bank of Ceylon PLC'}) ON CREATE SET c.id = 'commercial_bank_of_ceylon_plc';

// Query 3
MERGE (c:Company {name: 'KPMG'}) ON CREATE SET c.id = 'kpmg';

// Query 4
MERGE (p:Person {name: 'A L Gooneratne'}) ON CREATE SET p.id = 'a_l_gooneratne';

// Query 5
MERGE (p:Person {name: 'S C U Manatunge'}) ON CREATE SET p.id = 's_c_u_manatunge';

// Query 6
MERGE (p:Person {name: 'U I S Tillakawardana'}) ON CREATE SET p.id = 'u_i_s_tillakawardana';

// Query 7
MERGE (p:Person {name: 'Dr R A Attalage'}) ON CREATE SET p.id = 'dr_r_a_attalage';

// Query 8
MERGE (p:Person {name: 'P L P Withana'}) ON CREATE SET p.id = 'p_l_p_withana';

// Query 9
MERGE (p:Person {name: 'N Abeysuriya'}) ON CREATE SET p.id = 'n_abeysuriya';

// Query 10
MERGE (p:Person {name: 'L W P Indrajith'}) ON CREATE SET p.id = 'l_w_p_indrajith';

// Query 11
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 12
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 13
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 14
MERGE (prod:Product {name: 'Rent Income on Premises'}) ON CREATE SET prod.id = 'rent_income_on_premises';

// Query 15
MERGE (prod:Product {name: 'Outsourcing Services'}) ON CREATE SET prod.id = 'outsourcing_services';

// Query 16
MERGE (prod:Product {name: 'Vehicle Hiring Income'}) ON CREATE SET prod.id = 'vehicle_hiring_income';

// Query 17
MERGE (prod:Product {name: 'Other Utility Services'}) ON CREATE SET prod.id = 'other_utility_services';

// Query 18
MERGE (m:Metric {name: 'Gross Revenue'}) ON CREATE SET m.id = 'gross_revenue', m.unit = 'Rs';

// Query 19
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Taxation'}) ON CREATE SET m.id = 'taxation', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Gross Dividends'}) ON CREATE SET m.id = 'gross_dividends', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Investment Property'}) ON CREATE SET m.id = 'investment_property', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Current Assets'}) ON CREATE SET m.id = 'current_assets', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Current Liabilities'}) ON CREATE SET m.id = 'current_liabilities', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Shareholders\' Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Net Assets Value Per Share'}) ON CREATE SET m.id = 'net_assets_value_per_share', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Earnings Per Share (Basic)'}) ON CREATE SET m.id = 'earnings_per_share_basic', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Dividends Per Share'}) ON CREATE SET m.id = 'dividends_per_share', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Market Value Per Share'}) ON CREATE SET m.id = 'market_value_per_share', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Return on Equity (ROE)'}) ON CREATE SET m.id = 'return_on_equity_roe', m.unit = '%';

// Query 34
MERGE (m:Metric {name: 'Return on Assets (ROA)'}) ON CREATE SET m.id = 'return_on_assets_roa', m.unit = '%';

// Query 35
MERGE (m:Metric {name: 'Non-current Assets'}) ON CREATE SET m.id = 'non_current_assets', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Interest Cover'}) ON CREATE SET m.id = 'interest_cover', m.unit = 'Times';

// Query 37
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Net Finance Income'}) ON CREATE SET m.id = 'net_finance_income', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Net Debt'}) ON CREATE SET m.id = 'net_debt', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Net Debt to Adjusted Equity Ratio'}) ON CREATE SET m.id = 'net_debt_to_adjusted_equity_ratio', m.unit = '%';

// Query 42
MATCH (p:Person {name: 'A L Gooneratne'}), (c:Company {name: 'Commercial Development Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 43
MATCH (p:Person {name: 'A L Gooneratne'}), (c:Company {name: 'Commercial Development Company PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive Non-Independent', r.as_of = date('2024-12-31');

// Query 44
MATCH (p:Person {name: 'S C U Manatunge'}), (c:Company {name: 'Commercial Development Company PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive Non-Independent', r.as_of = date('2024-12-31');

// Query 45
MATCH (p:Person {name: 'U I S Tillakawardana'}), (c:Company {name: 'Commercial Development Company PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive Non-Independent', r.as_of = date('2024-12-31');

// Query 46
MATCH (p:Person {name: 'Dr R A Attalage'}), (c:Company {name: 'Commercial Development Company PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive Independent', r.as_of = date('2024-12-31');

// Query 47
MATCH (p:Person {name: 'P L P Withana'}), (c:Company {name: 'Commercial Development Company PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive Independent', r.as_of = date('2024-12-31');

// Query 48
MATCH (p:Person {name: 'N Abeysuriya'}), (c:Company {name: 'Commercial Development Company PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive Independent', r.as_of = date('2024-12-31');

// Query 49
MATCH (p:Person {name: 'L W P Indrajith'}), (c:Company {name: 'Commercial Development Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-12-31');

// Query 50
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 51
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 52
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 53
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (prod:Product {name: 'Rent Income on Premises'}) MERGE (c)-[:OFFERS]->(prod);

// Query 54
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (prod:Product {name: 'Outsourcing Services'}) MERGE (c)-[:OFFERS]->(prod);

// Query 55
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (prod:Product {name: 'Vehicle Hiring Income'}) MERGE (c)-[:OFFERS]->(prod);

// Query 56
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (prod:Product {name: 'Other Utility Services'}) MERGE (c)-[:OFFERS]->(prod);

// Query 57
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 708260000, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 687511000, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 294261000, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 266753000, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 829055000, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 461977000, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 246432000, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 167917000, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 582623000, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 294060000, r.year = 2023;

// Query 67
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Gross Dividends'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 84000000, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Gross Dividends'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 84000000, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Investment Property'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3608451000, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Investment Property'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3129111000, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1247918000, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1096099000, r.year = 2023;

// Query 73
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 80081000, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Current Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 116692000, r.year = 2023;

// Query 75
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4909396000, r.year = 2024;

// Query 76
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4326289000, r.year = 2023;

// Query 77
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Shareholders\' Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4123018000, r.year = 2024;

// Query 78
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Shareholders\' Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3621473000, r.year = 2023;

// Query 79
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Net Assets Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 343.58, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Net Assets Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 301.79, r.year = 2023;

// Query 81
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Earnings Per Share (Basic)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48.55, r.year = 2024;

// Query 82
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Earnings Per Share (Basic)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24.51, r.year = 2023;

// Query 83
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Dividends Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.00, r.year = 2024;

// Query 84
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Dividends Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.00, r.year = 2023;

// Query 85
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Market Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 141.00, r.year = 2024;

// Query 86
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Market Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 111.75, r.year = 2023;

// Query 87
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Return on Equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.05, r.year = 2024;

// Query 88
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Return on Equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.36, r.year = 2023;

// Query 89
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Return on Assets (ROA)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.62, r.year = 2024;

// Query 90
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Return on Assets (ROA)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.02, r.year = 2023;

// Query 91
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Non-current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3661000000, r.year = 2024;

// Query 92
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Non-current Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3230000000, r.year = 2023;

// Query 93
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47.58, r.year = 2024;

// Query 94
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.56, r.year = 2023;

// Query 95
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 724984000, r.year = 2024;

// Query 96
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 337634000, r.year = 2023;

// Query 97
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 104071000, r.year = 2024;

// Query 98
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Net Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 124343000, r.year = 2023;

// Query 99
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4123018000, r.year = 2024;

// Query 100
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3621473000, r.year = 2023;

// Query 101
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Net Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 624126000, r.year = 2024;

// Query 102
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Net Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 562443000, r.year = 2023;

// Query 103
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Net Debt to Adjusted Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.0, r.year = 2024;

// Query 104
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (m:Metric {name: 'Net Debt to Adjusted Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.0, r.year = 2023;

// Query 105
MATCH (parent:Company {name: 'Commercial Bank of Ceylon PLC'}), (child:Company {name: 'Commercial Development Company PLC'}) MERGE (parent)-[:OWNS]->(child);

// Query 106
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (auditor:Company {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(auditor) ON CREATE SET r.year = 2024;

// Query 107
MATCH (c:Company {name: 'Commercial Development Company PLC'}), (auditor:Company {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(auditor) ON CREATE SET r.year = 2023;

// Total queries: 107
// Generated on: 2025-10-02T18:01:31.056599
