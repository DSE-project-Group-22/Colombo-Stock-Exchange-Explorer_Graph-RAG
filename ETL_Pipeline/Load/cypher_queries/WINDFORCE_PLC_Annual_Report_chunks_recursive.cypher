// Query 1
MERGE (c:Company {name: 'Windforce PLC'}) ON CREATE SET c.id = 'windforce_plc';

// Query 2
MERGE (p:Person {name: 'S.D.R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 3
MERGE (p:Person {name: 'R.C.A. Welikala'}) ON CREATE SET p.id = 'r_c_a_welikala';

// Query 4
MERGE (p:Person {name: 'R.N. Bopearatchy'}) ON CREATE SET p.id = 'r_n_bopearatchy';

// Query 5
MERGE (p:Person {name: 'E. T. De Zoysa'}) ON CREATE SET p.id = 'e_t_de_zoysa';

// Query 6
MERGE (p:Person {name: 'R. S. A. Wickramasingha'}) ON CREATE SET p.id = 'r_s_a_wickramasingha';

// Query 7
MERGE (p:Person {name: 'D. S. Wickramasingha'}) ON CREATE SET p.id = 'd_s_wickramasingha';

// Query 8
MERGE (p:Person {name: 'N. K. Wickramasingha'}) ON CREATE SET p.id = 'n_k_wickramasingha';

// Query 9
MERGE (p:Person {name: 'L. J. M. De Silva'}) ON CREATE SET p.id = 'l_j_m_de_silva';

// Query 10
MERGE (p:Person {name: 'M. U. S. G. Thilakawardana'}) ON CREATE SET p.id = 'm_u_s_g_thilakawardana';

// Query 11
MERGE (p:Person {name: 'D. M. A. Kulasooriya'}) ON CREATE SET p.id = 'd_m_a_kulasooriya';

// Query 12
MERGE (p:Person {name: 'M. S. Nanayakkara'}) ON CREATE SET p.id = 'm_s_nanayakkara';

// Query 13
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 14
MERGE (m:Metric {name: 'Cash Inflow From Operations'}) ON CREATE SET m.id = 'cash_inflow_from_operations', m.unit = 'Rs';

// Query 15
MERGE (m:Metric {name: 'Net Profit Ratio'}) ON CREATE SET m.id = 'net_profit_ratio', m.unit = '%';

// Query 16
MERGE (m:Metric {name: 'Taxes'}) ON CREATE SET m.id = 'taxes', m.unit = 'Rs';

// Query 17
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 18
MERGE (m:Metric {name: 'Asset Turnover Ratio'}) ON CREATE SET m.id = 'asset_turnover_ratio', m.unit = 'Times';

// Query 19
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Debt: Equity Ratio'}) ON CREATE SET m.id = 'debt_equity_ratio', m.unit = '%';

// Query 21
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 22
MATCH (p:Person {name: 'S.D.R. Arudpragasam'}), (c:Company {name: 'Windforce PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 23
MATCH (p:Person {name: 'R.C.A. Welikala'}), (c:Company {name: 'Windforce PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 24
MATCH (p:Person {name: 'R.N. Bopearatchy'}), (c:Company {name: 'Windforce PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 25
MATCH (p:Person {name: 'E. T. De Zoysa'}), (c:Company {name: 'Windforce PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2021-03-31');

// Query 26
MATCH (p:Person {name: 'R. S. A. Wickramasingha'}), (c:Company {name: 'Windforce PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-03-31');

// Query 27
MATCH (p:Person {name: 'D. S. Wickramasingha'}), (c:Company {name: 'Windforce PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 28
MATCH (p:Person {name: 'N. K. Wickramasingha'}), (c:Company {name: 'Windforce PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 29
MATCH (p:Person {name: 'L. J. M. De Silva'}), (c:Company {name: 'Windforce PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 30
MATCH (p:Person {name: 'M. U. S. G. Thilakawardana'}), (c:Company {name: 'Windforce PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 31
MATCH (p:Person {name: 'D. M. A. Kulasooriya'}), (c:Company {name: 'Windforce PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 32
MATCH (p:Person {name: 'M. S. Nanayakkara'}), (c:Company {name: 'Windforce PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 33
MATCH (c:Company {name: 'Windforce PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7764000000, r.year = 2024;

// Query 34
MATCH (c:Company {name: 'Windforce PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8199000000, r.year = 2023;

// Query 35
MATCH (c:Company {name: 'Windforce PLC'}), (m:Metric {name: 'Cash Inflow From Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2655000000, r.year = 2024;

// Query 36
MATCH (c:Company {name: 'Windforce PLC'}), (m:Metric {name: 'Cash Inflow From Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3553000000, r.year = 2023;

// Query 37
MATCH (c:Company {name: 'Windforce PLC'}), (m:Metric {name: 'Net Profit Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21.17, r.year = 2024;

// Query 38
MATCH (c:Company {name: 'Windforce PLC'}), (m:Metric {name: 'Net Profit Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31.45, r.year = 2023;

// Query 39
MATCH (c:Company {name: 'Windforce PLC'}), (m:Metric {name: 'Taxes'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 491000000, r.year = 2024;

// Query 40
MATCH (c:Company {name: 'Windforce PLC'}), (m:Metric {name: 'Taxes'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 719000000, r.year = 2023;

// Query 41
MATCH (c:Company {name: 'Windforce PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25.80, r.year = 2024;

// Query 42
MATCH (c:Company {name: 'Windforce PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 41.81, r.year = 2023;

// Query 43
MATCH (c:Company {name: 'Windforce PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.79, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Windforce PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.90, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Windforce PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26.85, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Windforce PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.00, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Windforce PLC'}), (m:Metric {name: 'Debt: Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Windforce PLC'}), (m:Metric {name: 'Debt: Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Windforce PLC'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 50
UNWIND [{id: 'windforce_plc_directors_and_executives_0', content: '(Pvt) Ltd\na\nr\nThe DIRECTORS of the Company are also DIRECTORS of following companies with which the Company had transactions\nin the ordinary course of business during the year.\nKey management includes members of the Board of DIRECTORS of the Company. The compensation paid or payable\nto key management for employee services is shown below:\nMr. H.N.J \nChandrasekara\nMr. K.A.K \nJayatilake\nr\na', chunk_type: 'directors_and_executives', index: 0}, {id: 'windforce_plc_directors_and_executives_1', content: 'contracts in which they have an interest are disclosed in \nNote 34.1.1 to the financial statements on page 68.\nDIRECTORS’ Interest in Shares\nDIRECTORS of the Company who have an interest in the \nshares of the Company are required to disclose their \nshareholdings and any acquisitions/ disposals to the \nBoard in compliance with Section 200 of the Companies \nAct No. 07 of 2007. However, none of the DIRECTORS held \nany shares during the period under review nor in the \nprevious year.\nDIRECTORS’ Remuneration\nKey Management Personnel Compensation in respect of \nthe Company and the Group for the financial year 2021/ \n2022 is detailed in Note 34.1.2 to the Financial Statements \non page 68.\nDirectorate\nThe names of the DIRECTORS who held office during the \nfinancial year are given below and brief profiles of the \nDIRECTORS who are currently in office appear on pages 5 \nto 6.\nMr. S.D.R. Arudpragasam - Chairman\nMr. R.C.A. Welikala - Director\nMr. R.N. Bopearatchy - Director', chunk_type: 'directors_and_executives', index: 1}, {id: 'windforce_plc_directors_and_executives_2', content: 'shareholders of the Company is given on \npage 248 under Shareholders’ Information.\nPublic Holding \nInformation on public holding in terms of \nthe Listing Rules is given on page 244 under \nShareholders’ Information.\nInformation on the DIRECTORS of the \nCompany and DIRECTORS of Group \nCompanies as at 31st March 2024\nThe Board of DIRECTORS of the Company \nas at 31st March 2024 consisted of Seven \n(7) DIRECTORS, with a broad range of skills, \nexperience and attributes which include \nentrepreneurship, finance, audit, legal, \nmarketing and banking, as detailed in the \nbrief Profiles of the DIRECTORS on pages \n31-34.\nNames of the DIRECTORS who held office \nduring the year and as at 31st March 2024 \nas required by section 168 (1) (h) of the \nCompanies Act are given below : \nCHANGES IN THE DIRECTORATE DURING \nTHE YEAR\nThere were no changes in the directorate \nduring the period under review\nDIRECTORS of the subsidiaries and the \nassociate company as at 31st March 2024', chunk_type: 'directors_and_executives', index: 2}, {id: 'windforce_plc_directors_and_executives_3', content: 'Company in the preparation of the Financial \nStatements are given on pages 71 to 79, \nwhich are consistent with those of the \nprevious period.\nDIRECTORS’ responsibility for Financial \nReporting\nThe DIRECTORS are responsible for the \npreparation of the Financial Statements of \nthe Company and the Group to reflect a true \nand fair view of the state of its affairs.\nInformation on the DIRECTORS of the \nCompany and the Group \nDIRECTORS of the Company as at  \n31st March 2021\nThe names of the DIRECTORS who held office \nas at the end of the accounting period are \ngiven below and their brief profiles appear on \npages 18 and 19.\nExecutive DIRECTORS\nMr. E. T . De Zoysa - Managing Director\nNon-Executive DIRECTORS\nMr. R. S. A. Wickramasingha - Chairman\nMs. D. S. Wickramasingha - Director\nMs. N. K. Wickramasingha - Director \nMr. L. J. M. De Silva - Director \nMr. M. U. S. G. Thilakawardana - Director*\nDr. D. M. A. Kulasooriya - Director*\nMr. M. S. Nanayakkara - Director*', chunk_type: 'directors_and_executives', index: 3}, {id: 'windforce_plc_directors_and_executives_4', content: 'from pages 28 to 67 of the Annual Report. \nDIRECTORATE \nThe Board of DIRECTORS of the Company as at date is set out in \n“Corporate Information”. The DIRECTORS of the Company who held \noffice during the year under review and changes thereto are \nindicated below.', chunk_type: 'directors_and_executives', index: 4}, {id: 'windforce_plc_financial_performance_0', content: 'best practices, our aim is to optimise our financial resources, leveraging them to drive short-term \ngrowth whilst consolidating gains and investing in expansions, new products and markets for long-\nterm success. This section will outline our approach to strengthen our financial capital base and \nprovide a detailed overview of the results achieved for the financial year (FY) ended 31st March, \n2024.\nFINANCIAL \nCAPITAL\nRs. 7,764 Mn\nRevenue\nFY 2022/23: 8,199mn\nRs. 2,655 Mn \nCash Inflow From \nOperations\nFY 2022/23: Rs. 3,553 Mn\n21.17%\nNet Profit Ratio\nFY 2022/23: 31.45% \nRs. 491 Mn \nTaxes\nFY 2022/23: 719 Mn\n25.80%\nReturn on Equity\nFY 2022/23:41.81%\n0.79 times \nAsset Turnover Ratio\nFY 2022/23: 0.90 \ntimes\nRs. 26.85\nDividend Per Share\nFY 2022/23: Rs 19.00\n7%\nDebt: Equity Ratio\nFY 2022/23: 5%\nSound Internal \nControls\nLiquidity & Fund \nManagement\nError free \nFinancial \nReporting\nSafeguard of \nAssetsProfitability\nOur Materiality Focus\nStakeholders Impacted', chunk_type: 'financial_performance', index: 0}] AS chunk MERGE (ch:Chunk {id: chunk.id}) ON CREATE SET ch.content = chunk.content, ch.chunk_type = chunk.chunk_type, ch.index = chunk.index;

// Query 51
MATCH (c:Company {name: 'Windforce PLC'}) WITH c UNWIND ['windforce_plc_directors_and_executives_0', 'windforce_plc_directors_and_executives_1', 'windforce_plc_directors_and_executives_2', 'windforce_plc_directors_and_executives_3', 'windforce_plc_directors_and_executives_4', 'windforce_plc_financial_performance_0'] AS chunk_id MATCH (ch:Chunk {id: chunk_id}) MERGE (c)-[:HAS_CONTENT]->(ch);

// Total queries: 51
// Generated on: 2025-09-30T13:59:52.412890
