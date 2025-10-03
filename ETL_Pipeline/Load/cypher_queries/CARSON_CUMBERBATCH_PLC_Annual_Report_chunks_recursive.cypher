// Query 1
// Step 1: Main Company and Subsidiary/Segment Companies;

// Query 2
MERGE (c:Company {name: 'Carson Cumberbatch'}) ON CREATE SET c.id = 'carson_cumberbatch', c.founded_on = date('1913-01-01'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 3
MERGE (c:Company {name: 'Goodhope Asia Holdings'}) ON CREATE SET c.id = 'goodhope_asia_holdings';

// Query 4
MERGE (c:Company {name: 'Agro Asia Pacific'}) ON CREATE SET c.id = 'agro_asia_pacific';

// Query 5
MERGE (c:Company {name: 'Premium Nutrients'}) ON CREATE SET c.id = 'premium_nutrients';

// Query 6
MERGE (c:Company {name: 'Shalimar (Malay)'}) ON CREATE SET c.id = 'shalimar_malay';

// Query 7
MERGE (c:Company {name: 'Selinsing'}) ON CREATE SET c.id = 'selinsing';

// Query 8
MERGE (c:Company {name: 'Lion Brewery Ceylon'}) ON CREATE SET c.id = 'lion_brewery_ceylon';

// Query 9
MERGE (c:Company {name: 'Premium Vegetable Oils'}) ON CREATE SET c.id = 'premium_vegetable_oils';

// Query 10
MERGE (c:Company {name: 'Premium Fats'}) ON CREATE SET c.id = 'premium_fats';

// Query 11
MERGE (c:Company {name: 'Real Estate'}) ON CREATE SET c.id = 'real_estate';

// Query 12
MERGE (c:Company {name: 'Portfolio and Asset Management'}) ON CREATE SET c.id = 'portfolio_and_asset_management';

// Query 13
MERGE (c:Company {name: 'Leisure'}) ON CREATE SET c.id = 'leisure';

// Query 14
MERGE (c:Company {name: 'Beverage'}) ON CREATE SET c.id = 'beverage';

// Query 15
MERGE (c:Company {name: 'J-Oil Mills'}) ON CREATE SET c.id = 'j_oil_mills';

// Query 16
// Step 2: Auditor (Skipped - Auditor name not explicitly stated in provided chunks);

// Query 17
// Step 3: People - Directors and Executives;

// Query 18
MERGE (p:Person {name: 'T. de Zoysa'}) ON CREATE SET p.id = 't_de_zoysa';

// Query 19
MERGE (p:Person {name: 'H. Selvanathan'}) ON CREATE SET p.id = 'h_selvanathan';

// Query 20
MERGE (p:Person {name: 'M. Selvanathan'}) ON CREATE SET p.id = 'm_selvanathan';

// Query 21
MERGE (p:Person {name: 'D.C.R. Gunawardena'}) ON CREATE SET p.id = 'd_c_r_gunawardena';

// Query 22
MERGE (p:Person {name: 'S.K. Shah'}) ON CREATE SET p.id = 's_k_shah';

// Query 23
MERGE (p:Person {name: 'R. Theagarajah'}) ON CREATE SET p.id = 'r_theagarajah';

// Query 24
MERGE (p:Person {name: 'W.M.R.S. Dias'}) ON CREATE SET p.id = 'w_m_r_s_dias';

// Query 25
MERGE (p:Person {name: 'A.S. Amaratunga'}) ON CREATE SET p.id = 'a_s_amaratunga';

// Query 26
MERGE (p:Person {name: 'Sharada Selvanathan'}) ON CREATE SET p.id = 'sharada_selvanathan';

// Query 27
MERGE (p:Person {name: 'M.M. Murugappan'}) ON CREATE SET p.id = 'm_m_murugappan';

// Query 28
MERGE (p:Person {name: 'Y. H. Ong'}) ON CREATE SET p.id = 'y_h_ong';

// Query 29
MERGE (p:Person {name: 'K. Selvanathan'}) ON CREATE SET p.id = 'k_selvanathan';

// Query 30
MERGE (p:Person {name: 'S. Selvanathan'}) ON CREATE SET p.id = 's_selvanathan';

// Query 31
MERGE (p:Person {name: 'Aneesh Dudeja'}) ON CREATE SET p.id = 'aneesh_dudeja';

// Query 32
MERGE (p:Person {name: 'Satish Selvanathan'}) ON CREATE SET p.id = 'satish_selvanathan';

// Query 33
MERGE (p:Person {name: 'Sanjaya Upasena'}) ON CREATE SET p.id = 'sanjaya_upasena';

// Query 34
MERGE (p:Person {name: 'Muthukumaran A/L Murugiah'}) ON CREATE SET p.id = 'muthukumaran_a_l_murugiah';

// Query 35
MERGE (p:Person {name: 'Saliya Rodrigo'}) ON CREATE SET p.id = 'saliya_rodrigo';

// Query 36
MERGE (p:Person {name: 'Rushdi Azeez'}) ON CREATE SET p.id = 'rushdi_azeez';

// Query 37
MERGE (p:Person {name: 'Amjad Ibrahim'}) ON CREATE SET p.id = 'amjad_ibrahim';

// Query 38
MERGE (p:Person {name: 'Ishan Danthanarayana'}) ON CREATE SET p.id = 'ishan_danthanarayana';

// Query 39
MERGE (p:Person {name: 'Rajiv Meewakkala'}) ON CREATE SET p.id = 'rajiv_meewakkala';

// Query 40
MERGE (p:Person {name: 'Chandra Das S/O Rajagopal Sitaram'}) ON CREATE SET p.id = 'chandra_das_s_o_rajagopal_sitaram';

// Query 41
MERGE (p:Person {name: 'A. P. Weeratunge'}) ON CREATE SET p.id = 'a_p_weeratunge';

// Query 42
MERGE (p:Person {name: 'Samir Kishorbhai Desai'}) ON CREATE SET p.id = 'samir_kishorbhai_desai';

// Query 43
MERGE (p:Person {name: 'I. Paulraj'}) ON CREATE SET p.id = 'i_paulraj';

// Query 44
MERGE (p:Person {name: 'Ahamed Rushdi Azeez'}) ON CREATE SET p.id = 'ahamed_rushdi_azeez';

// Query 45
MERGE (p:Person {name: 'K.C.N. Fernando'}) ON CREATE SET p.id = 'k_c_n_fernando';

// Query 46
MERGE (p:Person {name: 'S. Mahendrarajah'}) ON CREATE SET p.id = 's_mahendrarajah';

// Query 47
MERGE (p:Person {name: 'D.P De Silva'}) ON CREATE SET p.id = 'd_p_de_silva';

// Query 48
// Step 4: HOLDS_POSITION Relationships;

// Query 49
MATCH (p:Person {name: 'T. de Zoysa'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 50
MATCH (p:Person {name: 'H. Selvanathan'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 51
MATCH (p:Person {name: 'H. Selvanathan'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 52
MATCH (p:Person {name: 'M. Selvanathan'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 53
MATCH (p:Person {name: 'D.C.R. Gunawardena'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 54
MATCH (p:Person {name: 'S.K. Shah'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 55
MATCH (p:Person {name: 'R. Theagarajah'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 56
MATCH (p:Person {name: 'W.M.R.S. Dias'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 57
MATCH (p:Person {name: 'A.S. Amaratunga'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 58
MATCH (p:Person {name: 'Sharada Selvanathan'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 59
MATCH (p:Person {name: 'M.M. Murugappan'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 60
MATCH (p:Person {name: 'Y. H. Ong'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 61
MATCH (p:Person {name: 'K. Selvanathan'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-12-31');

// Query 62
MATCH (p:Person {name: 'S. Selvanathan'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2023-12-31');

// Query 63
MATCH (p:Person {name: 'Aneesh Dudeja'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-03-31');

// Query 64
MATCH (p:Person {name: 'Satish Selvanathan'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 65
MATCH (p:Person {name: 'Sanjaya Upasena'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Operating Officer', r.as_of = date('2024-03-31');

// Query 66
MATCH (p:Person {name: 'Muthukumaran A/L Murugiah'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 67
MATCH (p:Person {name: 'Saliya Rodrigo'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 68
MATCH (p:Person {name: 'Rushdi Azeez'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 69
MATCH (p:Person {name: 'Amjad Ibrahim'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 70
MATCH (p:Person {name: 'Ishan Danthanarayana'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 71
MATCH (p:Person {name: 'Rajiv Meewakkala'}), (c:Company {name: 'Carson Cumberbatch'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 72
MATCH (p:Person {name: 'Chandra Das S/O Rajagopal Sitaram'}), (c:Company {name: 'Goodhope Asia Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 73
MATCH (p:Person {name: 'H. Selvanathan'}), (c:Company {name: 'Goodhope Asia Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 74
MATCH (p:Person {name: 'D.C.R. Gunawardena'}), (c:Company {name: 'Goodhope Asia Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 75
MATCH (p:Person {name: 'A. P. Weeratunge'}), (c:Company {name: 'Goodhope Asia Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 76
MATCH (p:Person {name: 'Aneesh Dudeja'}), (c:Company {name: 'Goodhope Asia Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 77
MATCH (p:Person {name: 'H. Selvanathan'}), (c:Company {name: 'Agro Asia Pacific'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 78
MATCH (p:Person {name: 'M. Selvanathan'}), (c:Company {name: 'Agro Asia Pacific'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 79
MATCH (p:Person {name: 'Satish Selvanathan'}), (c:Company {name: 'Agro Asia Pacific'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 80
MATCH (p:Person {name: 'Aneesh Dudeja'}), (c:Company {name: 'Agro Asia Pacific'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 81
MATCH (p:Person {name: 'Chandra Das S/O Rajagopal Sitaram'}), (c:Company {name: 'Agro Asia Pacific'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 82
MATCH (p:Person {name: 'D.C.R. Gunawardena'}), (c:Company {name: 'Agro Asia Pacific'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 83
MATCH (p:Person {name: 'H. Selvanathan'}), (c:Company {name: 'Premium Nutrients'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 84
MATCH (p:Person {name: 'M. Selvanathan'}), (c:Company {name: 'Premium Nutrients'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 85
MATCH (p:Person {name: 'Aneesh Dudeja'}), (c:Company {name: 'Premium Nutrients'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 86
MATCH (p:Person {name: 'Samir Kishorbhai Desai'}), (c:Company {name: 'Premium Nutrients'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 87
MATCH (p:Person {name: 'H. Selvanathan'}), (c:Company {name: 'Shalimar (Malay)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 88
MATCH (p:Person {name: 'M. Selvanathan'}), (c:Company {name: 'Shalimar (Malay)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 89
MATCH (p:Person {name: 'I. Paulraj'}), (c:Company {name: 'Shalimar (Malay)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-02-01');

// Query 90
MATCH (p:Person {name: 'D.C.R. Gunawardena'}), (c:Company {name: 'Shalimar (Malay)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 91
MATCH (p:Person {name: 'Ahamed Rushdi Azeez'}), (c:Company {name: 'Shalimar (Malay)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-02-01');

// Query 92
MATCH (p:Person {name: 'K.C.N. Fernando'}), (c:Company {name: 'Shalimar (Malay)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-02-01');

// Query 93
MATCH (p:Person {name: 'S. Mahendrarajah'}), (c:Company {name: 'Shalimar (Malay)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-02-01');

// Query 94
MATCH (p:Person {name: 'D.P De Silva'}), (c:Company {name: 'Shalimar (Malay)'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-02-01');

// Query 95
MATCH (p:Person {name: 'M. Selvanathan'}), (c:Company {name: 'Selinsing'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 96
MATCH (p:Person {name: 'H. Selvanathan'}), (c:Company {name: 'Selinsing'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 97
MATCH (p:Person {name: 'D.C.R. Gunawardena'}), (c:Company {name: 'Selinsing'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 98
// Step 5: Metrics;

// Query 99
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 100
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 101
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 102
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 103
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 104
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 105
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 106
// Step 6: HAS_METRIC Relationships;

// Query 107
MATCH (c:Company {name: 'Carson Cumberbatch'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 277076515000.0, r.year = 2024;

// Query 108
MATCH (c:Company {name: 'Carson Cumberbatch'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 330458690000.0, r.year = 2023;

// Query 109
MATCH (c:Company {name: 'Carson Cumberbatch'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 37378454000.0, r.year = 2024;

// Query 110
MATCH (c:Company {name: 'Carson Cumberbatch'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 42433522000.0, r.year = 2023;

// Query 111
MATCH (c:Company {name: 'Carson Cumberbatch'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22304812000.0, r.year = 2024;

// Query 112
MATCH (c:Company {name: 'Carson Cumberbatch'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27357875000.0, r.year = 2023;

// Query 113
MATCH (c:Company {name: 'Carson Cumberbatch'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 54.84, r.year = 2024;

// Query 114
MATCH (c:Company {name: 'Carson Cumberbatch'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 69.91, r.year = 2023;

// Query 115
MATCH (c:Company {name: 'Carson Cumberbatch'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 71830528000.0, r.year = 2024;

// Query 116
MATCH (c:Company {name: 'Carson Cumberbatch'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 68547883000.0, r.year = 2023;

// Query 117
MATCH (c:Company {name: 'Carson Cumberbatch'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 143618731000.0, r.year = 2024;

// Query 118
MATCH (c:Company {name: 'Carson Cumberbatch'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 140236892000.0, r.year = 2023;

// Query 119
MATCH (c:Company {name: 'Carson Cumberbatch'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1883000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 120
MATCH (c:Company {name: 'Carson Cumberbatch'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1267000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 121
MATCH (c:Company {name: 'Carson Cumberbatch'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1451000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 122
MATCH (c:Company {name: 'Carson Cumberbatch'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 564000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 123
MATCH (c:Company {name: 'Real Estate'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 638500000.0, r.year = 2024;

// Query 124
MATCH (c:Company {name: 'Real Estate'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 323600000.0, r.year = 2024;

// Query 125
MATCH (c:Company {name: 'Portfolio and Asset Management'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1900000000.0, r.year = 2024;

// Query 126
MATCH (c:Company {name: 'Portfolio and Asset Management'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 817000000.0, r.year = 2023;

// Query 127
MATCH (c:Company {name: 'Leisure'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -86000000.0, r.year = 2024;

// Query 128
MATCH (c:Company {name: 'Leisure'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -145000000.0, r.year = 2023;

// Query 129
MATCH (c:Company {name: 'Beverage'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 112200000000.0, r.year = 2024;

// Query 130
MATCH (c:Company {name: 'Beverage'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14000000000.0, r.year = 2024;

// Query 131
MATCH (c:Company {name: 'Beverage'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 57000000000.0, r.year = 2024;

// Query 132
// Step 7: Sectors;

// Query 133
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 134
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 135
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 136
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 137
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 138
// Step 8: IN_SECTOR Relationships;

// Query 139
MATCH (c:Company {name: 'Carson Cumberbatch'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 140
MATCH (c:Company {name: 'Carson Cumberbatch'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 141
MATCH (c:Company {name: 'Carson Cumberbatch'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 142
MATCH (c:Company {name: 'Carson Cumberbatch'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 143
MATCH (c:Company {name: 'Carson Cumberbatch'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 144
MATCH (c:Company {name: 'Goodhope Asia Holdings'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 145
MATCH (c:Company {name: 'Agro Asia Pacific'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 146
MATCH (c:Company {name: 'Premium Nutrients'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 147
MATCH (c:Company {name: 'Shalimar (Malay)'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 148
MATCH (c:Company {name: 'Selinsing'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 149
MATCH (c:Company {name: 'Lion Brewery Ceylon'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 150
MATCH (c:Company {name: 'Premium Vegetable Oils'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 151
MATCH (c:Company {name: 'Premium Fats'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 152
MATCH (c:Company {name: 'Real Estate'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 153
MATCH (c:Company {name: 'Portfolio and Asset Management'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 154
MATCH (c:Company {name: 'Leisure'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 155
MATCH (c:Company {name: 'Beverage'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 156
// Step 9: Product nodes creation (Skipped - no distinct products identified beyond segments);

// Query 157
// Step 10: OFFERS relationships (Skipped - no distinct products identified beyond segments);

// Query 158
// Step 11: Company-Company Relationships (MANAGES);

// Query 159
MATCH (manager:Company {name: 'Carson Cumberbatch'}), (managed:Company {name: 'Goodhope Asia Holdings'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.as_of = date('2024-03-31');

// Query 160
MATCH (manager:Company {name: 'Carson Cumberbatch'}), (managed:Company {name: 'Agro Asia Pacific'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.as_of = date('2024-03-31');

// Query 161
MATCH (manager:Company {name: 'Carson Cumberbatch'}), (managed:Company {name: 'Premium Nutrients'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.as_of = date('2024-03-31');

// Query 162
MATCH (manager:Company {name: 'Carson Cumberbatch'}), (managed:Company {name: 'Shalimar (Malay)'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.as_of = date('2024-03-31');

// Query 163
MATCH (manager:Company {name: 'Carson Cumberbatch'}), (managed:Company {name: 'Selinsing'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.as_of = date('2024-03-31');

// Query 164
MATCH (manager:Company {name: 'Carson Cumberbatch'}), (managed:Company {name: 'Lion Brewery Ceylon'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.as_of = date('2024-03-31');

// Query 165
MATCH (manager:Company {name: 'Carson Cumberbatch'}), (managed:Company {name: 'Premium Vegetable Oils'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.as_of = date('2024-03-31');

// Query 166
MATCH (manager:Company {name: 'Carson Cumberbatch'}), (managed:Company {name: 'Premium Fats'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.as_of = date('2024-03-31');

// Total queries: 166
// Generated on: 2025-10-03T03:30:23.786841
