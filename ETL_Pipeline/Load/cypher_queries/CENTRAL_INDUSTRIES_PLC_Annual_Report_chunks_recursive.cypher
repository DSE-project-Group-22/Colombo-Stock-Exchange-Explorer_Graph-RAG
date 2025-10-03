// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Central Industries'}) ON CREATE SET c.id = 'central_industries', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No explicit auditor found in the provided text.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'E. H. Wijenaike'}) ON CREATE SET p.id = 'e_h_wijenaike';

// Query 6
MERGE (p:Person {name: 'G. S. N. Peiris'}) ON CREATE SET p.id = 'g_s_n_peiris';

// Query 7
MERGE (p:Person {name: 'C. S. W. De Costa'}) ON CREATE SET p.id = 'c_s_w_de_costa';

// Query 8
MERGE (p:Person {name: 'A. K. Gunaratne'}) ON CREATE SET p.id = 'a_k_gunaratne';

// Query 9
MERGE (p:Person {name: 'I. S. Jayasinghe'}) ON CREATE SET p.id = 'i_s_jayasinghe';

// Query 10
MERGE (p:Person {name: 'A. Hettiarachchy'}) ON CREATE SET p.id = 'a_hettiarachchy';

// Query 11
MERGE (p:Person {name: 'C. S. Hettiarachchi'}) ON CREATE SET p.id = 'c_s_hettiarachchi';

// Query 12
MERGE (p:Person {name: 'D. T. R. De Silva'}) ON CREATE SET p.id = 'd_t_r_de_silva';

// Query 13
MERGE (p:Person {name: 'I. M. P. Rupatunge'}) ON CREATE SET p.id = 'i_m_p_rupatunge';

// Query 14
MERGE (p:Person {name: 'Saraswathy Vasudevan'}) ON CREATE SET p.id = 'saraswathy_vasudevan';

// Query 15
MERGE (p:Person {name: 'Oshan Senanayake'}) ON CREATE SET p.id = 'oshan_senanayake';

// Query 16
MERGE (p:Person {name: 'Suranjan Praveen Perera'}) ON CREATE SET p.id = 'suranjan_praveen_perera';

// Query 17
MERGE (p:Person {name: 'Vigneswaramoorthy Sunilgavasker'}) ON CREATE SET p.id = 'vigneswaramoorthy_sunilgavasker';

// Query 18
MERGE (p:Person {name: 'Varatharajah Sivakumar'}) ON CREATE SET p.id = 'varatharajah_sivakumar';

// Query 19
MERGE (p:Person {name: 'Kuruppu Achchi Appuhamilage Yvonne Marian Silvya Perera'}) ON CREATE SET p.id = 'kuruppu_achchi_appuhamilage_yvonne_marian_silvya_perera';

// Query 20
MERGE (p:Person {name: 'Prashantha Wanigasuriya'}) ON CREATE SET p.id = 'prashantha_wanigasuriya';

// Query 21
MERGE (p:Person {name: 'Lilani Irandathie Perera'}) ON CREATE SET p.id = 'lilani_irandathie_perera';

// Query 22
// Step 4: HOLDS_POSITION Relationships;

// Query 23
MATCH (p:Person {name: 'E. H. Wijenaike'}), (c:Company {name: 'Central Industries'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 24
MATCH (p:Person {name: 'G. S. N. Peiris'}), (c:Company {name: 'Central Industries'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 25
MATCH (p:Person {name: 'C. S. W. De Costa'}), (c:Company {name: 'Central Industries'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 26
MATCH (p:Person {name: 'A. K. Gunaratne'}), (c:Company {name: 'Central Industries'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 27
MATCH (p:Person {name: 'I. S. Jayasinghe'}), (c:Company {name: 'Central Industries'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 28
MATCH (p:Person {name: 'A. Hettiarachchy'}), (c:Company {name: 'Central Industries'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 29
MATCH (p:Person {name: 'C. S. Hettiarachchi'}), (c:Company {name: 'Central Industries'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 30
MATCH (p:Person {name: 'D. T. R. De Silva'}), (c:Company {name: 'Central Industries'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-06-30');

// Query 31
MATCH (p:Person {name: 'I. M. P. Rupatunge'}), (c:Company {name: 'Central Industries'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-06-30');

// Query 32
// Step 5: Metrics;

// Query 33
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 39
// Step 6: HAS_METRIC Relationships;

// Query 40
MATCH (c:Company {name: 'Central Industries'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1159309000.0, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Central Industries'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 993155000.0, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Central Industries'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 124711000.0, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Central Industries'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 116422000.0, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Central Industries'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 160023000.0, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Central Industries'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 179044000.0, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Central Industries'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 111882000.0, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Central Industries'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 125636000.0, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Central Industries'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5288621000.0, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Central Industries'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4101564000.0, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Central Industries'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.62, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Central Industries'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.35, r.year = 2023;

// Query 52
// Step 7: Sectors;

// Query 53
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 54
// Step 8: IN_SECTOR Relationships;

// Query 55
MATCH (c:Company {name: 'Central Industries'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 56
// Step 9: Product nodes creation;

// Query 57
MERGE (p:Product {name: 'Water Management Products'}) ON CREATE SET p.id = 'water_management_products';

// Query 58
MERGE (p:Product {name: 'Electrical Products'}) ON CREATE SET p.id = 'electrical_products';

// Query 59
// Step 10: OFFERS Relationships;

// Query 60
MATCH (c:Company {name: 'Central Industries'}), (p:Product {name: 'Water Management Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 61
MATCH (c:Company {name: 'Central Industries'}), (p:Product {name: 'Electrical Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 62
// Step 11: Company-Company Relationships (OWNS);

// Query 63
MERGE (comp:Company {name: 'Central Finance'}) ON CREATE SET comp.id = 'central_finance';

// Query 64
MERGE (comp:Company {name: 'CF Insurance Brokers'}) ON CREATE SET comp.id = 'cf_insurance_brokers';

// Query 65
MERGE (comp:Company {name: 'Tivoli Lanka'}) ON CREATE SET comp.id = 'tivoli_lanka';

// Query 66
MERGE (comp:Company {name: 'Polymer Technologies'}) ON CREATE SET comp.id = 'polymer_technologies';

// Query 67
MATCH (parent:Company {name: 'Central Finance'}), (child:Company {name: 'Central Industries'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 44.06, r.as_of = date('2024-06-30');

// Query 68
MATCH (parent:Company {name: 'CF Insurance Brokers'}), (child:Company {name: 'Central Industries'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 5.71, r.as_of = date('2024-06-30');

// Query 69
MATCH (parent:Company {name: 'Tivoli Lanka'}), (child:Company {name: 'Central Industries'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 3.11, r.as_of = date('2024-06-30');

// Query 70
MATCH (parent:Company {name: 'Central Industries'}), (child:Company {name: 'Polymer Technologies'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-06-30');

// Query 71
// Step 12: Person-Company Relationships (OWNS_SHARES);

// Query 72
MATCH (p:Person {name: 'E. H. Wijenaike'}), (c:Company {name: 'Central Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 44081, r.as_of = date('2024-06-30');

// Query 73
MATCH (p:Person {name: 'G. S. N. Peiris'}), (c:Company {name: 'Central Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 6, r.as_of = date('2024-06-30');

// Query 74
MATCH (p:Person {name: 'Saraswathy Vasudevan'}), (c:Company {name: 'Central Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 500000, r.pct = 2.07, r.as_of = date('2024-06-30');

// Query 75
MATCH (p:Person {name: 'Oshan Senanayake'}), (c:Company {name: 'Central Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 439042, r.pct = 1.81, r.as_of = date('2024-06-30');

// Query 76
MATCH (p:Person {name: 'Suranjan Praveen Perera'}), (c:Company {name: 'Central Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 296853, r.pct = 1.23, r.as_of = date('2024-06-30');

// Query 77
MATCH (p:Person {name: 'Vigneswaramoorthy Sunilgavasker'}), (c:Company {name: 'Central Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 274737, r.pct = 1.14, r.as_of = date('2024-06-30');

// Query 78
MATCH (p:Person {name: 'Varatharajah Sivakumar'}), (c:Company {name: 'Central Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 217754, r.pct = 0.90, r.as_of = date('2024-06-30');

// Query 79
MATCH (p:Person {name: 'Kuruppu Achchi Appuhamilage Yvonne Marian Silvya Perera'}), (c:Company {name: 'Central Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 176616, r.pct = 0.73, r.as_of = date('2024-06-30');

// Query 80
MATCH (p:Person {name: 'Prashantha Wanigasuriya'}), (c:Company {name: 'Central Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 175286, r.pct = 0.72, r.as_of = date('2024-06-30');

// Query 81
MATCH (p:Person {name: 'Lilani Irandathie Perera'}), (c:Company {name: 'Central Industries'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 143257, r.pct = 0.59, r.as_of = date('2024-06-30');

// Total queries: 81
// Generated on: 2025-10-03T01:48:51.233229
