// Query 1
MERGE (c:Company {name: 'CAL Five Year Optimum Fund'}) ON CREATE SET c.id = 'cal_five_year_optimum_fund';

// Query 2
MERGE (c:Company {name: 'ASIA ASSET FINANCE PLC'}) ON CREATE SET c.id = 'asia_asset_finance_plc';

// Query 3
MERGE (c:Company {name: 'ASIAN HOTELS AND PROPERTIES PLC'}) ON CREATE SET c.id = 'asian_hotels_and_properties_plc';

// Query 4
MERGE (c:Company {name: 'BROWN AND COMPANY PLC'}) ON CREATE SET c.id = 'brown_and_company_plc';

// Query 5
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 6
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 7
MERGE (p:Person {name: 'K.M.P Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 8
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 9
MERGE (p:Person {name: 'H K Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 10
MERGE (p:Person {name: 'S.A.B Rajapaksa'}) ON CREATE SET p.id = 's_a_b_rajapaksa';

// Query 11
MERGE (p:Person {name: 'V. Bali'}) ON CREATE SET p.id = 'v_bali';

// Query 12
MERGE (p:Person {name: 'A.N Thadani'}) ON CREATE SET p.id = 'a_n_thadani';

// Query 13
MERGE (p:Person {name: 'Amrit Rajaratnam'}) ON CREATE SET p.id = 'amrit_rajaratnam';

// Query 14
MERGE (p:Person {name: 'S. D. R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 15
MERGE (p:Person {name: 'C. P. R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 16
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 17
MERGE (p:Person {name: 'A. R. Rasiah'}) ON CREATE SET p.id = 'a_r_rasiah';

// Query 18
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 19
MERGE (p:Person {name: 'J. T. Sumathipala'}) ON CREATE SET p.id = 'j_t_sumathipala';

// Query 20
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r_radha';

// Query 21
MERGE (p:Person {name: 'R.A.T.P Perera'}) ON CREATE SET p.id = 'r_a_t_p_perera';

// Query 22
MERGE (p:Person {name: 'D.A.S.D. A. Abeyesinhe'}) ON CREATE SET p.id = 'd_a_s_d_a_abeyesinhe';

// Query 23
MERGE (p:Person {name: 'A. D. Ross'}) ON CREATE SET p.id = 'a_d_ross';

// Query 24
MERGE (p:Person {name: 'V. Siva Jr.'}) ON CREATE SET p.id = 'v_siva_jr';

// Query 25
MERGE (p:Person {name: 'S. S. Balasubramaniam'}) ON CREATE SET p.id = 's_s_balasubramaniam';

// Query 26
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd_swarnasinghe';

// Query 27
MERGE (p:Person {name: 'D Hasitha S Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_s_jayawardena';

// Query 28
MERGE (p:Person {name: 'C R Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 29
MERGE (p:Person {name: 'M A N S Perera'}) ON CREATE SET p.id = 'm_a_n_s_perera';

// Query 30
MERGE (p:Person {name: 'K Dayaparan'}) ON CREATE SET p.id = 'k_dayaparan';

// Query 31
MERGE (p:Person {name: 'A Shakthevale'}) ON CREATE SET p.id = 'a_shakthevale';

// Query 32
MERGE (p:Person {name: 'D S K Amarasekara'}) ON CREATE SET p.id = 'd_s_k_amarasekara';

// Query 33
MERGE (p:Person {name: 'M R Mihular'}) ON CREATE SET p.id = 'm_r_mihular';

// Query 34
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 41
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 44
MERGE (m:Metric {name: 'Debt to Equity ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Times';

// Query 45
MERGE (m:Metric {name: 'Interest Cover'}) ON CREATE SET m.id = 'interest_cover', m.unit = 'Times';

// Query 46
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Finance Cost'}) ON CREATE SET m.id = 'finance_cost', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Finance Income'}) ON CREATE SET m.id = 'finance_income', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Net Finance Cost'}) ON CREATE SET m.id = 'net_finance_cost', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Profit from operations'}) ON CREATE SET m.id = 'profit_from_operations', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Profit after tax from continuing operations'}) ON CREATE SET m.id = 'profit_after_tax_from_continuing_operations', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'EBITDA'}) ON CREATE SET m.id = 'ebitda', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Shareholders funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 54
MERGE (m:Metric {name: 'Net assets'}) ON CREATE SET m.id = 'net_assets', m.unit = 'Rs';

// Query 55
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 56
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 57
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 58
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 59
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 60
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772000000, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612000000, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212000000, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78000000, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381000000, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832000000, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.07, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 277008844000, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit from operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47399141000, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 37288459000, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit after tax from continuing operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22201573000, r.year = 2024;

// Query 71
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'EBITDA'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58335217000, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Shareholders funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 54719964000, r.year = 2024;

// Query 73
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Net assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 131685633000, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'ASIA ASSET FINANCE PLC'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6604000000, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'ASIA ASSET FINANCE PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 344180000, r.year = 2024;

// Query 76
MATCH (c:Company {name: 'ASIA ASSET FINANCE PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25843000000, r.year = 2024;

// Query 77
MATCH (c:Company {name: 'ASIA ASSET FINANCE PLC'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1432000000, r.year = 2024;

// Query 78
MATCH (c:Company {name: 'ASIA ASSET FINANCE PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 373000000, r.year = 2024;

// Query 79
MATCH (c:Company {name: 'ASIA ASSET FINANCE PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.33, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'ASIA ASSET FINANCE PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.82, r.year = 2024;

// Query 81
MATCH (c:Company {name: 'ASIA ASSET FINANCE PLC'}), (m:Metric {name: 'Debt to Equity ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.43, r.year = 2024;

// Query 82
MATCH (c:Company {name: 'ASIA ASSET FINANCE PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.12, r.year = 2024;

// Query 83
MATCH (c:Company {name: 'ASIAN HOTELS AND PROPERTIES PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4891000000, r.year = 2024;

// Query 84
MATCH (c:Company {name: 'ASIAN HOTELS AND PROPERTIES PLC'}), (m:Metric {name: 'Finance Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 336000000, r.year = 2024;

// Query 85
MATCH (c:Company {name: 'ASIAN HOTELS AND PROPERTIES PLC'}), (m:Metric {name: 'Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26000000, r.year = 2024;

// Query 86
MATCH (c:Company {name: 'ASIAN HOTELS AND PROPERTIES PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212000000, r.year = 2024;

// Query 87
MATCH (c:Company {name: 'ASIAN HOTELS AND PROPERTIES PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78000000, r.year = 2024;

// Query 88
MATCH (c:Company {name: 'ASIAN HOTELS AND PROPERTIES PLC'}), (m:Metric {name: 'Net Finance Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 310000000, r.year = 2024;

// Query 89
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 90
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 91
MATCH (c:Company {name: 'BROWN AND COMPANY PLC'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 92
MATCH (c:Company {name: 'BROWN AND COMPANY PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 93
MATCH (c:Company {name: 'BROWN AND COMPANY PLC'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 94
MATCH (c:Company {name: 'BROWN AND COMPANY PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 95
MATCH (c:Company {name: 'BROWN AND COMPANY PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 96
UNWIND [{id: 'cal_five_year_optimum_fund_directors_and_executives_0', content: 'The following DIRECTORS held Office during the year under \nreview . The biographical details of  the Board members are set \nout on pages 24 to 25\nMr. A.K. Pathirage - (Chairman/ Managing Director) \nDr. S. Selliah – Deputy Chairman (Resigned w .e.f  29th July \n2024)\nDr. K.M.P Karunaratne – Group Chief  Executive Officer\nMr. G.L.H. Premaratne – Independent Non Executive \nDirector\nMr. H K Kaimal - Non-Executive Non Independent Director \n- (appointed w .e.f. 18th June 2024)\nFIT AND PROPER CRITERIA\nThe DIRECTORS hereby confirm that the DIRECTORS and CEO \nof  the company satisfy the fit and proper Assessment Criteria \nstipulated in section 9.7 of  the Listing Rules of  the Colombo \nStock Exchange for the year.\nDIRECTORS’ SHAREHOLDING \nName of Director No. of Shares \nas at 31/03/2024\nNo. of Shares \nas at 31/03/2023\nMr. A K Pathirage - -\nDr. S. Selliah 17,000 17,000\nDr. K.M.P Karunaratne 133 133\nMr. G.L.H Premaratne - -\nMr. S.A.B Rajapaksa - -\nMr. V .Bali - -\nMr. A.N Thadani - -', chunk_type: 'directors_and_executives', index: 0}, {id: 'cal_five_year_optimum_fund_directors_and_executives_1', content: 'disclosed in Note 27 to the financial statements on page 60.\nDuring the financial year the Company has not entered in to any \ncontracts in which the DIRECTORS have had a material interest.\nNeither the DIRECTORS nor their close family members have had any \nmaterial business relationships with other DIRECTORS.\n              No. of shares\nName of Director As at    \n31.03.2024\nAs at    \n31.03.2023\nMr. Amrit Rajaratnam 300,000 300,000\nCorporate Donations  \nDetails pertaining to corporate donations made by the Company \nduring the financial year 2023/24 are given in note 6 to the financial \nstatements on page 41.\nDirectorate\nThe names of the DIRECTORS who held office during the financial \nyear are given below and the profiles of the DIRECTORS who are \ncurrently in office are given on pages 8 and 9.\nMr. S. D. R. Arudpragasam - Chairman \nMr. C. P. R. Perera - Deputy Chairman \nMr. S. Rajaratnam \nMr. Amrit Rajaratnam \nMr. A. R. Rasiah\nMr. Anushman Rajaratnam', chunk_type: 'directors_and_executives', index: 1}, {id: 'cal_five_year_optimum_fund_directors_and_executives_2', content: 'foreseeable future. Accordingly, the Financial Statements are \nprepared based on the going concern concept.\nDIRECTORS who held office during the Year\nThe DIRECTORS of the Company during the year were as follows.\nDr. J. T. Sumathipala \nChairman (resigned with effect from 25th March 2024)\nMr. R. Radha \nManaging Director  \n(appointed with effect from 09th January 2024)\nMr. R.A.T.P Perera Executive Director/CEO  \n(resigned with effect from 31st January 2024)\nMr. D.A.S.D. A. Abeyesinhe \nNon-independent Non-Executive Director\nMr. A. D. Ross  \nIndependent Non-Executive Director\nMr. V. Siva Jr.  \nIndependent Non-Executive Director\nMr. S. S. Balasubramaniam    \nNon-Executive Director\nMr. D. Swarnasinghe \nIndependent Non-Executive Director', chunk_type: 'directors_and_executives', index: 2}, {id: 'cal_five_year_optimum_fund_directors_and_executives_3', content: 'Company and the Group, all contributions, levies and taxes \npayable on behalf  of, and in respect of, the employees of  the \nCompany and the Group, and all other known statutory dues \nas were due and payable by the Company and the Group as \nat the date of  the Statement of  Financial Position have been \npaid or, where relevant provided for, except as specified in \nNote 29 to the Financial Statements, covering contingent \nliabilities. \nMATERIAL ISSUES PERTAINING TO THE \nEMPLOYEES AND INDUSTRIAL RELATIONS\nThere have been no material issues pertaining to the \nemployees and industrial relations of  the Company .\nRELATED PARTY TRANSACTIONS \nThe Company’s transactions with Related Parties, given in \nNote 31 to the Financial Statements.\nDIRECTORATE \nThe following DIRECTORS held Office during the year under \nreview . The biographical details of  the Board members are set \nout on pages 24 to 25\nMr. A.K. Pathirage - (Chairman/ Managing Director)', chunk_type: 'directors_and_executives', index: 3}, {id: 'cal_five_year_optimum_fund_directors_and_executives_4', content: 'DIRECTORS, two Non-Executive DIRECTORS and an Independent Director.  The composition of the Company’s Board has been \nstructured in accordance with the principles of good governance and long-term strategy. Names of the members of the Board \nof DIRECTORS and their brief resumes are given on pages 5 to 7 and their roles are set out below.\nDIRECTORS Directorship Status Attendance\nMr D Hasitha S Jayawardena  Executive Chairman 2/2\nMr. D H S Jayawardena  Deceased on 03rd February 2025 2/2\nMr. C R Jansz  Non-Independent Non-Executive Director 2/2\nMr. M A N S Perera  Executive Director 2/2\nMr. K Dayaparan  Non-Independent Non-Executive Director 2/2\nDr. A Shakthevale - resigned w.e.f. 01.10.2024 Independent Non-Executive Director 1/2\nMr. D S K Amarasekara - resigned w.e.f. 01.10.2024 Independent Non-Executive Director 1/2\nMr M R Mihular - appointed w.e.f. 01.10.2024 Senior Independent Non-Executive Director 1/2', chunk_type: 'directors_and_executives', index: 4}, {id: 'cal_five_year_optimum_fund_financial_performance_0', content: 'Annual Report 2023/24 |  7\nOperating Context \nand Strategy\nFinancial  \nInformation\nLeadership Corporate \nGovernance and Risk \nManagement\nManagement \nDiscussion and \nAnalysis\nSupplementary \nInformation\nPerformance Highlights (Financial)\n2024 2023 2022 2021 2020\nGroup Operational Performance \nRevenue Rs. Mn  10,772  8,417  4,095  1,790  5,560 \nResults from operating activities Rs. Mn  612  93  (407)  (1,913)  (28)\nProfit/(Loss) before tax Rs. Mn  212  (133)  (459)  (2,370)  199 \nProfit/(Loss) after tax Rs. Mn  78  (333)  (508)  (2,244)  106 \nDividends paid Rs. Mn  -    -    -    -    442 \nReturn on equity (ROE) %  0.07)  (0.92)  (1.62)  (5.54)  (0.15)\nPre-Tax return on capital employed \n(ROCE)\n%  1.86  0.86  (0.65)  (6.43)  0.61 \nBalance Sheet Strength \nTotal assets Rs. Mn  48,381  45,912  42,509  40,869  42,582 \nTotal liabilities Rs. Mn  14,832  13,674  7,549  6,256  5,889 \nNet debt / (Cash) Rs. Mn  2,284  2,101  1,645  691  (587)', chunk_type: 'financial_performance', index: 0}, {id: 'cal_five_year_optimum_fund_financial_performance_1', content: 'ASIA ASSET FINANCE PLC        Annual Report  2023 | 2024\n44\nand the accumulation of retained earnings \nover the period under review.\nOPTIMISING PERFORMANCE\nGross Income\nGROSS INCOME\n0\n5\n4\n3\n2\n1\n6\n7\n(Rs.Mn )\n2020 2021 2022 20242023\n3.3\n2.9\n3.1\n6.0\n6.6\nThe gross income of the company \nrecorded a growth of 9.94% to reach \nRs. 6.604 Bn, compared to Rs. 6.006 Bn \nrecorded in the preceding period, while \nthe company’s profit after tax for the year \nreached Rs. 344.18 Mn, compared to the \nindicator’s performance of Rs.295.3 Mn in \nthe previous year. Other operating income \nrecorded a marginal increase to reach \nRs. 921.5 Mn compared to the previous \nyear’s Rs. 614.6 Mn.\nPROFIT BEFORE AND AFTER TAXES\nPROFIT AFTER TAX \n0\n100%\n300%\n200%\n400%\n(Rs.Mn )\n2020 2021 2022 20242023\n70.15\n284.31\n45.2\n118.2\n344.2\nReflecting the growth in profit after \ntax, the company recorded increases \nin total assets and equity during the \nyear. Consequently, Return on Assets \n(ROA) stood at 1.33% during the year,', chunk_type: 'financial_performance', index: 1}, {id: 'cal_five_year_optimum_fund_financial_performance_2', content: '10\nASIA ASSET FINANCE PLC        Annual Report  2023 | 2024\nFinancial Highlights\n2023/2024 2022/2023\nFINANCE PERFORMANCE( RS MN)\nGross Revenue 6,604 6,006\nNet Interest Income 1,432 1,741\nProfit Before Tax 373 360\nTaxation (29) (64)\nProfit After Tax 344 295\nPOSITION AS AT THE YEA END (RS.MN)\nCash and Cash Equivalents 3,888 2,063\nLoans and Recivables 19,058 19,478\nTotal assets 25,843 25,013\nFixed Depoit 14,485 13,275\nFINANCIAL RATIOS (%)\nProfitability Perspective\nProfit for the year(Mn) 344 295\nNet Interest Margin 5.94 8.94\nReturn on Assets (ROA) 1.33 1.18 \nEquity Holders\nEarnings per share( Rs) 2.77  2.38 \nNet Asset Value per share (Rs.) 27.10 24.24 \nReturn on equity (%) 10.82 9.81\nDEBT HOLDERS\nDebt to Equity ratio (Times) 6.43 7.15\nInterest Cover (Times) 1.12 1.10\nSTATUTORY RATIO \nTier 1 (Minimum requireemnt 8.5%) 21.22 27.43\nAvailable Liquid Assets to Required Liquid Assets (g) 213 243\nNon Performing Ratio 22.11 12.79\nQUALITY OF LOAN PORTFOLIO) (%)', chunk_type: 'financial_performance', index: 2}, {id: 'cal_five_year_optimum_fund_financial_performance_3', content: '44  | ASIAN HOTELS AND PROPERTIES PLC\nGross proﬁt, expenses and post tax proﬁtability YoY movement\nGross Proﬁt\n4,891\nOther \noperating\n income\n82\nDistribution \nexpenses\n-442\nAdministration\n expenses\n-2,787 -1,132 -336 26 -90 212 -135 78\nOther \noperating \nexpenses\nFinance\n cost\nFinance \nincome\nChange in \nFV of \ninvestment \nproperty\nPBT Income Tax PAT\nRs.Mn\nIncrease in Income/Proﬁt\nIncrease in Expense \nIncrease in Gross Proﬁt\n-3,000\n-2,000\n-1,000\n0\n1,000\n2,000\n3,000\n4,000\n5,000\nFinancial capital\nNet finance cost \nNet finance cost declined by a notable 18% to Rs. 310 Mn, driven by finance income of Rs. 26 Mn and finance expense of Rs. 336 Mn. \nFinance expense posted a notable decline of 15%, benefiting rom the decline in market-wide interest rates and also decline in \ninterest bearing borrowings under the non-current liabilities category. \nProfitability\nReversing the loss trend of the prior years, the Group posted a welcoming pre-tax profit of Rs. 212 Mn. With income taxes of Rs. 135', chunk_type: 'financial_performance', index: 3}, {id: 'cal_five_year_optimum_fund_financial_performance_4', content: '3\nFinancial Highlights\n(Amounts expressed in Sri Lankan Rs.’000 unless otherwise stated)\nFor the year ended / as at 31st March 2024 2023 % Change\nStatement of profit or loss\nGroup revenue  277,008,844  330,420,613  (16)\nProfit from operations  47,399,141  59,202,045  (20)\nProfit before tax  37,288,459  42,377,917  (12)\nProfit after tax from continuing operations  22,201,573  27,296,336  (19)\nEBITDA  58,335,217  71,191,094  (18)\nProfit attributable to ordinary shareholders  8,412,977  13,022,993  (35)\nOperating cash flow per share (Rs.)  327.92  514.31  (36)\nEarnings per share (Rs.) - Group  82.22  127.52  (36)\nDividend per share (Rs.) - Company  1.80  1.10  64 \nStatement of Cash flows\nOperating cash flows  33,447,574  52,459,122  (36)\nCapital expenditure  16,919,433  17,387,897  (3)\nStatement of Financial Position\nShareholders’ funds  54,719,964  54,043,639  1 \nNet assets  131,685,633  127,720,458  3 \nNet assets per ordinary share (Rs.)  536.07  529.44  1', chunk_type: 'financial_performance', index: 4}] AS chunk MERGE (ch:Chunk {id: chunk.id}) ON CREATE SET ch.content = chunk.content, ch.chunk_type = chunk.chunk_type, ch.index = chunk.index;

// Query 97
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}) WITH c UNWIND ['cal_five_year_optimum_fund_directors_and_executives_0', 'cal_five_year_optimum_fund_directors_and_executives_1', 'cal_five_year_optimum_fund_directors_and_executives_2', 'cal_five_year_optimum_fund_directors_and_executives_3', 'cal_five_year_optimum_fund_directors_and_executives_4', 'cal_five_year_optimum_fund_financial_performance_0', 'cal_five_year_optimum_fund_financial_performance_1', 'cal_five_year_optimum_fund_financial_performance_2', 'cal_five_year_optimum_fund_financial_performance_3', 'cal_five_year_optimum_fund_financial_performance_4'] AS chunk_id MATCH (ch:Chunk {id: chunk_id}) MERGE (c)-[:HAS_CONTENT]->(ch);

// Total queries: 97
// Generated on: 2025-09-30T14:11:46.080108
