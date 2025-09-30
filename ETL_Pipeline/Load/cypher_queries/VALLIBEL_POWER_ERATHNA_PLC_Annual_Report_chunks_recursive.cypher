// Query 1
MERGE (c:Company {name: 'Vallibel Power Erathna PLC'}) ON CREATE SET c.id = 'vallibel_power_erathna_plc';

// Query 2
MERGE (c:Company {name: 'Tea Smallholder Factories PLC'}) ON CREATE SET c.id = 'tea_smallholder_factories_plc';

// Query 3
MERGE (c:Company {name: 'SMB Finance PLC'}) ON CREATE SET c.id = 'smb_finance_plc';

// Query 4
MERGE (c:Company {name: 'Lankem Ceylon PLC'}) ON CREATE SET c.id = 'lankem_ceylon_plc';

// Query 5
MERGE (p:Person {name: 'S.D.R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 6
MERGE (p:Person {name: 'R.C.A. Welikala'}) ON CREATE SET p.id = 'r_c_a_welikala';

// Query 7
MERGE (p:Person {name: 'R.N. Bopearatchy'}) ON CREATE SET p.id = 'r_n_bopearatchy';

// Query 8
MERGE (p:Person {name: 'E. T. De Zoysa'}) ON CREATE SET p.id = 'e_t_de_zoysa';

// Query 9
MERGE (p:Person {name: 'R. S. A. Wickramasingha'}) ON CREATE SET p.id = 'r_s_a_wickramasingha';

// Query 10
MERGE (p:Person {name: 'D. S. Wickramasingha'}) ON CREATE SET p.id = 'd_s_wickramasingha';

// Query 11
MERGE (p:Person {name: 'N. K. Wickramasingha'}) ON CREATE SET p.id = 'n_k_wickramasingha';

// Query 12
MERGE (p:Person {name: 'L. J. M. De Silva'}) ON CREATE SET p.id = 'l_j_m_de_silva';

// Query 13
MERGE (p:Person {name: 'M. U. S. G. Thilakawardana'}) ON CREATE SET p.id = 'm_u_s_g_thilakawardana';

// Query 14
MERGE (p:Person {name: 'D. M. A. Kulasooriya'}) ON CREATE SET p.id = 'd_m_a_kulasooriya';

// Query 15
MERGE (p:Person {name: 'M. S. Nanayakkara'}) ON CREATE SET p.id = 'm_s_nanayakkara';

// Query 16
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 17
MERGE (m:Metric {name: 'Cash Inflow From Operations'}) ON CREATE SET m.id = 'cash_inflow_from_operations', m.unit = 'Rs';

// Query 18
MERGE (m:Metric {name: 'Net Profit Ratio'}) ON CREATE SET m.id = 'net_profit_ratio', m.unit = '%';

// Query 19
MERGE (m:Metric {name: 'Taxes'}) ON CREATE SET m.id = 'taxes', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 21
MERGE (m:Metric {name: 'Asset Turnover Ratio'}) ON CREATE SET m.id = 'asset_turnover_ratio', m.unit = 'Times';

// Query 22
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 24
MERGE (m:Metric {name: 'Total Revenue'}) ON CREATE SET m.id = 'total_revenue', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Gross Operating Profit'}) ON CREATE SET m.id = 'gross_operating_profit', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Other Income'}) ON CREATE SET m.id = 'other_income', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Tax Expense'}) ON CREATE SET m.id = 'tax_expense', m.unit = 'Rs';

// Query 29
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 30
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 31
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 32
MATCH (p:Person {name: 'S.D.R. Arudpragasam'}), (c:Company {name: 'Vallibel Power Erathna PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2022-03-31');

// Query 33
MATCH (p:Person {name: 'R.C.A. Welikala'}), (c:Company {name: 'Vallibel Power Erathna PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2022-03-31');

// Query 34
MATCH (p:Person {name: 'R.N. Bopearatchy'}), (c:Company {name: 'Vallibel Power Erathna PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2022-03-31');

// Query 35
MATCH (p:Person {name: 'E. T. De Zoysa'}), (c:Company {name: 'Vallibel Power Erathna PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2021-03-31');

// Query 36
MATCH (p:Person {name: 'R. S. A. Wickramasingha'}), (c:Company {name: 'Vallibel Power Erathna PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2021-03-31');

// Query 37
MATCH (p:Person {name: 'D. S. Wickramasingha'}), (c:Company {name: 'Vallibel Power Erathna PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 38
MATCH (p:Person {name: 'N. K. Wickramasingha'}), (c:Company {name: 'Vallibel Power Erathna PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 39
MATCH (p:Person {name: 'L. J. M. De Silva'}), (c:Company {name: 'Vallibel Power Erathna PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 40
MATCH (p:Person {name: 'M. U. S. G. Thilakawardana'}), (c:Company {name: 'Vallibel Power Erathna PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 41
MATCH (p:Person {name: 'D. M. A. Kulasooriya'}), (c:Company {name: 'Vallibel Power Erathna PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 42
MATCH (p:Person {name: 'M. S. Nanayakkara'}), (c:Company {name: 'Vallibel Power Erathna PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2021-03-31');

// Query 43
MATCH (c:Company {name: 'Vallibel Power Erathna PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7764000000, r.year = 2024;

// Query 44
MATCH (c:Company {name: 'Vallibel Power Erathna PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8199000000, r.year = 2023;

// Query 45
MATCH (c:Company {name: 'Vallibel Power Erathna PLC'}), (m:Metric {name: 'Cash Inflow From Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2655000000, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Vallibel Power Erathna PLC'}), (m:Metric {name: 'Cash Inflow From Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3553000000, r.year = 2023;

// Query 47
MATCH (c:Company {name: 'Vallibel Power Erathna PLC'}), (m:Metric {name: 'Net Profit Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21.17, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Vallibel Power Erathna PLC'}), (m:Metric {name: 'Net Profit Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31.45, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Vallibel Power Erathna PLC'}), (m:Metric {name: 'Taxes'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 491000000, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Vallibel Power Erathna PLC'}), (m:Metric {name: 'Taxes'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 719000000, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Vallibel Power Erathna PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25.80, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Vallibel Power Erathna PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 41.81, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Vallibel Power Erathna PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.79, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Vallibel Power Erathna PLC'}), (m:Metric {name: 'Asset Turnover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.90, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Vallibel Power Erathna PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26.85, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Vallibel Power Erathna PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19.00, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Vallibel Power Erathna PLC'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Vallibel Power Erathna PLC'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3055960000, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3743939000, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Gross Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -39014000, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Gross Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 411015000, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 159989000, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -19688000, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 440626000, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25917000, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Tea Smallholder Factories PLC'}), (m:Metric {name: 'Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -162131000, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Vallibel Power Erathna PLC'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 69
MATCH (c:Company {name: 'SMB Finance PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 70
MATCH (c:Company {name: 'Lankem Ceylon PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 71
UNWIND [{id: 'vallibel_power_erathna_plc_directors_and_executives_0', content: '(Pvt) Ltd\na\nr\nThe DIRECTORS of the Company are also DIRECTORS of following companies with which the Company had transactions\nin the ordinary course of business during the year.\nKey management includes members of the Board of DIRECTORS of the Company. The compensation paid or payable\nto key management for employee services is shown below:\nMr. H.N.J \nChandrasekara\nMr. K.A.K \nJayatilake\nr\na', chunk_type: 'directors_and_executives', index: 0}, {id: 'vallibel_power_erathna_plc_directors_and_executives_1', content: 'contracts in which they have an interest are disclosed in \nNote 34.1.1 to the financial statements on page 68.\nDIRECTORS’ Interest in Shares\nDIRECTORS of the Company who have an interest in the \nshares of the Company are required to disclose their \nshareholdings and any acquisitions/ disposals to the \nBoard in compliance with Section 200 of the Companies \nAct No. 07 of 2007. However, none of the DIRECTORS held \nany shares during the period under review nor in the \nprevious year.\nDIRECTORS’ Remuneration\nKey Management Personnel Compensation in respect of \nthe Company and the Group for the financial year 2021/ \n2022 is detailed in Note 34.1.2 to the Financial Statements \non page 68.\nDirectorate\nThe names of the DIRECTORS who held office during the \nfinancial year are given below and brief profiles of the \nDIRECTORS who are currently in office appear on pages 5 \nto 6.\nMr. S.D.R. Arudpragasam - Chairman\nMr. R.C.A. Welikala - Director\nMr. R.N. Bopearatchy - Director', chunk_type: 'directors_and_executives', index: 1}, {id: 'vallibel_power_erathna_plc_directors_and_executives_2', content: 'shareholders of the Company is given on \npage 248 under Shareholders’ Information.\nPublic Holding \nInformation on public holding in terms of \nthe Listing Rules is given on page 244 under \nShareholders’ Information.\nInformation on the DIRECTORS of the \nCompany and DIRECTORS of Group \nCompanies as at 31st March 2024\nThe Board of DIRECTORS of the Company \nas at 31st March 2024 consisted of Seven \n(7) DIRECTORS, with a broad range of skills, \nexperience and attributes which include \nentrepreneurship, finance, audit, legal, \nmarketing and banking, as detailed in the \nbrief Profiles of the DIRECTORS on pages \n31-34.\nNames of the DIRECTORS who held office \nduring the year and as at 31st March 2024 \nas required by section 168 (1) (h) of the \nCompanies Act are given below : \nCHANGES IN THE DIRECTORATE DURING \nTHE YEAR\nThere were no changes in the directorate \nduring the period under review\nDIRECTORS of the subsidiaries and the \nassociate company as at 31st March 2024', chunk_type: 'directors_and_executives', index: 2}, {id: 'vallibel_power_erathna_plc_directors_and_executives_3', content: 'Company in the preparation of the Financial \nStatements are given on pages 71 to 79, \nwhich are consistent with those of the \nprevious period.\nDIRECTORS’ responsibility for Financial \nReporting\nThe DIRECTORS are responsible for the \npreparation of the Financial Statements of \nthe Company and the Group to reflect a true \nand fair view of the state of its affairs.\nInformation on the DIRECTORS of the \nCompany and the Group \nDIRECTORS of the Company as at  \n31st March 2021\nThe names of the DIRECTORS who held office \nas at the end of the accounting period are \ngiven below and their brief profiles appear on \npages 18 and 19.\nExecutive DIRECTORS\nMr. E. T . De Zoysa - Managing Director\nNon-Executive DIRECTORS\nMr. R. S. A. Wickramasingha - Chairman\nMs. D. S. Wickramasingha - Director\nMs. N. K. Wickramasingha - Director \nMr. L. J. M. De Silva - Director \nMr. M. U. S. G. Thilakawardana - Director*\nDr. D. M. A. Kulasooriya - Director*\nMr. M. S. Nanayakkara - Director*', chunk_type: 'directors_and_executives', index: 3}, {id: 'vallibel_power_erathna_plc_directors_and_executives_4', content: 'from pages 28 to 67 of the Annual Report. \nDIRECTORATE \nThe Board of DIRECTORS of the Company as at date is set out in \n“Corporate Information”. The DIRECTORS of the Company who held \noffice during the year under review and changes thereto are \nindicated below.', chunk_type: 'directors_and_executives', index: 4}, {id: 'vallibel_power_erathna_plc_financial_performance_0', content: 'best practices, our aim is to optimise our financial resources, leveraging them to drive short-term \ngrowth whilst consolidating gains and investing in expansions, new products and markets for long-\nterm success. This section will outline our approach to strengthen our financial capital base and \nprovide a detailed overview of the results achieved for the financial year (FY) ended 31st March, \n2024.\nFINANCIAL \nCAPITAL\nRs. 7,764 Mn\nRevenue\nFY 2022/23: 8,199mn\nRs. 2,655 Mn \nCash Inflow From \nOperations\nFY 2022/23: Rs. 3,553 Mn\n21.17%\nNet Profit Ratio\nFY 2022/23: 31.45% \nRs. 491 Mn \nTaxes\nFY 2022/23: 719 Mn\n25.80%\nReturn on Equity\nFY 2022/23:41.81%\n0.79 times \nAsset Turnover Ratio\nFY 2022/23: 0.90 \ntimes\nRs. 26.85\nDividend Per Share\nFY 2022/23: Rs 19.00\n7%\nDebt: Equity Ratio\nFY 2022/23: 5%\nSound Internal \nControls\nLiquidity & Fund \nManagement\nError free \nFinancial \nReporting\nSafeguard of \nAssetsProfitability\nOur Materiality Focus\nStakeholders Impacted', chunk_type: 'financial_performance', index: 0}, {id: 'vallibel_power_erathna_plc_financial_performance_1', content: 'About Us Management Discussion and Analysis Stewardship Financial Information Supplementary Information\nPERFORMANCE\nFINANCIAL INFORMATION\nPRECISION IN\nOur financial performance directly reflects the strategic decisions and thoughtful investments we \nmake by managing resources with precision. Each financial decision is focused on strengthening our \nfoundation and driving sustained success, offering the clarity and confidence necessary for informed \ndecision-making.', chunk_type: 'financial_performance', index: 1}, {id: 'vallibel_power_erathna_plc_financial_performance_2', content: 'About Us Management Discussion and Analysis Stewardship Financial Information Supplementary Information\nPERFORMANCE\nFINANCIAL INFORMATION\nPRECISION IN\nOur financial performance directly reflects the strategic decisions and thoughtful investments we \nmake by managing resources with precision. Each financial decision is focused on strengthening our \nfoundation and driving sustained success, offering the clarity and confidence necessary for informed \ndecision-making.', chunk_type: 'financial_performance', index: 2}, {id: 'vallibel_power_erathna_plc_financial_performance_3', content: 'Performance\nRevenue  111,148  106,418  107,710  102,348  91,119  85,948  81,445  75,741  73,801  68,022 \nOperating profit  11,189  4,102  12,518  13,844  11,632  8,539  7,613  3,918  5,726  6,789 \nFinance cost  8,979  11,292  4,894  3,022  2,902  2,067  239  159  250  270 \nProfit\u200a/(loss)\tbefore\ttax  6,037  (2,651)  10,588  12,818  9,713  8,216  7,169  5,528  6,497  5,515 \nT axation  2,917  1,270  5,823  657  1,832  1,894  2,221  1,588  1,707  1,791 \nProfit\u200a/(loss)\tafter\ttax  3,120  (3,921)  4,765  12,161  7,881  6,322  4,948  3,940  4,790  3,724 \nCash flow\nNet operating cash flows  22,931  17,224  28,914  43,381  32,300  20,410  19,656  18,224  19,466  21,265 \nNet cash used in investing activities  25,839  32,676  40,768  30,001  15,034  28,278  22,890  27,415  24,347  14,375 \nNet\tcash\tused\tin\u200a/(from)\tfinancing\t\nactivities  2,929  13,115  663  (7,381)  (9,003)  4,957  16,909  756  360  6,065 \nKey financial indicators', chunk_type: 'financial_performance', index: 3}, {id: 'vallibel_power_erathna_plc_financial_performance_4', content: '166\nTEA SMALLHOLDER FACTORIES PLC\nFive Y ear Financial Summary and  \nKey Indicators\nYear Ended 31st March 2024 2023 2022 2021 2020\nRs.000\'s Rs.000\'s Rs.000\'s Rs.000\'s Rs.000\'s\nTotal Revenue  3,055,960  3,743,939  2,018,797  2,346,224  2,109,139 \nCost of Sale  (3,094,974)  (3,332,924)  (2,029,365)  (2,256,953)  (2,093,028)\nGross Operating Profit / (Loss)  (39,014)  411,015  (10,568)  89,271  16,111 \nOther Income  159,989  152,646  88,258  60,987  55,283 \nExpenses\nAdministrative Expenses  (145,761)  (106,191)  (62,919)  (54,788)  (62,074)\nManagement Fees  (22,705)  (66,085)  (15,028)  (23,274)  (17,680)\nResults from Operating Activities  (47,491)  391,385  (257)  72,197  (8,360)\nNet Finance (Cost) / Income  (14,411)  28,779  7,195  8,764  1 \nChange in fair value of Investment Property  42,214  20,462  15,719  (2,371)  39,297 \nProfit/ (Loss) before Tax  (19,688)  440,626  22,657  78,589  30,938 \nTax (Expense)/ Reversal  25,917  (162,131)  (7,346)  (12,045)  73,149', chunk_type: 'financial_performance', index: 4}, {id: 'vallibel_power_erathna_plc_risk_factors_0', content: 'KEY RISKS\nIdentifying and addressing risks and opportunities that impact our business, society, environment, and stakeholder decisions is paramount to \nour success.\nEach year, the Group conducts a comprehensive evaluation of material issues to gain deeper insights into these risks and opportunities. \nCollaborating closely with stakeholders and the management team, we prioritize these risks and opportunities to effectively manage them.\nThroughout the year, our Company and stakeholders faced significant challenges stemming from country risk, political and economic \nuncertainties, regulatory pressures, and shifts in the business landscape. Recognizing and navigating these risks remains a top priority for us.\n8 4\n2\n5 9\n10 3\n1\n6 7\n1112', chunk_type: 'risk_factors', index: 0}, {id: 'vallibel_power_erathna_plc_risk_factors_1', content: 'factors that possess the potential to influence its operational dynamics, \nfinancial performance, and reputation. Among the salient risks are \nfluctuations in economic conditions, shifting consumer preferences, \nevolving market trends, and omnipresent competitive pressures, all of \nwhich could significantly impact the company’s revenue streams and \noverall profitability.\nFurther risk exposure lies in the volatility of exchange rates, interest \nrates, inflation rates, and tax rates, all of which have the potential to \ninfluence the company’s cost structure and cash flows. Additionally, \nregulatory mandates, legal commitments, \nenvironmental benchmarks, and societal expectations introduce a \nlayer of risk concerning compliance and sustainability. The company \nis also attuned to operational risks encompassing disruptions in its \nsupply chain, cyber threats, natural calamities, pandemics, and human \nerrors, all capable of causing interruptions in the supply and delivery of', chunk_type: 'risk_factors', index: 1}, {id: 'vallibel_power_erathna_plc_risk_factors_2', content: 'driving operational efficiency and sustainability. However, increased \ndigitisation has also given rise to cyber threats and heightened the \nrisk of data losses.\nOur reliance on coconut shells, an agricultural input, exposes us to \nthe potential risks of climate change. However, the transition to a \nlow-carbon economy has led to emerging opportunities. The shift \ntowards renewable energy sources has given rise to innovation in \nenergy storage carbons, while sustainable resource consumption \nhas led to the utilization of activated carbon products across many \nindustries. Increased emphasis on addressing climate change has \nled to a rise in environmental regulations and corporate reporting \nrequirements has led to the utilization of activated carbon products \nacross many industries.\nOur global presence necessitates navigating the regulatory landscape \nof multiple jurisdictions giving rise to high levels of complexity. \nProactive monitoring for new laws and regulations across all', chunk_type: 'risk_factors', index: 2}, {id: 'vallibel_power_erathna_plc_risk_factors_3', content: 'driving operational efficiency and sustainability. However, increased \ndigitisation has also given rise to cyber threats and heightened the \nrisk of data losses.\nOur reliance on coconut shells, an agricultural input, exposes us to \nthe potential risks of climate change. However, the transition to a \nlow-carbon economy has led to emerging opportunities. The shift \ntowards renewable energy sources has given rise to innovation in \nenergy storage carbons, while sustainable resource consumption \nhas led to the utilization of activated carbon products across many \nindustries. Increased emphasis on addressing climate change has \nled to a rise in environmental regulations and corporate reporting \nrequirements has led to the utilization of activated carbon products \nacross many industries.\nOur global presence necessitates navigating the regulatory landscape \nof multiple jurisdictions giving rise to high levels of complexity. \nProactive monitoring for new laws and regulations across all', chunk_type: 'risk_factors', index: 3}, {id: 'vallibel_power_erathna_plc_risk_factors_4', content: 'in internal controls. A shortage of skilled employees could also \nimpede our business growth and expansion. Furthermore, the \neffectiveness and performance of our senior executives are \ncrucial for maintaining our competitive edge and driving future \ngrowth. The departure of key executives could pose challenges \nto our business strategy execution and have other detrimental \neffects.', chunk_type: 'risk_factors', index: 4}, {id: 'vallibel_power_erathna_plc_business_segments_0', content: 'from one another. Top management of the Company considers the operating results and condition of its business segments in their \ndecision making process and performance evaluation. Types of products and services from which each operating segment derives its \nrevenues are described as follows.\n \nAn operating segment is a component of the Company that engages in business activities from which it may earn revenues and incur \nexpenses, including revenues and expenses that relate to transactions with any of the Company’s other components. All operating \nsegments’ operating results are reviewed regularly by the Senior Management to make decisions about resources to be allocated to \nthe segment and to assess its performance, and for which discrete financial information is available.', chunk_type: 'business_segments', index: 0}, {id: 'vallibel_power_erathna_plc_business_segments_1', content: 'Lankem Ceylon PLC\nAnnual Report 2023/2024\n66\nNOTES TO THE FINANCIAL STATEMENTS\n5. REVENUE\n5.1 Revenue Streams\nConsolidated Company\nFor the Year Ended 31st March 2024 2023 2024 2023\nRs. \'000 Rs. \'000 Rs. \'000 Rs. \'000\nRevenue from contracts with customers \nSale of Goods  31,482,022  32,527,434 6,336,610 6,871,012 \nRendering of Services  2,119,716  1,227,120  -  - \n 33,601,738  33,754,554  6,336,610  6,871,012 \n5.2 Business Segment Analysis of Revenue\nSegmentation has been determined based on the operating activities of the companies or the sector, where multiple activities fall within one \ncompany or sector has been based on the core activities of that particular sector.\nTrading Consumer Products - Manufacturing, Selling and Distribution of Consumer Products\nTrading Industrial Products - Manufacturing, Selling and Distribution of Industrial Products\nLeisure - Owning and Operation of Resort Hotels Others -Special Projects and Other Services\n5.3 Segment Revenue\nConsolidated Company', chunk_type: 'business_segments', index: 1}, {id: 'vallibel_power_erathna_plc_business_segments_2', content: 'resources and assessing performance of the operating \nsegments, has been identified as the Board of \nDirectors that makes strategic decisions. The revenue, \ncost, depreciation, amortisation, impairment, total \nassets, total liabilities and capital expenditure have \nbeen allocated to the respective segments based on \nthe internal reporting basis under the below stated \nsegments.\nThe reportable segments derive their revenue primarily \nfrom the provision of mobile services, data services, \ninternational direct dialling services, leasing of passive \ninfrastructure, provision of interconnect services, pay \ntelevision transmission services, provision of other data \nservices and digital services.\nAt 31 December 2023, the Group is organised into \nthree main business segments:\n Mobile operation\n Fixed telephony and broadband operation\n Television operations', chunk_type: 'business_segments', index: 2}, {id: 'vallibel_power_erathna_plc_business_segments_3', content: 'financial information is available.\nThe business segments of the Group are highlighted in the table below:\nReportable segment Operations\nSpare parts and workshop Repair and service of vehicles, machinery and equipment, Sale of vehicle spare parts, accessories and related \ncomponents.\nVehicles Sale of passenger vehicles, assembled vehicles, commercial vehicles, special purpose vehicles, pre-owned \npassenger vehicles and commercial vehicles. Provide vehicle sales facilitation and brokering services.\nEquipment and machinery Sale of heavy equipment, generators and machinery\n3D Printers and services Sale of 3D printers, filaments, spare parts and related services\nTyres Sale of tyres\nLubricant and car care \nproducts\nSale of lubricants and car care products\nTrailers Manufacturing and selling of trailers, carriage of cargo containers and related services.', chunk_type: 'business_segments', index: 3}, {id: 'vallibel_power_erathna_plc_business_segments_4', content: 'SMB FINANCE PLC\n215\nANNUAL REPORT  2024\nOVERVIEW MANAGEMENT DISCUSSION AND ANALYSIS CORPORATE STEWARDSHIP FINANCIAL REPORTS SUPPLEMENTARY INFORMATION\nA segment is a distinguishable component of the Company that is engaged in providing products and services. (Business \nsegment, which is subject to risks and rewards that are different from those of other segment.)\nSegment results, assets and liabilities include items directly attributable to a segment as well as those that can be allocated \non a reasonable basis.\nManagement of the Company consider the operating results and condition of its business segments in their decision \nmaking process and performance evaluation. Types of products and services from which each operating segment derives its \nrevenues described as follows:\nLoans\nThis segment includes loan products offered to the customers.\nLeasing\nThis segment includes leasing products offered to the customers.\nTreasury\nThis segment includes treasury and other investment activities.', chunk_type: 'business_segments', index: 4}] AS chunk MERGE (ch:Chunk {id: chunk.id}) ON CREATE SET ch.content = chunk.content, ch.chunk_type = chunk.chunk_type, ch.index = chunk.index;

// Query 72
MATCH (c:Company {name: 'Vallibel Power Erathna PLC'}) WITH c UNWIND ['vallibel_power_erathna_plc_directors_and_executives_0', 'vallibel_power_erathna_plc_directors_and_executives_1', 'vallibel_power_erathna_plc_directors_and_executives_2', 'vallibel_power_erathna_plc_directors_and_executives_3', 'vallibel_power_erathna_plc_directors_and_executives_4', 'vallibel_power_erathna_plc_financial_performance_0', 'vallibel_power_erathna_plc_financial_performance_1', 'vallibel_power_erathna_plc_financial_performance_2', 'vallibel_power_erathna_plc_financial_performance_3', 'vallibel_power_erathna_plc_financial_performance_4', 'vallibel_power_erathna_plc_risk_factors_0', 'vallibel_power_erathna_plc_risk_factors_1', 'vallibel_power_erathna_plc_risk_factors_2', 'vallibel_power_erathna_plc_risk_factors_3', 'vallibel_power_erathna_plc_risk_factors_4', 'vallibel_power_erathna_plc_business_segments_0', 'vallibel_power_erathna_plc_business_segments_1', 'vallibel_power_erathna_plc_business_segments_2', 'vallibel_power_erathna_plc_business_segments_3', 'vallibel_power_erathna_plc_business_segments_4'] AS chunk_id MATCH (ch:Chunk {id: chunk_id}) MERGE (c)-[:HAS_CONTENT]->(ch);

// Total queries: 72
// Generated on: 2025-09-30T14:57:58.488140
