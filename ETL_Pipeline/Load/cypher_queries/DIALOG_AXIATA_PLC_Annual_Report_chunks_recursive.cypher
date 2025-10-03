// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Dialog Axiata'}) ON CREATE SET c.id = 'dialog_axiata', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No auditor from the hardcoded list was explicitly identified. Skipping auditor node and AUDITED_BY relationship.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'David Nai Pek Lau'}) ON CREATE SET p.id = 'david_nai_pek_lau';

// Query 6
MERGE (p:Person {name: 'Supun Weerasinghe'}) ON CREATE SET p.id = 'supun_weerasinghe';

// Query 7
MERGE (p:Person {name: 'Hans Wijayasuriya'}) ON CREATE SET p.id = 'hans_wijayasuriya';

// Query 8
MERGE (p:Person {name: 'Vivek Sood'}) ON CREATE SET p.id = 'vivek_sood';

// Query 9
MERGE (p:Person {name: 'Komathi Balakrishnan'}) ON CREATE SET p.id = 'komathi_balakrishnan';

// Query 10
MERGE (p:Person {name: 'Willem Timmermans'}) ON CREATE SET p.id = 'willem_timmermans';

// Query 11
MERGE (p:Person {name: 'Thomas Hundt'}) ON CREATE SET p.id = 'thomas_hundt';

// Query 12
// Step 4: HOLDS_POSITION Relationships;

// Query 13
MATCH (p:Person {name: 'David Nai Pek Lau'}), (c:Company {name: 'Dialog Axiata'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2023-12-31');

// Query 14
MATCH (p:Person {name: 'David Nai Pek Lau'}), (c:Company {name: 'Dialog Axiata'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2023-12-31');

// Query 15
MATCH (p:Person {name: 'Supun Weerasinghe'}), (c:Company {name: 'Dialog Axiata'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2023-12-31');

// Query 16
MATCH (p:Person {name: 'Supun Weerasinghe'}), (c:Company {name: 'Dialog Axiata'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2023-12-31');

// Query 17
MATCH (p:Person {name: 'Hans Wijayasuriya'}), (c:Company {name: 'Dialog Axiata'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2023-12-31');

// Query 18
MATCH (p:Person {name: 'Vivek Sood'}), (c:Company {name: 'Dialog Axiata'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2023-12-31');

// Query 19
MATCH (p:Person {name: 'Komathi Balakrishnan'}), (c:Company {name: 'Dialog Axiata'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2023-12-31');

// Query 20
MATCH (p:Person {name: 'Willem Timmermans'}), (c:Company {name: 'Dialog Axiata'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-04-30');

// Query 21
MATCH (p:Person {name: 'Thomas Hundt'}), (c:Company {name: 'Dialog Axiata'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-12-31');

// Query 22
// Step 5: Metrics;

// Query 23
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 27
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 31
// Step 6: HAS_METRIC Relationships;

// Query 32
MATCH (c:Company {name: 'Dialog Axiata'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 102900000000.0, r.year = 2023;

// Query 33
MATCH (c:Company {name: 'Dialog Axiata'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12000000000.0, r.year = 2023;

// Query 34
MATCH (c:Company {name: 'Dialog Axiata'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.44, r.year = 2023;

// Query 35
MATCH (c:Company {name: 'Dialog Axiata'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -4.06, r.year = 2022;

// Query 36
MATCH (c:Company {name: 'Dialog Axiata'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.71, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'Dialog Axiata'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.57, r.year = 2022;

// Query 38
MATCH (c:Company {name: 'Dialog Axiata'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 239900871000.0, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Dialog Axiata'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 238507063000.0, r.year = 2022;

// Query 40
MATCH (c:Company {name: 'Dialog Axiata'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 57099162000.0, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Dialog Axiata'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44486554000.0, r.year = 2022;

// Query 42
MATCH (c:Company {name: 'Dialog Axiata'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20873534000.0, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Dialog Axiata'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2568427000.0, r.year = 2022;

// Query 44
MATCH (c:Company {name: 'Dialog Axiata'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.90, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Dialog Axiata'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.26, r.year = 2022;

// Query 46
// Step 7: Sectors;

// Query 47
MERGE (s:Sector {name: 'Telecommunication Services'}) ON CREATE SET s.id = 'telecommunication_services';

// Query 48
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 49
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 50
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 51
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 52
// Step 8: IN_SECTOR Relationships;

// Query 53
MATCH (c:Company {name: 'Dialog Axiata'}), (s:Sector {name: 'Telecommunication Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 54
MATCH (c:Company {name: 'Dialog Axiata'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 55
MATCH (c:Company {name: 'Dialog Axiata'}), (s:Sector {name: 'Health Care Equipment and Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 56
MATCH (c:Company {name: 'Dialog Axiata'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 57
MATCH (c:Company {name: 'Dialog Axiata'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 58
// Step 9: Product nodes creation;

// Query 59
MERGE (p:Product {name: 'Mobile Services'}) ON CREATE SET p.id = 'mobile_services';

// Query 60
MERGE (p:Product {name: 'Data Services'}) ON CREATE SET p.id = 'data_services';

// Query 61
MERGE (p:Product {name: 'International Direct Dialling Services'}) ON CREATE SET p.id = 'international_direct_dialling_services';

// Query 62
MERGE (p:Product {name: 'Passive Infrastructure Leasing'}) ON CREATE SET p.id = 'passive_infrastructure_leasing';

// Query 63
MERGE (p:Product {name: 'Interconnect Services'}) ON CREATE SET p.id = 'interconnect_services';

// Query 64
MERGE (p:Product {name: 'Pay Television Transmission Services'}) ON CREATE SET p.id = 'pay_television_transmission_services';

// Query 65
MERGE (p:Product {name: 'Digital Services'}) ON CREATE SET p.id = 'digital_services';

// Query 66
MERGE (p:Product {name: 'Digital Commerce'}) ON CREATE SET p.id = 'digital_commerce';

// Query 67
MERGE (p:Product {name: 'Electronic Payments'}) ON CREATE SET p.id = 'electronic_payments';

// Query 68
MERGE (p:Product {name: 'Digital Health Services'}) ON CREATE SET p.id = 'digital_health_services';

// Query 69
MERGE (p:Product {name: 'Education Services'}) ON CREATE SET p.id = 'education_services';

// Query 70
MERGE (p:Product {name: 'API Platform'}) ON CREATE SET p.id = 'api_platform';

// Query 71
MERGE (p:Product {name: 'Navigation Services'}) ON CREATE SET p.id = 'navigation_services';

// Query 72
MERGE (p:Product {name: 'FinTech Services'}) ON CREATE SET p.id = 'fintech_services';

// Query 73
MERGE (p:Product {name: 'Enterprise ICT Services'}) ON CREATE SET p.id = 'enterprise_ict_services';

// Query 74
MERGE (p:Product {name: 'Data Centre Services'}) ON CREATE SET p.id = 'data_centre_services';

// Query 75
MERGE (p:Product {name: 'Manpower Services'}) ON CREATE SET p.id = 'manpower_services';

// Query 76
MERGE (p:Product {name: 'IT Services'}) ON CREATE SET p.id = 'it_services';

// Query 77
MERGE (p:Product {name: 'Venture Capital Investment'}) ON CREATE SET p.id = 'venture_capital_investment';

// Query 78
MERGE (p:Product {name: '5G Network Services'}) ON CREATE SET p.id = '5g_network_services';

// Query 79
MERGE (p:Product {name: 'VoNR Services'}) ON CREATE SET p.id = 'vonr_services';

// Query 80
MERGE (p:Product {name: 'IoT Solutions'}) ON CREATE SET p.id = 'iot_solutions';

// Query 81
// Step 10: OFFERS Relationships;

// Query 82
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'Mobile Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'Data Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'International Direct Dialling Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'Passive Infrastructure Leasing'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'Interconnect Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'Pay Television Transmission Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'Digital Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'Digital Commerce'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'Electronic Payments'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'Digital Health Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'Education Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'API Platform'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'Navigation Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'FinTech Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'Enterprise ICT Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'Data Centre Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'Manpower Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'IT Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'Venture Capital Investment'}) MERGE (c)-[:OFFERS]->(p);

// Query 101
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: '5G Network Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 102
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'VoNR Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 103
MATCH (c:Company {name: 'Dialog Axiata'}), (p:Product {name: 'IoT Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 104
// Step 11: Company-Company Relationships (OWNS);

// Query 105
MERGE (parent:Company {name: 'Axiata Investments (Labuan)'}) ON CREATE SET parent.id = 'axiata_investments_labuan';

// Query 106
MATCH (parent:Company {name: 'Axiata Investments (Labuan)'}), (child:Company {name: 'Dialog Axiata'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 82.27, r.as_of = date('2023-12-31');

// Total queries: 106
// Generated on: 2025-10-03T00:40:15.589777
