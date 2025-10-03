// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Chemanex'}) ON CREATE SET c.id = 'chemanex', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Chemanex'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'P R Saldin'}) ON CREATE SET p.id = 'p_r_saldin';

// Query 8
MERGE (p:Person {name: 'E M M Boyagoda'}) ON CREATE SET p.id = 'e_m_m_boyagoda';

// Query 9
MERGE (p:Person {name: 'S A B Ekanayake'}) ON CREATE SET p.id = 's_a_b_ekanayake';

// Query 10
MERGE (p:Person {name: 'P A Seresinhe'}) ON CREATE SET p.id = 'p_a_seresinhe';

// Query 11
// Step 4: HOLDS_POSITION Relationships;

// Query 12
MATCH (p:Person {name: 'P R Saldin'}), (c:Company {name: 'Chemanex'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 13
MATCH (p:Person {name: 'E M M Boyagoda'}), (c:Company {name: 'Chemanex'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 14
MATCH (p:Person {name: 'S A B Ekanayake'}), (c:Company {name: 'Chemanex'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 15
MATCH (p:Person {name: 'P A Seresinhe'}), (c:Company {name: 'Chemanex'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 16
// Step 5: Metrics;

// Query 17
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 18
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 19
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 22
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Ratio';

// Query 25
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 26
// Step 6: HAS_METRIC Relationships (Company Data);

// Query 27
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 788965000, r.year = 2024;

// Query 28
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 141049000, r.year = 2024;

// Query 29
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 111709000, r.year = 2024;

// Query 30
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.11, r.year = 2024;

// Query 31
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.15, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3882907000, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3543242000, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.88, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.94, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1063645000, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 253244000, r.year = 2023;

// Query 38
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 167546000, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.67, r.year = 2023;

// Query 40
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.48, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2790690000, r.year = 2023;

// Query 42
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2587500000, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.53, r.year = 2023;

// Query 44
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.83, r.year = 2023;

// Query 45
// Step 6: HAS_METRIC Relationships (Group Data for other years);

// Query 46
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 639680000, r.year = 2022;

// Query 47
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 127803000, r.year = 2022;

// Query 48
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 111802000, r.year = 2022;

// Query 49
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 441401000, r.year = 2021;

// Query 50
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 34621000, r.year = 2021;

// Query 51
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23526000, r.year = 2021;

// Query 52
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 395850000, r.year = 2020;

// Query 53
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 237288000, r.year = 2020;

// Query 54
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 229325000, r.year = 2020;

// Query 55
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 460005000, r.year = 2019;

// Query 56
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 101816000, r.year = 2019;

// Query 57
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 121580000, r.year = 2019;

// Query 58
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 723582000, r.year = 2018;

// Query 59
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 379010000, r.year = 2018;

// Query 60
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 229696000, r.year = 2018;

// Query 61
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 823690000, r.year = 2017;

// Query 62
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58474000, r.year = 2017;

// Query 63
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 70512000, r.year = 2017;

// Query 64
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1444004000, r.year = 2016;

// Query 65
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 79208000, r.year = 2016;

// Query 66
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 45923000, r.year = 2016;

// Query 67
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1286887000, r.year = 2015;

// Query 68
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18804000, r.year = 2015;

// Query 69
MATCH (c:Company {name: 'Chemanex'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19866000, r.year = 2015;

// Query 70
// Step 7: Sectors;

// Query 71
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 72
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 73
MERGE (s:Sector {name: 'Household and Personal Products'}) ON CREATE SET s.id = 'household_and_personal_products';

// Query 74
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 75
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 76
MERGE (s:Sector {name: 'Consumer Durables and Apparel'}) ON CREATE SET s.id = 'consumer_durables_and_apparel';

// Query 77
// Step 8: IN_SECTOR Relationships;

// Query 78
MATCH (c:Company {name: 'Chemanex'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 79
MATCH (c:Company {name: 'Chemanex'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 80
MATCH (c:Company {name: 'Chemanex'}), (s:Sector {name: 'Household and Personal Products'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 81
MATCH (c:Company {name: 'Chemanex'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 82
MATCH (c:Company {name: 'Chemanex'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 83
MATCH (c:Company {name: 'Chemanex'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 84
// Step 9: Products;

// Query 85
MERGE (p:Product {name: 'Metal Cutting Tools'}) ON CREATE SET p.id = 'metal_cutting_tools';

// Query 86
MERGE (p:Product {name: 'Disinfectant'}) ON CREATE SET p.id = 'disinfectant';

// Query 87
MERGE (p:Product {name: 'Chemicals for Textile Export Industry'}) ON CREATE SET p.id = 'chemicals_for_textile_export_industry';

// Query 88
MERGE (p:Product {name: 'Food Additives'}) ON CREATE SET p.id = 'food_additives';

// Query 89
MERGE (p:Product {name: 'Specialty Additives'}) ON CREATE SET p.id = 'specialty_additives';

// Query 90
MERGE (p:Product {name: 'Estate Chemicals'}) ON CREATE SET p.id = 'estate_chemicals';

// Query 91
MERGE (p:Product {name: 'Raw Materials for Dry Rubber Product Manufacturing'}) ON CREATE SET p.id = 'raw_materials_for_dry_rubber_product_manufacturing';

// Query 92
MERGE (p:Product {name: 'Additives for Hair/Skin/Home Care Products'}) ON CREATE SET p.id = 'additives_for_hair_skin_home_care_products';

// Query 93
MERGE (p:Product {name: 'Colour Pigments and Additives for Paint and Ink Industries'}) ON CREATE SET p.id = 'colour_pigments_and_additives_for_paint_and_ink_industries';

// Query 94
MERGE (p:Product {name: 'Starches and Related Accessories for Corrugated Industry'}) ON CREATE SET p.id = 'starches_and_related_accessories_for_corrugated_industry';

// Query 95
// Step 10: OFFERS Relationships;

// Query 96
MATCH (c:Company {name: 'Chemanex'}), (p:Product {name: 'Metal Cutting Tools'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'Chemanex'}), (p:Product {name: 'Disinfectant'}) MERGE (c)-[:OFFERS]->(p) ON CREATE SET p.status = 'planned';

// Query 98
MATCH (c:Company {name: 'Chemanex'}), (p:Product {name: 'Chemicals for Textile Export Industry'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'Chemanex'}), (p:Product {name: 'Food Additives'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
MATCH (c:Company {name: 'Chemanex'}), (p:Product {name: 'Specialty Additives'}) MERGE (c)-[:OFFERS]->(p);

// Query 101
MATCH (c:Company {name: 'Chemanex'}), (p:Product {name: 'Estate Chemicals'}) MERGE (c)-[:OFFERS]->(p);

// Query 102
MATCH (c:Company {name: 'Chemanex'}), (p:Product {name: 'Raw Materials for Dry Rubber Product Manufacturing'}) MERGE (c)-[:OFFERS]->(p);

// Query 103
MATCH (c:Company {name: 'Chemanex'}), (p:Product {name: 'Additives for Hair/Skin/Home Care Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 104
MATCH (c:Company {name: 'Chemanex'}), (p:Product {name: 'Colour Pigments and Additives for Paint and Ink Industries'}) MERGE (c)-[:OFFERS]->(p);

// Query 105
MATCH (c:Company {name: 'Chemanex'}), (p:Product {name: 'Starches and Related Accessories for Corrugated Industry'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 105
// Generated on: 2025-10-03T02:15:48.021167
