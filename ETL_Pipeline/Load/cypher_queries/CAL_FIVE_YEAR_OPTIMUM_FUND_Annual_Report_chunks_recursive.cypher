// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'CAL Five Year Optimum Fund'}) ON CREATE SET c.id = 'cal_five_year_optimum_fund', c.region = 'Sri Lanka', c.founded_on = date('2023-06-07'), c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 1: Other Companies;

// Query 4
MERGE (c:Company {name: 'Capital Alliance Investments'}) ON CREATE SET c.id = 'capital_alliance_investments', c.region = 'Sri Lanka';

// Query 5
MERGE (c:Company {name: 'Hatton National Bank'}) ON CREATE SET c.id = 'hatton_national_bank', c.region = 'Sri Lanka';

// Query 6
MERGE (c:Company {name: 'NDB Wealth Management'}) ON CREATE SET c.id = 'ndb_wealth_management', c.region = 'Sri Lanka';

// Query 7
MERGE (c:Company {name: 'First Capital Asset Management'}) ON CREATE SET c.id = 'first_capital_asset_management', c.region = 'Sri Lanka';

// Query 8
MERGE (c:Company {name: 'Ceybank Asset Management'}) ON CREATE SET c.id = 'ceybank_asset_management', c.region = 'Sri Lanka';

// Query 9
MERGE (c:Company {name: 'JB Financial'}) ON CREATE SET c.id = 'jb_financial', c.region = 'Sri Lanka';

// Query 10
MERGE (c:Company {name: 'Assetline Capital'}) ON CREATE SET c.id = 'assetline_capital', c.region = 'Sri Lanka';

// Query 11
MERGE (c:Company {name: 'Ceylon Asset Management'}) ON CREATE SET c.id = 'ceylon_asset_management', c.region = 'Sri Lanka';

// Query 12
MERGE (c:Company {name: 'Asia Securities Wealth Management'}) ON CREATE SET c.id = 'asia_securities_wealth_management', c.region = 'Sri Lanka';

// Query 13
MERGE (c:Company {name: 'Senfin Asset Management'}) ON CREATE SET c.id = 'senfin_asset_management', c.region = 'Sri Lanka';

// Query 14
MERGE (c:Company {name: 'CT CLSA Asset Management'}) ON CREATE SET c.id = 'ct_clsa_asset_management', c.region = 'Sri Lanka';

// Query 15
MERGE (c:Company {name: 'National Asset Management'}) ON CREATE SET c.id = 'national_asset_management', c.region = 'Sri Lanka';

// Query 16
MERGE (c:Company {name: 'Asset Trust Management'}) ON CREATE SET c.id = 'asset_trust_management', c.region = 'Sri Lanka';

// Query 17
MERGE (c:Company {name: 'LYNEAR Wealth Management'}) ON CREATE SET c.id = 'lynear_wealth_management', c.region = 'Sri Lanka';

// Query 18
MERGE (c:Company {name: 'Softlogic Asset Management'}) ON CREATE SET c.id = 'softlogic_asset_management', c.region = 'Sri Lanka';

// Query 19
MERGE (c:Company {name: 'Premier Wealth Management'}) ON CREATE SET c.id = 'premier_wealth_management', c.region = 'Sri Lanka';

// Query 20
MERGE (c:Company {name: 'ArpicoAtaraxia Asset Management'}) ON CREATE SET c.id = 'arpicoataraxia_asset_management', c.region = 'Sri Lanka';

// Query 21
// Step 2: Auditor;

// Query 22
MERGE (a:Auditor:Company {name: 'BDO Partners'}) ON CREATE SET a.id = 'bdo_partners', a.type = 'Auditing Firm';

// Query 23
// Step 3: AUDITED_BY Relationship;

// Query 24
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (a:Auditor {name: 'BDO Partners'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 25
// Step 4: People - Directors and Executives;

// Query 26
MERGE (p:Person {name: 'Kanishke Mannakkara'}) ON CREATE SET p.id = 'kanishke_mannakkara';

// Query 27
MERGE (p:Person {name: 'Sharmali Perera'}) ON CREATE SET p.id = 'sharmali_perera';

// Query 28
MERGE (p:Person {name: 'M De Zoysa'}) ON CREATE SET p.id = 'm_de_zoysa';

// Query 29
MERGE (p:Person {name: 'H M S Perera'}) ON CREATE SET p.id = 'h_m_s_perera';

// Query 30
MERGE (p:Person {name: 'K S C P K Gunasinghe'}) ON CREATE SET p.id = 'k_s_c_p_k_gunasinghe';

// Query 31
MERGE (p:Person {name: 'W A T Fernando'}) ON CREATE SET p.id = 'w_a_t_fernando';

// Query 32
// Step 5: HOLDS_POSITION Relationships;

// Query 33
MATCH (p:Person {name: 'Kanishke Mannakkara'}), (c:Company {name: 'Capital Alliance Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'Sharmali Perera'}), (c:Company {name: 'Capital Alliance Investments'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Risk & Compliance Officer', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'Kanishke Mannakkara'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 36
MATCH (p:Person {name: 'Sharmali Perera'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 37
MATCH (p:Person {name: 'M De Zoysa'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-12-01');

// Query 38
MATCH (p:Person {name: 'H M S Perera'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 39
MATCH (p:Person {name: 'K S C P K Gunasinghe'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 40
MATCH (p:Person {name: 'W A T Fernando'}), (c:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 41
// Step 6: Metrics;

// Query 42
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 48
// Step 7: HAS_METRIC Relationships;

// Query 49
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 398642242.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 50
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 380168142.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 51
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 380168142.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 52
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.96, r.year = 2024, r.as_of = date('2024-03-31');

// Query 53
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2338547455.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 54
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2319212407.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 55
// Step 8: Sectors;

// Query 56
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 57
MERGE (s:Sector {name: 'Banks'}) ON CREATE SET s.id = 'banks';

// Query 58
// Step 9: IN_SECTOR Relationships;

// Query 59
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 60
MATCH (c:Company {name: 'Capital Alliance Investments'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 61
MATCH (c:Company {name: 'Hatton National Bank'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 62
MATCH (c:Company {name: 'NDB Wealth Management'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 63
MATCH (c:Company {name: 'First Capital Asset Management'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 64
MATCH (c:Company {name: 'Ceybank Asset Management'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 65
MATCH (c:Company {name: 'JB Financial'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 66
MATCH (c:Company {name: 'Assetline Capital'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 67
MATCH (c:Company {name: 'Ceylon Asset Management'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 68
MATCH (c:Company {name: 'Asia Securities Wealth Management'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 69
MATCH (c:Company {name: 'Senfin Asset Management'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 70
MATCH (c:Company {name: 'CT CLSA Asset Management'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 71
MATCH (c:Company {name: 'National Asset Management'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 72
MATCH (c:Company {name: 'Asset Trust Management'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 73
MATCH (c:Company {name: 'LYNEAR Wealth Management'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
MATCH (c:Company {name: 'Softlogic Asset Management'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 75
MATCH (c:Company {name: 'Premier Wealth Management'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 76
MATCH (c:Company {name: 'ArpicoAtaraxia Asset Management'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 77
// Step 10: Company-Company Relationships (MANAGES);

// Query 78
MATCH (manager:Company {name: 'Capital Alliance Investments'}), (managed:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Fund Management Company', r.as_of = date('2024-03-31');

// Query 79
MATCH (manager:Company {name: 'Hatton National Bank'}), (managed:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'Trustee & Custodian', r.as_of = date('2024-03-31');

// Total queries: 79
// Generated on: 2025-10-02T22:49:03.802529
