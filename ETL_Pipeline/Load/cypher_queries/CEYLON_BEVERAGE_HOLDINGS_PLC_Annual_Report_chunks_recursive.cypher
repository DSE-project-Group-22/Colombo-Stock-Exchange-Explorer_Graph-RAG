// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Ceylon Beverage Holdings'}) ON CREATE SET c.id = 'ceylon_beverage_holdings', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1910-01-01');

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2025;

// Query 7
// Step 4: People - Directors and Executives;

// Query 8
MERGE (p:Person {name: 'D. A. Cabraal'}) ON CREATE SET p.id = 'd_a_cabraal';

// Query 9
MERGE (p:Person {name: 'H. Selvanathan'}) ON CREATE SET p.id = 'h_selvanathan';

// Query 10
MERGE (p:Person {name: 'M. Selvanathan'}) ON CREATE SET p.id = 'm_selvanathan';

// Query 11
MERGE (p:Person {name: 'D. C. R. Gunawardena'}) ON CREATE SET p.id = 'd_c_r_gunawardena';

// Query 12
MERGE (p:Person {name: 'R. H. Meewakkala'}) ON CREATE SET p.id = 'r_h_meewakkala';

// Query 13
MERGE (p:Person {name: 'S. Clini'}) ON CREATE SET p.id = 's_clini';

// Query 14
MERGE (p:Person {name: 'A. J. Alles'}) ON CREATE SET p.id = 'a_j_alles';

// Query 15
MERGE (p:Person {name: 'A. B. Baliga'}) ON CREATE SET p.id = 'a_b_baliga';

// Query 16
MERGE (p:Person {name: 'A. S. Amaratunga'}) ON CREATE SET p.id = 'a_s_amaratunga';

// Query 17
// Step 5: HOLDS_POSITION Relationships;

// Query 18
MATCH (p:Person {name: 'D. A. Cabraal'}), (c:Company {name: 'Ceylon Beverage Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-03-31');

// Query 19
MATCH (p:Person {name: 'H. Selvanathan'}), (c:Company {name: 'Ceylon Beverage Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2025-03-31');

// Query 20
MATCH (p:Person {name: 'M. Selvanathan'}), (c:Company {name: 'Ceylon Beverage Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 21
MATCH (p:Person {name: 'D. C. R. Gunawardena'}), (c:Company {name: 'Ceylon Beverage Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 22
MATCH (p:Person {name: 'R. H. Meewakkala'}), (c:Company {name: 'Ceylon Beverage Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2025-03-31');

// Query 23
MATCH (p:Person {name: 'S. Clini'}), (c:Company {name: 'Ceylon Beverage Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2025-03-31');

// Query 24
MATCH (p:Person {name: 'A. J. Alles'}), (c:Company {name: 'Ceylon Beverage Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-09-25');

// Query 25
MATCH (p:Person {name: 'A. B. Baliga'}), (c:Company {name: 'Ceylon Beverage Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-09-25');

// Query 26
MATCH (p:Person {name: 'A. S. Amaratunga'}), (c:Company {name: 'Ceylon Beverage Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-09-25');

// Query 27
// Step 6: Metrics;

// Query 28
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 35
// Step 7: HAS_METRIC Relationships;

// Query 36
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 125172015000.0, r.year = 2025;

// Query 37
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 111930270000.0, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16036224000.0, r.year = 2025;

// Query 39
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14023293000.0, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9657662000.0, r.year = 2025;

// Query 41
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7975609000.0, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 64917211000.0, r.year = 2025;

// Query 43
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 56732634000.0, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 34950484000.0, r.year = 2025;

// Query 45
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27791612000.0, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 243.82, r.year = 2025;

// Query 47
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 188.82, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27.62, r.year = 2025;

// Query 49
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27.11, r.year = 2024;

// Query 50
// Step 8: Sectors;

// Query 51
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 52
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 53
// Step 9: IN_SECTOR Relationships;

// Query 54
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 55
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 56
// Step 10: Products;

// Query 57
MERGE (p:Product {name: 'Beers'}) ON CREATE SET p.id = 'beers';

// Query 58
MERGE (p:Product {name: 'Wines'}) ON CREATE SET p.id = 'wines';

// Query 59
MERGE (p:Product {name: 'Spirits'}) ON CREATE SET p.id = 'spirits';

// Query 60
MERGE (p:Product {name: 'Pub Chain Services'}) ON CREATE SET p.id = 'pub_chain_services';

// Query 61
// Step 11: OFFERS Relationships;

// Query 62
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (p:Product {name: 'Beers'}) MERGE (c)-[:OFFERS]->(p);

// Query 63
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (p:Product {name: 'Wines'}) MERGE (c)-[:OFFERS]->(p);

// Query 64
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (p:Product {name: 'Spirits'}) MERGE (c)-[:OFFERS]->(p);

// Query 65
MATCH (c:Company {name: 'Ceylon Beverage Holdings'}), (p:Product {name: 'Pub Chain Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 66
// Step 12: Company-Company Relationships (OWNS);

// Query 67
MERGE (sub1:Company {name: 'Lion Brewery (Ceylon)'}) ON CREATE SET sub1.id = 'lion_brewery_ceylon';

// Query 68
MERGE (sub2:Company {name: 'Lion Beer (Ceylon)'}) ON CREATE SET sub2.id = 'lion_beer_ceylon';

// Query 69
MERGE (sub3:Company {name: 'Millers Brewery'}) ON CREATE SET sub3.id = 'millers_brewery';

// Query 70
MERGE (sub4:Company {name: 'Pubs \'N Places'}) ON CREATE SET sub4.id = 'pubs_n_places';

// Query 71
MERGE (sub5:Company {name: 'Retail Spaces'}) ON CREATE SET sub5.id = 'retail_spaces';

// Query 72
MERGE (sub6:Company {name: 'Luxury Brands'}) ON CREATE SET sub6.id = 'luxury_brands';

// Query 73
MATCH (parent:Company {name: 'Ceylon Beverage Holdings'}), (child:Company {name: 'Lion Brewery (Ceylon)'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 52.25, r.as_of = date('2025-03-31');

// Query 74
MATCH (parent:Company {name: 'Ceylon Beverage Holdings'}), (child:Company {name: 'Lion Beer (Ceylon)'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 52.25, r.as_of = date('2025-03-31');

// Query 75
MATCH (parent:Company {name: 'Ceylon Beverage Holdings'}), (child:Company {name: 'Millers Brewery'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 52.25, r.as_of = date('2025-03-31');

// Query 76
MATCH (parent:Company {name: 'Ceylon Beverage Holdings'}), (child:Company {name: 'Pubs \'N Places'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 99.9, r.as_of = date('2025-03-31');

// Query 77
MATCH (parent:Company {name: 'Ceylon Beverage Holdings'}), (child:Company {name: 'Retail Spaces'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2025-03-31');

// Query 78
MATCH (parent:Company {name: 'Ceylon Beverage Holdings'}), (child:Company {name: 'Luxury Brands'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2025-03-31');

// Total queries: 78
// Generated on: 2025-10-02T21:59:45.224167
