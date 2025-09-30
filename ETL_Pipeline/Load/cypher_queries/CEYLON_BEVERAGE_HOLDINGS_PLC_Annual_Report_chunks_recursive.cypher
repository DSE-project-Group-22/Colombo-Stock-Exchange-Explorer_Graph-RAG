// Query 1
MERGE (c:Company {name: 'Ceylon Beverage Holdings PLC'}) ON CREATE SET c.id = 'ceylon_beverage_holdings_plc';

// Query 2
MERGE (c:Company {name: 'KPMG'}) ON CREATE SET c.id = 'kpmg';

// Query 3
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 4
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 5
MERGE (p:Person {name: 'K.M.P. Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 6
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 7
MERGE (p:Person {name: 'H.K. Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 8
MERGE (p:Person {name: 'S.A.B. Rajapaksa'}) ON CREATE SET p.id = 's_a_b_rajapaksa';

// Query 9
MERGE (p:Person {name: 'V. Bali'}) ON CREATE SET p.id = 'v_bali';

// Query 10
MERGE (p:Person {name: 'A.N. Thadani'}) ON CREATE SET p.id = 'a_n_thadani';

// Query 11
MERGE (p:Person {name: 'S.D.R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 12
MERGE (p:Person {name: 'C.P.R. Perera'}) ON CREATE SET p.id = 'c_p_r_perera';

// Query 13
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 14
MERGE (p:Person {name: 'Amrit Rajaratnam'}) ON CREATE SET p.id = 'amrit_rajaratnam';

// Query 15
MERGE (p:Person {name: 'A.R. Rasiah'}) ON CREATE SET p.id = 'a_r_rasiah';

// Query 16
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 17
MERGE (p:Person {name: 'J.T. Sumathipala'}) ON CREATE SET p.id = 'j_t_sumathipala';

// Query 18
MERGE (p:Person {name: 'R. Radha'}) ON CREATE SET p.id = 'r_radha';

// Query 19
MERGE (p:Person {name: 'R.A.T.P. Perera'}) ON CREATE SET p.id = 'r_a_t_p_perera';

// Query 20
MERGE (p:Person {name: 'D.A.S.D.A. Abeyesinhe'}) ON CREATE SET p.id = 'd_a_s_d_a_abeyesinhe';

// Query 21
MERGE (p:Person {name: 'A.D. Ross'}) ON CREATE SET p.id = 'a_d_ross';

// Query 22
MERGE (p:Person {name: 'V. Siva Jr.'}) ON CREATE SET p.id = 'v_siva_jr';

// Query 23
MERGE (p:Person {name: 'S.S. Balasubramaniam'}) ON CREATE SET p.id = 's_s_balasubramaniam';

// Query 24
MERGE (p:Person {name: 'D. Swarnasinghe'}) ON CREATE SET p.id = 'd_swarnasinghe';

// Query 25
MERGE (p:Person {name: 'D. Hasitha S. Jayawardena'}) ON CREATE SET p.id = 'd_hasitha_s_jayawardena';

// Query 26
MERGE (p:Person {name: 'C.R. Jansz'}) ON CREATE SET p.id = 'c_r_jansz';

// Query 27
MERGE (p:Person {name: 'M.A.N.S. Perera'}) ON CREATE SET p.id = 'm_a_n_s_perera';

// Query 28
MERGE (p:Person {name: 'K. Dayaparan'}) ON CREATE SET p.id = 'k_dayaparan';

// Query 29
MERGE (p:Person {name: 'A. Shakthevale'}) ON CREATE SET p.id = 'a_shakthevale';

// Query 30
MERGE (p:Person {name: 'D.S.K. Amarasekara'}) ON CREATE SET p.id = 'd_s_k_amarasekara';

// Query 31
MERGE (p:Person {name: 'M.R. Mihular'}) ON CREATE SET p.id = 'm_r_mihular';

// Query 32
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit before tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Profit after tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Return on equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 39
MERGE (m:Metric {name: 'Pre-Tax return on capital employed'}) ON CREATE SET m.id = 'pre_tax_return_on_capital_employed', m.unit = '%';

// Query 40
MERGE (m:Metric {name: 'Net debt'}) ON CREATE SET m.id = 'net_debt', m.unit = 'Rs';

// Query 41
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 42
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 43
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 44
MERGE (pr:Product {name: 'Beverages'}) ON CREATE SET pr.id = 'beverages';

// Query 45
MATCH (p:Person {name: 'A.K. Pathirage'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman/ Managing Director', r.as_of = date('2024-03-31');

// Query 46
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 47
MATCH (p:Person {name: 'K.M.P. Karunaratne'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Group Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 48
MATCH (p:Person {name: 'G.L.H. Premaratne'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 49
MATCH (p:Person {name: 'H.K. Kaimal'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive Non Independent Director', r.as_of = date('2024-03-31');

// Query 50
MATCH (p:Person {name: 'S.D.R. Arudpragasam'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 51
MATCH (p:Person {name: 'C.P.R. Perera'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 52
MATCH (p:Person {name: 'J.T. Sumathipala'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 53
MATCH (p:Person {name: 'R. Radha'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 54
MATCH (p:Person {name: 'R.A.T.P. Perera'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director/CEO', r.as_of = date('2024-03-31');

// Query 55
MATCH (p:Person {name: 'D.A.S.D.A. Abeyesinhe'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 56
MATCH (p:Person {name: 'A.D. Ross'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 57
MATCH (p:Person {name: 'V. Siva Jr.'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 58
MATCH (p:Person {name: 'S.S. Balasubramaniam'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 59
MATCH (p:Person {name: 'D. Swarnasinghe'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 60
MATCH (p:Person {name: 'D. Hasitha S. Jayawardena'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Chairman', r.as_of = date('2024-03-31');

// Query 61
MATCH (p:Person {name: 'C.R. Jansz'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 62
MATCH (p:Person {name: 'M.A.N.S. Perera'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Executive Director', r.as_of = date('2024-03-31');

// Query 63
MATCH (p:Person {name: 'K. Dayaparan'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 64
MATCH (p:Person {name: 'A. Shakthevale'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 65
MATCH (p:Person {name: 'D.S.K. Amarasekara'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 66
MATCH (p:Person {name: 'M.R. Mihular'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Senior Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 67
MATCH (p:Person {name: 'S. Selliah'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 17000, r.as_of = date('2024-03-31');

// Query 68
MATCH (p:Person {name: 'K.M.P. Karunaratne'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 133, r.as_of = date('2024-03-31');

// Query 69
MATCH (p:Person {name: 'Amrit Rajaratnam'}), (c:Company {name: 'Ceylon Beverage Holdings PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 300000, r.as_of = date('2024-03-31');

// Query 70
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772000000, r.year = 2024;

// Query 71
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612000000, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212000000, r.year = 2024;

// Query 73
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78000000, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381000000, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832000000, r.year = 2024;

// Query 76
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Return on equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.07, r.year = 2024;

// Query 77
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 78
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (m:Metric {name: 'Net debt'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284000000, r.year = 2024;

// Query 79
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 80
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 81
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 82
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (pr:Product {name: 'Beverages'}) MERGE (c)-[:OFFERS]->(pr);

// Query 83
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}), (a:Company {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 84
UNWIND [{id: 'ceylon_beverage_holdings_plc_directors_and_executives_0', content: 'The following DIRECTORS held Office during the year under 
review . The biographical details of  the Board members are set 
out on pages 24 to 25
Mr. A.K. Pathirage - (Chairman/ Managing Director) 
Dr. S. Selliah – Deputy Chairman (Resigned w .e.f  29th July 
2024)
Dr. K.M.P Karunaratne – Group Chief  Executive Officer
Mr. G.L.H. Premaratne – Independent Non Executive 
Director
Mr. H K Kaimal - Non-Executive Non Independent Director 
- (appointed w .e.f. 18th June 2024)
FIT AND PROPER CRITERIA
The DIRECTORS hereby confirm that the DIRECTORS and CEO 
of  the company satisfy the fit and proper Assessment Criteria 
stipulated in section 9.7 of  the Listing Rules of  the Colombo 
Stock Exchange for the year.
DIRECTORS’ SHAREHOLDING 
Name of Director No. of Shares 
as at 31/03/2024
No. of Shares 
as at 31/03/2023
Mr. A K Pathirage - -
Dr. S. Selliah 17,000 17,000
Dr. K.M.P Karunaratne 133 133
Mr. G.L.H Premaratne - -
Mr. S.A.B Rajapaksa - -
Mr. V .Bali - -
Mr. A.N Thadani - -', chunk_type: 'directors_and_executives', index: 0}, {id: 'ceylon_beverage_holdings_plc_directors_and_executives_1', content: 'disclosed in Note 27 to the financial statements on page 60.
During the financial year the Company has not entered in to any 
contracts in which the DIRECTORS have had a material interest.
Neither the DIRECTORS nor their close family members have had any 
material business relationships with other DIRECTORS.
              No. of shares
Name of Director As at    
31.03.2024
As at    
31.03.2023
Mr. Amrit Rajaratnam 300,000 300,000
Corporate Donations  
Details pertaining to corporate donations made by the Company 
during the financial year 2023/24 are given in note 6 to the financial 
statements on page 41.
Directorate
The names of the DIRECTORS who held office during the financial 
year are given below and the profiles of the DIRECTORS who are 
currently in office are given on pages 8 and 9.
Mr. S. D. R. Arudpragasam - Chairman 
Mr. C. P. R. Perera - Deputy Chairman 
Mr. S. Rajaratnam 
Mr. Amrit Rajaratnam 
Mr. A. R. Rasiah
Mr. Anushman Rajaratnam', chunk_type: 'directors_and_executives', index: 1}, {id: 'ceylon_beverage_holdings_plc_directors_and_executives_2', content: 'foreseeable future. Accordingly, the Financial Statements are 
prepared based on the going concern concept.
DIRECTORS who held office during the Year
The DIRECTORS of the Company during the year were as follows.
Dr. J. T. Sumathipala 
Chairman (resigned with effect from 25th March 2024)
Mr. R. Radha 
Managing Director  
(appointed with effect from 09th January 2024)
Mr. R.A.T.P Perera Executive Director/CEO  
(resigned with effect from 31st January 2024)
Mr. D.A.S.D. A. Abeyesinhe 
Non-independent Non-Executive Director
Mr. A. D. Ross  
Independent Non-Executive Director
Mr. V. Siva Jr.  
Independent Non-Executive Director
Mr. S. S. Balasubramaniam    
Non-Executive Director
Mr. D. Swarnasinghe 
Independent Non-Executive Director', chunk_type: 'directors_and_executives', index: 2}, {id: 'ceylon_beverage_holdings_plc_directors_and_executives_3', content: 'Company and the Group, all contributions, levies and taxes 
payable on behalf  of, and in respect of, the employees of  the 
Company and the Group, and all other known statutory dues 
as were due and payable by the Company and the Group as 
at the date of  the Statement of  Financial Position have been 
paid or, where relevant provided for, except as specified in 
Note 29 to the Financial Statements, covering contingent 
liabilities. 
MATERIAL ISSUES PERTAINING TO THE 
EMPLOYEES AND INDUSTRIAL RELATIONS
There have been no material issues pertaining to the 
employees and industrial relations of  the Company .
RELATED PARTY TRANSACTIONS 
The Company’s transactions with Related Parties, given in 
Note 31 to the Financial Statements.
DIRECTORATE 
The following DIRECTORS held Office during the year under 
review . The biographical details of  the Board members are set 
out on pages 24 to 25
Mr. A.K. Pathirage - (Chairman/ Managing Director)', chunk_type: 'directors_and_executives', index: 3}, {id: 'ceylon_beverage_holdings_plc_directors_and_executives_4', content: 'DIRECTORS, two Non-Executive DIRECTORS and an Independent Director.  The composition of the Company’s Board has been 
structured in accordance with the principles of good governance and long-term strategy. Names of the members of the Board 
of DIRECTORS and their brief resumes are given on pages 5 to 7 and their roles are set out below.
DIRECTORS Directorship Status Attendance
Mr D Hasitha S Jayawardena  Executive Chairman 2/2
Mr. D H S Jayawardena  Deceased on 03rd February 2025 2/2
Mr. C R Jansz  Non-Independent Non-Executive Director 2/2
Mr. M A N S Perera  Executive Director 2/2
Mr. K Dayaparan  Non-Independent Non-Executive Director 2/2
Dr. A Shakthevale - resigned w.e.f. 01.10.2024 Independent Non-Executive Director 1/2
Mr. D S K Amarasekara - resigned w.e.f. 01.10.2024 Independent Non-Executive Director 1/2
Mr M R Mihular - appointed w.e.f. 01.10.2024 Senior Independent Non-Executive Director 1/2', chunk_type: 'directors_and_executives', index: 4}, {id: 'ceylon_beverage_holdings_plc_financial_performance_0', content: 'Annual Report 2023/24 |  7
Operating Context 
and Strategy
Financial  
Information
Leadership Corporate 
Governance and Risk 
Management
Management 
Discussion and 
Analysis
Supplementary 
Information
Performance Highlights (Financial)
2024 2023 2022 2021 2020
Group Operational Performance 
Revenue Rs. Mn  10,772  8,417  4,095  1,790  5,560 
Results from operating activities Rs. Mn  612  93  (407)  (1,913)  (28)
Profit/(Loss) before tax Rs. Mn  212  (133)  (459)  (2,370)  199 
Profit/(Loss) after tax Rs. Mn  78  (333)  (508)  (2,244)  106 
Dividends paid Rs. Mn  -    -    -    -    442 
Return on equity (ROE) %  0.07)  (0.92)  (1.62)  (5.54)  (0.15)
Pre-Tax return on capital employed 
(ROCE)
%  1.86  0.86  (0.65)  (6.43)  0.61 
Balance Sheet Strength 
Total assets Rs. Mn  48,381  45,912  42,509  40,869  42,582 
Total liabilities Rs. Mn  14,832  13,674  7,549  6,256  5,889 
Net debt / (Cash) Rs. Mn  2,284  2,101  1,645  691  (587)', chunk_type: 'financial_performance', index: 0}, {id: 'ceylon_beverage_holdings_plc_financial_performance_1', content: 'ASIA ASSET FINANCE PLC        Annual Report  2023 | 2024
44
and the accumulation of retained earnings 
over the period under review.
OPTIMISING PERFORMANCE
Gross Income
GROSS INCOME
0
5
4
3
2
1
6
7
(Rs.Mn )
2020 2021 2022 20242023
3.3
2.9
3.1
6.0
6.6
The gross income of the company 
recorded a growth of 9.94% to reach 
Rs. 6.604 Bn, compared to Rs. 6.006 Bn 
recorded in the preceding period, while 
the company’s profit after tax for the year 
reached Rs. 344.18 Mn, compared to the 
indicator’s performance of Rs.295.3 Mn in 
the previous year. Other operating income 
recorded a marginal increase to reach 
Rs. 921.5 Mn compared to the previous 
year’s Rs. 614.6 Mn.
PROFIT BEFORE AND AFTER TAXES
PROFIT AFTER TAX 
0
100%
300%
200%
400%
(Rs.Mn )
2020 2021 2022 20242023
70.15
284.31
45.2
118.2
344.2
Reflecting the growth in profit after 
tax, the company recorded increases 
in total assets and equity during the 
year. Consequently, Return on Assets 
(ROA) stood at 1.33% during the year,', chunk_type: 'financial_performance', index: 1}, {id: 'ceylon_beverage_holdings_plc_financial_performance_2', content: '10
ASIA ASSET FINANCE PLC        Annual Report  2023 | 2024
Financial Highlights
2023/2024 2022/2023
FINANCE PERFORMANCE( RS MN)
Gross Revenue 6,604 6,006
Net Interest Income 1,432 1,741
Profit Before Tax 373 360
Taxation (29) (64)
Profit After Tax 344 295
POSITION AS AT THE YEA END (RS.MN)
Cash and Cash Equivalents 3,888 2,063
Loans and Recivables 19,058 19,478
Total assets 25,843 25,013
Fixed Depoit 14,485 13,275
FINANCIAL RATIOS (%)
Profitability Perspective
Profit for the year(Mn) 344 295
Net Interest Margin 5.94 8.94
Return on Assets (ROA) 1.33 1.18 
Equity Holders
Earnings per share( Rs) 2.77  2.38 
Net Asset Value per share (Rs.) 27.10 24.24 
Return on equity (%) 10.82 9.81
DEBT HOLDERS
Debt to Equity ratio (Times) 6.43 7.15
Interest Cover (Times) 1.12 1.10
STATUTORY RATIO 
Tier 1 (Minimum requireemnt 8.5%) 21.22 27.43
Available Liquid Assets to Required Liquid Assets (g) 213 243
Non Performing Ratio 22.11 12.79
QUALITY OF LOAN PORTFOLIO) (%)', chunk_type: 'financial_performance', index: 2}, {id: 'ceylon_beverage_holdings_plc_financial_performance_3', content: 'Financial Highlights
(Amounts expressed in Sri Lankan Rs.’000 unless otherwise stated)
For the year ended/as at 31st March 2024 2023 % Change
Statement of Profit or Loss
Group revenue  277,076,515  330,458,690  (16)
Profit from operations  47,489,136  59,257,650  (20)
Profit before tax  37,378,454  42,433,522  (12)
Profit after tax from continuing operations  22,304,812  27,357,875  (18)
EBITDA  58,425,212  71,246,699  (18)
Profit attributable to ordinary shareholders  10,769,537  13,729,646  (22)
Operating cash flow per share (Rs.)  170.86  267.43  (36)
Earnings per share (Rs.) - Group  54.84  69.91  (22)
Dividend per share (Rs.) - Company  6.80  1.50  353 
Statement of Cash flows
Operating cash flow  33,553,915  52,519,931  (36)
Capital expenditure  16,919,433  17,387,897  (3)
Statement of Financial Position
Shareholders’ funds  71,830,528  68,547,883  5 
Net assets  143,618,731  140,236,892  2 
Net assets per ordinary share (Rs.)  365.76  349.05  5', chunk_type: 'financial_performance', index: 3}, {id: 'ceylon_beverage_holdings_plc_financial_performance_4', content: 'and improve our position in the market 
in the years to come.
Valuation gain on  
Investment Properties
Rs. 386.3 Mn
Real Estate - Profit Before Tax
Rs.  638.5 Mn
Real Estate - Revenue
Rs.  323.6 Mn
Occupancy of  
Investment Properties
80%
Introductory statements Business Review Governance & Risk Financial Information Other Information', chunk_type: 'financial_performance', index: 4}, {id: 'ceylon_beverage_holdings_plc_risk_factors_0', content: '- Annual Report 2023
53
- Annual Report 2024
Risk 
Interest Rate Risk
Technology & IT 
Risk
Inventory cycle
Risk of
Competition
Company
Reputation Risk
Threat Probability
Moderate
Moderate
Moderate
Moderate
Moderate 
Risk Assessment 
Fiscal and monitory policy changes 
have a direct impact on liquidity
and production costs.
Lack of accurate and
timely information due to
ineffective IT systems. Increase in 
digitization of operations pose a 
threat of loss of data and hacking.
 
Liquidity is impacted as the industry 
is cyclical with long gestation periods.
Competition from other major low 
cost producers.
The reputation of the company could 
be damaged by noncompliance, 
unethical behavior, and inconsistent 
product quality.
Mitigating Strategies 
•	 Close	monitoring	of	interest	rate	
developments and negotiating with 
funding partners
•	 Capital	development
•	 Maintenance	of	biological	assets	
in optimum condition to enhance 
productivity, turnover and cash-
flows.', chunk_type: 'risk_factors', index: 0}, {id: 'ceylon_beverage_holdings_plc_risk_factors_1', content: '- Annual Report 2023
52
- Annual Report 2024
Following are the key risks that the company is exposed to while carrying out its business activities and mitigation measures 
implemented.
Risk 
Environmental
Risk
Human Resource
Product Quality
Risk
Political Risk
Inflationary 
pressures
Threat Probability
High
Moderate
Moderate
High
Moderate
Risk Assessment 
The variability of weather conditions 
influences crop outcomes. Adverse 
weather, shifts in ambient 
temperature, and natural calamities 
can all disrupt crop growth and 
development. These factors impact the 
quantity, quality, market positioning, 
and financial performance of 
agricultural products.
Low productivity, reduction in 
resident manpower, disruptions in 
achieving the targeted objectives.
Inconsistency in quality of end 
products and its negative impact on 
prices and market share.
The impact of political intervention, 
major industrial relations 
issues, regulatory changes, ad-
hoc acquisitions of land etc. are', chunk_type: 'risk_factors', index: 1}, {id: 'ceylon_beverage_holdings_plc_risk_factors_2', content: 'linked CPO prices. We continue to monitor market 
volatilities, to anticipate and exploit favourable 
movements.
Business 
Environment 
Risks
Unfavourable global and local weather patterns resulting 
in adverse weather conditions, natural and man-made 
disasters including fires and haze from fires, droughts, 
floods, pestilence and crop disease could reduce the 
amount or quality of FFB we can harvest in the palm oil 
plantation sector.
Minimise fire risk through monitoring and maintaining 
adequate fire response resources. Invest in agronomy 
and plantation management practices to minimise the 
impact by any sudden up-rise of pest and diseases.
The Group employs Business Continuity Planning as 
well as safeguards against perils through adequate 
insurance.
Liquidity 
Risk
The risk that business sectors may not easily be able 
to meet its operational and financial obligations can 
result in an unavailability of sufficient funds, which', chunk_type: 'risk_factors', index: 2}, {id: 'ceylon_beverage_holdings_plc_risk_factors_3', content: 'short rearing time along with relatively low cost of 
investment, has contributed to a steady growth in 
poultry production and consumption.
3.3 The Company’s 
customer base is 
confined to a single 
geographic market, 
which exposes the 
Company extensively 
to vulnerabilities of the 
single market in which 
it operates.
R  Vulnerability to fluctuations  
in turnover. 
O  The Company has already 
embarked on exploring 
overseas markets.
The Company is presently exploring other export 
markets to achieve geographic diversification.
The Company’s sales and distribution network 
covers the entire country and targets customers 
across the value chain. This diversification of 
customer-base helps to mitigate the risk arising 
from geographic concentration in the country.
04. Operational  
risk
4.1 Breakdown of internal 
controls
R  Potential for loss of smooth 
operational continuity due 
to failure and inadequacy of 
internal controls and internal 
systems to prevent failures or', chunk_type: 'risk_factors', index: 3}, {id: 'ceylon_beverage_holdings_plc_risk_factors_4', content: 'USD-linked CPO prices. We continue to monitor 
market volatilities, to anticipate and exploit 
favourable movements.
Business Environment 
Risks
Unfavourable global and local weather patterns 
resulting in adverse weather conditions, natural 
and man-made disasters including fires and 
haze from fires, droughts, floods, pestilence and 
crop disease could reduce the amount or quality 
of FFB we can harvest in the palm oil plantation 
sector.
Minimise fire risk through monitoring and 
maintaining adequate fire response resources. 
Invest in agronomy and plantation management 
practices to minimise the impact by any sudden 
up-rise of pest and diseases.
The Group employs Business Continuity Planning 
as well as safeguards against perils through 
adequate insurance.
Liquidity Risk The risk that business sectors may not easily 
be able to meet its operational and financial 
obligations can result in an unavailability of 
sufficient funds, which may interrupt the smooth', chunk_type: 'risk_factors', index: 4}, {id: 'ceylon_beverage_holdings_plc_business_segments_0', content: 'from one another. Top management of the Company considers the operating results and condition of its business segments in their 
decision making process and performance evaluation. Types of products and services from which each operating segment derives its 
revenues are described as follows.
 
An operating segment is a component of the Company that engages in business activities from which it may earn revenues and incur 
expenses, including revenues and expenses that relate to transactions with any of the Company’s other components. All operating 
segments’ operating results are reviewed regularly by the Senior Management to make decisions about resources to be allocated to 
the segment and to assess its performance, and for which discrete financial information is available.', chunk_type: 'business_segments', index: 0}, {id: 'ceylon_beverage_holdings_plc_business_segments_1', content: 'of its business segments rather than their geographical location. Each segment is separately managed as it requires 
different management strategies, as underscored by the Group’s organizational structure.
The Group’s business operations are classified into eight segments based on the products or services rendered, namely, 
Investment Holdings, Portfolio and Asset Management, Oil palm plantations, Oils & fats, Beverages, Real Estate, Leisure, 
and Management Services. The following table describes the operations of each segment.  
Inter segmental sales are made at prices that approximate the market prices. Segment revenue, expenses, and results 
include transactions between segments. On consolidation, these transactions and any unrealised profits and losses 
are eliminated. Segmental expenses are directly attributed to a relevant segment or a portion of expenses that can be 
allocated reasonably as determined by the management.        
  
   
Notes to the Financial Statements', chunk_type: 'business_segments', index: 1}, {id: 'ceylon_beverage_holdings_plc_business_segments_2', content: 'its business segments rather than their geographical location. Each segment is separately managed as it requires different 
management strategies, as underscored by the Group’s organizational structure.
The Group’s business operations are classified into eight segments based on the products or services rendered, namely, 
Investment Holdings, Portfolio and Asset Management, Oil palm plantations, Oils & fats, Beverages, Real Estate, Leisure and 
Management Services. The following table describes the operations of each segment.
Inter segmental sales are made at prices that approximate the market prices. Segment revenue, expenses, and results include 
transactions between segments. On consolidation, these transactions and any unrealised profits and losses are eliminated. 
Segmental expenses are directly attributed to a relevant segment or a portion of expenses that can be allocated reasonably as 
determined by the management.', chunk_type: 'business_segments', index: 2}, {id: 'ceylon_beverage_holdings_plc_business_segments_3', content: 'identified as geographical segments for the Group.
A segment is a distinguishable component of the Group that is engaged in providing 
products and services. (Business segment, which is subject to risks and rewards that are 
different from those of other segments).
Segment results, assets and liabilities include items directly attributable to a segment as 
well as those that can be allocated on a reasonable basis. 
The accounting policies adopted for segment reporting are those accounting policies 
adopted for preparing the Financial Statements of the Group.
The following summary describes the operations of each reportable segment:
Reportable segment Operations 
Food retailing Operating a chain of retail outlets under the brand names of “Food City” 
and “Cargills Express” and “Food Hall” and eCommerce platform  
“Cargills Online”.
Food and beverage 
manufacturing and 
distribution
 Manufacturing and distributing ice cream and other dairy products, fruit', chunk_type: 'business_segments', index: 3}, {id: 'ceylon_beverage_holdings_plc_business_segments_4', content: '157 
 Annual Report 2023 / 24 Central Finance Company PLC
 
 BUSINESS SEGMENT INFORMATION
All figures in Rs.000 Leasing, hire purchase and 
other advances
Medical services Manufacturing Insurance broking Investments Real estate Intra segmental 
adjustments
Total
For the year ended 31st March 2024 2023 2024 2023 2024 2023 2024 2023 2024 2023 2024 2023 2024 2023 2024 2023
Revenue
Interest income  12,942,365  12,061,606  18,238  19,162  183,295  65,245  235,348  269,463  6,115,008  5,491,366  6,010  5,108 -  -  19,500,264  17,911,950 
Other revenue  -  -  157,605  148,642  4,356,954  4,355,856  252,540  244,426  -  -  -  - -  -  4,767,099  4,748,924 
Net income from financial instruments at FVTPL  28  106  9,584  (17,428)  24,766  22,997  72,658  4,408  243,606  56,676  (398)  334 -  350,244  67,093 
Operating lease income  1,186,002  1,026,926 - - - - - - - - - - -  -  1,186,002  1,026,926', chunk_type: 'business_segments', index: 4}] AS chunk MERGE (ch:Chunk {id: chunk.id}) ON CREATE SET ch.content = chunk.content, ch.chunk_type = chunk.chunk_type, ch.index = chunk.index;

// Query 85
MATCH (c:Company {name: 'Ceylon Beverage Holdings PLC'}) WITH c UNWIND ['ceylon_beverage_holdings_plc_directors_and_executives_0', 'ceylon_beverage_holdings_plc_directors_and_executives_1', 'ceylon_beverage_holdings_plc_directors_and_executives_2', 'ceylon_beverage_holdings_plc_directors_and_executives_3', 'ceylon_beverage_holdings_plc_directors_and_executives_4', 'ceylon_beverage_holdings_plc_financial_performance_0', 'ceylon_beverage_holdings_plc_financial_performance_1', 'ceylon_beverage_holdings_plc_financial_performance_2', 'ceylon_beverage_holdings_plc_financial_performance_3', 'ceylon_beverage_holdings_plc_financial_performance_4', 'ceylon_beverage_holdings_plc_risk_factors_0', 'ceylon_beverage_holdings_plc_risk_factors_1', 'ceylon_beverage_holdings_plc_risk_factors_2', 'ceylon_beverage_holdings_plc_risk_factors_3', 'ceylon_beverage_holdings_plc_risk_factors_4', 'ceylon_beverage_holdings_plc_business_segments_0', 'ceylon_beverage_holdings_plc_business_segments_1', 'ceylon_beverage_holdings_plc_business_segments_2', 'ceylon_beverage_holdings_plc_business_segments_3', 'ceylon_beverage_holdings_plc_business_segments_4'] AS chunk_id MATCH (ch:Chunk {id: chunk_id}) MERGE (c)-[:HAS_CONTENT]->(ch);

// Total queries: 85
// Generated on: 2025-09-30T12:33:55.650928
