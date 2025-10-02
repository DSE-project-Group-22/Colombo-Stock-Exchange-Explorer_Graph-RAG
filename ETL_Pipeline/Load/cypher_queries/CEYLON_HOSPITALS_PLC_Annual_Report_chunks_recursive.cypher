// Query 1
MERGE (c:Company {name: 'Ceylon Hospitals PLC'}) ON CREATE SET c.id = 'ceylon_hospitals_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 3
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 4
MERGE (p:Person {name: 'K.M.P. Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 5
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 6
MERGE (p:Person {name: 'H. K. Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 7
MERGE (p:Person {name: 'S.A.B. Rajapaksa'}) ON CREATE SET p.id = 's_a_b_rajapaksa';

// Query 8
MERGE (p:Person {name: 'V. Bali'}) ON CREATE SET p.id = 'v_bali';

// Query 9
MERGE (p:Person {name: 'A.N. Thadani'}) ON CREATE SET p.id = 'a_n_thadani';

// Query 10
MERGE (p:Person {name: 'Amrit Rajaratnam'}) ON CREATE SET p.id = 'amrit_rajaratnam';

// Query 11
MERGE (p:Person {name: 'S.D.R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 12
MERGE (p:Person {name: 'C.P.R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 13
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 14
MERGE (p:Person {name: 'A.R. Rasiah'}) ON CREATE SET p.id = 'a_r_rasiah';

// Query 15
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 16
MERGE (p:Person {name: 'J.T. Sumathipala'}) ON CREATE SET p.id = 'j_t_sumathipala';

// Query 17
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r_radha';

// Query 18
MERGE (p:Person {name: 'R.A.T.P. Perera'}) ON CREATE SET p.id = 'r_a_t_p_perera';

// Query 19
MERGE (p:Person {name: 'D.A.S.D.A. Abeyesinhe'}) ON CREATE SET p.id = 'd_a_s_d_a_abeyesinhe';

// Query 20
MERGE (p:Person {name: 'A.D. Ross'}) ON CREATE SET p.id = 'a_d_ross';

// Query 21
MERGE (p:Person {name: 'V. Siva Jr.'}) ON CREATE SET p.id = 'v_siva_jr_';

// Query 22
MERGE (p:Person {name: 'S.S. Balasubramaniam'}) ON CREATE SET p.id = 's_s_balasubramaniam';

// Query 23
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd_swarnasinghe';

// Query 24
MERGE (p:Person {name: 'D. Hasitha S. Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_s_jayawardena';

// Query 25
MERGE (p:Person {name: 'C.R. Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 26
MERGE (p:Person {name: 'M.A.N.S. Perera'}) ON CREATE SET p.id = 'm_a_n_s_perera';

// Query 27
MERGE (p:Person {name: 'K. Dayaparan'}) ON CREATE SET p.id = 'k_dayaparan';

// Query 28
MERGE (p:Person {name: 'A. Shakthevale'}) ON CREATE SET p.id = 'a_shakthevale';

// Query 29
MERGE (p:Person {name: 'D.S.K. Amarasekara'}) ON CREATE SET p.id = 'd_s_k_amarasekara';

// Query 30
MERGE (p:Person {name: 'M.R. Mihular'}) ON CREATE SET p.id = 'm_r_mihular';

// Query 31
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Profit/(Loss) before tax'}) ON CREATE SET m.id = 'profit_loss_before_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit/(Loss) after tax'}) ON CREATE SET m.id = 'profit_loss_after_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Return on equity (ROE)'}) ON CREATE SET m.id = 'return_on_equity_roe', m.unit = '%';

// Query 38
MERGE (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed_roce', m.unit = '%';

// Query 39
MERGE (m:Metric {name: 'Group revenue'}) ON CREATE SET m.id = 'group_revenue', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Profit from operations'}) ON CREATE SET m.id = 'profit_from_operations', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Profit before tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Profit after tax from continuing operations'}) ON CREATE SET m.id = 'profit_after_tax_from_continuing_operations', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'EBITDA'}) ON CREATE SET m.id = 'ebitda', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Profit attributable to ordinary shareholders'}) ON CREATE SET m.id = 'profit_attributable_to_ordinary_shareholders', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Shareholders’ funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Net assets'}) ON CREATE SET m.id = 'net_assets', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Earnings per share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Dividend per share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Net assets per ordinary share'}) ON CREATE SET m.id = 'net_assets_per_ordinary_share', m.unit = 'Rs';

// Query 50
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 51
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 52
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 53
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 54
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 55
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 56
MERGE (s:Sector {name: 'Food and Staples Retailing'}) ON CREATE SET s.id = 'food_and_staples_retailing';

// Query 57
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/ Managing Director', r.as_of = date('2024-03-31');

// Query 58
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 59
MATCH (p:Person {name: 'K.M.P. Karunaratne'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 60
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-03-31');

// Query 61
MATCH (p:Person {name: 'H. K. Kaimal'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-03-31');

// Query 62
MATCH (p:Person {name: 'S.D.R. Arudpragasam'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 63
MATCH (p:Person {name: 'C.P.R. Perera'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 64
MATCH (p:Person {name: 'J.T. Sumathipala'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 65
MATCH (p:Person {name: 'R. Radha'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 66
MATCH (p:Person {name: 'R.A.T.P. Perera'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director/CEO', r.as_of = date('2024-03-31');

// Query 67
MATCH (p:Person {name: 'D.A.S.D.A. Abeyesinhe'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 68
MATCH (p:Person {name: 'A.D. Ross'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 69
MATCH (p:Person {name: 'V. Siva Jr.'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 70
MATCH (p:Person {name: 'S.S. Balasubramaniam'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 71
MATCH (p:Person {name: 'D. Swarnasinghe'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 72
MATCH (p:Person {name: 'D. Hasitha S. Jayawardena'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Chairman', r.as_of = date('2024-03-31');

// Query 73
MATCH (p:Person {name: 'C.R. Jansz'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 74
MATCH (p:Person {name: 'M.A.N.S. Perera'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 75
MATCH (p:Person {name: 'K. Dayaparan'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 76
MATCH (p:Person {name: 'A. Shakthevale'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 77
MATCH (p:Person {name: 'D.S.K. Amarasekara'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 78
MATCH (p:Person {name: 'M.R. Mihular'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 79
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 17000, r.as_of = date('2024-03-31');

// Query 80
MATCH (p:Person {name: 'K.M.P. Karunaratne'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 133, r.as_of = date('2024-03-31');

// Query 81
MATCH (p:Person {name: 'Amrit Rajaratnam'}), (c:Company {name: 'Ceylon Hospitals PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 300000, r.as_of = date('2024-03-31');

// Query 82
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772000000, r.year = 2024;

// Query 83
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612000000, r.year = 2024;

// Query 84
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (m:Metric {name: 'Profit/(Loss) before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212000000, r.year = 2024;

// Query 85
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (m:Metric {name: 'Profit/(Loss) after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78000000, r.year = 2024;

// Query 86
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381000000, r.year = 2024;

// Query 87
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832000000, r.year = 2024;

// Query 88
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.07, r.year = 2024;

// Query 89
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 90
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (m:Metric {name: 'Group revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 277076515000, r.year = 2024;

// Query 91
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (m:Metric {name: 'Profit from operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47489136000, r.year = 2024;

// Query 92
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 37378454000, r.year = 2024;

// Query 93
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (m:Metric {name: 'Profit after tax from continuing operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22304812000, r.year = 2024;

// Query 94
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (m:Metric {name: 'EBITDA'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58425212000, r.year = 2024;

// Query 95
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (m:Metric {name: 'Profit attributable to ordinary shareholders'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10769537000, r.year = 2024;

// Query 96
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (m:Metric {name: 'Shareholders’ funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 71830528000, r.year = 2024;

// Query 97
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (m:Metric {name: 'Net assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 143618731000, r.year = 2024;

// Query 98
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (m:Metric {name: 'Earnings per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 54.84, r.year = 2024;

// Query 99
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.80, r.year = 2024;

// Query 100
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (m:Metric {name: 'Net assets per ordinary share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 365.76, r.year = 2024;

// Query 101
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (s:Sector {name: 'Health Care Equipment and Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 102
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 103
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 104
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 105
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 106
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 107
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}), (s:Sector {name: 'Food and Staples Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 108
UNWIND [{id: 'ceylon_hospitals_plc_directors_and_executives_0', content: 'The following DIRECTORS held Office during the year under \nreview . The biographical details of  the Board members are set \nout on pages 24 to 25\nMr. A.K. Pathirage - (Chairman/ Managing Director) \nDr. S. Selliah – Deputy Chairman (Resigned w .e.f  29th July \n2024)\nDr. K.M.P Karunaratne – Group Chief  Executive Officer\nMr. G.L.H. Premaratne – Independent Non Executive \nDirector\nMr. H K Kaimal - Non-Executive Non Independent Director \n- (appointed w .e.f. 18th June 2024)\nFIT AND PROPER CRITERIA\nThe DIRECTORS hereby confirm that the DIRECTORS and CEO \nof  the company satisfy the fit and proper Assessment Criteria \nstipulated in section 9.7 of  the Listing Rules of  the Colombo \nStock Exchange for the year.\nDIRECTORS’ SHAREHOLDING \nName of Director No. of Shares \nas at 31/03/2024\nNo. of Shares \nas at 31/03/2023\nMr. A K Pathirage - -\nDr. S. Selliah 17,000 17,000\nDr. K.M.P Karunaratne 133 133\nMr. G.L.H Premaratne - -\nMr. S.A.B Rajapaksa - -\nMr. V .Bali - -\nMr. A.N Thadani - -', chunk_type: 'directors_and_executives', index: 0}, {id: 'ceylon_hospitals_plc_directors_and_executives_1', content: 'disclosed in Note 27 to the financial statements on page 60.\nDuring the financial year the Company has not entered in to any \ncontracts in which the DIRECTORS have had a material interest.\nNeither the DIRECTORS nor their close family members have had any \nmaterial business relationships with other DIRECTORS.\n              No. of shares\nName of Director As at    \n31.03.2024\nAs at    \n31.03.2023\nMr. Amrit Rajaratnam 300,000 300,000\nCorporate Donations  \nDetails pertaining to corporate donations made by the Company \nduring the financial year 2023/24 are given in note 6 to the financial \nstatements on page 41.\nDirectorate\nThe names of the DIRECTORS who held office during the financial \nyear are given below and the profiles of the DIRECTORS who are \ncurrently in office are given on pages 8 and 9.\nMr. S. D. R. Arudpragasam - Chairman \nMr. C. P. R. Perera - Deputy Chairman \nMr. S. Rajaratnam \nMr. Amrit Rajaratnam \nMr. A. R. Rasiah\nMr. Anushman Rajaratnam', chunk_type: 'directors_and_executives', index: 1}, {id: 'ceylon_hospitals_plc_directors_and_executives_2', content: 'foreseeable future. Accordingly, the Financial Statements are \nprepared based on the going concern concept.\nDIRECTORS who held office during the Year\nThe DIRECTORS of the Company during the year were as follows.\nDr. J. T. Sumathipala \nChairman (resigned with effect from 25th March 2024)\nMr. R. Radha \nManaging Director  \n(appointed with effect from 09th January 2024)\nMr. R.A.T.P Perera Executive Director/CEO  \n(resigned with effect from 31st January 2024)\nMr. D.A.S.D. A. Abeyesinhe \nNon-independent Non-Executive Director\nMr. A. D. Ross  \nIndependent Non-Executive Director\nMr. V. Siva Jr.  \nIndependent Non-Executive Director\nMr. S. S. Balasubramaniam    \nNon-Executive Director\nMr. D. Swarnasinghe \nIndependent Non-Executive Director', chunk_type: 'directors_and_executives', index: 2}, {id: 'ceylon_hospitals_plc_directors_and_executives_3', content: 'Company and the Group, all contributions, levies and taxes \npayable on behalf  of, and in respect of, the employees of  the \nCompany and the Group, and all other known statutory dues \nas were due and payable by the Company and the Group as \nat the date of  the Statement of  Financial Position have been \npaid or, where relevant provided for, except as specified in \nNote 29 to the Financial Statements, covering contingent \nliabilities. \nMATERIAL ISSUES PERTAINING TO THE \nEMPLOYEES AND INDUSTRIAL RELATIONS\nThere have been no material issues pertaining to the \nemployees and industrial relations of  the Company .\nRELATED PARTY TRANSACTIONS \nThe Company’s transactions with Related Parties, given in \nNote 31 to the Financial Statements.\nDIRECTORATE \nThe following DIRECTORS held Office during the year under \nreview . The biographical details of  the Board members are set \nout on pages 24 to 25\nMr. A.K. Pathirage - (Chairman/ Managing Director)', chunk_type: 'directors_and_executives', index: 3}, {id: 'ceylon_hospitals_plc_directors_and_executives_4', content: 'DIRECTORS, two Non-Executive DIRECTORS and an Independent Director.  The composition of the Company’s Board has been \nstructured in accordance with the principles of good governance and long-term strategy. Names of the members of the Board \nof DIRECTORS and their brief resumes are given on pages 5 to 7 and their roles are set out below.\nDIRECTORS Directorship Status Attendance\nMr D Hasitha S Jayawardena  Executive Chairman 2/2\nMr. D H S Jayawardena  Deceased on 03rd February 2025 2/2\nMr. C R Jansz  Non-Independent Non-Executive Director 2/2\nMr. M A N S Perera  Executive Director 2/2\nMr. K Dayaparan  Non-Independent Non-Executive Director 2/2\nDr. A Shakthevale - resigned w.e.f. 01.10.2024 Independent Non-Executive Director 1/2\nMr. D S K Amarasekara - resigned w.e.f. 01.10.2024 Independent Non-Executive Director 1/2\nMr M R Mihular - appointed w.e.f. 01.10.2024 Senior Independent Non-Executive Director 1/2', chunk_type: 'directors_and_executives', index: 4}, {id: 'ceylon_hospitals_plc_financial_performance_0', content: 'Annual Report 2023/24 |  7\nOperating Context \nand Strategy\nFinancial  \nInformation\nLeadership Corporate \nGovernance and Risk \nManagement\nManagement \nDiscussion and \nAnalysis\nSupplementary \nInformation\nPerformance Highlights (Financial)\n2024 2023 2022 2021 2020\nGroup Operational Performance \nRevenue Rs. Mn  10,772  8,417  4,095  1,790  5,560 \nResults from operating activities Rs. Mn  612  93  (407)  (1,913)  (28)\nProfit/(Loss) before tax Rs. Mn  212  (133)  (459)  (2,370)  199 \nProfit/(Loss) after tax Rs. Mn  78  (333)  (508)  (2,244)  106 \nDividends paid Rs. Mn  -    -    -    -    442 \nReturn on equity (ROE) %  0.07)  (0.92)  (1.62)  (5.54)  (0.15)\nPre-Tax return on capital employed \n(ROCE)\n%  1.86  0.86  (0.65)  (6.43)  0.61 \nBalance Sheet Strength \nTotal assets Rs. Mn  48,381  45,912  42,509  40,869  42,582 \nTotal liabilities Rs. Mn  14,832  13,674  7,549  6,256  5,889 \nNet debt / (Cash) Rs. Mn  2,284  2,101  1,645  691  (587)', chunk_type: 'financial_performance', index: 0}, {id: 'ceylon_hospitals_plc_financial_performance_1', content: 'ASIA ASSET FINANCE PLC        Annual Report  2023 | 2024\n44\nand the accumulation of retained earnings \nover the period under review.\nOPTIMISING PERFORMANCE\nGross Income\nGROSS INCOME\n0\n5\n4\n3\n2\n1\n6\n7\n(Rs.Mn )\n2020 2021 2022 20242023\n3.3\n2.9\n3.1\n6.0\n6.6\nThe gross income of the company \nrecorded a growth of 9.94% to reach \nRs. 6.604 Bn, compared to Rs. 6.006 Bn \nrecorded in the preceding period, while \nthe company’s profit after tax for the year \nreached Rs. 344.18 Mn, compared to the \nindicator’s performance of Rs.295.3 Mn in \nthe previous year. Other operating income \nrecorded a marginal increase to reach \nRs. 921.5 Mn compared to the previous \nyear’s Rs. 614.6 Mn.\nPROFIT BEFORE AND AFTER TAXES\nPROFIT AFTER TAX \n0\n100%\n300%\n200%\n400%\n(Rs.Mn )\n2020 2021 2022 20242023\n70.15\n284.31\n45.2\n118.2\n344.2\nReflecting the growth in profit after \ntax, the company recorded increases \nin total assets and equity during the \nyear. Consequently, Return on Assets \n(ROA) stood at 1.33% during the year,', chunk_type: 'financial_performance', index: 1}, {id: 'ceylon_hospitals_plc_financial_performance_2', content: '10\nASIA ASSET FINANCE PLC        Annual Report  2023 | 2024\nFinancial Highlights\n2023/2024 2022/2023\nFINANCE PERFORMANCE( RS MN)\nGross Revenue 6,604 6,006\nNet Interest Income 1,432 1,741\nProfit Before Tax 373 360\nTaxation (29) (64)\nProfit After Tax 344 295\nPOSITION AS AT THE YEA END (RS.MN)\nCash and Cash Equivalents 3,888 2,063\nLoans and Recivables 19,058 19,478\nTotal assets 25,843 25,013\nFixed Depoit 14,485 13,275\nFINANCIAL RATIOS (%)\nProfitability Perspective\nProfit for the year(Mn) 344 295\nNet Interest Margin 5.94 8.94\nReturn on Assets (ROA) 1.33 1.18 \nEquity Holders\nEarnings per share( Rs) 2.77  2.38 \nNet Asset Value per share (Rs.) 27.10 24.24 \nReturn on equity (%) 10.82 9.81\nDEBT HOLDERS\nDebt to Equity ratio (Times) 6.43 7.15\nInterest Cover (Times) 1.12 1.10\nSTATUTORY RATIO \nTier 1 (Minimum requireemnt 8.5%) 21.22 27.43\nAvailable Liquid Assets to Required Liquid Assets (g) 213 243\nNon Performing Ratio 22.11 12.79\nQUALITY OF LOAN PORTFOLIO) (%)', chunk_type: 'financial_performance', index: 2}, {id: 'ceylon_hospitals_plc_financial_performance_3', content: 'The consolidated financial statements which comprise of the \nStatement of Profit or Loss and other Comprehensive Income, \nStatement of Financial Position, Statement of Cash Flows, \nStatement of Changes in Equity and Notes to the financial \nstatements of the Company and the Group for the year ended \n31st March 2024 are set out on pages 42 to 112. These financial \nstatements do comply with the requirements of the Companies \nAct No. 07 of 2007.\n4.1. Revenue\nA detailed analysis of revenue of the Company and the Group is \ngiven in Note 11 to the Financial Statements.\n4.2. Financial results and appropriation\nAn abridgement of the financial performance of the Company and \nthe Group is presented in the table below:', chunk_type: 'financial_performance', index: 3}, {id: 'ceylon_hospitals_plc_financial_performance_4', content: 'Financial Highlights\n(Amounts expressed in Sri Lankan Rs.’000 unless otherwise stated)\nFor the year ended/as at 31st March 2024 2023 % Change\nStatement of Profit or Loss\nGroup revenue  277,076,515  330,458,690  (16)\nProfit from operations  47,489,136  59,257,650  (20)\nProfit before tax  37,378,454  42,433,522  (12)\nProfit after tax from continuing operations  22,304,812  27,357,875  (18)\nEBITDA  58,425,212  71,246,699  (18)\nProfit attributable to ordinary shareholders  10,769,537  13,729,646  (22)\nOperating cash flow per share (Rs.)  170.86  267.43  (36)\nEarnings per share (Rs.) - Group  54.84  69.91  (22)\nDividend per share (Rs.) - Company  6.80  1.50  353 \nStatement of Cash flows\nOperating cash flow  33,553,915  52,519,931  (36)\nCapital expenditure  16,919,433  17,387,897  (3)\nStatement of Financial Position\nShareholders’ funds  71,830,528  68,547,883  5 \nNet assets  143,618,731  140,236,892  2 \nNet assets per ordinary share (Rs.)  365.76  349.05  5', chunk_type: 'financial_performance', index: 4}, {id: 'ceylon_hospitals_plc_risk_factors_0', content: '- Annual Report 2023\n53\n- Annual Report 2024\nRisk \nInterest Rate Risk\nTechnology & IT \nRisk\nInventory cycle\nRisk of\nCompetition\nCompany\nReputation Risk\nThreat Probability\nModerate\nModerate\nModerate\nModerate\nModerate \nRisk Assessment \nFiscal and monitory policy changes \nhave a direct impact on liquidity\nand production costs.\nLack of accurate and\ntimely information due to\nineffective IT systems. Increase in \ndigitization of operations pose a \nthreat of loss of data and hacking.\n \nLiquidity is impacted as the industry \nis cyclical with long gestation periods.\nCompetition from other major low \ncost producers.\nThe reputation of the company could \nbe damaged by noncompliance, \nunethical behavior, and inconsistent \nproduct quality.\nMitigating Strategies \n•\t Close\tmonitoring\tof\tinterest\trate\t\ndevelopments and negotiating with \nfunding partners\n•\t Capital\tdevelopment\n•\t Maintenance\tof\tbiological\tassets\t\nin optimum condition to enhance \nproductivity, turnover and cash-\nflows.', chunk_type: 'risk_factors', index: 0}, {id: 'ceylon_hospitals_plc_risk_factors_1', content: '- Annual Report 2023\n52\n- Annual Report 2024\nFollowing are the key risks that the company is exposed to while carrying out its business activities and mitigation measures \nimplemented.\nRisk \nEnvironmental\nRisk\nHuman Resource\nProduct Quality\nRisk\nPolitical Risk\nInflationary \npressures\nThreat Probability\nHigh\nModerate\nModerate\nHigh\nModerate\nRisk Assessment \nThe variability of weather conditions \ninfluences crop outcomes. Adverse \nweather, shifts in ambient \ntemperature, and natural calamities \ncan all disrupt crop growth and \ndevelopment. These factors impact the \nquantity, quality, market positioning, \nand financial performance of \nagricultural products.\nLow productivity, reduction in \nresident manpower, disruptions in \nachieving the targeted objectives.\nInconsistency in quality of end \nproducts and its negative impact on \nprices and market share.\nThe impact of political intervention, \nmajor industrial relations \nissues, regulatory changes, ad-\nhoc acquisitions of land etc. are', chunk_type: 'risk_factors', index: 1}, {id: 'ceylon_hospitals_plc_risk_factors_2', content: 'linked CPO prices. We continue to monitor market \nvolatilities, to anticipate and exploit favourable \nmovements.\nBusiness \nEnvironment \nRisks\nUnfavourable global and local weather patterns resulting \nin adverse weather conditions, natural and man-made \ndisasters including fires and haze from fires, droughts, \nfloods, pestilence and crop disease could reduce the \namount or quality of FFB we can harvest in the palm oil \nplantation sector.\nMinimise fire risk through monitoring and maintaining \nadequate fire response resources. Invest in agronomy \nand plantation management practices to minimise the \nimpact by any sudden up-rise of pest and diseases.\nThe Group employs Business Continuity Planning as \nwell as safeguards against perils through adequate \ninsurance.\nLiquidity \nRisk\nThe risk that business sectors may not easily be able \nto meet its operational and financial obligations can \nresult in an unavailability of sufficient funds, which', chunk_type: 'risk_factors', index: 2}, {id: 'ceylon_hospitals_plc_risk_factors_3', content: 'short rearing time along with relatively low cost of \ninvestment, has contributed to a steady growth in \npoultry production and consumption.\n3.3 The Company’s \ncustomer base is \nconfined to a single \ngeographic market, \nwhich exposes the \nCompany extensively \nto vulnerabilities of the \nsingle market in which \nit operates.\nR  Vulnerability to fluctuations  \nin turnover. \nO  The Company has already \nembarked on exploring \noverseas markets.\nThe Company is presently exploring other export \nmarkets to achieve geographic diversification.\nThe Company’s sales and distribution network \ncovers the entire country and targets customers \nacross the value chain. This diversification of \ncustomer-base helps to mitigate the risk arising \nfrom geographic concentration in the country.\n04. Operational  \nrisk\n4.1 Breakdown of internal \ncontrols\nR  Potential for loss of smooth \noperational continuity due \nto failure and inadequacy of \ninternal controls and internal \nsystems to prevent failures or', chunk_type: 'risk_factors', index: 3}, {id: 'ceylon_hospitals_plc_risk_factors_4', content: 'USD-linked CPO prices. We continue to monitor \nmarket volatilities, to anticipate and exploit \nfavourable movements.\nBusiness Environment \nRisks\nUnfavourable global and local weather patterns \nresulting in adverse weather conditions, natural \nand man-made disasters including fires and \nhaze from fires, droughts, floods, pestilence and \ncrop disease could reduce the amount or quality \nof FFB we can harvest in the palm oil plantation \nsector.\nMinimise fire risk through monitoring and \nmaintaining adequate fire response resources. \nInvest in agronomy and plantation management \npractices to minimise the impact by any sudden \nup-rise of pest and diseases.\nThe Group employs Business Continuity Planning \nas well as safeguards against perils through \nadequate insurance.\nLiquidity Risk The risk that business sectors may not easily \nbe able to meet its operational and financial \nobligations can result in an unavailability of \nsufficient funds, which may interrupt the smooth', chunk_type: 'risk_factors', index: 4}, {id: 'ceylon_hospitals_plc_business_segments_0', content: 'from one another. Top management of the Company considers the operating results and condition of its business segments in their \ndecision making process and performance evaluation. Types of products and services from which each operating segment derives its \nrevenues are described as follows.\n \nAn operating segment is a component of the Company that engages in business activities from which it may earn revenues and incur \nexpenses, including revenues and expenses that relate to transactions with any of the Company’s other components. All operating \nsegments’ operating results are reviewed regularly by the Senior Management to make decisions about resources to be allocated to \nthe segment and to assess its performance, and for which discrete financial information is available.', chunk_type: 'business_segments', index: 0}, {id: 'ceylon_hospitals_plc_business_segments_1', content: 'of its business segments rather than their geographical location. Each segment is separately managed as it requires \ndifferent management strategies, as underscored by the Group’s organizational structure.\nThe Group’s business operations are classified into eight segments based on the products or services rendered, namely, \nInvestment Holdings, Portfolio and Asset Management, Oil palm plantations, Oils & fats, Beverages, Real Estate, Leisure, \nand Management Services. The following table describes the operations of each segment.  \nInter segmental sales are made at prices that approximate the market prices. Segment revenue, expenses, and results \ninclude transactions between segments. On consolidation, these transactions and any unrealised profits and losses \nare eliminated. Segmental expenses are directly attributed to a relevant segment or a portion of expenses that can be \nallocated reasonably as determined by the management.        \n  \n   \nNotes to the Financial Statements', chunk_type: 'business_segments', index: 1}, {id: 'ceylon_hospitals_plc_business_segments_2', content: 'its business segments rather than their geographical location. Each segment is separately managed as it requires different \nmanagement strategies, as underscored by the Group’s organizational structure.\nThe Group’s business operations are classified into eight segments based on the products or services rendered, namely, \nInvestment Holdings, Portfolio and Asset Management, Oil palm plantations, Oils & fats, Beverages, Real Estate, Leisure and \nManagement Services. The following table describes the operations of each segment.\nInter segmental sales are made at prices that approximate the market prices. Segment revenue, expenses, and results include \ntransactions between segments. On consolidation, these transactions and any unrealised profits and losses are eliminated. \nSegmental expenses are directly attributed to a relevant segment or a portion of expenses that can be allocated reasonably as \ndetermined by the management.', chunk_type: 'business_segments', index: 2}, {id: 'ceylon_hospitals_plc_business_segments_3', content: 'identified as geographical segments for the Group.\nA segment is a distinguishable component of the Group that is engaged in providing \nproducts and services. (Business segment, which is subject to risks and rewards that are \ndifferent from those of other segments).\nSegment results, assets and liabilities include items directly attributable to a segment as \nwell as those that can be allocated on a reasonable basis. \nThe accounting policies adopted for segment reporting are those accounting policies \nadopted for preparing the Financial Statements of the Group.\nThe following summary describes the operations of each reportable segment:\nReportable segment Operations \nFood retailing Operating a chain of retail outlets under the brand names of “Food City” \nand “Cargills Express” and “Food Hall” and eCommerce platform  \n“Cargills Online”.\nFood and beverage \nmanufacturing and \ndistribution\n Manufacturing and distributing ice cream and other dairy products, fruit', chunk_type: 'business_segments', index: 3}, {id: 'ceylon_hospitals_plc_business_segments_4', content: '157 \n Annual Report 2023 / 24 Central Finance Company PLC\n \n BUSINESS SEGMENT INFORMATION\nAll figures in Rs.000 Leasing, hire purchase and \nother advances\nMedical services Manufacturing Insurance broking Investments Real estate Intra segmental \nadjustments\nTotal\nFor the year ended 31st March 2024 2023 2024 2023 2024 2023 2024 2023 2024 2023 2024 2023 2024 2023 2024 2023\nRevenue\nInterest income  12,942,365  12,061,606  18,238  19,162  183,295  65,245  235,348  269,463  6,115,008  5,491,366  6,010  5,108 -  -  19,500,264  17,911,950 \nOther revenue  -  -  157,605  148,642  4,356,954  4,355,856  252,540  244,426  -  -  -  - -  -  4,767,099  4,748,924 \nNet income from financial instruments at FVTPL  28  106  9,584  (17,428)  24,766  22,997  72,658  4,408  243,606  56,676  (398)  334 -  350,244  67,093 \nOperating lease income  1,186,002  1,026,926 - - - - - - - - - - -  -  1,186,002  1,026,926', chunk_type: 'business_segments', index: 4}] AS chunk MERGE (ch:Chunk {id: chunk.id}) ON CREATE SET ch.content = chunk.content, ch.chunk_type = chunk.chunk_type, ch.index = chunk.index;

// Query 109
MATCH (c:Company {name: 'Ceylon Hospitals PLC'}) WITH c UNWIND ['ceylon_hospitals_plc_directors_and_executives_0', 'ceylon_hospitals_plc_directors_and_executives_1', 'ceylon_hospitals_plc_directors_and_executives_2', 'ceylon_hospitals_plc_directors_and_executives_3', 'ceylon_hospitals_plc_directors_and_executives_4', 'ceylon_hospitals_plc_financial_performance_0', 'ceylon_hospitals_plc_financial_performance_1', 'ceylon_hospitals_plc_financial_performance_2', 'ceylon_hospitals_plc_financial_performance_3', 'ceylon_hospitals_plc_financial_performance_4', 'ceylon_hospitals_plc_risk_factors_0', 'ceylon_hospitals_plc_risk_factors_1', 'ceylon_hospitals_plc_risk_factors_2', 'ceylon_hospitals_plc_risk_factors_3', 'ceylon_hospitals_plc_risk_factors_4', 'ceylon_hospitals_plc_business_segments_0', 'ceylon_hospitals_plc_business_segments_1', 'ceylon_hospitals_plc_business_segments_2', 'ceylon_hospitals_plc_business_segments_3', 'ceylon_hospitals_plc_business_segments_4'] AS chunk_id MATCH (ch:Chunk {id: chunk_id}) MERGE (c)-[:HAS_CONTENT]->(ch);

// Total queries: 109
// Generated on: 2025-09-30T15:18:35.148246
