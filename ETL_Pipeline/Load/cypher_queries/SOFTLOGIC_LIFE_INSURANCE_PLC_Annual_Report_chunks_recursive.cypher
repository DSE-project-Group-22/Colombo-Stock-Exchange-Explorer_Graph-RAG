// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Softlogic Life Insurance'}) ON CREATE SET c.id = 'softlogic_life_insurance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'Softlogic Holdings'}) ON CREATE SET c.id = 'softlogic_holdings';

// Query 4
MERGE (c:Company {name: 'Softlogic Capital'}) ON CREATE SET c.id = 'softlogic_capital';

// Query 5
MERGE (c:Company {name: 'LeapFrog Investments'}) ON CREATE SET c.id = 'leapfrog_investments';

// Query 6
MERGE (c:Company {name: 'Softlogic Stockbrokers'}) ON CREATE SET c.id = 'softlogic_stockbrokers';

// Query 7
MERGE (c:Company {name: 'Softlogic Corporate Services'}) ON CREATE SET c.id = 'softlogic_corporate_services';

// Query 8
MERGE (c:Company {name: 'Softlogic Asset Management'}) ON CREATE SET c.id = 'softlogic_asset_management';

// Query 9
MERGE (c:Company {name: 'Softlogic Australia'}) ON CREATE SET c.id = 'softlogic_australia';

// Query 10
MERGE (c:Company {name: 'Nations Trust Bank'}) ON CREATE SET c.id = 'nations_trust_bank';

// Query 11
// Step 2: Auditor;

// Query 12
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 13
// Step 3: AUDITED_BY Relationship;

// Query 14
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 15
// Step 4: People - Directors and Executives;

// Query 16
MERGE (p:Person {name: 'Iftikar Ahamed'}) ON CREATE SET p.id = 'iftikar_ahamed';

// Query 17
MERGE (p:Person {name: 'Indu Attygala'}) ON CREATE SET p.id = 'indu_attygala';

// Query 18
MERGE (p:Person {name: 'Thilanka Kiriporuwa'}) ON CREATE SET p.id = 'thilanka_kiriporuwa';

// Query 19
MERGE (p:Person {name: 'Amal Dharmapriya'}) ON CREATE SET p.id = 'amal_dharmapriya';

// Query 20
MERGE (p:Person {name: 'Suranga Waduge'}) ON CREATE SET p.id = 'suranga_waduge';

// Query 21
MERGE (p:Person {name: 'Nuwan Withanage'}) ON CREATE SET p.id = 'nuwan_withanage';

// Query 22
MERGE (p:Person {name: 'Pranama Perera'}) ON CREATE SET p.id = 'pranama_perera';

// Query 23
MERGE (p:Person {name: 'Piyumal Wickramasinghe'}) ON CREATE SET p.id = 'piyumal_wickramasinghe';

// Query 24
MERGE (p:Person {name: 'Indika Bamunusinghe'}) ON CREATE SET p.id = 'indika_bamunusinghe';

// Query 25
MERGE (p:Person {name: 'Ruwantha Arukwatta'}) ON CREATE SET p.id = 'ruwantha_arukwatta';

// Query 26
MERGE (p:Person {name: 'Saranga Wijayarathne'}) ON CREATE SET p.id = 'saranga_wijayarathne';

// Query 27
MERGE (p:Person {name: 'Rushika Bemunuge'}) ON CREATE SET p.id = 'rushika_bemunuge';

// Query 28
MERGE (p:Person {name: 'Chamindri Pilimatalauwe'}) ON CREATE SET p.id = 'chamindri_pilimatalauwe';

// Query 29
MERGE (p:Person {name: 'Sanjaya Mohottala'}) ON CREATE SET p.id = 'sanjaya_mohottala';

// Query 30
MERGE (p:Person {name: 'V. Govindasamy'}) ON CREATE SET p.id = 'v_govindasamy';

// Query 31
MERGE (p:Person {name: 'Raimund Snyders'}) ON CREATE SET p.id = 'raimund_snyders';

// Query 32
MERGE (p:Person {name: 'Lalith Withana'}) ON CREATE SET p.id = 'lalith_withana';

// Query 33
MERGE (p:Person {name: 'Haresh Kaimal'}) ON CREATE SET p.id = 'haresh_kaimal';

// Query 34
// Step 5: HOLDS_POSITION Relationships;

// Query 35
MATCH (p:Person {name: 'Iftikar Ahamed'}), (c:Company {name: 'Softlogic Life Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-12-31');

// Query 36
MATCH (p:Person {name: 'Indu Attygala'}), (c:Company {name: 'Softlogic Life Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-12-31');

// Query 37
MATCH (p:Person {name: 'Thilanka Kiriporuwa'}), (c:Company {name: 'Softlogic Life Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 38
MATCH (p:Person {name: 'Amal Dharmapriya'}), (c:Company {name: 'Softlogic Life Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 39
MATCH (p:Person {name: 'Suranga Waduge'}), (c:Company {name: 'Softlogic Life Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 40
MATCH (p:Person {name: 'Nuwan Withanage'}), (c:Company {name: 'Softlogic Life Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-12-31');

// Query 41
MATCH (p:Person {name: 'Pranama Perera'}), (c:Company {name: 'Softlogic Life Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 42
MATCH (p:Person {name: 'Piyumal Wickramasinghe'}), (c:Company {name: 'Softlogic Life Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 43
MATCH (p:Person {name: 'Indika Bamunusinghe'}), (c:Company {name: 'Softlogic Life Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 44
MATCH (p:Person {name: 'Ruwantha Arukwatta'}), (c:Company {name: 'Softlogic Life Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 45
MATCH (p:Person {name: 'Saranga Wijayarathne'}), (c:Company {name: 'Softlogic Life Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 46
MATCH (p:Person {name: 'Rushika Bemunuge'}), (c:Company {name: 'Softlogic Life Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 47
MATCH (p:Person {name: 'Chamindri Pilimatalauwe'}), (c:Company {name: 'Softlogic Life Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-12-31');

// Query 48
MATCH (p:Person {name: 'Sanjaya Mohottala'}), (c:Company {name: 'Softlogic Life Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 49
MATCH (p:Person {name: 'V. Govindasamy'}), (c:Company {name: 'Softlogic Life Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 50
MATCH (p:Person {name: 'Raimund Snyders'}), (c:Company {name: 'Softlogic Life Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 51
MATCH (p:Person {name: 'Lalith Withana'}), (c:Company {name: 'Softlogic Life Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 52
MATCH (p:Person {name: 'Haresh Kaimal'}), (c:Company {name: 'Softlogic Life Insurance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-12-31');

// Query 53
// Step 6: Metrics;

// Query 54
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 55
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 57
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 58
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 59
// Step 7: HAS_METRIC Relationships;

// Query 60
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38444000000.0, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31799000000.0, r.year = 2023;

// Query 62
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6332000000.0, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3197000000.0, r.year = 2023;

// Query 64
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4522000000.0, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2838000000.0, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 53594000000.0, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 51339000000.0, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10355000000.0, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13333000000.0, r.year = 2023;

// Query 70
// Step 8: Sectors;

// Query 71
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 72
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 73
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 74
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 75
MERGE (s:Sector {name: 'Banks'}) ON CREATE SET s.id = 'banks';

// Query 76
// Step 9: IN_SECTOR Relationships;

// Query 77
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 78
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 79
// Step 10: Products;

// Query 80
MERGE (p:Product {name: 'Health Insurance'}) ON CREATE SET p.id = 'health_insurance';

// Query 81
MERGE (p:Product {name: 'Insurance Policies'}) ON CREATE SET p.id = 'insurance_policies';

// Query 82
MERGE (p:Product {name: 'Group Life Insurance'}) ON CREATE SET p.id = 'group_life_insurance';

// Query 83
MERGE (p:Product {name: 'Retirement Plans'}) ON CREATE SET p.id = 'retirement_plans';

// Query 84
// Step 11: OFFERS Relationships;

// Query 85
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (p:Product {name: 'Health Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (p:Product {name: 'Insurance Policies'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (p:Product {name: 'Group Life Insurance'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Softlogic Life Insurance'}), (p:Product {name: 'Retirement Plans'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
// Step 12: Company-Company Relationships (OWNS);

// Query 90
MATCH (parent:Company {name: 'Softlogic Holdings'}), (child:Company {name: 'Softlogic Life Insurance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 75.0, r.as_of = date('2024-12-31');

// Query 91
MATCH (parent:Company {name: 'Softlogic Capital'}), (child:Company {name: 'Softlogic Life Insurance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 51.0, r.as_of = date('2024-12-31');

// Query 92
MATCH (parent:Company {name: 'LeapFrog Investments'}), (child:Company {name: 'Softlogic Life Insurance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 37.6, r.as_of = date('2024-12-31');

// Total queries: 92
// Generated on: 2025-10-03T00:45:18.610450
