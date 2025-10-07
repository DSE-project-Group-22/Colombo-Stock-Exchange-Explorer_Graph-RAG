// Query 1
// Step 1: Main Company Node;

// Query 2
MERGE (c:Company {name: 'Kelani Valley Plantations'}) ON CREATE SET c.id = 'kelani_valley_plantations', c.founded_on = date('1992-06-18'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor Node and AUDITED_BY Relationship;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 6
// Step 3: Person Nodes - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'A.M. Pandithage'}) ON CREATE SET p.id = 'a_m_pandithage';

// Query 8
MERGE (p:Person {name: 'W.G.R. Rajadurai'}) ON CREATE SET p.id = 'w_g_r_rajadurai';

// Query 9
MERGE (p:Person {name: 'A. Weerakoon'}) ON CREATE SET p.id = 'a_weerakoon';

// Query 10
MERGE (p:Person {name: 'S.C. Ganegoda'}) ON CREATE SET p.id = 's_c_ganegoda';

// Query 11
MERGE (p:Person {name: 'F. Mohideen'}) ON CREATE SET p.id = 'f_mohideen';

// Query 12
MERGE (p:Person {name: 'C.V. Cabraal'}) ON CREATE SET p.id = 'c_v_cabraal';

// Query 13
MERGE (p:Person {name: 'N. Ekanayake'}) ON CREATE SET p.id = 'n_ekanayake';

// Query 14
MERGE (p:Person {name: 'S.P. Peiris'}) ON CREATE SET p.id = 's_p_peiris';

// Query 15
MERGE (p:Person {name: 'M.C.B. Talwatte'}) ON CREATE SET p.id = 'm_c_b_talwatte';

// Query 16
MERGE (p:Person {name: 'S. Amarasekera'}) ON CREATE SET p.id = 's_amarasekera';

// Query 17
MERGE (p:Person {name: 'Vidura Weerabahu'}) ON CREATE SET p.id = 'vidura_weerabahu';

// Query 18
MERGE (p:Person {name: 'Viren Ruberu'}) ON CREATE SET p.id = 'viren_ruberu';

// Query 19
MERGE (p:Person {name: 'Ranil Fernando'}) ON CREATE SET p.id = 'ranil_fernando';

// Query 20
MERGE (p:Person {name: 'Rajiv Bandaranayake'}) ON CREATE SET p.id = 'rajiv_bandaranayake';

// Query 21
MERGE (p:Person {name: 'Anuruddha Gamage'}) ON CREATE SET p.id = 'anuruddha_gamage';

// Query 22
MERGE (p:Person {name: 'Madhawa Wickramaratne'}) ON CREATE SET p.id = 'madhawa_wickramaratne';

// Query 23
MERGE (p:Person {name: 'Senaka Fernando'}) ON CREATE SET p.id = 'senaka_fernando';

// Query 24
MERGE (p:Person {name: 'Dilum Pathirana'}) ON CREATE SET p.id = 'dilum_pathirana';

// Query 25
MERGE (p:Person {name: 'Indra Gallearachchi'}) ON CREATE SET p.id = 'indra_gallearachchi';

// Query 26
MERGE (p:Person {name: 'Anura Senanayake'}) ON CREATE SET p.id = 'anura_senanayake';

// Query 27
MERGE (p:Person {name: 'Eranda Welikala'}) ON CREATE SET p.id = 'eranda_welikala';

// Query 28
MERGE (p:Person {name: 'Buddika Attanayake'}) ON CREATE SET p.id = 'buddika_attanayake';

// Query 29
MERGE (p:Person {name: 'Udeni Wanigathunge'}) ON CREATE SET p.id = 'udeni_wanigathunge';

// Query 30
MERGE (p:Person {name: 'Senaka Dayananda'}) ON CREATE SET p.id = 'senaka_dayananda';

// Query 31
MERGE (p:Person {name: 'Susantha Wijesinghe'}) ON CREATE SET p.id = 'susantha_wijesinghe';

// Query 32
MERGE (p:Person {name: 'Kenneth Alles'}) ON CREATE SET p.id = 'kenneth_alles';

// Query 33
// Step 4: HOLDS_POSITION Relationships;

// Query 34
MATCH (p:Person {name: 'A.M. Pandithage'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'W.G.R. Rajadurai'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 36
MATCH (p:Person {name: 'A. Weerakoon'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 37
MATCH (p:Person {name: 'A. Weerakoon'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 38
MATCH (p:Person {name: 'S.C. Ganegoda'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 39
MATCH (p:Person {name: 'F. Mohideen'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 40
MATCH (p:Person {name: 'C.V. Cabraal'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 41
MATCH (p:Person {name: 'N. Ekanayake'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 42
MATCH (p:Person {name: 'S.P. Peiris'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-01-03');

// Query 43
MATCH (p:Person {name: 'M.C.B. Talwatte'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-03');

// Query 44
MATCH (p:Person {name: 'S. Amarasekera'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-01-03');

// Query 45
MATCH (p:Person {name: 'Vidura Weerabahu'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 46
MATCH (p:Person {name: 'Viren Ruberu'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 47
MATCH (p:Person {name: 'Ranil Fernando'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 48
MATCH (p:Person {name: 'Rajiv Bandaranayake'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 49
MATCH (p:Person {name: 'Anuruddha Gamage'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-03-31');

// Query 50
MATCH (p:Person {name: 'Madhawa Wickramaratne'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-03-31');

// Query 51
MATCH (p:Person {name: 'Senaka Fernando'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-03-31');

// Query 52
MATCH (p:Person {name: 'Dilum Pathirana'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-03-31');

// Query 53
MATCH (p:Person {name: 'Indra Gallearachchi'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-03-31');

// Query 54
MATCH (p:Person {name: 'Anura Senanayake'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager', r.as_of = date('2024-03-31');

// Query 55
MATCH (p:Person {name: 'Eranda Welikala'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 56
MATCH (p:Person {name: 'Buddika Attanayake'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 57
MATCH (p:Person {name: 'Udeni Wanigathunge'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 58
MATCH (p:Person {name: 'Senaka Dayananda'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 59
MATCH (p:Person {name: 'Susantha Wijesinghe'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 60
MATCH (p:Person {name: 'Kenneth Alles'}), (c:Company {name: 'Kelani Valley Plantations'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 61
// Step 5: Metric Nodes;

// Query 62
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 63
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 64
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 65
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 66
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 67
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 68
// Step 6: HAS_METRIC Relationships;

// Query 69
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7432009000, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8389910000, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1315970000, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2538536000, r.year = 2023;

// Query 73
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 898978000, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1784855000, r.year = 2023;

// Query 75
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1165068000, r.year = 2024;

// Query 76
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2369973000, r.year = 2023;

// Query 77
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12511175000, r.year = 2024;

// Query 78
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10752396000, r.year = 2023;

// Query 79
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5541046000, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5132711000, r.year = 2023;

// Query 81
// Step 7: Sector Nodes;

// Query 82
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 83
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 84
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 85
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 86
// Step 8: IN_SECTOR Relationships;

// Query 87
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 88
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 89
// Step 9: Product Nodes;

// Query 90
MERGE (p:Product {name: 'Tea'}) ON CREATE SET p.id = 'tea';

// Query 91
MERGE (p:Product {name: 'Rubber'}) ON CREATE SET p.id = 'rubber';

// Query 92
MERGE (p:Product {name: 'Fruity Tea Range'}) ON CREATE SET p.id = 'fruity_tea_range';

// Query 93
MERGE (p:Product {name: 'Sole Crepe'}) ON CREATE SET p.id = 'sole_crepe';

// Query 94
MERGE (p:Product {name: 'Latex Crepe'}) ON CREATE SET p.id = 'latex_crepe';

// Query 95
MERGE (p:Product {name: 'Centrifuge Latex'}) ON CREATE SET p.id = 'centrifuge_latex';

// Query 96
MERGE (p:Product {name: 'Hydropower'}) ON CREATE SET p.id = 'hydropower';

// Query 97
MERGE (p:Product {name: 'Bulk and Retail Packed Tea'}) ON CREATE SET p.id = 'bulk_and_retail_packed_tea';

// Query 98
// Step 10: OFFERS Relationships;

// Query 99
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (p:Product {name: 'Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (p:Product {name: 'Rubber'}) MERGE (c)-[:OFFERS]->(p);

// Query 101
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (p:Product {name: 'Fruity Tea Range'}) MERGE (c)-[:OFFERS]->(p);

// Query 102
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (p:Product {name: 'Sole Crepe'}) MERGE (c)-[:OFFERS]->(p);

// Query 103
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (p:Product {name: 'Latex Crepe'}) MERGE (c)-[:OFFERS]->(p);

// Query 104
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (p:Product {name: 'Centrifuge Latex'}) MERGE (c)-[:OFFERS]->(p);

// Query 105
// Step 11: Other Company Nodes and Relationships;

// Query 106
MERGE (c:Company {name: 'Hayleys'}) ON CREATE SET c.id = 'hayleys';

// Query 107
MATCH (manager:Company {name: 'Hayleys'}), (managed:Company {name: 'Kelani Valley Plantations'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.as_of = date('2024-03-31');

// Query 108
MERGE (c:Company {name: 'Kalupahana Power Company'}) ON CREATE SET c.id = 'kalupahana_power_company';

// Query 109
MATCH (c:Company {name: 'Kalupahana Power Company'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 110
MATCH (c:Company {name: 'Kalupahana Power Company'}), (p:Product {name: 'Hydropower'}) MERGE (c)-[:OFFERS]->(p);

// Query 111
MERGE (c:Company {name: 'Mabroc Teas'}) ON CREATE SET c.id = 'mabroc_teas';

// Query 112
MATCH (c:Company {name: 'Mabroc Teas'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 113
MATCH (c:Company {name: 'Mabroc Teas'}), (p:Product {name: 'Bulk and Retail Packed Tea'}) MERGE (c)-[:OFFERS]->(p);

// Query 114
MERGE (c:Company {name: 'Kelani Valley Resorts'}) ON CREATE SET c.id = 'kelani_valley_resorts';

// Query 115
MATCH (c:Company {name: 'Kelani Valley Resorts'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 116
MERGE (c:Company {name: 'Martin Bauer Hayleys'}) ON CREATE SET c.id = 'martin_bauer_hayleys';

// Total queries: 116
// Generated on: 2025-10-03T03:36:55.276840
