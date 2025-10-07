// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Sampath Bank'}) ON CREATE SET c.id = 'sampath_bank', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'Sampath Centre'}) ON CREATE SET c.id = 'sampath_centre';

// Query 4
MERGE (c:Company {name: 'SC Securities'}) ON CREATE SET c.id = 'sc_securities';

// Query 5
MERGE (c:Company {name: 'Siyapatha Finance'}) ON CREATE SET c.id = 'siyapatha_finance', c.listed_on = 'Colombo Stock Exchange';

// Query 6
MERGE (c:Company {name: 'Sampath Information Technology Solutions'}) ON CREATE SET c.id = 'sampath_information_technology_solutions';

// Query 7
// Step 2: Auditor;

// Query 8
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 9
// Step 3: AUDITED_BY Relationship;

// Query 10
MATCH (c:Company {name: 'Sampath Bank'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 11
// Step 4: People - Directors and Executives;

// Query 12
MERGE (p:Person {name: 'Harsha Amarasekera'}) ON CREATE SET p.id = 'harsha_amarasekera';

// Query 13
MERGE (p:Person {name: 'Ayodhya Iddawela Perera'}) ON CREATE SET p.id = 'ayodhya_iddawela_perera';

// Query 14
MERGE (p:Person {name: 'Rushanka Silva'}) ON CREATE SET p.id = 'rushanka_silva';

// Query 15
MERGE (p:Person {name: 'Lasantha Senaratne'}) ON CREATE SET p.id = 'lasantha_senaratne';

// Query 16
MERGE (p:Person {name: 'Ajantha de Vas Gunasekara'}) ON CREATE SET p.id = 'ajantha_de_vas_gunasekara';

// Query 17
MERGE (p:Person {name: 'Keshini Jayawardena'}) ON CREATE SET p.id = 'keshini_jayawardena';

// Query 18
MERGE (p:Person {name: 'Vinod Hirdaramani'}) ON CREATE SET p.id = 'vinod_hirdaramani';

// Query 19
MERGE (p:Person {name: 'Hiran Cabraal'}) ON CREATE SET p.id = 'hiran_cabraal';

// Query 20
MERGE (p:Person {name: 'Keith Modder'}) ON CREATE SET p.id = 'keith_modder';

// Query 21
// Step 5: HOLDS_POSITION Relationships;

// Query 22
MATCH (p:Person {name: 'Harsha Amarasekera'}), (c:Company {name: 'Sampath Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 23
MATCH (p:Person {name: 'Ayodhya Iddawela Perera'}), (c:Company {name: 'Sampath Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-12-31');

// Query 24
MATCH (p:Person {name: 'Rushanka Silva'}), (c:Company {name: 'Sampath Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-12-31');

// Query 25
MATCH (p:Person {name: 'Lasantha Senaratne'}), (c:Company {name: 'Sampath Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-12-31');

// Query 26
MATCH (p:Person {name: 'Ajantha de Vas Gunasekara'}), (c:Company {name: 'Sampath Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-12-31');

// Query 27
MATCH (p:Person {name: 'Ajantha de Vas Gunasekara'}), (c:Company {name: 'Sampath Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-12-31');

// Query 28
MATCH (p:Person {name: 'Keshini Jayawardena'}), (c:Company {name: 'Sampath Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 29
MATCH (p:Person {name: 'Vinod Hirdaramani'}), (c:Company {name: 'Sampath Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 30
MATCH (p:Person {name: 'Hiran Cabraal'}), (c:Company {name: 'Sampath Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 31
MATCH (p:Person {name: 'Keith Modder'}), (c:Company {name: 'Sampath Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 32
// Step 6: Metrics;

// Query 33
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 41
MERGE (m:Metric {name: 'Operating Expenses'}) ON CREATE SET m.id = 'operating_expenses', m.unit = 'Rs';

// Query 42
// Step 7: HAS_METRIC Relationships;

// Query 43
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27321000000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 59889000000.0, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1777941000000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 166538000000.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 46700000000.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 87494000000.0, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23.30, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.74, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Operating Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39333000000.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17140000000.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38367000000.0, r.year = 2023;

// Query 54
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1541948000000.0, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 147873000000.0, r.year = 2023;

// Query 56
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29800000000.0, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 90973000000.0, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14.62, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.65, r.year = 2023;

// Query 60
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Operating Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 32457000000.0, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13134000000.0, r.year = 2022;

// Query 62
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20200000000.0, r.year = 2022;

// Query 63
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1324426000000.0, r.year = 2022;

// Query 64
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 126380000000.0, r.year = 2022;

// Query 65
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15000000000.0, r.year = 2022;

// Query 66
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 110954000000.0, r.year = 2022;

// Query 67
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.20, r.year = 2022;

// Query 68
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.05, r.year = 2022;

// Query 69
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Operating Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28048000000.0, r.year = 2022;

// Query 70
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12457000000.0, r.year = 2021;

// Query 71
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20734000000.0, r.year = 2021;

// Query 72
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1199913000000.0, r.year = 2021;

// Query 73
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 118752000000.0, r.year = 2021;

// Query 74
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16800000000.0, r.year = 2021;

// Query 75
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58487000000.0, r.year = 2021;

// Query 76
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.62, r.year = 2021;

// Query 77
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.37, r.year = 2021;

// Query 78
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Operating Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20668000000.0, r.year = 2021;

// Query 79
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8025000000.0, r.year = 2020;

// Query 80
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11172000000.0, r.year = 2020;

// Query 81
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1110271000000.0, r.year = 2020;

// Query 82
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 107549000000.0, r.year = 2020;

// Query 83
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12500000000.0, r.year = 2020;

// Query 84
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 46213000000.0, r.year = 2020;

// Query 85
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.84, r.year = 2020;

// Query 86
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.22, r.year = 2020;

// Query 87
MATCH (c:Company {name: 'Sampath Bank'}), (m:Metric {name: 'Operating Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20095000000.0, r.year = 2020;

// Query 88
// Step 8: Sectors;

// Query 89
MERGE (s:Sector {name: 'Banks'}) ON CREATE SET s.id = 'banks';

// Query 90
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 91
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 92
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 93
// Step 9: IN_SECTOR Relationships;

// Query 94
MATCH (c:Company {name: 'Sampath Bank'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 95
MATCH (c:Company {name: 'Sampath Bank'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 96
MATCH (c:Company {name: 'Sampath Centre'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 97
MATCH (c:Company {name: 'SC Securities'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 98
MATCH (c:Company {name: 'Siyapatha Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 99
MATCH (c:Company {name: 'Sampath Information Technology Solutions'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 100
// Step 10: Products;

// Query 101
MERGE (p:Product {name: 'Accepting Deposits'}) ON CREATE SET p.id = 'accepting_deposits';

// Query 102
MERGE (p:Product {name: 'Corporate Banking'}) ON CREATE SET p.id = 'corporate_banking';

// Query 103
MERGE (p:Product {name: 'Retail Banking'}) ON CREATE SET p.id = 'retail_banking';

// Query 104
MERGE (p:Product {name: 'Project Financing'}) ON CREATE SET p.id = 'project_financing';

// Query 105
MERGE (p:Product {name: 'Trade Finance'}) ON CREATE SET p.id = 'trade_finance';

// Query 106
MERGE (p:Product {name: 'Treasury Services'}) ON CREATE SET p.id = 'treasury_services';

// Query 107
MERGE (p:Product {name: 'Investment Services'}) ON CREATE SET p.id = 'investment_services';

// Query 108
MERGE (p:Product {name: 'Issuing of Credit Cards'}) ON CREATE SET p.id = 'issuing_of_credit_cards';

// Query 109
MERGE (p:Product {name: 'Issuing of Debit Cards'}) ON CREATE SET p.id = 'issuing_of_debit_cards';

// Query 110
MERGE (p:Product {name: 'Off-shore Banking'}) ON CREATE SET p.id = 'off_shore_banking';

// Query 111
MERGE (p:Product {name: 'Resident Foreign Currency Operations'}) ON CREATE SET p.id = 'resident_foreign_currency_operations';

// Query 112
MERGE (p:Product {name: 'Non-Resident Foreign Currency Operations'}) ON CREATE SET p.id = 'non_resident_foreign_currency_operations';

// Query 113
MERGE (p:Product {name: 'Electronic Banking Services'}) ON CREATE SET p.id = 'electronic_banking_services';

// Query 114
MERGE (p:Product {name: 'Telephone Banking'}) ON CREATE SET p.id = 'telephone_banking';

// Query 115
MERGE (p:Product {name: 'Internet Banking'}) ON CREATE SET p.id = 'internet_banking';

// Query 116
MERGE (p:Product {name: 'Mobile Banking'}) ON CREATE SET p.id = 'mobile_banking';

// Query 117
MERGE (p:Product {name: 'Money Remittance Facilities'}) ON CREATE SET p.id = 'money_remittance_facilities';

// Query 118
MERGE (p:Product {name: 'Pawning'}) ON CREATE SET p.id = 'pawning';

// Query 119
MERGE (p:Product {name: 'Leasing'}) ON CREATE SET p.id = 'leasing';

// Query 120
MERGE (p:Product {name: 'Factoring'}) ON CREATE SET p.id = 'factoring';

// Query 121
MERGE (p:Product {name: 'Travel Related Services'}) ON CREATE SET p.id = 'travel_related_services';

// Query 122
MERGE (p:Product {name: 'Dealing in Government Securities'}) ON CREATE SET p.id = 'dealing_in_government_securities';

// Query 123
// Step 11: OFFERS Relationships;

// Query 124
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Accepting Deposits'}) MERGE (c)-[:OFFERS]->(p);

// Query 125
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Corporate Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 126
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Retail Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 127
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Project Financing'}) MERGE (c)-[:OFFERS]->(p);

// Query 128
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Trade Finance'}) MERGE (c)-[:OFFERS]->(p);

// Query 129
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Treasury Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 130
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Investment Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 131
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Issuing of Credit Cards'}) MERGE (c)-[:OFFERS]->(p);

// Query 132
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Issuing of Debit Cards'}) MERGE (c)-[:OFFERS]->(p);

// Query 133
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Off-shore Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 134
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Resident Foreign Currency Operations'}) MERGE (c)-[:OFFERS]->(p);

// Query 135
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Non-Resident Foreign Currency Operations'}) MERGE (c)-[:OFFERS]->(p);

// Query 136
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Electronic Banking Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 137
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Telephone Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 138
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Internet Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 139
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Mobile Banking'}) MERGE (c)-[:OFFERS]->(p);

// Query 140
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Money Remittance Facilities'}) MERGE (c)-[:OFFERS]->(p);

// Query 141
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Pawning'}) MERGE (c)-[:OFFERS]->(p);

// Query 142
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Leasing'}) MERGE (c)-[:OFFERS]->(p);

// Query 143
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Factoring'}) MERGE (c)-[:OFFERS]->(p);

// Query 144
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Travel Related Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 145
MATCH (c:Company {name: 'Sampath Bank'}), (p:Product {name: 'Dealing in Government Securities'}) MERGE (c)-[:OFFERS]->(p);

// Query 146
// Step 12: Company-Company Relationships (OWNS);

// Query 147
MATCH (p:Company {name: 'Sampath Bank'}), (c:Company {name: 'Sampath Centre'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-12-31');

// Query 148
MATCH (p:Company {name: 'Sampath Bank'}), (c:Company {name: 'SC Securities'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-12-31');

// Query 149
MATCH (p:Company {name: 'Sampath Bank'}), (c:Company {name: 'Siyapatha Finance'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-12-31');

// Query 150
MATCH (p:Company {name: 'Sampath Bank'}), (c:Company {name: 'Sampath Information Technology Solutions'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-12-31');

// Total queries: 150
// Generated on: 2025-10-03T00:50:12.190615
