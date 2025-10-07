// Query 1
// Step 1: Main Company Node Creation;

// Query 2
MERGE (c:Company {name: 'Swisstek Ceylon'}) ON CREATE SET c.id = 'swisstek_ceylon', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'Swisstek Aluminium'}) ON CREATE SET c.id = 'swisstek_aluminium', c.region = 'Sri Lanka';

// Query 4
MERGE (c:Company {name: 'Colonial Motors Ceylon'}) ON CREATE SET c.id = 'colonial_motors_ceylon', c.region = 'Sri Lanka';

// Query 5
MERGE (c:Company {name: 'ACL Plastics'}) ON CREATE SET c.id = 'acl_plastics', c.region = 'Sri Lanka';

// Query 6
MERGE (c:Company {name: 'UB Finance'}) ON CREATE SET c.id = 'ub_finance', c.region = 'Sri Lanka';

// Query 7
MERGE (c:Company {name: 'C M Holdings'}) ON CREATE SET c.id = 'c_m_holdings', c.region = 'Sri Lanka';

// Query 8
MERGE (c:Company {name: 'Lanka Realty Investments'}) ON CREATE SET c.id = 'lanka_realty_investments', c.region = 'Sri Lanka';

// Query 9
// Step 2: Auditor Node Creation and AUDITED_BY Relationship - No auditor firm found matching hardcoded list.;

// Query 10
// Step 3: Person Nodes Creation;

// Query 11
MERGE (p:Person {name: 'J. A. P. M. Jayasekera'}) ON CREATE SET p.id = 'j_a_p_m_jayasekera';

// Query 12
MERGE (p:Person {name: 'L. A. D. N. Perera'}) ON CREATE SET p.id = 'l_a_d_n_perera';

// Query 13
MERGE (p:Person {name: 'S. H. Amarasekera'}) ON CREATE SET p.id = 's_h_amarasekera';

// Query 14
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 15
MERGE (p:Person {name: 'A. M. Weerasinghe'}) ON CREATE SET p.id = 'a_m_weerasinghe';

// Query 16
MERGE (p:Person {name: 'J. K. A. Sirinatha'}) ON CREATE SET p.id = 'j_k_a_sirinatha';

// Query 17
MERGE (p:Person {name: 'A. S. Mahendra'}) ON CREATE SET p.id = 'a_s_mahendra';

// Query 18
MERGE (p:Person {name: 'K. D. G. Gunaratne'}) ON CREATE SET p.id = 'k_d_g_gunaratne';

// Query 19
MERGE (p:Person {name: 'C. U. Weerawardena'}) ON CREATE SET p.id = 'c_u_weerawardena';

// Query 20
MERGE (p:Person {name: 'R. M. M. J. Ratnayake'}) ON CREATE SET p.id = 'r_m_m_j_ratnayake';

// Query 21
MERGE (p:Person {name: 'B. D. S. Mendis'}) ON CREATE SET p.id = 'b_d_s_mendis';

// Query 22
MERGE (p:Person {name: 'L. N. de Silva Wijeyeratne'}) ON CREATE SET p.id = 'l_n_de_silva_wijeyeratne';

// Query 23
// Step 4: HOLDS_POSITION Relationships;

// Query 24
MATCH (p:Person {name: 'J. A. P. M. Jayasekera'}), (c:Company {name: 'Swisstek Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2025-03-31');

// Query 25
MATCH (p:Person {name: 'L. A. D. N. Perera'}), (c:Company {name: 'Swisstek Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2025-05-21');

// Query 26
MATCH (p:Person {name: 'L. A. D. N. Perera'}), (c:Company {name: 'Swisstek Aluminium'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2025-05-21');

// Query 27
MATCH (p:Person {name: 'S. H. Amarasekera'}), (c:Company {name: 'Swisstek Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-03-31');

// Query 28
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'Swisstek Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 29
MATCH (p:Person {name: 'A. M. Weerasinghe'}), (c:Company {name: 'Swisstek Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 30
MATCH (p:Person {name: 'J. K. A. Sirinatha'}), (c:Company {name: 'Swisstek Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 31
MATCH (p:Person {name: 'A. S. Mahendra'}), (c:Company {name: 'Swisstek Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 32
MATCH (p:Person {name: 'K. D. G. Gunaratne'}), (c:Company {name: 'Swisstek Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 33
MATCH (p:Person {name: 'C. U. Weerawardena'}), (c:Company {name: 'Swisstek Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 34
MATCH (p:Person {name: 'R. M. M. J. Ratnayake'}), (c:Company {name: 'Swisstek Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-01-01');

// Query 35
MATCH (p:Person {name: 'R. M. M. J. Ratnayake'}), (c:Company {name: 'Colonial Motors Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2025-03-31');

// Query 36
MATCH (p:Person {name: 'R. M. M. J. Ratnayake'}), (c:Company {name: 'ACL Plastics'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 37
MATCH (p:Person {name: 'R. M. M. J. Ratnayake'}), (c:Company {name: 'UB Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 38
MATCH (p:Person {name: 'R. M. M. J. Ratnayake'}), (c:Company {name: 'C M Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 39
MATCH (p:Person {name: 'R. M. M. J. Ratnayake'}), (c:Company {name: 'Lanka Realty Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-03-31');

// Query 40
MATCH (p:Person {name: 'B. D. S. Mendis'}), (c:Company {name: 'Swisstek Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2025-03-31');

// Query 41
MATCH (p:Person {name: 'L. N. de Silva Wijeyeratne'}), (c:Company {name: 'Swisstek Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-12-31');

// Query 42
// Step 5: Metric Nodes Creation;

// Query 43
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 50
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 51
// Step 6: HAS_METRIC Relationships;

// Query 52
MATCH (c:Company {name: 'Swisstek Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15269000000.0, r.year = 2025;

// Query 53
MATCH (c:Company {name: 'Swisstek Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10079000000.0, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Swisstek Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 929590000.0, r.year = 2025;

// Query 55
MATCH (c:Company {name: 'Swisstek Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -112650000.0, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Swisstek Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1872340000.0, r.year = 2025;

// Query 57
MATCH (c:Company {name: 'Swisstek Ceylon'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 778030000.0, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Swisstek Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1251000000.0, r.year = 2025;

// Query 59
MATCH (c:Company {name: 'Swisstek Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -77000000.0, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Swisstek Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13061000000.0, r.year = 2025;

// Query 61
MATCH (c:Company {name: 'Swisstek Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11081000000.0, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Swisstek Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3677877000.0, r.year = 2025;

// Query 63
MATCH (c:Company {name: 'Swisstek Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2398173000.0, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'Swisstek Ceylon'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 32.0, r.year = 2025;

// Query 65
MATCH (c:Company {name: 'Swisstek Ceylon'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3.0, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'Swisstek Ceylon'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.44, r.year = 2025;

// Query 67
MATCH (c:Company {name: 'Swisstek Ceylon'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.41, r.year = 2024;

// Query 68
// Step 7: Sector Nodes Creation;

// Query 69
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 70
MERGE (s:Sector {name: 'Consumer Durables and Apparel'}) ON CREATE SET s.id = 'consumer_durables_and_apparel';

// Query 71
// Step 8: IN_SECTOR Relationships;

// Query 72
MATCH (c:Company {name: 'Swisstek Ceylon'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 73
MATCH (c:Company {name: 'Swisstek Ceylon'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
// Step 9: Product Nodes Creation;

// Query 75
MERGE (p:Product {name: 'Tile Adhesive'}) ON CREATE SET p.id = 'tile_adhesive';

// Query 76
MERGE (p:Product {name: 'Grout'}) ON CREATE SET p.id = 'grout';

// Query 77
MERGE (p:Product {name: 'Skim Coat'}) ON CREATE SET p.id = 'skim_coat';

// Query 78
MERGE (p:Product {name: 'Water Proofer'}) ON CREATE SET p.id = 'water_proofer';

// Query 79
MERGE (p:Product {name: 'Grout Sealer'}) ON CREATE SET p.id = 'grout_sealer';

// Query 80
MERGE (p:Product {name: 'Swissparkett Wooden Flooring'}) ON CREATE SET p.id = 'swissparkett_wooden_flooring';

// Query 81
MERGE (p:Product {name: 'Zinc Aluminium Products'}) ON CREATE SET p.id = 'zinc_aluminium_products';

// Query 82
MERGE (p:Product {name: 'Aluminium Products'}) ON CREATE SET p.id = 'aluminium_products';

// Query 83
MERGE (p:Product {name: 'Mortar'}) ON CREATE SET p.id = 'mortar';

// Query 84
MERGE (p:Product {name: 'Cement'}) ON CREATE SET p.id = 'cement';

// Query 85
MERGE (p:Product {name: 'Epoxy IDC'}) ON CREATE SET p.id = 'epoxy_idc';

// Query 86
MERGE (p:Product {name: 'DIY Products'}) ON CREATE SET p.id = 'diy_products';

// Query 87
// Step 10: OFFERS Relationships;

// Query 88
MATCH (c:Company {name: 'Swisstek Ceylon'}), (p:Product {name: 'Tile Adhesive'}) MERGE (c)-[:OFFERS]->(p) ON CREATE SET p.status = 'active';

// Query 89
MATCH (c:Company {name: 'Swisstek Ceylon'}), (p:Product {name: 'Grout'}) MERGE (c)-[:OFFERS]->(p) ON CREATE SET p.status = 'active';

// Query 90
MATCH (c:Company {name: 'Swisstek Ceylon'}), (p:Product {name: 'Skim Coat'}) MERGE (c)-[:OFFERS]->(p) ON CREATE SET p.status = 'active';

// Query 91
MATCH (c:Company {name: 'Swisstek Ceylon'}), (p:Product {name: 'Water Proofer'}) MERGE (c)-[:OFFERS]->(p) ON CREATE SET p.status = 'active';

// Query 92
MATCH (c:Company {name: 'Swisstek Ceylon'}), (p:Product {name: 'Grout Sealer'}) MERGE (c)-[:OFFERS]->(p) ON CREATE SET p.status = 'active';

// Query 93
MATCH (c:Company {name: 'Swisstek Ceylon'}), (p:Product {name: 'Swissparkett Wooden Flooring'}) MERGE (c)-[:OFFERS]->(p) ON CREATE SET p.status = 'active';

// Query 94
MATCH (c:Company {name: 'Swisstek Ceylon'}), (p:Product {name: 'Zinc Aluminium Products'}) MERGE (c)-[:OFFERS]->(p) ON CREATE SET p.status = 'active';

// Query 95
MATCH (c:Company {name: 'Swisstek Ceylon'}), (p:Product {name: 'Aluminium Products'}) MERGE (c)-[:OFFERS]->(p) ON CREATE SET p.status = 'active';

// Query 96
MATCH (c:Company {name: 'Swisstek Ceylon'}), (p:Product {name: 'Mortar'}) MERGE (c)-[:OFFERS]->(p) ON CREATE SET p.status = 'active';

// Query 97
MATCH (c:Company {name: 'Swisstek Ceylon'}), (p:Product {name: 'Cement'}) MERGE (c)-[:OFFERS]->(p) ON CREATE SET p.status = 'planned';

// Query 98
MATCH (c:Company {name: 'Swisstek Ceylon'}), (p:Product {name: 'Epoxy IDC'}) MERGE (c)-[:OFFERS]->(p) ON CREATE SET p.status = 'active';

// Query 99
MATCH (c:Company {name: 'Swisstek Ceylon'}), (p:Product {name: 'DIY Products'}) MERGE (c)-[:OFFERS]->(p) ON CREATE SET p.status = 'active';

// Total queries: 99
// Generated on: 2025-10-02T23:52:01.056529
