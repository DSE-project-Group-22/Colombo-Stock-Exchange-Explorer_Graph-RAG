// Query 1
MERGE (c:Company {name: 'Brown and Company PLC'}) ON CREATE SET c.id = 'brown_and_company_plc';

// Query 2
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 3
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 4
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 5
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 6
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 7
MERGE (p:Person {name: 'S.A.B Rajapaksa'}) ON CREATE SET p.id = 's_a_b_rajapaksa';

// Query 8
MERGE (p:Person {name: 'V. Bali'}) ON CREATE SET p.id = 'v_bali';

// Query 9
MERGE (p:Person {name: 'A.N Thadani'}) ON CREATE SET p.id = 'a_n_thadani';

// Query 10
MERGE (p:Person {name: 'Amrit Rajaratnam'}) ON CREATE SET p.id = 'amrit_rajaratnam';

// Query 11
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 12
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 13
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 14
MERGE (p:Person {name: 'A. R. Rasiah'}) ON CREATE SET p.id = 'a_r_rasiah';

// Query 15
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 16
MERGE (p:Person {name: 'J. T. Sumathipala'}) ON CREATE SET p.id = 'j_t_sumathipala';

// Query 17
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r_radha';

// Query 18
MERGE (p:Person {name: 'R.A.T.P Perera'}) ON CREATE SET p.id = 'r_a_t_p_perera';

// Query 19
MERGE (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'd_a_s_d_a_abeyesinhe';

// Query 20
MERGE (p:Person {name: 'A. D. Ross'}) ON CREATE SET p.id = 'a_d_ross';

// Query 21
MERGE (p:Person {name: 'V. Siva Jr.'}) ON CREATE SET p.id = 'v_siva_jr';

// Query 22
MERGE (p:Person {name: 'S. S. Balasubramaniam'}) ON CREATE SET p.id = 's_s_balasubramaniam';

// Query 23
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd_swarnasinghe';

// Query 24
MERGE (p:Person {name: 'D Hasitha S Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_s_jayawardena';

// Query 25
MERGE (p:Person {name: 'C R Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 26
MERGE (p:Person {name: 'M A N S Perera'}) ON CREATE SET p.id = 'm_a_n_s_perera';

// Query 27
MERGE (p:Person {name: 'K Dayaparan'}) ON CREATE SET p.id = 'k_dayaparan';

// Query 28
MERGE (p:Person {name: 'A Shakthevale'}) ON CREATE SET p.id = 'a_shakthevale';

// Query 29
MERGE (p:Person {name: 'D S K Amarasekara'}) ON CREATE SET p.id = 'd_s_k_amarasekara';

// Query 30
MERGE (p:Person {name: 'M R Mihular'}) ON CREATE SET p.id = 'm_r_mihular';

// Query 31
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Dividends paid'}) ON CREATE SET m.id = 'dividends_paid', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Return on equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 37
MERGE (m:Metric {name: 'Pre-Tax return on capital employed'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed', m.unit = '%';

// Query 38
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Net debt'}) ON CREATE SET m.id = 'net_debt', m.unit = 'Rs';

// Query 41
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 42
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 43
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 44
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 45
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 46
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 47
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 48
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/ Managing Director', r.as_of = date('2024-03-31');

// Query 49
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 50
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 51
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-03-31');

// Query 52
MATCH (p:Person {name: 'H K Kaimal'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Non Independent Director', r.as_of = date('2024-06-18');

// Query 53
MATCH (p:Person {name: 'S. D. R. Arudpragasam'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 54
MATCH (p:Person {name: 'C. P. R. Perera'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 55
MATCH (p:Person {name: 'J. T. Sumathipala'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 56
MATCH (p:Person {name: 'R. Radha'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-09');

// Query 57
MATCH (p:Person {name: 'R.A.T.P Perera'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director/CEO', r.as_of = date('2024-03-31');

// Query 58
MATCH (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 59
MATCH (p:Person {name: 'A. D. Ross'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 60
MATCH (p:Person {name: 'V. Siva Jr.'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 61
MATCH (p:Person {name: 'S. S. Balasubramaniam'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 62
MATCH (p:Person {name: 'D. Swarnasinghe'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 63
MATCH (p:Person {name: 'D Hasitha S Jayawardena'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Chairman', r.as_of = date('2024-03-31');

// Query 64
MATCH (p:Person {name: 'C R Jansz'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 65
MATCH (p:Person {name: 'M A N S Perera'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 66
MATCH (p:Person {name: 'K Dayaparan'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 67
MATCH (p:Person {name: 'M R Mihular'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Non-Executive Director', r.as_of = date('2024-10-01');

// Query 68
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 17000, r.as_of = date('2024-03-31');

// Query 69
MATCH (p:Person {name: 'K.M.P Karunaratne'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 133, r.as_of = date('2024-03-31');

// Query 70
MATCH (p:Person {name: 'Amrit Rajaratnam'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 300000, r.as_of = date('2024-03-31');

// Query 71
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772000000, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612000000, r.year = 2024;

// Query 73
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212000000, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78000000, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381000000, r.year = 2024;

// Query 76
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832000000, r.year = 2024;

// Query 77
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Return on equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.07, r.year = 2024;

// Query 78
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 79
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net debt'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284000000, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'Brown and Company PLC'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 81
MATCH (c:Company {name: 'Brown and Company PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 82
MATCH (c:Company {name: 'Brown and Company PLC'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 83
MATCH (c:Company {name: 'Brown and Company PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 84
MATCH (c:Company {name: 'Brown and Company PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 85
MATCH (c:Company {name: 'Brown and Company PLC'}), (s:Sector {name: 'Health Care Equipment and Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 86
MATCH (c:Company {name: 'Brown and Company PLC'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 87
UNWIND [{id: 'brown_and_company_plc_directors_and_executives_0', content: 'The following DIRECTORS held Office during the year under \nreview . The biographical details of  the Board members are set \nout on pages 24 to 25\nMr. A.K. Pathirage - (Chairman/ Managing Director) \nDr. S. Selliah – Deputy Chairman (Resigned w .e.f  29th July \n2024)\nDr. K.M.P Karunaratne – Group Chief  Executive Officer\nMr. G.L.H. Premaratne – Independent Non Executive \nDirector\nMr. H K Kaimal - Non-Executive Non Independent Director \n- (appointed w .e.f. 18th June 2024)\nFIT AND PROPER CRITERIA\nThe DIRECTORS hereby confirm that the DIRECTORS and CEO \nof  the company satisfy the fit and proper Assessment Criteria \nstipulated in section 9.7 of  the Listing Rules of  the Colombo \nStock Exchange for the year.\nDIRECTORS’ SHAREHOLDING \nName of Director No. of Shares \nas at 31/03/2024\nNo. of Shares \nas at 31/03/2023\nMr. A K Pathirage - -\nDr. S. Selliah 17,000 17,000\nDr. K.M.P Karunaratne 133 133\nMr. G.L.H Premaratne - -\nMr. S.A.B Rajapaksa - -\nMr. V .Bali - -\nMr. A.N Thadani - -', chunk_type: 'directors_and_executives', index: 0}, {id: 'brown_and_company_plc_directors_and_executives_1', content: 'disclosed in Note 27 to the financial statements on page 60.\nDuring the financial year the Company has not entered in to any \ncontracts in which the DIRECTORS have had a material interest.\nNeither the DIRECTORS nor their close family members have had any \nmaterial business relationships with other DIRECTORS.\n              No. of shares\nName of Director As at    \n31.03.2024\nAs at    \n31.03.2023\nMr. Amrit Rajaratnam 300,000 300,000\nCorporate Donations  \nDetails pertaining to corporate donations made by the Company \nduring the financial year 2023/24 are given in note 6 to the financial \nstatements on page 41.\nDirectorate\nThe names of the DIRECTORS who held office during the financial \nyear are given below and the profiles of the DIRECTORS who are \ncurrently in office are given on pages 8 and 9.\nMr. S. D. R. Arudpragasam - Chairman \nMr. C. P. R. Perera - Deputy Chairman \nMr. S. Rajaratnam \nMr. Amrit Rajaratnam \nMr. A. R. Rasiah\nMr. Anushman Rajaratnam', chunk_type: 'directors_and_executives', index: 1}, {id: 'brown_and_company_plc_directors_and_executives_2', content: 'foreseeable future. Accordingly, the Financial Statements are \nprepared based on the going concern concept.\nDIRECTORS who held office during the Year\nThe DIRECTORS of the Company during the year were as follows.\nDr. J. T. Sumathipala \nChairman (resigned with effect from 25th March 2024)\nMr. R. Radha \nManaging Director  \n(appointed with effect from 09th January 2024)\nMr. R.A.T.P Perera Executive Director/CEO  \n(resigned with effect from 31st January 2024)\nMr. D.A.S.D. A. Abeyesinhe \nNon-independent Non-Executive Director\nMr. A. D. Ross  \nIndependent Non-Executive Director\nMr. V. Siva Jr.  \nIndependent Non-Executive Director\nMr. S. S. Balasubramaniam    \nNon-Executive Director\nMr. D. Swarnasinghe \nIndependent Non-Executive Director', chunk_type: 'directors_and_executives', index: 2}, {id: 'brown_and_company_plc_directors_and_executives_3', content: 'Company and the Group, all contributions, levies and taxes \npayable on behalf  of, and in respect of, the employees of  the \nCompany and the Group, and all other known statutory dues \nas were due and payable by the Company and the Group as \nat the date of  the Statement of  Financial Position have been \npaid or, where relevant provided for, except as specified in \nNote 29 to the Financial Statements, covering contingent \nliabilities. \nMATERIAL ISSUES PERTAINING TO THE \nEMPLOYEES AND INDUSTRIAL RELATIONS\nThere have been no material issues pertaining to the \nemployees and industrial relations of  the Company .\nRELATED PARTY TRANSACTIONS \nThe Company’s transactions with Related Parties, given in \nNote 31 to the Financial Statements.\nDIRECTORATE \nThe following DIRECTORS held Office during the year under \nreview . The biographical details of  the Board members are set \nout on pages 24 to 25\nMr. A.K. Pathirage - (Chairman/ Managing Director)', chunk_type: 'directors_and_executives', index: 3}, {id: 'brown_and_company_plc_directors_and_executives_4', content: 'DIRECTORS, two Non-Executive DIRECTORS and an Independent Director.  The composition of the Company’s Board has been \nstructured in accordance with the principles of good governance and long-term strategy. Names of the members of the Board \nof DIRECTORS and their brief resumes are given on pages 5 to 7 and their roles are set out below.\nDIRECTORS Directorship Status Attendance\nMr D Hasitha S Jayawardena  Executive Chairman 2/2\nMr. D H S Jayawardena  Deceased on 03rd February 2025 2/2\nMr. C R Jansz  Non-Independent Non-Executive Director 2/2\nMr. M A N S Perera  Executive Director 2/2\nMr. K Dayaparan  Non-Independent Non-Executive Director 2/2\nDr. A Shakthevale - resigned w.e.f. 01.10.2024 Independent Non-Executive Director 1/2\nMr. D S K Amarasekara - resigned w.e.f. 01.10.2024 Independent Non-Executive Director 1/2\nMr M R Mihular - appointed w.e.f. 01.10.2024 Senior Independent Non-Executive Director 1/2', chunk_type: 'directors_and_executives', index: 4}, {id: 'brown_and_company_plc_financial_performance_0', content: 'Annual Report 2023/24 |  7\nOperating Context \nand Strategy\nFinancial  \nInformation\nLeadership Corporate \nGovernance and Risk \nManagement\nManagement \nDiscussion and \nAnalysis\nSupplementary \nInformation\nPerformance Highlights (Financial)\n2024 2023 2022 2021 2020\nGroup Operational Performance \nRevenue Rs. Mn  10,772  8,417  4,095  1,790  5,560 \nResults from operating activities Rs. Mn  612  93  (407)  (1,913)  (28)\nProfit/(Loss) before tax Rs. Mn  212  (133)  (459)  (2,370)  199 \nProfit/(Loss) after tax Rs. Mn  78  (333)  (508)  (2,244)  106 \nDividends paid Rs. Mn  -    -    -    -    442 \nReturn on equity (ROE) %  0.07)  (0.92)  (1.62)  (5.54)  (0.15)\nPre-Tax return on capital employed \n(ROCE)\n%  1.86  0.86  (0.65)  (6.43)  0.61 \nBalance Sheet Strength \nTotal assets Rs. Mn  48,381  45,912  42,509  40,869  42,582 \nTotal liabilities Rs. Mn  14,832  13,674  7,549  6,256  5,889 \nNet debt / (Cash) Rs. Mn  2,284  2,101  1,645  691  (587)', chunk_type: 'financial_performance', index: 0}, {id: 'brown_and_company_plc_financial_performance_1', content: 'ASIA ASSET FINANCE PLC        Annual Report  2023 | 2024\n44\nand the accumulation of retained earnings \nover the period under review.\nOPTIMISING PERFORMANCE\nGross Income\nGROSS INCOME\n0\n5\n4\n3\n2\n1\n6\n7\n(Rs.Mn )\n2020 2021 2022 20242023\n3.3\n2.9\n3.1\n6.0\n6.6\nThe gross income of the company \nrecorded a growth of 9.94% to reach \nRs. 6.604 Bn, compared to Rs. 6.006 Bn \nrecorded in the preceding period, while \nthe company’s profit after tax for the year \nreached Rs. 344.18 Mn, compared to the \nindicator’s performance of Rs.295.3 Mn in \nthe previous year. Other operating income \nrecorded a marginal increase to reach \nRs. 921.5 Mn compared to the previous \nyear’s Rs. 614.6 Mn.\nPROFIT BEFORE AND AFTER TAXES\nPROFIT AFTER TAX \n0\n100%\n300%\n200%\n400%\n(Rs.Mn )\n2020 2021 2022 20242023\n70.15\n284.31\n45.2\n118.2\n344.2\nReflecting the growth in profit after \ntax, the company recorded increases \nin total assets and equity during the \nyear. Consequently, Return on Assets \n(ROA) stood at 1.33% during the year,', chunk_type: 'financial_performance', index: 1}, {id: 'brown_and_company_plc_financial_performance_2', content: '10\nASIA ASSET FINANCE PLC        Annual Report  2023 | 2024\nFinancial Highlights\n2023/2024 2022/2023\nFINANCE PERFORMANCE( RS MN)\nGross Revenue 6,604 6,006\nNet Interest Income 1,432 1,741\nProfit Before Tax 373 360\nTaxation (29) (64)\nProfit After Tax 344 295\nPOSITION AS AT THE YEA END (RS.MN)\nCash and Cash Equivalents 3,888 2,063\nLoans and Recivables 19,058 19,478\nTotal assets 25,843 25,013\nFixed Depoit 14,485 13,275\nFINANCIAL RATIOS (%)\nProfitability Perspective\nProfit for the year(Mn) 344 295\nNet Interest Margin 5.94 8.94\nReturn on Assets (ROA) 1.33 1.18 \nEquity Holders\nEarnings per share( Rs) 2.77  2.38 \nNet Asset Value per share (Rs.) 27.10 24.24 \nReturn on equity (%) 10.82 9.81\nDEBT HOLDERS\nDebt to Equity ratio (Times) 6.43 7.15\nInterest Cover (Times) 1.12 1.10\nSTATUTORY RATIO \nTier 1 (Minimum requireemnt 8.5%) 21.22 27.43\nAvailable Liquid Assets to Required Liquid Assets (g) 213 243\nNon Performing Ratio 22.11 12.79\nQUALITY OF LOAN PORTFOLIO) (%)', chunk_type: 'financial_performance', index: 2}, {id: 'brown_and_company_plc_financial_performance_3', content: '44  | ASIAN HOTELS AND PROPERTIES PLC\nGross proﬁt, expenses and post tax proﬁtability YoY movement\nGross Proﬁt\n4,891\nOther \noperating\n income\n82\nDistribution \nexpenses\n-442\nAdministration\n expenses\n-2,787 -1,132 -336 26 -90 212 -135 78\nOther \noperating \nexpenses\nFinance\n cost\nFinance \nincome\nChange in \nFV of \ninvestment \nproperty\nPBT Income Tax PAT\nRs.Mn\nIncrease in Income/Proﬁt\nIncrease in Expense \nIncrease in Gross Proﬁt\n-3,000\n-2,000\n-1,000\n0\n1,000\n2,000\n3,000\n4,000\n5,000\nFinancial capital\nNet finance cost \nNet finance cost declined by a notable 18% to Rs. 310 Mn, driven by finance income of Rs. 26 Mn and finance expense of Rs. 336 Mn. \nFinance expense posted a notable decline of 15%, benefiting rom the decline in market-wide interest rates and also decline in \ninterest bearing borrowings under the non-current liabilities category. \nProfitability\nReversing the loss trend of the prior years, the Group posted a welcoming pre-tax profit of Rs. 212 Mn. With income taxes of Rs. 135', chunk_type: 'financial_performance', index: 3}, {id: 'brown_and_company_plc_financial_performance_4', content: 'and disclose the exploration, evaluation, and development \nexpenditure, in consistent with SLFRS and the accounting \npolicies of its ultimate Parent Company.\nRevenue, Profit and Appropriations\nRevenue generated by the Company amounted to Rs. \n1,765.7 million (2023 – Rs. 1,623.1 million).\nThe Company’s profit before tax was Rs. 232.3 million \n(2023 – profit before tax Rs. 241.9 million). The Company’s \ntotal comprehensive income net of tax was Rs. 158.5 \nmillion (2023 – Rs. 166.6 million). Details of financial \nresults of the Company are given in the statement of profit \nor loss and other comprehensive income on page 54. A \nbrief description of the results and appropriations are \ngiven below:', chunk_type: 'financial_performance', index: 4}, {id: 'brown_and_company_plc_risk_factors_0', content: '- Annual Report 2023\n53\n- Annual Report 2024\nRisk \nInterest Rate Risk\nTechnology & IT \nRisk\nInventory cycle\nRisk of\nCompetition\nCompany\nReputation Risk\nThreat Probability\nModerate\nModerate\nModerate\nModerate\nModerate \nRisk Assessment \nFiscal and monitory policy changes \nhave a direct impact on liquidity\nand production costs.\nLack of accurate and\ntimely information due to\nineffective IT systems. Increase in \ndigitization of operations pose a \nthreat of loss of data and hacking.\n \nLiquidity is impacted as the industry \nis cyclical with long gestation periods.\nCompetition from other major low \ncost producers.\nThe reputation of the company could \nbe damaged by noncompliance, \nunethical behavior, and inconsistent \nproduct quality.\nMitigating Strategies \n•\t Close\tmonitoring\tof\tinterest\trate\t\ndevelopments and negotiating with \nfunding partners\n•\t Capital\tdevelopment\n•\t Maintenance\tof\tbiological\tassets\t\nin optimum condition to enhance \nproductivity, turnover and cash-\nflows.', chunk_type: 'risk_factors', index: 0}, {id: 'brown_and_company_plc_risk_factors_1', content: '- Annual Report 2023\n52\n- Annual Report 2024\nFollowing are the key risks that the company is exposed to while carrying out its business activities and mitigation measures \nimplemented.\nRisk \nEnvironmental\nRisk\nHuman Resource\nProduct Quality\nRisk\nPolitical Risk\nInflationary \npressures\nThreat Probability\nHigh\nModerate\nModerate\nHigh\nModerate\nRisk Assessment \nThe variability of weather conditions \ninfluences crop outcomes. Adverse \nweather, shifts in ambient \ntemperature, and natural calamities \ncan all disrupt crop growth and \ndevelopment. These factors impact the \nquantity, quality, market positioning, \nand financial performance of \nagricultural products.\nLow productivity, reduction in \nresident manpower, disruptions in \nachieving the targeted objectives.\nInconsistency in quality of end \nproducts and its negative impact on \nprices and market share.\nThe impact of political intervention, \nmajor industrial relations \nissues, regulatory changes, ad-\nhoc acquisitions of land etc. are', chunk_type: 'risk_factors', index: 1}, {id: 'brown_and_company_plc_risk_factors_2', content: 'short rearing time along with relatively low cost of \ninvestment, has contributed to a steady growth in \npoultry production and consumption.\n3.3 The Company’s \ncustomer base is \nconfined to a single \ngeographic market, \nwhich exposes the \nCompany extensively \nto vulnerabilities of the \nsingle market in which \nit operates.\nR  Vulnerability to fluctuations  \nin turnover. \nO  The Company has already \nembarked on exploring \noverseas markets.\nThe Company is presently exploring other export \nmarkets to achieve geographic diversification.\nThe Company’s sales and distribution network \ncovers the entire country and targets customers \nacross the value chain. This diversification of \ncustomer-base helps to mitigate the risk arising \nfrom geographic concentration in the country.\n04. Operational  \nrisk\n4.1 Breakdown of internal \ncontrols\nR  Potential for loss of smooth \noperational continuity due \nto failure and inadequacy of \ninternal controls and internal \nsystems to prevent failures or', chunk_type: 'risk_factors', index: 2}, {id: 'brown_and_company_plc_risk_factors_3', content: 'The overall decrease in demand in the luxury jewellery market posese a greater risk to the company’s business, as approaching \nrecessions in its export markets can impact it’s ongoing business. \nOperational Risk\nOperation risk can occur at every level in the company. Operational risks are categorized as those that may occur from routine \noperations. Such risks and their sources are related to physical resources in the internal environment and can be a result of a variety \nof factors such as human errors, machinery malfunctions, and software related disruptions.\nThe Company has been in operation since 1990 and has strict protocol regarding all areas of the manufacturing process, from \nprotective equipment, Responsibility hand-offs and safety training. This risk is not seen as significant to the company.', chunk_type: 'risk_factors', index: 3}, {id: 'brown_and_company_plc_risk_factors_4', content: 'payables. The main purpose of these financial liabilities is to finance the Company’s operations and to provide \nguarantees to support its operations. The Company has trade and other receivables, and cash and short-term \ndeposits that arrive directly from its operations.        \n      \nThe Company is exposed to market risk, credit risk and liquidity risk.      \n \nThe Company’s senior management oversees the management of these risks. The Company’s senior management \nis supported by a financial risk committee that advises on financial risks and the appropriate financial risk \ngovernance framework for the Company.         \n       \nThe Board of Directors reviews and agrees policies for managing each of these risks which are summarised \nbelow.             \n   \n Market Risk            \n   \n Market risk is the risk that the fair value of future cash flows of a financial instrument will fluctuate because of', chunk_type: 'risk_factors', index: 4}, {id: 'brown_and_company_plc_business_segments_0', content: 'from one another. Top management of the Company considers the operating results and condition of its business segments in their \ndecision making process and performance evaluation. Types of products and services from which each operating segment derives its \nrevenues are described as follows.\n \nAn operating segment is a component of the Company that engages in business activities from which it may earn revenues and incur \nexpenses, including revenues and expenses that relate to transactions with any of the Company’s other components. All operating \nsegments’ operating results are reviewed regularly by the Senior Management to make decisions about resources to be allocated to \nthe segment and to assess its performance, and for which discrete financial information is available.', chunk_type: 'business_segments', index: 0}, {id: 'brown_and_company_plc_business_segments_1', content: 'BROWN AND COMPANY PLC    Annual Report 2023/24\n178\n45  SEGMENTAL INFORMATION\n45.1  Primary Segments (Business Segments)\n45.1.1  Group\nTrading Manufacturing & Constructions Investments Plantation Leisure Real Estate Others Adjustments Group Total\n2024 2023 2024 2023 2024 2023 2024 2023 2024 2023 2024 2023 2024 2023 2024 2023 2024 2023\nRs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000\na) Segment Result\n Revenue  36,127,299  34,649,301  14,166,386  16,346,278  8,459  374,041  19,716,892  16,852,165  10,591,118  5,778,337  604,596  340,650  65,548  112,123  (671,011)  (1,801,053)  80,609,286  72,651,843 \n Cost of Sales  (29,588,698)  (24,044,691)  (12,148,683)  (13,355,292)  -  (377,958)  (15,152,116)  (12,538,325)  (4,428,246)  (2,910,165)  (134,052)  (30,512)  (946,410)  (58,946)  350,707  1,405,761  (62,047,498)  (51,910,127)', chunk_type: 'business_segments', index: 1}, {id: 'brown_and_company_plc_business_segments_2', content: 'Annual Report 2023/24 | 79\n3. REVENUE AND OTHER INCOME  \n3.1 Revenue \nGROUP COMPANY\n2024 2023 2024 2023\n Rs.  Rs.  Rs.  Rs. \nHealthcare Services  6,376,024,568  5,393,112,422  5,739,330,596  4,841,245,484 \nSales of  Goods  248,911,751  241,642,284  248,911,751  241,642,284 \nLoyalty points  (5,191,303)  (60,001)  (5,174,054)  (55,121)\n 6,619,745,016  5,634,694,705  5,983,068,293  5,082,832,647 \n3.2 Segment Information\nThe Senior Management Committee is the Chief  Operating Decision Maker (CODM) and monitors the operating results of  its \nbusiness units separately for the purpose of  making decisions about resource allocation and performance assessment. Segment \nperformance is evaluated based on revenue generated and is measured consistently with revenue in the financial statements. \nThe Company has identified the following segments based on the information provided to CODM for the purpose of  making \ndecisions about resource allocation and performance assessment.', chunk_type: 'business_segments', index: 2}, {id: 'brown_and_company_plc_business_segments_3', content: 'PRINCIPAL ACTIVITIES\nBrowns Group consists of a portfolio of diverse business operations in \nthe commercial market today by continuously expanding in all business \nsegments in line with the core strategy of creating wealth for all \nstakeholders.\nThe principal activities of Brown and Company PLC and the review of the \nGroup’s progress and performance during the year with comments on the \nfinancial results and prospects are given in the Management Discussion \nand Analysis section on pages 5 to 22 of this Report.\nREVIEW OF BUSINESS AND FUTURE DEVELOPMENTS\nThe Browns Group will continue to align itself with strategic areas in the \nnational economy, with Sri Lanka well positioned to grow in sectors such as \nleisure and tourism, construction, agri business, trading and manufacturing, \namong others. Large construction projects that are in the pipeline offer \nsignificant potential for related goods and services marketed by the \norganisation.\nGROUP REVENUE', chunk_type: 'business_segments', index: 3}, {id: 'brown_and_company_plc_business_segments_4', content: 'Annual Report 2023/24    BROWN AND COMPANY PLC\n179\n45  SEGMENTAL INFORMATION\n45.1  Primary Segments (Business Segments)\n45.1.1  Group\nTrading Manufacturing & Constructions Investments Plantation Leisure Real Estate Others Adjustments Group Total\n2024 2023 2024 2023 2024 2023 2024 2023 2024 2023 2024 2023 2024 2023 2024 2023 2024 2023\nRs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000 Rs.000\na) Segment Result\n Revenue  36,127,299  34,649,301  14,166,386  16,346,278  8,459  374,041  19,716,892  16,852,165  10,591,118  5,778,337  604,596  340,650  65,548  112,123  (671,011)  (1,801,053)  80,609,286  72,651,843 \n Cost of Sales  (29,588,698)  (24,044,691)  (12,148,683)  (13,355,292)  -  (377,958)  (15,152,116)  (12,538,325)  (4,428,246)  (2,910,165)  (134,052)  (30,512)  (946,410)  (58,946)  350,707  1,405,761  (62,047,498)  (51,910,127)', chunk_type: 'business_segments', index: 4}] AS chunk MERGE (ch:Chunk {id: chunk.id}) ON CREATE SET ch.content = chunk.content, ch.chunk_type = chunk.chunk_type, ch.index = chunk.index;

// Query 88
MATCH (c:Company {name: 'Brown and Company PLC'}) WITH c UNWIND ['brown_and_company_plc_directors_and_executives_0', 'brown_and_company_plc_directors_and_executives_1', 'brown_and_company_plc_directors_and_executives_2', 'brown_and_company_plc_directors_and_executives_3', 'brown_and_company_plc_directors_and_executives_4', 'brown_and_company_plc_financial_performance_0', 'brown_and_company_plc_financial_performance_1', 'brown_and_company_plc_financial_performance_2', 'brown_and_company_plc_financial_performance_3', 'brown_and_company_plc_financial_performance_4', 'brown_and_company_plc_risk_factors_0', 'brown_and_company_plc_risk_factors_1', 'brown_and_company_plc_risk_factors_2', 'brown_and_company_plc_risk_factors_3', 'brown_and_company_plc_risk_factors_4', 'brown_and_company_plc_business_segments_0', 'brown_and_company_plc_business_segments_1', 'brown_and_company_plc_business_segments_2', 'brown_and_company_plc_business_segments_3', 'brown_and_company_plc_business_segments_4'] AS chunk_id MATCH (ch:Chunk {id: chunk_id}) MERGE (c)-[:HAS_CONTENT]->(ch);

// Total queries: 88
// Generated on: 2025-09-30T13:05:37.378798
