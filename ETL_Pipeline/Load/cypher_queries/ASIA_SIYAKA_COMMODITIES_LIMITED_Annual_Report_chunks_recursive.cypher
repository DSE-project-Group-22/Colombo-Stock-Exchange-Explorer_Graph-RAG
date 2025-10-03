// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Asia Siyaka Commodities'}) ON CREATE SET c.id = 'asia_siyaka_commodities', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - No specific auditor firm name found in the provided chunks.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'W. D. N. H. Perera'}) ON CREATE SET p.id = 'w_d_n_h_perera';

// Query 6
MERGE (p:Person {name: 'A. R. Cooke'}) ON CREATE SET p.id = 'a_r_cooke';

// Query 7
MERGE (p:Person {name: 'W. M. R. Iddawela'}) ON CREATE SET p.id = 'w_m_r_iddawela';

// Query 8
MERGE (p:Person {name: 'D. J. Wedande'}) ON CREATE SET p.id = 'd_j_wedande';

// Query 9
MERGE (p:Person {name: 'U. A. Sirisekera'}) ON CREATE SET p.id = 'u_a_sirisekera';

// Query 10
MERGE (p:Person {name: 'T. G. Thoradeniya'}) ON CREATE SET p.id = 't_g_thoradeniya';

// Query 11
MERGE (p:Person {name: 'K. I. M. Ranasoma'}) ON CREATE SET p.id = 'k_i_m_ranasoma';

// Query 12
MERGE (p:Person {name: 'K. A. K. P. Gunawardena'}) ON CREATE SET p.id = 'k_a_k_p_gunawardena';

// Query 13
MERGE (p:Person {name: 'M. R. Abeywardena'}) ON CREATE SET p.id = 'm_r_abeywardena';

// Query 14
MERGE (p:Person {name: 'A. A. Wijepala'}) ON CREATE SET p.id = 'a_a_wijepala';

// Query 15
// Step 4: HOLDS_POSITION Relationships;

// Query 16
MATCH (p:Person {name: 'W. D. N. H. Perera'}), (c:Company {name: 'Asia Siyaka Commodities'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2012-06-30');

// Query 17
MATCH (p:Person {name: 'A. R. Cooke'}), (c:Company {name: 'Asia Siyaka Commodities'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2012-06-30');

// Query 18
MATCH (p:Person {name: 'W. M. R. Iddawela'}), (c:Company {name: 'Asia Siyaka Commodities'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2012-06-30');

// Query 19
MATCH (p:Person {name: 'D. J. Wedande'}), (c:Company {name: 'Asia Siyaka Commodities'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2012-06-30');

// Query 20
MATCH (p:Person {name: 'U. A. Sirisekera'}), (c:Company {name: 'Asia Siyaka Commodities'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2012-06-30');

// Query 21
MATCH (p:Person {name: 'T. G. Thoradeniya'}), (c:Company {name: 'Asia Siyaka Commodities'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2012-06-30');

// Query 22
MATCH (p:Person {name: 'K. I. M. Ranasoma'}), (c:Company {name: 'Asia Siyaka Commodities'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2012-06-30');

// Query 23
MATCH (p:Person {name: 'K. A. K. P. Gunawardena'}), (c:Company {name: 'Asia Siyaka Commodities'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2012-06-30');

// Query 24
MATCH (p:Person {name: 'M. R. Abeywardena'}), (c:Company {name: 'Asia Siyaka Commodities'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2012-06-30');

// Query 25
MATCH (p:Person {name: 'A. A. Wijepala'}), (c:Company {name: 'Asia Siyaka Commodities'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2012-06-30');

// Query 26
// Step 5: Metrics;

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 32
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 33
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 34
// Step 6: HAS_METRIC Relationships;

// Query 35
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 77309000, r.as_of = date('2013-03-31');

// Query 36
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 298267749, r.year = 2012;

// Query 37
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 307526252, r.year = 2011;

// Query 38
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 462133258, r.year = 2010;

// Query 39
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 431946144, r.year = 2009;

// Query 40
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 377165758, r.year = 2008;

// Query 41
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19409000, r.as_of = date('2013-03-31');

// Query 42
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 76197825, r.year = 2012;

// Query 43
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 81650036, r.year = 2011;

// Query 44
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 136429326, r.year = 2010;

// Query 45
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 67211153, r.year = 2009;

// Query 46
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 67100749, r.year = 2008;

// Query 47
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 52401944, r.year = 2012;

// Query 48
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44737133, r.year = 2011;

// Query 49
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.20, r.year = 2012;

// Query 50
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.15, r.year = 2011;

// Query 51
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26.05, r.year = 2010;

// Query 52
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.52, r.year = 2009;

// Query 53
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.74, r.year = 2008;

// Query 54
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11.08, r.year = 2012;

// Query 55
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8.89, r.year = 2011;

// Query 56
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23.88, r.year = 2010;

// Query 57
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12.80, r.year = 2009;

// Query 58
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.84, r.year = 2008;

// Query 59
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58.95, r.year = 2012;

// Query 60
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 52.80, r.year = 2011;

// Query 61
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 106.67, r.year = 2010;

// Query 62
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 83.26, r.year = 2009;

// Query 63
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 176.52, r.year = 2008;

// Query 64
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 472736989, r.year = 2012;

// Query 65
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 399400269, r.year = 2011;

// Query 66
// Step 7: Sectors;

// Query 67
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 68
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 69
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 70
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 71
// Step 8: IN_SECTOR Relationships;

// Query 72
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 73
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 74
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 75
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 76
// Step 9: Product nodes creation;

// Query 77
MERGE (p:Product {name: 'Tea Broking'}) ON CREATE SET p.id = 'tea_broking';

// Query 78
MERGE (p:Product {name: 'Commodity Broking'}) ON CREATE SET p.id = 'commodity_broking';

// Query 79
MERGE (p:Product {name: 'Spices Broking'}) ON CREATE SET p.id = 'spices_broking';

// Query 80
MERGE (p:Product {name: 'Coconut Products Broking'}) ON CREATE SET p.id = 'coconut_products_broking';

// Query 81
MERGE (p:Product {name: 'Coffee Broking'}) ON CREATE SET p.id = 'coffee_broking';

// Query 82
MERGE (p:Product {name: 'Rubber Broking'}) ON CREATE SET p.id = 'rubber_broking';

// Query 83
MERGE (p:Product {name: 'Warehousing'}) ON CREATE SET p.id = 'warehousing';

// Query 84
MERGE (p:Product {name: 'Packing Materials Intermediary'}) ON CREATE SET p.id = 'packing_materials_intermediary';

// Query 85
MERGE (p:Product {name: 'Fertilizers Intermediary'}) ON CREATE SET p.id = 'fertilizers_intermediary';

// Query 86
MERGE (p:Product {name: 'Agrochemicals Intermediary'}) ON CREATE SET p.id = 'agrochemicals_intermediary';

// Query 87
// Step 10: OFFERS Relationships;

// Query 88
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (p:Product {name: 'Tea Broking'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (p:Product {name: 'Commodity Broking'}) MERGE (c)-[:OFFERS]->(p);

// Query 90
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (p:Product {name: 'Spices Broking'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (p:Product {name: 'Coconut Products Broking'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (p:Product {name: 'Coffee Broking'}) MERGE (c)-[:OFFERS]->(p);

// Query 93
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (p:Product {name: 'Rubber Broking'}) MERGE (c)-[:OFFERS]->(p) ON CREATE SET p.status = 'planned';

// Query 94
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (p:Product {name: 'Warehousing'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (p:Product {name: 'Packing Materials Intermediary'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (p:Product {name: 'Fertilizers Intermediary'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'Asia Siyaka Commodities'}), (p:Product {name: 'Agrochemicals Intermediary'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
// Step 11: Other Company Nodes (for relationships);

// Query 99
MERGE (c:Company {name: 'Asia Siyaka Warehousing'}) ON CREATE SET c.id = 'asia_siyaka_warehousing';

// Query 100
MERGE (c:Company {name: 'Vallibel One'}) ON CREATE SET c.id = 'vallibel_one';

// Query 101
MERGE (c:Company {name: 'Royal Ceramics Lanka'}) ON CREATE SET c.id = 'royal_ceramics_lanka';

// Query 102
MERGE (c:Company {name: 'LB Finance'}) ON CREATE SET c.id = 'lb_finance';

// Query 103
MERGE (c:Company {name: 'Ever Paint and Chemical Industries'}) ON CREATE SET c.id = 'ever_paint_and_chemical_industries';

// Query 104
MERGE (c:Company {name: 'Delmege'}) ON CREATE SET c.id = 'delmege';

// Query 105
MERGE (c:Company {name: 'Rocell Bathware'}) ON CREATE SET c.id = 'rocell_bathware';

// Query 106
MERGE (c:Company {name: 'Royal Porcelain'}) ON CREATE SET c.id = 'royal_porcelain';

// Query 107
MERGE (c:Company {name: 'Orit Apparels Lanka'}) ON CREATE SET c.id = 'orit_apparels_lanka';

// Query 108
MERGE (c:Company {name: 'Greener Water'}) ON CREATE SET c.id = 'greener_water';

// Query 109
MERGE (c:Company {name: 'Siyaka'}) ON CREATE SET c.id = 'siyaka';

// Query 110
MERGE (c:Company {name: 'Asia Capital'}) ON CREATE SET c.id = 'asia_capital';

// Query 111
MERGE (c:Company {name: 'LOLC'}) ON CREATE SET c.id = 'lolc';

// Query 112
MERGE (c:Company {name: 'NDB'}) ON CREATE SET c.id = 'ndb';

// Query 113
MERGE (c:Company {name: 'DFCC Vardhana Bank'}) ON CREATE SET c.id = 'dfcc_vardhana_bank';

// Query 114
MERGE (c:Company {name: 'Peoples\' Bank'}) ON CREATE SET c.id = 'peoples_bank';

// Query 115
MERGE (c:Company {name: 'Commercial Bank'}) ON CREATE SET c.id = 'commercial_bank';

// Query 116
MERGE (c:Company {name: 'Forbes & Walker'}) ON CREATE SET c.id = 'forbes_and_walker';

// Query 117
MERGE (c:Company {name: 'Centreline Tea Brokers'}) ON CREATE SET c.id = 'centreline_tea_brokers';

// Query 118
MERGE (c:Company {name: 'Forbes & Walker Tea Brokers'}) ON CREATE SET c.id = 'forbes_and_walker_tea_brokers';

// Query 119
MERGE (c:Company {name: 'John Keells'}) ON CREATE SET c.id = 'john_keells';

// Query 120
MERGE (c:Company {name: 'Mercantile Brokers'}) ON CREATE SET c.id = 'mercantile_brokers';

// Query 121
MERGE (c:Company {name: 'Lanka Commodities Brokers'}) ON CREATE SET c.id = 'lanka_commodities_brokers';

// Query 122
MERGE (c:Company {name: 'Bartleet Produce Marketing'}) ON CREATE SET c.id = 'bartleet_produce_marketing';

// Query 123
MERGE (c:Company {name: 'Eastern Brokers'}) ON CREATE SET c.id = 'eastern_brokers';

// Query 124
MERGE (c:Company {name: 'Ceylon Tea Brokers'}) ON CREATE SET c.id = 'ceylon_tea_brokers';

// Query 125
MERGE (c:Company {name: 'Agalawatte Plantations'}) ON CREATE SET c.id = 'agalawatte_plantations';

// Query 126
MERGE (c:Company {name: 'Balangoda Plantations'}) ON CREATE SET c.id = 'balangoda_plantations';

// Query 127
MERGE (c:Company {name: 'Bogawantalawa Tea Estates'}) ON CREATE SET c.id = 'bogawantalawa_tea_estates';

// Query 128
// Step 12: Company-Company Relationships (OWNS);

// Query 129
MATCH (p:Company {name: 'Vallibel One'}), (c:Company {name: 'Asia Siyaka Commodities'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 51.0, r.as_of = date('2012-06-30');

// Query 130
MATCH (p:Company {name: 'Asia Siyaka Commodities'}), (c:Company {name: 'Asia Siyaka Warehousing'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 100.0, r.as_of = date('2012-06-30');

// Query 131
MATCH (p:Company {name: 'Vallibel One'}), (c:Company {name: 'Royal Ceramics Lanka'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 100.0, r.as_of = date('2012-06-30');

// Query 132
MATCH (p:Company {name: 'Vallibel One'}), (c:Company {name: 'LB Finance'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 51.0, r.as_of = date('2012-06-30');

// Query 133
MATCH (p:Company {name: 'Vallibel One'}), (c:Company {name: 'Ever Paint and Chemical Industries'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 100.0, r.as_of = date('2012-06-30');

// Query 134
MATCH (p:Company {name: 'Vallibel One'}), (c:Company {name: 'Delmege'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 100.0, r.as_of = date('2012-06-30');

// Query 135
MATCH (p:Company {name: 'Vallibel One'}), (c:Company {name: 'Rocell Bathware'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 25.85, r.as_of = date('2012-06-30');

// Query 136
MATCH (p:Company {name: 'Vallibel One'}), (c:Company {name: 'Royal Porcelain'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 100.0, r.as_of = date('2012-06-30');

// Query 137
MATCH (p:Company {name: 'Vallibel One'}), (c:Company {name: 'Orit Apparels Lanka'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 20.0, r.as_of = date('2012-06-30');

// Query 138
MATCH (p:Company {name: 'Vallibel One'}), (c:Company {name: 'Greener Water'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 50.0, r.as_of = date('2012-06-30');

// Query 139
MATCH (p:Company {name: 'Royal Ceramics Lanka'}), (c:Company {name: 'Orit Apparels Lanka'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 64.18, r.as_of = date('2012-06-30');

// Query 140
MATCH (p:Company {name: 'LB Finance'}), (c:Company {name: 'Greener Water'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 61.2, r.as_of = date('2012-06-30');

// Total queries: 140
// Generated on: 2025-10-02T22:15:27.321436
