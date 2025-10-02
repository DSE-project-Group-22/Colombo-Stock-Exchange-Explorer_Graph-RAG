// Query 1
MERGE (c:Company {name: 'Tea Smallholder Factories PLC'}) ON CREATE SET c.id = 'tea_smallholder_factories_plc';

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
MERGE (m:Metric {name: 'Cash Inflow From Operations'}) ON CREATE SET m.id = 'cash_inflow_from_operations', m.unit = 'Rs';

// Query 14
MERGE (m:Metric {name: 'Net Profit Ratio'}) ON CREATE SET m.id = 'net_profit_ratio', m.unit = '%';

// Query 15
MERGE (m:Metric {name: 'Taxes'}) ON CREATE SET m.id = 'taxes', m.unit = 'Rs';

// Query 16
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 17
MERGE (m:Metric {name: 'Asset Turnover Ratio'}) ON CREATE SET m.id = 'asset_turnover_ratio', m.unit = 'Times';

// Query 18
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 19
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 20
MERGE (m:Metric {name: 'Total Revenue'}) ON CREATE SET m.id = 'total_revenue', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Gross Operating Profit'}) ON CREATE SET m.id = 'gross_operating_profit', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Other Income'}) ON CREATE SET m.id = 'other_income', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Administrative Expenses'}) ON CREATE SET m.id = 'administrative_expenses', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Management Fees'}) ON CREATE SET m.id = 'management_fees', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Results from Operating Activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Net Finance Cost'}) ON CREATE SET m.id = 'net_finance_cost', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Tax Expense'}) ON CREATE SET m.id = 'tax_expense', m.unit = 'Rs';

// Query 29
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 30
MATCH (p:Person {name: 'S.D.R. Arudpragasam'}), (c:Company {name: 'Tea Smallholder Factories PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'R.C.A. Welikala'}), (c:Company {name: 'Tea Smallholder Factories PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'R.N. Bopearatchy'}), (c:Company {name: 'Tea Smallholder Factories PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'E. T. De Zoysa'}), (c:Company {name: 'Tea Smallholder Factories PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2021-03-31');

// Query 34
MATCH (p:Person {name: 'E. T. De Zoysa'}), (c:Company {name: 'Tea Smallholder Factories PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Executive', r.as_of = date('2021-03-31');

// Query 35
MATCH (p:Person {name: 'R. S. A. Wickramasingha'}), (c:Company {name: 'Tea Smallholder Factories PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-03-31');

// Query 36
MATCH (p:Person {name: 'R. S. A. Wickramasingha'}), (c:Company {name: 'Tea Smallholder Factories PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2021-03-31');

// Query 37
MATCH (p:Person {name: 'D. S. Wickramasingha'}), (c:Company {name: 'Tea Smallholder Factories PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 38
MATCH (p:Person {name: 'D. S. Wickramasingha'}), (c:Company {name: 'Tea Smallholder Factories PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2021-03-31');

// Query 39
MATCH (p:Person {name: 'N. K. Wickramasingha'}), (c:Company {name: 'Tea Smallholder Factories PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 40
MATCH (p:Person {name: 'N. K. Wickramasingha'}), (c:Company {name: 'Tea Smallholder Factories PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2021-03-31');

// Query 41
MATCH (p:Person {name: 'L. J. M. De Silva'}), (c:Company {name: 'Tea Smallholder Factories PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 42
MATCH (p:Person {name: 'L. J. M. De Silva'}), (c:Company {name: 'Tea Smallholder Factories PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2021-03-31');

// Query 43
MATCH (p:Person {name: 'M. U. S. G. Thilakawardana'}), (c:Company {name: 'Tea Smallholder Factories PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 44
MATCH (p:Person {name: 'M. U. S. G. Thilakawardana'}), (c:Company {name: 'Tea Smallholder Factories PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2021-03-31');

// Query 45
MATCH (p:Person {name: 'D. M. A. Kulasooriya'}), (c:Company {name: 'Tea Smallholder Factories PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 46
MATCH (p:Person {name: 'D. M. A. Kulasooriya'}), (c:Company {name: 'Tea Smallholder Factories PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2021-03-31');

// Query 47
MATCH (p:Person {name: 'M. S. Nanayakkara'}), (c:Company {name: 'Tea Smallholder Factories PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 48
MATCH (p:Person {name: 'M. S. Nanayakkara'}), (c:Company {name: 'Tea Smallholder Factories PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2021-03-31');

// Query 49
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Cash Inflow From Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2655000000, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Net Profit Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21.17, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Taxes'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 491000000, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25.80, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.79, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26.85, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3055960000, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Gross Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -39014000, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 159989000, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Administrative Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -145761000, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Management Fees'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -22705000, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Results from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -47491000, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Net Finance Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -14411000, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -19688000, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25917000, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3743939000, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Gross Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 411015000, r.year = 2023;

// Query 67
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 440626000, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -162131000, r.year = 2023;

// Query 69
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2018797000, r.year = 2022;

// Query 70
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22657000, r.year = 2022;

// Query 71
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2346224000, r.year = 2021;

// Query 72
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78589000, r.year = 2021;

// Query 73
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2109139000, r.year = 2020;

// Query 74
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 30938000, r.year = 2020;

// Query 75
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 76
UNWIND [{id: 'tea_smallholder_factories_plc_directors_and_executives_0', content: '(Pvt) Ltd\na\nr\nThe DIRECTORS of the Company are also DIRECTORS of following companies with which the Company had transactions\nin the ordinary course of business during the year.\nKey management includes members of the Board of DIRECTORS of the Company. The compensation paid or payable\nto key management for employee services is shown below:\nMr. H.N.J \nChandrasekara\nMr. K.A.K \nJayatilake\nr\na', chunk_type: 'directors_and_executives', index: 0}, {id: 'tea_smallholder_factories_plc_directors_and_executives_1', content: 'contracts in which they have an interest are disclosed in \nNote 34.1.1 to the financial statements on page 68.\nDIRECTORS’ Interest in Shares\nDIRECTORS of the Company who have an interest in the \nshares of the Company are required to disclose their \nshareholdings and any acquisitions/ disposals to the \nBoard in compliance with Section 200 of the Companies \nAct No. 07 of 2007. However, none of the DIRECTORS held \nany shares during the period under review nor in the \nprevious year.\nDIRECTORS’ Remuneration\nKey Management Personnel Compensation in respect of \nthe Company and the Group for the financial year 2021/ \n2022 is detailed in Note 34.1.2 to the Financial Statements \non page 68.\nDirectorate\nThe names of the DIRECTORS who held office during the \nfinancial year are given below and brief profiles of the \nDIRECTORS who are currently in office appear on pages 5 \nto 6.\nMr. S.D.R. Arudpragasam - Chairman\nMr. R.C.A. Welikala - Director\nMr. R.N. Bopearatchy - Director', chunk_type: 'directors_and_executives', index: 1}, {id: 'tea_smallholder_factories_plc_directors_and_executives_2', content: 'Company in the preparation of the Financial \nStatements are given on pages 71 to 79, \nwhich are consistent with those of the \nprevious period.\nDIRECTORS’ responsibility for Financial \nReporting\nThe DIRECTORS are responsible for the \npreparation of the Financial Statements of \nthe Company and the Group to reflect a true \nand fair view of the state of its affairs.\nInformation on the DIRECTORS of the \nCompany and the Group \nDIRECTORS of the Company as at  \n31st March 2021\nThe names of the DIRECTORS who held office \nas at the end of the accounting period are \ngiven below and their brief profiles appear on \npages 18 and 19.\nExecutive DIRECTORS\nMr. E. T . De Zoysa - Managing Director\nNon-Executive DIRECTORS\nMr. R. S. A. Wickramasingha - Chairman\nMs. D. S. Wickramasingha - Director\nMs. N. K. Wickramasingha - Director \nMr. L. J. M. De Silva - Director \nMr. M. U. S. G. Thilakawardana - Director*\nDr. D. M. A. Kulasooriya - Director*\nMr. M. S. Nanayakkara - Director*', chunk_type: 'directors_and_executives', index: 2}, {id: 'tea_smallholder_factories_plc_directors_and_executives_3', content: 'from pages 28 to 67 of the Annual Report. \nDIRECTORATE \nThe Board of DIRECTORS of the Company as at date is set out in \n“Corporate Information”. The DIRECTORS of the Company who held \noffice during the year under review and changes thereto are \nindicated below.', chunk_type: 'directors_and_executives', index: 3}, {id: 'tea_smallholder_factories_plc_directors_and_executives_4', content: 'in the Shareholders Information section on pages 166 to 167.\nThe Company endeavours at all times to ensure equitable treatment to all \nshareholders.\nSubstantial Shareholdings\nThere were 1738 registered shareholders, holding ordinary voting shares \nas at 31st March 2025 (1,582 registered shareholders as at 31st March \n2024).\nThe names of the twenty largest shareholders, the number of shares held, \nand the percentages held are given on page 167 of the Annual Report. \nThe distribution schedule of the shareholders and public holdings are \ndisclosed on page 166 of the Annual Report.\nDirectorate\nAs at 31st March 2025 the Board of DIRECTORS of the Company consisted \nof eight DIRECTORS with wide commercial, academic knowledge and \nexperience. The DIRECTORS profile is given on pages 56 to 57 of this Annual \nReport.\nThe Board of DIRECTORS of the Company and its subsidiaries as at 31st \nMarch 2025 are listed below.\nName of the Director\nJohn Keells PLC \nPLC\nJohn \nKeells PLC \nStockbrokers\nJohn Keells PLC', chunk_type: 'directors_and_executives', index: 4}, {id: 'tea_smallholder_factories_plc_financial_performance_0', content: 'best practices, our aim is to optimise our financial resources, leveraging them to drive short-term \ngrowth whilst consolidating gains and investing in expansions, new products and markets for long-\nterm success. This section will outline our approach to strengthen our financial capital base and \nprovide a detailed overview of the results achieved for the financial year (FY) ended 31st March, \n2024.\nFINANCIAL \nCAPITAL\nRs. 7,764 Mn\nRevenue\nFY 2022/23: 8,199mn\nRs. 2,655 Mn \nCash Inflow From \nOperations\nFY 2022/23: Rs. 3,553 Mn\n21.17%\nNet Profit Ratio\nFY 2022/23: 31.45% \nRs. 491 Mn \nTaxes\nFY 2022/23: 719 Mn\n25.80%\nReturn on Equity\nFY 2022/23:41.81%\n0.79 times \nAsset Turnover Ratio\nFY 2022/23: 0.90 \ntimes\nRs. 26.85\nDividend Per Share\nFY 2022/23: Rs 19.00\n7%\nDebt: Equity Ratio\nFY 2022/23: 5%\nSound Internal \nControls\nLiquidity & Fund \nManagement\nError free \nFinancial \nReporting\nSafeguard of \nAssetsProfitability\nOur Materiality Focus\nStakeholders Impacted', chunk_type: 'financial_performance', index: 0}, {id: 'tea_smallholder_factories_plc_financial_performance_1', content: 'About Us Management Discussion and Analysis Stewardship Financial Information Supplementary Information\nPERFORMANCE\nFINANCIAL INFORMATION\nPRECISION IN\nOur financial performance directly reflects the strategic decisions and thoughtful investments we \nmake by managing resources with precision. Each financial decision is focused on strengthening our \nfoundation and driving sustained success, offering the clarity and confidence necessary for informed \ndecision-making.', chunk_type: 'financial_performance', index: 1}, {id: 'tea_smallholder_factories_plc_financial_performance_2', content: 'About Us Management Discussion and Analysis Stewardship Financial Information Supplementary Information\nPERFORMANCE\nFINANCIAL INFORMATION\nPRECISION IN\nOur financial performance directly reflects the strategic decisions and thoughtful investments we \nmake by managing resources with precision. Each financial decision is focused on strengthening our \nfoundation and driving sustained success, offering the clarity and confidence necessary for informed \ndecision-making.', chunk_type: 'financial_performance', index: 2}, {id: 'tea_smallholder_factories_plc_financial_performance_3', content: 'Performance\nRevenue  111,148  106,418  107,710  102,348  91,119  85,948  81,445  75,741  73,801  68,022 \nOperating profit  11,189  4,102  12,518  13,844  11,632  8,539  7,613  3,918  5,726  6,789 \nFinance cost  8,979  11,292  4,894  3,022  2,902  2,067  239  159  250  270 \nProfit\u200a/(loss)\tbefore\ttax  6,037  (2,651)  10,588  12,818  9,713  8,216  7,169  5,528  6,497  5,515 \nT axation  2,917  1,270  5,823  657  1,832  1,894  2,221  1,588  1,707  1,791 \nProfit\u200a/(loss)\tafter\ttax  3,120  (3,921)  4,765  12,161  7,881  6,322  4,948  3,940  4,790  3,724 \nCash flow\nNet operating cash flows  22,931  17,224  28,914  43,381  32,300  20,410  19,656  18,224  19,466  21,265 \nNet cash used in investing activities  25,839  32,676  40,768  30,001  15,034  28,278  22,890  27,415  24,347  14,375 \nNet\tcash\tused\tin\u200a/(from)\tfinancing\t\nactivities  2,929  13,115  663  (7,381)  (9,003)  4,957  16,909  756  360  6,065 \nKey financial indicators', chunk_type: 'financial_performance', index: 3}, {id: 'tea_smallholder_factories_plc_financial_performance_4', content: '166\nTEA SMALLHOLDER FACTORIES PLC\nFive Y ear Financial Summary and  \nKey Indicators\nYear Ended 31st March 2024 2023 2022 2021 2020\nRs.000\'s Rs.000\'s Rs.000\'s Rs.000\'s Rs.000\'s\nTotal Revenue  3,055,960  3,743,939  2,018,797  2,346,224  2,109,139 \nCost of Sale  (3,094,974)  (3,332,924)  (2,029,365)  (2,256,953)  (2,093,028)\nGross Operating Profit / (Loss)  (39,014)  411,015  (10,568)  89,271  16,111 \nOther Income  159,989  152,646  88,258  60,987  55,283 \nExpenses\nAdministrative Expenses  (145,761)  (106,191)  (62,919)  (54,788)  (62,074)\nManagement Fees  (22,705)  (66,085)  (15,028)  (23,274)  (17,680)\nResults from Operating Activities  (47,491)  391,385  (257)  72,197  (8,360)\nNet Finance (Cost) / Income  (14,411)  28,779  7,195  8,764  1 \nChange in fair value of Investment Property  42,214  20,462  15,719  (2,371)  39,297 \nProfit/ (Loss) before Tax  (19,688)  440,626  22,657  78,589  30,938 \nTax (Expense)/ Reversal  25,917  (162,131)  (7,346)  (12,045)  73,149', chunk_type: 'financial_performance', index: 4}] AS chunk MERGE (ch:Chunk {id: chunk.id}) ON CREATE SET ch.content = chunk.content, ch.chunk_type = chunk.chunk_type, ch.index = chunk.index;

// Query 77
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}) WITH c UNWIND ['tea_smallholder_factories_plc_directors_and_executives_0', 'tea_smallholder_factories_plc_directors_and_executives_1', 'tea_smallholder_factories_plc_directors_and_executives_2', 'tea_smallholder_factories_plc_directors_and_executives_3', 'tea_smallholder_factories_plc_directors_and_executives_4', 'tea_smallholder_factories_plc_financial_performance_0', 'tea_smallholder_factories_plc_financial_performance_1', 'tea_smallholder_factories_plc_financial_performance_2', 'tea_smallholder_factories_plc_financial_performance_3', 'tea_smallholder_factories_plc_financial_performance_4'] AS chunk_id MATCH (ch:Chunk {id: chunk_id}) MERGE (c)-[:HAS_CONTENT]->(ch);

// Total queries: 77
// Generated on: 2025-09-30T13:13:37.872997
