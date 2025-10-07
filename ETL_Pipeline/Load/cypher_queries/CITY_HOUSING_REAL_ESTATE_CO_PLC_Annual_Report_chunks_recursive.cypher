// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'City Housing & Real Estate Company'}) ON CREATE SET c.id = 'city_housing_real_estate_company', c.founded_on = date('1983-04-18'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
MERGE (c:Company {name: 'Trillium Residencies'}) ON CREATE SET c.id = 'trillium_residencies';

// Query 4
MERGE (c:Company {name: 'Ceylinco Project Management Services'}) ON CREATE SET c.id = 'ceylinco_project_management_services';

// Query 5
MERGE (c:Company {name: 'Ceylinco Consultancy & Allied Services'}) ON CREATE SET c.id = 'ceylinco_consultancy_and_allied_services';

// Query 6
// Step 2: Auditor - No auditor found in the hardcoded list, skipping.;

// Query 7
// Step 3: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'Janaka Ratnayake'}) ON CREATE SET p.id = 'janaka_ratnayake';

// Query 9
MERGE (p:Person {name: 'Yasas Vitharana'}) ON CREATE SET p.id = 'yasas_vitharana';

// Query 10
MERGE (p:Person {name: 'D. K. De S. Abeyagunawardena'}) ON CREATE SET p.id = 'd_k_de_s_abeyagunawardena';

// Query 11
MERGE (p:Person {name: 'P. K. Karunanayake'}) ON CREATE SET p.id = 'p_k_karunanayake';

// Query 12
MERGE (p:Person {name: 'S. T. S. De Silva'}) ON CREATE SET p.id = 's_t_s_de_silva';

// Query 13
MERGE (p:Person {name: 'J. G. B. P. Tissera'}) ON CREATE SET p.id = 'j_g_b_p_tissera';

// Query 14
MERGE (p:Person {name: 'S. Mailvaganam'}) ON CREATE SET p.id = 's_mailvaganam';

// Query 15
MERGE (p:Person {name: 'N. A. Fernando'}) ON CREATE SET p.id = 'n_a_fernando';

// Query 16
// Step 4: HOLDS_POSITION Relationships;

// Query 17
MATCH (p:Person {name: 'Janaka Ratnayake'}), (c:Company {name: 'City Housing & Real Estate Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2012-03-31');

// Query 18
MATCH (p:Person {name: 'Yasas Vitharana'}), (c:Company {name: 'City Housing & Real Estate Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2012-03-31');

// Query 19
MATCH (p:Person {name: 'D. K. De S. Abeyagunawardena'}), (c:Company {name: 'City Housing & Real Estate Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2012-03-31');

// Query 20
MATCH (p:Person {name: 'P. K. Karunanayake'}), (c:Company {name: 'City Housing & Real Estate Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2012-03-31');

// Query 21
MATCH (p:Person {name: 'S. T. S. De Silva'}), (c:Company {name: 'City Housing & Real Estate Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2012-03-31');

// Query 22
MATCH (p:Person {name: 'J. G. B. P. Tissera'}), (c:Company {name: 'City Housing & Real Estate Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2012-03-31');

// Query 23
MATCH (p:Person {name: 'S. Mailvaganam'}), (c:Company {name: 'City Housing & Real Estate Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2012-03-31');

// Query 24
MATCH (p:Person {name: 'N. A. Fernando'}), (c:Company {name: 'City Housing & Real Estate Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2012-03-31');

// Query 25
MATCH (sec:Company {name: 'Ceylinco Consultancy & Allied Services'}), (c:Company {name: 'City Housing & Real Estate Company'}) MERGE (sec)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2012-03-31');

// Query 26
// Step 5: Metrics;

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 34
// Step 6: HAS_METRIC Relationships;

// Query 35
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1100871456, r.year = 2012;

// Query 36
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 870056441, r.year = 2011;

// Query 37
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 529156022, r.year = 2010;

// Query 38
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 986464294, r.year = 2009;

// Query 39
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1581534487, r.year = 2008;

// Query 40
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 178891151, r.year = 2012;

// Query 41
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 82542360, r.year = 2011;

// Query 42
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 111821826, r.year = 2010;

// Query 43
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 276433501, r.year = 2009;

// Query 44
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 398354280, r.year = 2008;

// Query 45
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6579389, r.year = 2012;

// Query 46
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -115984941, r.year = 2011;

// Query 47
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -234901101, r.year = 2010;

// Query 48
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -92748583, r.year = 2009;

// Query 49
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 95484943, r.year = 2008;

// Query 50
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4207340, r.year = 2012;

// Query 51
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -117061093, r.year = 2011;

// Query 52
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -235034196, r.year = 2010;

// Query 53
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -95506155, r.year = 2009;

// Query 54
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 92279431, r.year = 2008;

// Query 55
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1288811232, r.year = 2012;

// Query 56
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1790600100, r.year = 2011;

// Query 57
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3194873092, r.year = 2010;

// Query 58
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3867904033, r.year = 2009;

// Query 59
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4800901751, r.year = 2008;

// Query 60
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.31, r.year = 2012;

// Query 61
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -8.76, r.year = 2011;

// Query 62
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -17.57, r.year = 2010;

// Query 63
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -7.14, r.year = 2009;

// Query 64
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.90, r.year = 2008;

// Query 65
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -106862773, r.year = 2012;

// Query 66
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -108324279, r.year = 2011;

// Query 67
// Step 7: Sectors;

// Query 68
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 69
// Step 8: IN_SECTOR Relationships;

// Query 70
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 71
// Step 9: Products;

// Query 72
MERGE (p:Product {name: 'Houses'}) ON CREATE SET p.id = 'houses';

// Query 73
MERGE (p:Product {name: 'Apartments'}) ON CREATE SET p.id = 'apartments';

// Query 74
// Step 10: OFFERS Relationships;

// Query 75
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (p:Product {name: 'Houses'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'City Housing & Real Estate Company'}), (p:Product {name: 'Apartments'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
// Step 11: Company-Company Relationships (OWNS, MANAGES);

// Query 78
MATCH (parent:Company {name: 'City Housing & Real Estate Company'}), (child:Company {name: 'Trillium Residencies'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2012-03-31');

// Query 79
MATCH (parent:Company {name: 'City Housing & Real Estate Company'}), (child:Company {name: 'Ceylinco Project Management Services'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 40.0, r.as_of = date('2005-11-30');

// Total queries: 79
// Generated on: 2025-10-03T00:18:35.760216
