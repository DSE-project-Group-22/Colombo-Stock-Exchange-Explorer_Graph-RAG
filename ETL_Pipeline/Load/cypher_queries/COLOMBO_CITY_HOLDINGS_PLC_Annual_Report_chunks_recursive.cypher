// Query 1
// Step 1: Main Company Node Creation;

// Query 2
MERGE (c:Company {name: 'Ambeon Capital'}) ON CREATE SET c.id = 'ambeon_capital', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'Ambeon Holdings'}) ON CREATE SET c.id = 'ambeon_holdings', c.region = 'Sri Lanka';

// Query 4
MERGE (c:Company {name: 'Dankotuwa Porcelain'}) ON CREATE SET c.id = 'dankotuwa_porcelain', c.region = 'Sri Lanka';

// Query 5
MERGE (c:Company {name: 'Royal Fernwood Porcelain'}) ON CREATE SET c.id = 'royal_fernwood_porcelain', c.region = 'Sri Lanka';

// Query 6
MERGE (c:Company {name: 'Colombo City Holdings'}) ON CREATE SET c.id = 'colombo_city_holdings', c.region = 'Sri Lanka';

// Query 7
MERGE (c:Company {name: 'Lexinton Holdings'}) ON CREATE SET c.id = 'lexinton_holdings', c.region = 'Sri Lanka';

// Query 8
MERGE (c:Company {name: 'Lexinton Resorts'}) ON CREATE SET c.id = 'lexinton_resorts', c.region = 'Sri Lanka';

// Query 9
MERGE (c:Company {name: 'Heron Agro Products'}) ON CREATE SET c.id = 'heron_agro_products', c.region = 'Sri Lanka';

// Query 10
MERGE (c:Company {name: 'MillenniumIT ESP'}) ON CREATE SET c.id = 'millenniumit_esp', c.region = 'Sri Lanka';

// Query 11
MERGE (c:Company {name: 'Eon Tec'}) ON CREATE SET c.id = 'eon_tec', c.region = 'Sri Lanka';

// Query 12
MERGE (c:Company {name: 'Olancom'}) ON CREATE SET c.id = 'olancom', c.region = 'Sri Lanka';

// Query 13
MERGE (c:Company {name: 'Ambeon Securities'}) ON CREATE SET c.id = 'ambeon_securities', c.region = 'Sri Lanka';

// Query 14
MERGE (c:Company {name: 'Taprobane Investments'}) ON CREATE SET c.id = 'taprobane_investments', c.region = 'Sri Lanka';

// Query 15
MERGE (c:Company {name: 'Taprobane Wealth Plus'}) ON CREATE SET c.id = 'taprobane_wealth_plus', c.region = 'Sri Lanka';

// Query 16
MERGE (c:Company {name: 'Taprobane Capital Plus'}) ON CREATE SET c.id = 'taprobane_capital_plus', c.region = 'Sri Lanka';

// Query 17
MERGE (c:Company {name: 'Lexinton Financial Services'}) ON CREATE SET c.id = 'lexinton_financial_services', c.region = 'Sri Lanka';

// Query 18
MERGE (c:Company {name: 'Sherwood Capital'}) ON CREATE SET c.id = 'sherwood_capital', c.region = 'Sri Lanka';

// Query 19
MERGE (c:Company {name: 'Ambeon Consolidated'}) ON CREATE SET c.id = 'ambeon_consolidated', c.region = 'Sri Lanka';

// Query 20
MERGE (c:Company {name: 'ARRC Capital'}) ON CREATE SET c.id = 'arrc_capital', c.region = 'Sri Lanka';

// Query 21
// Step 2: Auditor Node Creation;

// Query 22
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 23
// Step 3: AUDITED_BY Relationship;

// Query 24
MATCH (c:Company {name: 'Ambeon Capital'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 25
// Step 4: Person Nodes Creation;

// Query 26
MERGE (p:Person {name: 'Sanjeev Gardiner'}) ON CREATE SET p.id = 'sanjeev_gardiner';

// Query 27
MERGE (p:Person {name: 'Ajith Devasurendra'}) ON CREATE SET p.id = 'ajith_devasurendra';

// Query 28
MERGE (p:Person {name: 'Harsha Amarasekara'}) ON CREATE SET p.id = 'harsha_amarasekara';

// Query 29
MERGE (p:Person {name: 'Ranil Pathirana'}) ON CREATE SET p.id = 'ranil_pathirana';

// Query 30
MERGE (p:Person {name: 'Yudhishtran Kanagasabai'}) ON CREATE SET p.id = 'yudhishtran_kanagasabai';

// Query 31
MERGE (p:Person {name: 'Sajeeva Narangoda'}) ON CREATE SET p.id = 'sajeeva_narangoda';

// Query 32
MERGE (p:Person {name: 'Dilush Perera'}) ON CREATE SET p.id = 'dilush_perera';

// Query 33
MERGE (p:Person {name: 'Nirmal Cooke'}) ON CREATE SET p.id = 'nirmal_cooke';

// Query 34
MERGE (p:Person {name: 'R P Sugathadasa'}) ON CREATE SET p.id = 'r_p_sugathadasa';

// Query 35
MERGE (p:Person {name: 'D M Weerasekare'}) ON CREATE SET p.id = 'd_m_weerasekare';

// Query 36
// Step 5: HOLDS_POSITION Relationships;

// Query 37
MATCH (p:Person {name: 'Sanjeev Gardiner'}), (c:Company {name: 'Ambeon Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 38
MATCH (p:Person {name: 'Sanjeev Gardiner'}), (c:Company {name: 'Ambeon Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 39
MATCH (p:Person {name: 'Ajith Devasurendra'}), (c:Company {name: 'Ambeon Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 40
MATCH (p:Person {name: 'Ajith Devasurendra'}), (c:Company {name: 'Ambeon Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 41
MATCH (p:Person {name: 'Harsha Amarasekara'}), (c:Company {name: 'Ambeon Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 42
MATCH (p:Person {name: 'Ranil Pathirana'}), (c:Company {name: 'Ambeon Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 43
MATCH (p:Person {name: 'Yudhishtran Kanagasabai'}), (c:Company {name: 'Ambeon Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 44
MATCH (p:Person {name: 'Sajeeva Narangoda'}), (c:Company {name: 'Ambeon Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 45
MATCH (p:Person {name: 'Sajeeva Narangoda'}), (c:Company {name: 'Ambeon Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 46
MATCH (p:Person {name: 'Dilush Perera'}), (c:Company {name: 'Ambeon Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-12-08');

// Query 47
MATCH (p:Person {name: 'Nirmal Cooke'}), (c:Company {name: 'Ambeon Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-12-08');

// Query 48
MATCH (p:Person {name: 'R P Sugathadasa'}), (c:Company {name: 'Ambeon Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-06-07');

// Query 49
MATCH (p:Person {name: 'D M Weerasekare'}), (c:Company {name: 'Ambeon Capital'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-07-30');

// Query 50
// Step 6: Metric Nodes Creation;

// Query 51
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 54
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 55
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Ratio';

// Query 57
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 58
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 59
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 60
// Step 7: HAS_METRIC Relationships (Ambeon Capital - Group figures);

// Query 61
MATCH (c:Company {name: 'Ambeon Capital'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16969835514, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Ambeon Capital'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20658634036, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Ambeon Capital'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3064604666, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'Ambeon Capital'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1431828783, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'Ambeon Capital'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2547480785, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'Ambeon Capital'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 841049839, r.year = 2023;

// Query 67
MATCH (c:Company {name: 'Ambeon Capital'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27.15, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'Ambeon Capital'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.46, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'Ambeon Capital'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.61, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Ambeon Capital'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.17, r.year = 2023;

// Query 71
MATCH (c:Company {name: 'Ambeon Capital'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.55, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'Ambeon Capital'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.18, r.year = 2023;

// Query 73
MATCH (c:Company {name: 'Ambeon Capital'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.31, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'Ambeon Capital'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.16, r.year = 2023;

// Query 75
MATCH (c:Company {name: 'Ambeon Capital'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21629664453, r.year = 2024;

// Query 76
MATCH (c:Company {name: 'Ambeon Capital'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25393036685, r.year = 2023;

// Query 77
MATCH (c:Company {name: 'Ambeon Capital'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9382567978, r.year = 2024;

// Query 78
MATCH (c:Company {name: 'Ambeon Capital'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8039551779, r.year = 2023;

// Query 79
// Step 8: Sector Nodes Creation;

// Query 80
MERGE (s:Sector {name: 'Consumer Durables and Apparel'}) ON CREATE SET s.id = 'consumer_durables_and_apparel';

// Query 81
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 82
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 83
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 84
// Step 9: IN_SECTOR Relationships;

// Query 85
MATCH (c:Company {name: 'Ambeon Capital'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 86
MATCH (c:Company {name: 'Ambeon Capital'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 87
MATCH (c:Company {name: 'Ambeon Capital'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 88
MATCH (c:Company {name: 'Ambeon Capital'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 89
MATCH (c:Company {name: 'Dankotuwa Porcelain'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 90
MATCH (c:Company {name: 'Royal Fernwood Porcelain'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 91
MATCH (c:Company {name: 'Colombo City Holdings'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 92
MATCH (c:Company {name: 'Lexinton Holdings'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 93
MATCH (c:Company {name: 'Lexinton Resorts'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 94
MATCH (c:Company {name: 'Heron Agro Products'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 95
MATCH (c:Company {name: 'MillenniumIT ESP'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 96
MATCH (c:Company {name: 'Eon Tec'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 97
MATCH (c:Company {name: 'Ambeon Holdings'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 98
MATCH (c:Company {name: 'Olancom'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 99
MATCH (c:Company {name: 'Ambeon Securities'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 100
MATCH (c:Company {name: 'Taprobane Investments'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 101
MATCH (c:Company {name: 'Taprobane Wealth Plus'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 102
MATCH (c:Company {name: 'Taprobane Capital Plus'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 103
MATCH (c:Company {name: 'Lexinton Financial Services'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 104
MATCH (c:Company {name: 'Sherwood Capital'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 105
// Step 10: Company-Company Relationships;

// Query 106
MATCH (parent:Company {name: 'Ambeon Capital'}), (managed:Company {name: 'Ambeon Holdings'}) MERGE (parent)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'main business subsidiary', r.as_of = date('2024-03-31');

// Query 107
MATCH (parent:Company {name: 'Ambeon Holdings'}), (child:Company {name: 'Dankotuwa Porcelain'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 22.41, r.as_of = date('2024-03-31');

// Total queries: 107
// Generated on: 2025-10-03T02:41:21.887784
