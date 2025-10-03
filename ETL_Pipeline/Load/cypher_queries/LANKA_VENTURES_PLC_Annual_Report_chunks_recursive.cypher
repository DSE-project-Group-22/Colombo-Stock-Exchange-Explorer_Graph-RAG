// Query 1
// Step 1: Main Company Node;

// Query 2
MERGE (c:Company {name: 'Lanka Ventures'}) ON CREATE SET c.id = 'lanka_ventures', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'LVL Energy Fund'}) ON CREATE SET c.id = 'lvl_energy_fund', c.region = 'Sri Lanka';

// Query 4
MERGE (c:Company {name: 'Lanka Energy International'}) ON CREATE SET c.id = 'lanka_energy_international', c.region = 'Sri Lanka';

// Query 5
MERGE (c:Company {name: 'Sapthakanya Hydro Electric Company'}) ON CREATE SET c.id = 'sapthakanya_hydro_electric_company', c.region = 'Sri Lanka';

// Query 6
MERGE (c:Company {name: 'Pupulaketiya Mini Hydro Power'}) ON CREATE SET c.id = 'pupulaketiya_mini_hydro_power', c.region = 'Sri Lanka';

// Query 7
MERGE (c:Company {name: 'Hatton National Bank'}) ON CREATE SET c.id = 'hatton_national_bank', c.region = 'Sri Lanka';

// Query 8
MERGE (c:Company {name: 'Acuity Partners'}) ON CREATE SET c.id = 'acuity_partners', c.region = 'Sri Lanka';

// Query 9
MERGE (c:Company {name: 'Acuity Securities'}) ON CREATE SET c.id = 'acuity_securities', c.region = 'Sri Lanka';

// Query 10
MERGE (c:Company {name: 'DFCC Bank'}) ON CREATE SET c.id = 'dfcc_bank', c.region = 'Sri Lanka';

// Query 11
MERGE (c:Company {name: 'Acuity Stockbrokers'}) ON CREATE SET c.id = 'acuity_stockbrokers', c.region = 'Sri Lanka';

// Query 12
MERGE (c:Company {name: 'Nividhu'}) ON CREATE SET c.id = 'nividhu', c.region = 'Sri Lanka';

// Query 13
MERGE (c:Company {name: 'Nividhu Assupiniella'}) ON CREATE SET c.id = 'nividhu_assupiniella', c.region = 'Sri Lanka';

// Query 14
MERGE (c:Company {name: 'LVS Energy'}) ON CREATE SET c.id = 'lvs_energy', c.region = 'Sri Lanka';

// Query 15
MERGE (c:Company {name: 'Unit Energy Lanka'}) ON CREATE SET c.id = 'unit_energy_lanka', c.region = 'Sri Lanka';

// Query 16
MERGE (c:Company {name: 'Pawan Danavi'}) ON CREATE SET c.id = 'pawan_danavi', c.region = 'Sri Lanka';

// Query 17
MERGE (c:Company {name: 'Hayleys Hydro Energy'}) ON CREATE SET c.id = 'hayleys_hydro_energy', c.region = 'Sri Lanka';

// Query 18
MERGE (c:Company {name: 'Nala Dhanavi'}) ON CREATE SET c.id = 'nala_dhanavi', c.region = 'Sri Lanka';

// Query 19
MERGE (c:Company {name: 'Jendo Innovations'}) ON CREATE SET c.id = 'jendo_innovations', c.region = 'Sri Lanka';

// Query 20
// Step 2: Auditor Node & AUDITED_BY Relationship (Skipped - Auditor name not explicitly provided);

// Query 21
// Step 3: Person Nodes;

// Query 22
MERGE (p:Person {name: 'P.G.D.B. Pallewatte'}) ON CREATE SET p.id = 'p_g_d_b_pallewatte';

// Query 23
MERGE (p:Person {name: 'N.H.T.I. Perera'}) ON CREATE SET p.id = 'n_h_t_i_perera';

// Query 24
MERGE (p:Person {name: 'W.P.K. Jayawardana'}) ON CREATE SET p.id = 'w_p_k_jayawardana';

// Query 25
MERGE (p:Person {name: 'J.D.N. Kekulawala'}) ON CREATE SET p.id = 'j_d_n_kekulawala';

// Query 26
MERGE (p:Person {name: 'M.R. Abeywardena'}) ON CREATE SET p.id = 'm_r_abeywardena';

// Query 27
MERGE (p:Person {name: 'R.A. Dassanayake'}) ON CREATE SET p.id = 'r_a_dassanayake';

// Query 28
MERGE (p:Person {name: 'A.G.R. Dissanayake'}) ON CREATE SET p.id = 'a_g_r_dissanayake';

// Query 29
MERGE (p:Person {name: 'J.P.I. Gamage'}) ON CREATE SET p.id = 'j_p_i_gamage';

// Query 30
// Step 4: HOLDS_POSITION Relationships;

// Query 31
MATCH (p:Person {name: 'P.G.D.B. Pallewatte'}), (c:Company {name: 'Lanka Ventures'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'N.H.T.I. Perera'}), (c:Company {name: 'Lanka Ventures'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'W.P.K. Jayawardana'}), (c:Company {name: 'Lanka Ventures'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'J.D.N. Kekulawala'}), (c:Company {name: 'Lanka Ventures'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'M.R. Abeywardena'}), (c:Company {name: 'Lanka Ventures'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 36
MATCH (p:Person {name: 'R.A. Dassanayake'}), (c:Company {name: 'Lanka Ventures'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 37
MATCH (p:Person {name: 'A.G.R. Dissanayake'}), (c:Company {name: 'Lanka Ventures'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 38
MATCH (p:Person {name: 'J.P.I. Gamage'}), (c:Company {name: 'Lanka Ventures'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 39
MATCH (p:Person {name: 'P.G.D.B. Pallewatte'}), (c:Company {name: 'Hatton National Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer';

// Query 40
MATCH (p:Person {name: 'P.G.D.B. Pallewatte'}), (c:Company {name: 'LVL Energy Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman';

// Query 41
MATCH (p:Person {name: 'P.G.D.B. Pallewatte'}), (c:Company {name: 'Acuity Partners'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 42
MATCH (p:Person {name: 'P.G.D.B. Pallewatte'}), (c:Company {name: 'Acuity Securities'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 43
MATCH (p:Person {name: 'N.H.T.I. Perera'}), (c:Company {name: 'DFCC Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer';

// Query 44
MATCH (p:Person {name: 'N.H.T.I. Perera'}), (c:Company {name: 'Acuity Partners'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman';

// Query 45
MATCH (p:Person {name: 'N.H.T.I. Perera'}), (c:Company {name: 'LVL Energy Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 46
MATCH (p:Person {name: 'J.D.N. Kekulawala'}), (c:Company {name: 'LVL Energy Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 47
MATCH (p:Person {name: 'M.R. Abeywardena'}), (c:Company {name: 'Acuity Partners'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director';

// Query 48
MATCH (p:Person {name: 'M.R. Abeywardena'}), (c:Company {name: 'Acuity Stockbrokers'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman';

// Query 49
MATCH (p:Person {name: 'M.R. Abeywardena'}), (c:Company {name: 'Acuity Securities'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman';

// Query 50
MATCH (p:Person {name: 'M.R. Abeywardena'}), (c:Company {name: 'LVL Energy Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 51
MATCH (p:Person {name: 'R.A. Dassanayake'}), (c:Company {name: 'DFCC Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager';

// Query 52
MATCH (p:Person {name: 'R.A. Dassanayake'}), (c:Company {name: 'Acuity Securities'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 53
MATCH (p:Person {name: 'R.A. Dassanayake'}), (c:Company {name: 'LVL Energy Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 54
MATCH (p:Person {name: 'A.G.R. Dissanayake'}), (c:Company {name: 'Hatton National Bank'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'General Manager';

// Query 55
MATCH (p:Person {name: 'A.G.R. Dissanayake'}), (c:Company {name: 'Acuity Partners'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 56
MATCH (p:Person {name: 'A.G.R. Dissanayake'}), (c:Company {name: 'LVL Energy Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 57
MATCH (p:Person {name: 'W.P.K. Jayawardana'}), (c:Company {name: 'LVL Energy Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 58
MATCH (p:Person {name: 'J.P.I. Gamage'}), (c:Company {name: 'LVL Energy Fund'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer';

// Query 59
MATCH (p:Person {name: 'J.P.I. Gamage'}), (c:Company {name: 'Nividhu'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 60
MATCH (p:Person {name: 'J.P.I. Gamage'}), (c:Company {name: 'Nividhu Assupiniella'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 61
MATCH (p:Person {name: 'J.P.I. Gamage'}), (c:Company {name: 'LVS Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 62
MATCH (p:Person {name: 'J.P.I. Gamage'}), (c:Company {name: 'Unit Energy Lanka'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 63
MATCH (p:Person {name: 'J.P.I. Gamage'}), (c:Company {name: 'Lanka Energy International'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 64
MATCH (p:Person {name: 'J.P.I. Gamage'}), (c:Company {name: 'Pawan Danavi'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 65
MATCH (p:Person {name: 'J.P.I. Gamage'}), (c:Company {name: 'Hayleys Hydro Energy'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 66
MATCH (p:Person {name: 'J.P.I. Gamage'}), (c:Company {name: 'Nala Dhanavi'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member';

// Query 67
// Step 5: Metric Nodes;

// Query 68
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 69
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 70
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 71
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 72
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 73
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 74
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 75
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 76
// Step 6: HAS_METRIC Relationships;

// Query 77
MATCH (c:Company {name: 'Lanka Ventures'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 495000000.0, r.year = 2024;

// Query 78
MATCH (c:Company {name: 'Lanka Ventures'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 309000000.0, r.year = 2023;

// Query 79
MATCH (c:Company {name: 'Lanka Ventures'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -50000000.0, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'Lanka Ventures'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -330000000.0, r.year = 2023;

// Query 81
MATCH (c:Company {name: 'Lanka Ventures'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9053000000.0, r.year = 2024;

// Query 82
MATCH (c:Company {name: 'Lanka Ventures'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9980000000.0, r.year = 2023;

// Query 83
MATCH (c:Company {name: 'Lanka Ventures'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -0.80, r.year = 2024;

// Query 84
MATCH (c:Company {name: 'Lanka Ventures'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3.22, r.year = 2023;

// Query 85
MATCH (c:Company {name: 'Lanka Ventures'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1.22, r.year = 2024;

// Query 86
MATCH (c:Company {name: 'Lanka Ventures'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3.89, r.year = 2023;

// Query 87
MATCH (c:Company {name: 'Lanka Ventures'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 236300000.0, r.year = 2024;

// Query 88
MATCH (c:Company {name: 'Lanka Ventures'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 71011000.0, r.year = 2023;

// Query 89
MATCH (c:Company {name: 'Lanka Ventures'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 63.52, r.year = 2024;

// Query 90
MATCH (c:Company {name: 'Lanka Ventures'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 56.72, r.year = 2023;

// Query 91
MATCH (c:Company {name: 'Lanka Ventures'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 493000000.0, r.year = 2024;

// Query 92
MATCH (c:Company {name: 'Lanka Ventures'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 515000000.0, r.year = 2023;

// Query 93
// Step 7: Sector Nodes;

// Query 94
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 95
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 96
MERGE (s:Sector {name: 'Utilities'}) ON CREATE SET s.id = 'utilities';

// Query 97
// Step 8: IN_SECTOR Relationships;

// Query 98
MATCH (c:Company {name: 'Lanka Ventures'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 99
MATCH (c:Company {name: 'LVL Energy Fund'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 100
MATCH (c:Company {name: 'Lanka Energy International'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 101
MATCH (c:Company {name: 'Sapthakanya Hydro Electric Company'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 102
MATCH (c:Company {name: 'Sapthakanya Hydro Electric Company'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 103
MATCH (c:Company {name: 'Pupulaketiya Mini Hydro Power'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 104
MATCH (c:Company {name: 'Pupulaketiya Mini Hydro Power'}), (s:Sector {name: 'Utilities'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 105
// Step 9: Product Nodes;

// Query 106
MERGE (p:Product {name: 'Electricity Generation'}) ON CREATE SET p.id = 'electricity_generation';

// Query 107
// Step 10: OFFERS Relationships;

// Query 108
MATCH (c:Company {name: 'Sapthakanya Hydro Electric Company'}), (p:Product {name: 'Electricity Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 109
MATCH (c:Company {name: 'Pupulaketiya Mini Hydro Power'}), (p:Product {name: 'Electricity Generation'}) MERGE (c)-[:OFFERS]->(p);

// Query 110
// Step 11: Company-Company Relationships (OWNS);

// Query 111
MATCH (parent:Company {name: 'Lanka Ventures'}), (child:Company {name: 'LVL Energy Fund'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 57.00, r.as_of = date('2024-03-31');

// Query 112
MATCH (parent:Company {name: 'LVL Energy Fund'}), (child:Company {name: 'Lanka Energy International'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.00, r.as_of = date('2024-03-31');

// Query 113
MATCH (parent:Company {name: 'LVL Energy Fund'}), (child:Company {name: 'Sapthakanya Hydro Electric Company'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 85.00, r.as_of = date('2024-03-31');

// Query 114
MATCH (parent:Company {name: 'LVL Energy Fund'}), (child:Company {name: 'Pupulaketiya Mini Hydro Power'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.00, r.as_of = date('2024-03-31');

// Total queries: 114
// Generated on: 2025-10-03T03:10:15.850329
