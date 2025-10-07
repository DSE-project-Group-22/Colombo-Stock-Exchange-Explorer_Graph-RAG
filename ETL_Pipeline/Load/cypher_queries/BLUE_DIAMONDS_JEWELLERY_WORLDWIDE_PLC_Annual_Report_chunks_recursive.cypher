// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}) ON CREATE SET c.id = 'blue_diamonds_jewellery_worldwide', c.founded_on = date('1990-11-21'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor - No explicit auditor firm name found in the hardcoded list, skipping.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Sudath A.S. Jayasundara'}) ON CREATE SET p.id = 'sudath_a_s_jayasundara';

// Query 6
MERGE (p:Person {name: 'Andrew Lee'}) ON CREATE SET p.id = 'andrew_lee';

// Query 7
MERGE (p:Person {name: 'Biruntha Shantharaj'}) ON CREATE SET p.id = 'biruntha_shantharaj';

// Query 8
MERGE (p:Person {name: 'Pradeep Thunuwara'}) ON CREATE SET p.id = 'pradeep_thunuwara';

// Query 9
MERGE (p:Person {name: 'Manjaree Gamage-Brooker'}) ON CREATE SET p.id = 'manjaree_gamage_brooker';

// Query 10
// Step 4: HOLDS_POSITION Relationships;

// Query 11
MATCH (p:Person {name: 'Sudath A.S. Jayasundara'}), (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2016-07-15');

// Query 12
MATCH (p:Person {name: 'Andrew Lee'}), (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2023-01-19');

// Query 13
MATCH (p:Person {name: 'Biruntha Shantharaj'}), (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-01-19');

// Query 14
MATCH (p:Person {name: 'Pradeep Thunuwara'}), (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-01-19');

// Query 15
MATCH (p:Person {name: 'Manjaree Gamage-Brooker'}), (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2016-07-15');

// Query 16
// Step 5: Metrics;

// Query 17
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 18
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 19
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 24
// Step 6: HAS_METRIC Relationships;

// Query 25
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44232000, r.year = 2019;

// Query 26
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38110000, r.year = 2020;

// Query 27
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 148441000, r.year = 2021;

// Query 28
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 28117962, r.year = 2022;

// Query 29
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43255202, r.year = 2023;

// Query 30
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -44590000, r.year = 2019;

// Query 31
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -26440000, r.year = 2020;

// Query 32
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1795000, r.year = 2021;

// Query 33
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -41526181, r.year = 2022;

// Query 34
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -17754101, r.year = 2023;

// Query 35
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -45048000, r.year = 2019;

// Query 36
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -25771000, r.year = 2020;

// Query 37
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1386000, r.year = 2021;

// Query 38
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -46340827, r.year = 2022;

// Query 39
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -30212659, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 274568000, r.year = 2019;

// Query 41
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 208054000, r.year = 2020;

// Query 42
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 207159000, r.year = 2021;

// Query 43
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 211190000, r.year = 2022;

// Query 44
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 215967000, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 170798000, r.year = 2019;

// Query 46
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 142638000, r.year = 2020;

// Query 47
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 138336000, r.year = 2021;

// Query 48
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 126385000, r.year = 2022;

// Query 49
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 122355000, r.year = 2023;

// Query 50
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.11, r.year = 2019;

// Query 51
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.07, r.year = 2020;

// Query 52
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.004, r.year = 2021;

// Query 53
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.10, r.year = 2022;

// Query 54
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.04, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.63, r.year = 2019;

// Query 56
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.03, r.year = 2020;

// Query 57
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.52, r.year = 2021;

// Query 58
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.75, r.year = 2022;

// Query 59
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.94, r.year = 2023;

// Query 60
// Step 7: Sectors;

// Query 61
MERGE (s:Sector {name: 'Consumer Durables and Apparel'}) ON CREATE SET s.id = 'consumer_durables_and_apparel';

// Query 62
// Step 8: IN_SECTOR Relationships;

// Query 63
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 64
// Step 9: Products;

// Query 65
MERGE (p:Product {name: 'Diamond Studded Gold Jewellery'}) ON CREATE SET p.id = 'diamond_studded_gold_jewellery';

// Query 66
MERGE (p:Product {name: 'Diamonds'}) ON CREATE SET p.id = 'diamonds';

// Query 67
// Step 10: OFFERS Relationships;

// Query 68
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (p:Product {name: 'Diamond Studded Gold Jewellery'}) MERGE (c)-[:OFFERS]->(p);

// Query 69
MATCH (c:Company {name: 'Blue Diamonds Jewellery Worldwide'}), (p:Product {name: 'Diamonds'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 69
// Generated on: 2025-10-03T00:06:50.173891
