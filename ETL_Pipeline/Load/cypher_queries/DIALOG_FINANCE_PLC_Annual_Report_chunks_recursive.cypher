// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Dialog Finance'}) ON CREATE SET c.id = 'dialog_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Deloitte'}) ON CREATE SET a.id = 'deloitte', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Dialog Finance'}), (a:Auditor {name: 'Deloitte'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'Renuka Nandini Kurukulasuriya Fernando'}) ON CREATE SET p.id = 'renuka_nandini_kurukulasuriya_fernando';

// Query 8
MERGE (p:Person {name: 'Wewage Viranga Supun Dep Weerasinghe'}) ON CREATE SET p.id = 'wewage_viranga_supun_dep_weerasinghe';

// Query 9
MERGE (p:Person {name: 'Lim Li San'}) ON CREATE SET p.id = 'lim_li_san';

// Query 10
MERGE (p:Person {name: 'Alexander Löwbäck'}) ON CREATE SET p.id = 'alexander_lowback';

// Query 11
MERGE (p:Person {name: 'Mohamed Hassen Nazeem Mohamed'}) ON CREATE SET p.id = 'mohamed_hassen_nazeem_mohamed';

// Query 12
MERGE (p:Person {name: 'Patrick Priyan Edirisinghe'}) ON CREATE SET p.id = 'patrick_priyan_edirisinghe';

// Query 13
MERGE (p:Person {name: 'Roshaan Hettiaratchi'}) ON CREATE SET p.id = 'roshaan_hettiaratchi';

// Query 14
// Step 4: HOLDS_POSITION Relationships;

// Query 15
MATCH (p:Person {name: 'Renuka Nandini Kurukulasuriya Fernando'}), (c:Company {name: 'Dialog Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2020-05-22');

// Query 16
MATCH (p:Person {name: 'Wewage Viranga Supun Dep Weerasinghe'}), (c:Company {name: 'Dialog Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2017-11-09');

// Query 17
MATCH (p:Person {name: 'Lim Li San'}), (c:Company {name: 'Dialog Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-10-11');

// Query 18
MATCH (p:Person {name: 'Alexander Löwbäck'}), (c:Company {name: 'Dialog Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-10-11');

// Query 19
MATCH (p:Person {name: 'Mohamed Hassen Nazeem Mohamed'}), (c:Company {name: 'Dialog Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2022-06-24');

// Query 20
MATCH (p:Person {name: 'Patrick Priyan Edirisinghe'}), (c:Company {name: 'Dialog Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2016-01-19');

// Query 21
MATCH (p:Person {name: 'Roshaan Hettiaratchi'}), (c:Company {name: 'Dialog Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2016-02-09');

// Query 22
// Step 5: Metrics;

// Query 23
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 30
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 32
// Step 6: HAS_METRIC Relationships;

// Query 33
MATCH (c:Company {name: 'Dialog Finance'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1641040000.0, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Dialog Finance'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1161153000.0, r.year = 2023;

// Query 35
MATCH (c:Company {name: 'Dialog Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44049000.0, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Dialog Finance'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 102889000.0, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'Dialog Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -41083000.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Dialog Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39438000.0, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Dialog Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -15935000.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Dialog Finance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44742000.0, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Dialog Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7385099000.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Dialog Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5953048000.0, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Dialog Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2602943000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Dialog Finance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2644765000.0, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Dialog Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.58, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Dialog Finance'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.49, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Dialog Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.35, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Dialog Finance'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.34, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Dialog Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 778241000.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Dialog Finance'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 698929000.0, r.year = 2023;

// Query 51
// Step 7: Sectors;

// Query 52
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 53
// Step 8: IN_SECTOR Relationships;

// Query 54
MATCH (c:Company {name: 'Dialog Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 55
// Step 9: Products;

// Query 56
MERGE (p:Product {name: 'Digital Financial Solutions'}) ON CREATE SET p.id = 'digital_financial_solutions';

// Query 57
MERGE (p:Product {name: 'Lending Services'}) ON CREATE SET p.id = 'lending_services';

// Query 58
MERGE (p:Product {name: 'Digital Payment Services'}) ON CREATE SET p.id = 'digital_payment_services';

// Query 59
MERGE (p:Product {name: 'Microfinance'}) ON CREATE SET p.id = 'microfinance';

// Query 60
MERGE (p:Product {name: 'Lesi Pay (Device Financing)'}) ON CREATE SET p.id = 'lesi_pay_device_financing';

// Query 61
// Step 10: OFFERS Relationships;

// Query 62
MATCH (c:Company {name: 'Dialog Finance'}), (p:Product {name: 'Digital Financial Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 63
MATCH (c:Company {name: 'Dialog Finance'}), (p:Product {name: 'Lending Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 64
MATCH (c:Company {name: 'Dialog Finance'}), (p:Product {name: 'Digital Payment Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 65
MATCH (c:Company {name: 'Dialog Finance'}), (p:Product {name: 'Microfinance'}) MERGE (c)-[:OFFERS]->(p);

// Query 66
MATCH (c:Company {name: 'Dialog Finance'}), (p:Product {name: 'Lesi Pay (Device Financing)'}) MERGE (c)-[:OFFERS]->(p);

// Query 67
// Step 11: Company-Company Relationships;

// Query 68
MERGE (parent:Company {name: 'Dialog Axiata'}) ON CREATE SET parent.id = 'dialog_axiata', parent.region = 'Sri Lanka';

// Query 69
MATCH (parent:Company {name: 'Dialog Axiata'}), (child:Company {name: 'Dialog Finance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 99.05, r.as_of = date('2024-12-31');

// Total queries: 69
// Generated on: 2025-10-02T22:59:49.645138
