// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Cargo Boat Development Company'}) ON CREATE SET c.id = 'cargo_boat_development_company', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'BDO Partners'}) ON CREATE SET a.id = 'bdo_partners', a.type = 'Auditing Firm';

// Query 5
MATCH (c:Company {name: 'Cargo Boat Development Company'}), (a:Auditor {name: 'BDO Partners'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 6
// Step 3: People - Directors and Executives;

// Query 7
MERGE (p:Person {name: 'R. B. Thambiayah'}) ON CREATE SET p.id = 'r_b_thambiayah';

// Query 8
MERGE (p:Person {name: 'N. A. Thambiayah'}) ON CREATE SET p.id = 'n_a_thambiayah';

// Query 9
MERGE (p:Person {name: 'N. R. Thambiayah'}) ON CREATE SET p.id = 'n_r_thambiayah';

// Query 10
MERGE (p:Person {name: 'S. R. Thambiayah'}) ON CREATE SET p.id = 's_r_thambiayah';

// Query 11
MERGE (p:Person {name: 'R. S. Tissanayagam'}) ON CREATE SET p.id = 'r_s_tissanayagam';

// Query 12
MERGE (p:Person {name: 'A. L. Thambiayah'}) ON CREATE SET p.id = 'a_l_thambiayah';

// Query 13
MERGE (p:Person {name: 'D. C. Fernando'}) ON CREATE SET p.id = 'd_c_fernando';

// Query 14
// Step 4: HOLDS_POSITION Relationships;

// Query 15
MATCH (p:Person {name: 'R. B. Thambiayah'}), (c:Company {name: 'Cargo Boat Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 16
MATCH (p:Person {name: 'N. A. Thambiayah'}), (c:Company {name: 'Cargo Boat Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 17
MATCH (p:Person {name: 'N. R. Thambiayah'}), (c:Company {name: 'Cargo Boat Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 18
MATCH (p:Person {name: 'S. R. Thambiayah'}), (c:Company {name: 'Cargo Boat Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 19
MATCH (p:Person {name: 'R. S. Tissanayagam'}), (c:Company {name: 'Cargo Boat Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 20
MATCH (p:Person {name: 'A. L. Thambiayah'}), (c:Company {name: 'Cargo Boat Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 21
MATCH (p:Person {name: 'D. C. Fernando'}), (c:Company {name: 'Cargo Boat Development Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-11-20');

// Query 22
// Step 5: Metrics;

// Query 23
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 30
// Step 6: HAS_METRIC Relationships;

// Query 31
MATCH (c:Company {name: 'Cargo Boat Development Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 103399136, r.year = 2024;

// Query 32
MATCH (c:Company {name: 'Cargo Boat Development Company'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12000000, r.year = 2024;

// Query 33
MATCH (c:Company {name: 'Cargo Boat Development Company'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -5000000, r.year = 2023;

// Query 34
MATCH (c:Company {name: 'Cargo Boat Development Company'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 183051907, r.year = 2024;

// Query 35
MATCH (c:Company {name: 'Cargo Boat Development Company'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 142403440, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Cargo Boat Development Company'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7.90, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Cargo Boat Development Company'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2286457133, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Cargo Boat Development Company'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2141209197, r.year = 2024;

// Query 39
// Step 7: Sectors;

// Query 40
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 41
MERGE (s:Sector {name: 'Banks'}) ON CREATE SET s.id = 'banks';

// Query 42
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 43
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 44
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 45
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 46
MERGE (s:Sector {name: 'Consumer Durables and Apparel'}) ON CREATE SET s.id = 'consumer_durables_and_apparel';

// Query 47
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 48
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 49
MERGE (s:Sector {name: 'Telecommunication Services'}) ON CREATE SET s.id = 'telecommunication_services';

// Query 50
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 51
// Step 8: IN_SECTOR Relationships (for main company);

// Query 52
MATCH (c:Company {name: 'Cargo Boat Development Company'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 53
// Step 9: Product nodes;

// Query 54
MERGE (p:Product {name: 'Property Development'}) ON CREATE SET p.id = 'property_development';

// Query 55
MERGE (p:Product {name: 'Property Management'}) ON CREATE SET p.id = 'property_management';

// Query 56
// Step 10: OFFERS Relationships;

// Query 57
MATCH (c:Company {name: 'Cargo Boat Development Company'}), (p:Product {name: 'Property Development'}) MERGE (c)-[:OFFERS]->(p);

// Query 58
MATCH (c:Company {name: 'Cargo Boat Development Company'}), (p:Product {name: 'Property Management'}) MERGE (c)-[:OFFERS]->(p);

// Query 59
// Step 11: Other Company Nodes (Investments and Owners);

// Query 60
MERGE (c:Company {name: 'Commercial Bank of Ceylon'}) ON CREATE SET c.id = 'commercial_bank_of_ceylon';

// Query 61
MERGE (c:Company {name: 'DFCC Bank'}) ON CREATE SET c.id = 'dfcc_bank';

// Query 62
MERGE (c:Company {name: 'National Development Bank'}) ON CREATE SET c.id = 'national_development_bank';

// Query 63
MERGE (c:Company {name: 'The Finance Company'}) ON CREATE SET c.id = 'the_finance_company';

// Query 64
MERGE (c:Company {name: 'Union Assurance'}) ON CREATE SET c.id = 'union_assurance';

// Query 65
MERGE (c:Company {name: 'Vanik Incorporation'}) ON CREATE SET c.id = 'vanik_incorporation';

// Query 66
MERGE (c:Company {name: 'Renuka Capital'}) ON CREATE SET c.id = 'renuka_capital';

// Query 67
MERGE (c:Company {name: 'Aitken Spence Hotels'}) ON CREATE SET c.id = 'aitken_spence_hotels';

// Query 68
MERGE (c:Company {name: 'Hotel Services'}) ON CREATE SET c.id = 'hotel_services';

// Query 69
MERGE (c:Company {name: 'Royal Palms Beach Hotels'}) ON CREATE SET c.id = 'royal_palms_beach_hotels';

// Query 70
MERGE (c:Company {name: 'ACL Cables'}) ON CREATE SET c.id = 'acl_cables';

// Query 71
MERGE (c:Company {name: 'Blue Diamonds'}) ON CREATE SET c.id = 'blue_diamonds';

// Query 72
MERGE (c:Company {name: 'Chevron Lubricants Lanka'}) ON CREATE SET c.id = 'chevron_lubricants_lanka';

// Query 73
MERGE (c:Company {name: 'Tokyo Cement Company'}) ON CREATE SET c.id = 'tokyo_cement_company';

// Query 74
MERGE (c:Company {name: 'Sierra Cables'}) ON CREATE SET c.id = 'sierra_cables';

// Query 75
MERGE (c:Company {name: 'Aitken Spence & Company'}) ON CREATE SET c.id = 'aitken_spence_and_company';

// Query 76
MERGE (c:Company {name: 'Balangoda Plantations'}) ON CREATE SET c.id = 'balangoda_plantations';

// Query 77
MERGE (c:Company {name: 'Kelani Valley Plantations'}) ON CREATE SET c.id = 'kelani_valley_plantations';

// Query 78
MERGE (c:Company {name: 'Dialog Telecom'}) ON CREATE SET c.id = 'dialog_telecom';

// Query 79
MERGE (c:Company {name: 'Ceylon Hospitals'}) ON CREATE SET c.id = 'ceylon_hospitals';

// Query 80
MERGE (c:Company {name: 'Vallibel One'}) ON CREATE SET c.id = 'vallibel_one';

// Query 81
MERGE (c:Company {name: 'Access Engineering'}) ON CREATE SET c.id = 'access_engineering';

// Query 82
MERGE (c:Company {name: 'Melstacorp'}) ON CREATE SET c.id = 'melstacorp';

// Query 83
MERGE (c:Company {name: 'Dipped Products'}) ON CREATE SET c.id = 'dipped_products';

// Query 84
MERGE (c:Company {name: 'Lancaster Holding'}) ON CREATE SET c.id = 'lancaster_holding';

// Query 85
MERGE (c:Company {name: 'Renuka Properties'}) ON CREATE SET c.id = 'renuka_properties';

// Query 86
// Step 12: IN_SECTOR Relationships (for other companies);

// Query 87
MATCH (c:Company {name: 'Commercial Bank of Ceylon'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 88
MATCH (c:Company {name: 'DFCC Bank'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 89
MATCH (c:Company {name: 'National Development Bank'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 90
MATCH (c:Company {name: 'The Finance Company'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 91
MATCH (c:Company {name: 'Union Assurance'}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 92
MATCH (c:Company {name: 'Vanik Incorporation'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 93
MATCH (c:Company {name: 'Renuka Capital'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 94
MATCH (c:Company {name: 'Aitken Spence Hotels'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 95
MATCH (c:Company {name: 'Hotel Services'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 96
MATCH (c:Company {name: 'Royal Palms Beach Hotels'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 97
MATCH (c:Company {name: 'ACL Cables'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 98
MATCH (c:Company {name: 'Blue Diamonds'}), (s:Sector {name: 'Consumer Durables and Apparel'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 99
MATCH (c:Company {name: 'Chevron Lubricants Lanka'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 100
MATCH (c:Company {name: 'Tokyo Cement Company'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 101
MATCH (c:Company {name: 'Sierra Cables'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 102
MATCH (c:Company {name: 'Aitken Spence & Company'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 103
MATCH (c:Company {name: 'Balangoda Plantations'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 104
MATCH (c:Company {name: 'Kelani Valley Plantations'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 105
MATCH (c:Company {name: 'Dialog Telecom'}), (s:Sector {name: 'Telecommunication Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 106
MATCH (c:Company {name: 'Ceylon Hospitals'}), (s:Sector {name: 'Health Care Equipment and Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 107
MATCH (c:Company {name: 'Vallibel One'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 108
MATCH (c:Company {name: 'Access Engineering'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 109
MATCH (c:Company {name: 'Melstacorp'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 110
MATCH (c:Company {name: 'Dipped Products'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 111
// Step 13: Company-Company Relationships (OWNS);

// Query 112
MATCH (parent:Company {name: 'Lancaster Holding'}), (child:Company {name: 'Cargo Boat Development Company'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 22.67, r.as_of = date('2024-03-31');

// Query 113
MATCH (parent:Company {name: 'Renuka Properties'}), (child:Company {name: 'Cargo Boat Development Company'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 22.81, r.as_of = date('2024-03-31');

// Total queries: 113
// Generated on: 2025-10-03T02:01:56.536846
