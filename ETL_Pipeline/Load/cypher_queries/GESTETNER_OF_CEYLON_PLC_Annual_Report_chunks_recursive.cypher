// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Gestetner of Ceylon'}) ON CREATE SET c.id = 'gestetner_of_ceylon', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No specific auditor firm name found that matches the hardcoded list. Skipping auditor node and relationship.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Seyed Jemaldeen Muhammed Anzsar'}) ON CREATE SET p.id = 'seyed_jemaldeen_muhammed_anzsar';

// Query 6
MERGE (p:Person {name: 'Lakshman Ravendra Watawala'}) ON CREATE SET p.id = 'lakshman_ravendra_watawala';

// Query 7
MERGE (p:Person {name: 'Sita Anne Juliana Goonetilleke'}) ON CREATE SET p.id = 'sita_anne_juliana_goonetilleke';

// Query 8
MERGE (p:Person {name: 'Bulathsinghalage Chandima Upul Perera'}) ON CREATE SET p.id = 'bulathsinghalage_chandima_upul_perera';

// Query 9
MERGE (p:Person {name: 'Keki Wadia'}) ON CREATE SET p.id = 'keki_wadia';

// Query 10
MERGE (p:Person {name: 'Albert Rasakantha Rasiah'}) ON CREATE SET p.id = 'albert_rasakantha_rasiah';

// Query 11
MERGE (p:Person {name: 'Sharhan Muhseen'}) ON CREATE SET p.id = 'sharhan_muhseen';

// Query 12
MERGE (p:Person {name: 'Muhammed Hamza'}) ON CREATE SET p.id = 'muhammed_hamza';

// Query 13
MERGE (p:Person {name: 'Abbillawattha Palathe Gedara Anusha Pathmashika Geethanjalee'}) ON CREATE SET p.id = 'abillawattha_palathe_gedara_anusha_pathmashika_geethanjalee';

// Query 14
// Step 4: HOLDS_POSITION Relationships;

// Query 15
MATCH (p:Person {name: 'Seyed Jemaldeen Muhammed Anzsar'}), (c:Company {name: 'Gestetner of Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'Lakshman Ravendra Watawala'}), (c:Company {name: 'Gestetner of Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'Sita Anne Juliana Goonetilleke'}), (c:Company {name: 'Gestetner of Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'Bulathsinghalage Chandima Upul Perera'}), (c:Company {name: 'Gestetner of Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'Keki Wadia'}), (c:Company {name: 'Gestetner of Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'Albert Rasakantha Rasiah'}), (c:Company {name: 'Gestetner of Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'Sharhan Muhseen'}), (c:Company {name: 'Gestetner of Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 22
MATCH (p:Person {name: 'Muhammed Hamza'}), (c:Company {name: 'Gestetner of Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'Abbillawattha Palathe Gedara Anusha Pathmashika Geethanjalee'}), (c:Company {name: 'Gestetner of Ceylon'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 24
// Step 5: Metrics;

// Query 25
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 31
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 32
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 33
// Step 6: HAS_METRIC Relationships;

// Query 34
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1401538397, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1407179440, r.year = 2023;

// Query 36
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 136219581, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 103546910, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 90058417, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 84141382, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 802478086, r.year = 2024;

// Query 41
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 629013759, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 461292482, r.year = 2024;

// Query 43
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 397349117, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.63, r.year = 2024;

// Query 45
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.99, r.year = 2023;

// Query 46
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.6, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20.3, r.year = 2023;

// Query 48
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33.88, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31.66, r.year = 2023;

// Query 50
// Step 7: Sectors;

// Query 51
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 52
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 53
// Step 8: IN_SECTOR Relationships;

// Query 54
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 55
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 56
// Step 9: Product nodes creation;

// Query 57
MERGE (p:Product {name: 'Digital Copiers'}) ON CREATE SET p.id = 'digital_copiers';

// Query 58
MERGE (p:Product {name: 'Digital Duplicators'}) ON CREATE SET p.id = 'digital_duplicators';

// Query 59
MERGE (p:Product {name: 'Laser Printers'}) ON CREATE SET p.id = 'laser_printers';

// Query 60
MERGE (p:Product {name: 'Projectors'}) ON CREATE SET p.id = 'projectors';

// Query 61
MERGE (p:Product {name: 'Laptops'}) ON CREATE SET p.id = 'laptops';

// Query 62
MERGE (p:Product {name: 'Smart Boards'}) ON CREATE SET p.id = 'smart_boards';

// Query 63
MERGE (p:Product {name: 'Consumables'}) ON CREATE SET p.id = 'consumables';

// Query 64
MERGE (p:Product {name: 'Outsourced Photocopying Services'}) ON CREATE SET p.id = 'outsourced_photocopying_services';

// Query 65
MERGE (p:Product {name: 'Printing Services'}) ON CREATE SET p.id = 'printing_services';

// Query 66
MERGE (p:Product {name: 'IT Solutions'}) ON CREATE SET p.id = 'it_solutions';

// Query 67
MERGE (p:Product {name: 'Air Conditioners'}) ON CREATE SET p.id = 'air_conditioners';

// Query 68
MERGE (p:Product {name: 'Scan Coin Machines'}) ON CREATE SET p.id = 'scan_coin_machines';

// Query 69
MERGE (p:Product {name: 'POS Machines'}) ON CREATE SET p.id = 'pos_machines';

// Query 70
MERGE (p:Product {name: 'Note Counting Machines'}) ON CREATE SET p.id = 'note_counting_machines';

// Query 71
MERGE (p:Product {name: 'After Sales Services'}) ON CREATE SET p.id = 'after_sales_services';

// Query 72
MERGE (p:Product {name: 'Accounting Services'}) ON CREATE SET p.id = 'accounting_services';

// Query 73
MERGE (p:Product {name: 'Financial Services'}) ON CREATE SET p.id = 'financial_services';

// Query 74
// Step 10: OFFERS Relationships;

// Query 75
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (p:Product {name: 'Digital Copiers'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (p:Product {name: 'Digital Duplicators'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (p:Product {name: 'Laser Printers'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (p:Product {name: 'Projectors'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (p:Product {name: 'Laptops'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (p:Product {name: 'Smart Boards'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (p:Product {name: 'Consumables'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (p:Product {name: 'Outsourced Photocopying Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (p:Product {name: 'Printing Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (p:Product {name: 'IT Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (p:Product {name: 'Air Conditioners'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (p:Product {name: 'Scan Coin Machines'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (p:Product {name: 'POS Machines'}) MERGE (c)-[:OFFERS]->(p);

// Query 88
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (p:Product {name: 'Note Counting Machines'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (p:Product {name: 'After Sales Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (p:Product {name: 'Accounting Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Gestetner of Ceylon'}), (p:Product {name: 'Financial Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
// Step 11: Subsidiary Company nodes;

// Query 93
MERGE (sub1:Company {name: 'Nashua Lanka'}) ON CREATE SET sub1.id = 'nashua_lanka', sub1.region = 'Sri Lanka';

// Query 94
MERGE (sub2:Company {name: 'Gestetner Printing Services'}) ON CREATE SET sub2.id = 'gestetner_printing_services', sub2.region = 'Sri Lanka';

// Query 95
MERGE (sub3:Company {name: 'Fintek Managed Solutions'}) ON CREATE SET sub3.id = 'fintek_managed_solutions', sub3.region = 'Sri Lanka';

// Query 96
MERGE (sub4:Company {name: 'Gestetner Manufacturers'}) ON CREATE SET sub4.id = 'gestetner_manufacturers', sub4.region = 'Sri Lanka';

// Query 97
// Step 12: OWNS Relationships;

// Query 98
MATCH (parent:Company {name: 'Gestetner of Ceylon'}), (child:Company {name: 'Nashua Lanka'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 99
MATCH (parent:Company {name: 'Gestetner of Ceylon'}), (child:Company {name: 'Gestetner Printing Services'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 100
MATCH (parent:Company {name: 'Gestetner of Ceylon'}), (child:Company {name: 'Fintek Managed Solutions'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 101
MATCH (parent:Company {name: 'Gestetner of Ceylon'}), (child:Company {name: 'Gestetner Manufacturers'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 101
// Generated on: 2025-10-03T03:04:15.189007
