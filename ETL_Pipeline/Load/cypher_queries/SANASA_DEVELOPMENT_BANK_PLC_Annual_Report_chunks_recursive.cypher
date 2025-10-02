// Query 1
MERGE (c:Company {name: 'SANASA DEVELOPMENT BANK PLC'}) ON CREATE SET c.id = 'sanasa_development_bank_plc';

// Query 2
MERGE (c:Company {name: 'Dipped Products PLC'}) ON CREATE SET c.id = 'dipped_products_plc';

// Query 3
MERGE (c:Company {name: 'Commercial Credit and Finance PLC'}) ON CREATE SET c.id = 'commercial_credit_and_finance_plc';

// Query 4
MERGE (c:Company {name: 'Lankem Ceylon PLC'}) ON CREATE SET c.id = 'lankem_ceylon_plc';

// Query 5
MERGE (c:Company {name: 'LCB Finance PLC'}) ON CREATE SET c.id = 'lcb_finance_plc';

// Query 6
MERGE (c:Company {name: 'Haycarb PLC'}) ON CREATE SET c.id = 'haycarb_plc';

// Query 7
MERGE (c:Company {name: 'Citizens Development Business Finance PLC'}) ON CREATE SET c.id = 'citizens_development_business_finance_plc';

// Query 8
MERGE (c:Company {name: 'Ceylon Tea Brokers PLC'}) ON CREATE SET c.id = 'ceylon_tea_brokers_plc';

// Query 9
MERGE (c:Company {name: 'Dialog Axiata PLC'}) ON CREATE SET c.id = 'dialog_axiata_plc';

// Query 10
MERGE (c:Company {name: 'First Capital Treasuries PLC'}) ON CREATE SET c.id = 'first_capital_treasuries_plc';

// Query 11
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 12
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 13
MERGE (m:Metric {name: 'Gross Profit Margin'}) ON CREATE SET m.id = 'gross_profit_margin', m.unit = '%';

// Query 14
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 15
MERGE (m:Metric {name: 'Operating Profit Margin'}) ON CREATE SET m.id = 'operating_profit_margin', m.unit = '%';

// Query 16
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 17
MERGE (m:Metric {name: 'Profit Before Tax Margin'}) ON CREATE SET m.id = 'profit_before_tax_margin', m.unit = '%';

// Query 18
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 19
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 20
MERGE (m:Metric {name: 'Return on Capital Employed'}) ON CREATE SET m.id = 'return_on_capital_employed', m.unit = '%';

// Query 21
MERGE (m:Metric {name: 'Interest Cover Ratio'}) ON CREATE SET m.id = 'interest_cover_ratio', m.unit = 'Times';

// Query 22
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 23
MERGE (m:Metric {name: 'Quick Asset Ratio'}) ON CREATE SET m.id = 'quick_asset_ratio', m.unit = 'Times';

// Query 24
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 26
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Shareholders Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Earnings per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Net Assets per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Return on Average Assets'}) ON CREATE SET m.id = 'return_on_average_assets', m.unit = '%';

// Query 32
MERGE (m:Metric {name: 'Equity to Assets Ratio'}) ON CREATE SET m.id = 'equity_to_assets_ratio', m.unit = '%';

// Query 33
MERGE (m:Metric {name: 'Dividend per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Dividend Payout Ratio'}) ON CREATE SET m.id = 'dividend_payout_ratio', m.unit = '%';

// Query 35
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 36
MERGE (s:Sector {name: 'Telecommunication Services'}) ON CREATE SET s.id = 'telecommunication_services';

// Query 37
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 38
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 39
MERGE (p:Product {name: 'Coconut Shell Activated Carbon'}) ON CREATE SET p.id = 'coconut_shell_activated_carbon';

// Query 40
MERGE (p:Product {name: 'Mobile Services'}) ON CREATE SET p.id = 'mobile_services';

// Query 41
MERGE (p:Product {name: 'Data Services'}) ON CREATE SET p.id = 'data_services';

// Query 42
MERGE (p:Product {name: 'International Direct Dialling Services'}) ON CREATE SET p.id = 'international_direct_dialling_services';

// Query 43
MERGE (p:Product {name: 'Pay Television Transmission Services'}) ON CREATE SET p.id = 'pay_television_transmission_services';

// Query 44
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 79289000000, r.year = 2025;

// Query 45
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16564000000, r.year = 2025;

// Query 46
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Gross Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21, r.year = 2025;

// Query 47
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7172000000, r.year = 2025;

// Query 48
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Operating Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9, r.year = 2025;

// Query 49
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6836000000, r.year = 2025;

// Query 50
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Profit Before Tax Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9, r.year = 2025;

// Query 51
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5032000000, r.year = 2025;

// Query 52
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13, r.year = 2025;

// Query 53
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14, r.year = 2025;

// Query 54
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Interest Cover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9, r.year = 2025;

// Query 55
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.7, r.year = 2025;

// Query 56
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Quick Asset Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.1, r.year = 2025;

// Query 57
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 74616000000, r.year = 2025;

// Query 58
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7, r.year = 2025;

// Query 59
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31055222000, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12808022000, r.year = 2024;

// Query 61
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6594978000, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4193917000, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 107987834000, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24179669000, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.19, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Net Assets per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 76.02, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Return on Average Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.99, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Equity to Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22.39, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Citizens Development Business Finance PLC'}), (m:Metric {name: 'Dividend per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.00, r.year = 2025;

// Query 70
MATCH (c:Company {name: 'Ceylon Tea Brokers PLC'}), (m:Metric {name: 'Dividend per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.44, r.year = 2024;

// Query 71
MATCH (c:Company {name: 'Ceylon Tea Brokers PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 56.55, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'Dialog Axiata PLC'}), (m:Metric {name: 'Dividend per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.34, r.year = 2023;

// Query 73
MATCH (c:Company {name: 'Dialog Axiata PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 55, r.year = 2023;

// Query 74
MATCH (c:Company {name: 'Lankem Ceylon PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 75
MATCH (c:Company {name: 'Dialog Axiata PLC'}), (s:Sector {name: 'Telecommunication Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 76
MATCH (c:Company {name: 'LCB Finance PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 77
MATCH (c:Company {name: 'First Capital Treasuries PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 78
MATCH (c:Company {name: 'Haycarb PLC'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 79
MATCH (c:Company {name: 'Haycarb PLC'}), (p:Product {name: 'Coconut Shell Activated Carbon'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'Dialog Axiata PLC'}), (p:Product {name: 'Mobile Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'Dialog Axiata PLC'}), (p:Product {name: 'Data Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Dialog Axiata PLC'}), (p:Product {name: 'International Direct Dialling Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Dialog Axiata PLC'}), (p:Product {name: 'Pay Television Transmission Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
UNWIND [{id: 'sanasa_development_bank_plc_directors_and_executives_0', content: '(Pvt) Ltd\na\nr\nThe DIRECTORS of the Company are also DIRECTORS of following companies with which the Company had transactions\nin the ordinary course of business during the year.\nKey management includes members of the Board of DIRECTORS of the Company. The compensation paid or payable\nto key management for employee services is shown below:\nMr. H.N.J \nChandrasekara\nMr. K.A.K \nJayatilake\nr\na', chunk_type: 'directors_and_executives', index: 0}, {id: 'sanasa_development_bank_plc_directors_and_executives_1', content: 'contracts in which they have an interest are disclosed in \nNote 34.1.1 to the financial statements on page 68.\nDIRECTORS’ Interest in Shares\nDIRECTORS of the Company who have an interest in the \nshares of the Company are required to disclose their \nshareholdings and any acquisitions/ disposals to the \nBoard in compliance with Section 200 of the Companies \nAct No. 07 of 2007. However, none of the DIRECTORS held \nany shares during the period under review nor in the \nprevious year.\nDIRECTORS’ Remuneration\nKey Management Personnel Compensation in respect of \nthe Company and the Group for the financial year 2021/ \n2022 is detailed in Note 34.1.2 to the Financial Statements \non page 68.\nDirectorate\nThe names of the DIRECTORS who held office during the \nfinancial year are given below and brief profiles of the \nDIRECTORS who are currently in office appear on pages 5 \nto 6.\nMr. S.D.R. Arudpragasam - Chairman\nMr. R.C.A. Welikala - Director\nMr. R.N. Bopearatchy - Director', chunk_type: 'directors_and_executives', index: 1}, {id: 'sanasa_development_bank_plc_directors_and_executives_2', content: 'Company in the preparation of the Financial \nStatements are given on pages 71 to 79, \nwhich are consistent with those of the \nprevious period.\nDIRECTORS’ responsibility for Financial \nReporting\nThe DIRECTORS are responsible for the \npreparation of the Financial Statements of \nthe Company and the Group to reflect a true \nand fair view of the state of its affairs.\nInformation on the DIRECTORS of the \nCompany and the Group \nDIRECTORS of the Company as at  \n31st March 2021\nThe names of the DIRECTORS who held office \nas at the end of the accounting period are \ngiven below and their brief profiles appear on \npages 18 and 19.\nExecutive DIRECTORS\nMr. E. T . De Zoysa - Managing Director\nNon-Executive DIRECTORS\nMr. R. S. A. Wickramasingha - Chairman\nMs. D. S. Wickramasingha - Director\nMs. N. K. Wickramasingha - Director \nMr. L. J. M. De Silva - Director \nMr. M. U. S. G. Thilakawardana - Director*\nDr. D. M. A. Kulasooriya - Director*\nMr. M. S. Nanayakkara - Director*', chunk_type: 'directors_and_executives', index: 2}, {id: 'sanasa_development_bank_plc_directors_and_executives_3', content: 'from pages 28 to 67 of the Annual Report. \nDIRECTORATE \nThe Board of DIRECTORS of the Company as at date is set out in \n“Corporate Information”. The DIRECTORS of the Company who held \noffice during the year under review and changes thereto are \nindicated below.', chunk_type: 'directors_and_executives', index: 3}, {id: 'sanasa_development_bank_plc_directors_and_executives_4', content: 'in the Shareholders Information section on pages 166 to 167.\nThe Company endeavours at all times to ensure equitable treatment to all \nshareholders.\nSubstantial Shareholdings\nThere were 1738 registered shareholders, holding ordinary voting shares \nas at 31st March 2025 (1,582 registered shareholders as at 31st March \n2024).\nThe names of the twenty largest shareholders, the number of shares held, \nand the percentages held are given on page 167 of the Annual Report. \nThe distribution schedule of the shareholders and public holdings are \ndisclosed on page 166 of the Annual Report.\nDirectorate\nAs at 31st March 2025 the Board of DIRECTORS of the Company consisted \nof eight DIRECTORS with wide commercial, academic knowledge and \nexperience. The DIRECTORS profile is given on pages 56 to 57 of this Annual \nReport.\nThe Board of DIRECTORS of the Company and its subsidiaries as at 31st \nMarch 2025 are listed below.\nName of the Director\nJohn Keells PLC \nPLC\nJohn \nKeells PLC \nStockbrokers\nJohn Keells PLC', chunk_type: 'directors_and_executives', index: 4}, {id: 'sanasa_development_bank_plc_financial_performance_0', content: 'About Us Management Discussion and Analysis Stewardship Financial Information Supplementary Information\nPERFORMANCE\nFINANCIAL INFORMATION\nPRECISION IN\nOur financial performance directly reflects the strategic decisions and thoughtful investments we \nmake by managing resources with precision. Each financial decision is focused on strengthening our \nfoundation and driving sustained success, offering the clarity and confidence necessary for informed \ndecision-making.', chunk_type: 'financial_performance', index: 0}, {id: 'sanasa_development_bank_plc_financial_performance_1', content: 'About Us Management Discussion and Analysis Stewardship Financial Information Supplementary Information\nPERFORMANCE\nFINANCIAL INFORMATION\nPRECISION IN\nOur financial performance directly reflects the strategic decisions and thoughtful investments we \nmake by managing resources with precision. Each financial decision is focused on strengthening our \nfoundation and driving sustained success, offering the clarity and confidence necessary for informed \ndecision-making.', chunk_type: 'financial_performance', index: 1}, {id: 'sanasa_development_bank_plc_financial_performance_2', content: 'Financial\nperformance\nCashﬂows\nFinancial\nposition\nCost of\ncapital\nAccess\nto ﬁnance\n-5 -4 -3 -2 -1 0 1 2 3 4 5\nFinancial\nperformance\nCashﬂows\nFinancial\nposition\nCost of\ncapital\nAccess\nto ﬁnance\nIntroduction | Understanding Value Creation and Impacts | Our Value Proposition on ESG\nNurturing Our Resources | Mindful Governance | Financial Statements | Supplementary', chunk_type: 'financial_performance', index: 2}, {id: 'sanasa_development_bank_plc_financial_performance_3', content: '22 DIPPED PRODUCTS PLC  | Annual Report 2024/25\nPerformance Highlights\nMetric 2024/25 2023/24 % Y-o-Y\nSTRATEGIC PRIORITY- FINANCIAL PERFORMANCES   \nEarnings Highlights\nRevenue Rs. million 79,289 73,942  7 \nGross Profit Rs. million 16,564  17,059  (3)\nGross Profit Margin %  21  23  (2)\nOperating Profit Rs. million 7,172  7,729  (7)\nOperating Profit Margin %  9  10  (1)\nProfit Before Tax Rs. million 6,836  7,567  (10)\nProfit Before Tax Margin %  9  10  (1)\nProfit After Tax Rs. million 5,032  5,779  (13)\nReturn on Equity %  13  16  (3)\nReturn on Capital Employed % 14 17  (3)\nInterest Cover Ratio Times  9 10  (11)\nWorking Capital Ratios\nInventory Days Days  75  78  (3)\nDebtor Days Days  59 60  (1)\nCreditor Days Days  70 64  6 \nCash Conversion Cycle Days  64  74  (10)\nLiquidity Ratios\nCurrent Ratio Times  1.7  2.2  (24)\nQuick Asset Ratio Times  1.1  1.4  (22)\nFinancial Stability\nTotal Assets Rs. million  74,616  63,913  17 \nReturn on Assets %  7  9  (2)', chunk_type: 'financial_performance', index: 3}, {id: 'sanasa_development_bank_plc_financial_performance_4', content: 'Commercial Credit and Finance PLC | Annual Report 2023/2024\n6\nFINANCIAL \nHIGHLIGHTS\n2023/24\nRs.‘000\'   \n2022/23\nRs.‘000\'    \n% \nChange\nFinancial Performance  \nGross Income  31,055,222  28,949,269 7 .3%\nNet Interest Income  12,808,022  11,106,651 15.3%\nProfit Before Taxation  6,594,978  3,859,879 70.9%\nProfit After Taxation  4,193,917  2,599,629 61.3%\nFinancial Position\nLeases, Hire Purchases, Loans and Advances  81,437 ,828  76,170,663 6.9%\nTotal Assets  107 ,987 ,834  102,154,440 5.7%\nTotal Deposit Base  62,121,240  59,243,651 4.9%\nBorrowings  13,902,823  17 ,555,544 -20.8%\nShareholders’ Funds  24,179,669  20,359,015 18.8%\nLiquid Assets  11,483,294  12,836,935 -10.5%\nKey Indicators per Ordinary Share\nEarnings per Share( Rs.)  13.19  8.17 \nNet Assets per Share ( Rs.)  76.02 64.01 \nYear end Market Price per Share (Rs.)  35.30  26.00 \nKey Performance Indicators\nReturn on Average Assets (%) 3.99 2.66\nEquity / Assets (%) 22.39 19.93\nGross Non Performing Accommodations (%) 10.65 11.07', chunk_type: 'financial_performance', index: 4}, {id: 'sanasa_development_bank_plc_risk_factors_0', content: 'KEY RISKS\nIdentifying and addressing risks and opportunities that impact our business, society, environment, and stakeholder decisions is paramount to \nour success.\nEach year, the Group conducts a comprehensive evaluation of material issues to gain deeper insights into these risks and opportunities. \nCollaborating closely with stakeholders and the management team, we prioritize these risks and opportunities to effectively manage them.\nThroughout the year, our Company and stakeholders faced significant challenges stemming from country risk, political and economic \nuncertainties, regulatory pressures, and shifts in the business landscape. Recognizing and navigating these risks remains a top priority for us.\n8 4\n2\n5 9\n10 3\n1\n6 7\n1112', chunk_type: 'risk_factors', index: 0}, {id: 'sanasa_development_bank_plc_risk_factors_1', content: 'factors that possess the potential to influence its operational dynamics, \nfinancial performance, and reputation. Among the salient risks are \nfluctuations in economic conditions, shifting consumer preferences, \nevolving market trends, and omnipresent competitive pressures, all of \nwhich could significantly impact the company’s revenue streams and \noverall profitability.\nFurther risk exposure lies in the volatility of exchange rates, interest \nrates, inflation rates, and tax rates, all of which have the potential to \ninfluence the company’s cost structure and cash flows. Additionally, \nregulatory mandates, legal commitments, \nenvironmental benchmarks, and societal expectations introduce a \nlayer of risk concerning compliance and sustainability. The company \nis also attuned to operational risks encompassing disruptions in its \nsupply chain, cyber threats, natural calamities, pandemics, and human \nerrors, all capable of causing interruptions in the supply and delivery of', chunk_type: 'risk_factors', index: 1}, {id: 'sanasa_development_bank_plc_risk_factors_2', content: 'driving operational efficiency and sustainability. However, increased \ndigitisation has also given rise to cyber threats and heightened the \nrisk of data losses.\nOur reliance on coconut shells, an agricultural input, exposes us to \nthe potential risks of climate change. However, the transition to a \nlow-carbon economy has led to emerging opportunities. The shift \ntowards renewable energy sources has given rise to innovation in \nenergy storage carbons, while sustainable resource consumption \nhas led to the utilization of activated carbon products across many \nindustries. Increased emphasis on addressing climate change has \nled to a rise in environmental regulations and corporate reporting \nrequirements has led to the utilization of activated carbon products \nacross many industries.\nOur global presence necessitates navigating the regulatory landscape \nof multiple jurisdictions giving rise to high levels of complexity. \nProactive monitoring for new laws and regulations across all', chunk_type: 'risk_factors', index: 2}, {id: 'sanasa_development_bank_plc_risk_factors_3', content: 'driving operational efficiency and sustainability. However, increased \ndigitisation has also given rise to cyber threats and heightened the \nrisk of data losses.\nOur reliance on coconut shells, an agricultural input, exposes us to \nthe potential risks of climate change. However, the transition to a \nlow-carbon economy has led to emerging opportunities. The shift \ntowards renewable energy sources has given rise to innovation in \nenergy storage carbons, while sustainable resource consumption \nhas led to the utilization of activated carbon products across many \nindustries. Increased emphasis on addressing climate change has \nled to a rise in environmental regulations and corporate reporting \nrequirements has led to the utilization of activated carbon products \nacross many industries.\nOur global presence necessitates navigating the regulatory landscape \nof multiple jurisdictions giving rise to high levels of complexity. \nProactive monitoring for new laws and regulations across all', chunk_type: 'risk_factors', index: 3}, {id: 'sanasa_development_bank_plc_risk_factors_4', content: 'in internal controls. A shortage of skilled employees could also \nimpede our business growth and expansion. Furthermore, the \neffectiveness and performance of our senior executives are \ncrucial for maintaining our competitive edge and driving future \ngrowth. The departure of key executives could pose challenges \nto our business strategy execution and have other detrimental \neffects.', chunk_type: 'risk_factors', index: 4}, {id: 'sanasa_development_bank_plc_business_segments_0', content: 'from one another. Top management of the Company considers the operating results and condition of its business segments in their \ndecision making process and performance evaluation. Types of products and services from which each operating segment derives its \nrevenues are described as follows.\n \nAn operating segment is a component of the Company that engages in business activities from which it may earn revenues and incur \nexpenses, including revenues and expenses that relate to transactions with any of the Company’s other components. All operating \nsegments’ operating results are reviewed regularly by the Senior Management to make decisions about resources to be allocated to \nthe segment and to assess its performance, and for which discrete financial information is available.', chunk_type: 'business_segments', index: 0}, {id: 'sanasa_development_bank_plc_business_segments_1', content: 'Lankem Ceylon PLC\nAnnual Report 2023/2024\n66\nNOTES TO THE FINANCIAL STATEMENTS\n5. REVENUE\n5.1 Revenue Streams\nConsolidated Company\nFor the Year Ended 31st March 2024 2023 2024 2023\nRs. \'000 Rs. \'000 Rs. \'000 Rs. \'000\nRevenue from contracts with customers \nSale of Goods  31,482,022  32,527,434 6,336,610 6,871,012 \nRendering of Services  2,119,716  1,227,120  -  - \n 33,601,738  33,754,554  6,336,610  6,871,012 \n5.2 Business Segment Analysis of Revenue\nSegmentation has been determined based on the operating activities of the companies or the sector, where multiple activities fall within one \ncompany or sector has been based on the core activities of that particular sector.\nTrading Consumer Products - Manufacturing, Selling and Distribution of Consumer Products\nTrading Industrial Products - Manufacturing, Selling and Distribution of Industrial Products\nLeisure - Owning and Operation of Resort Hotels Others -Special Projects and Other Services\n5.3 Segment Revenue\nConsolidated Company', chunk_type: 'business_segments', index: 1}, {id: 'sanasa_development_bank_plc_business_segments_2', content: 'resources and assessing performance of the operating \nsegments, has been identified as the Board of \nDirectors that makes strategic decisions. The revenue, \ncost, depreciation, amortisation, impairment, total \nassets, total liabilities and capital expenditure have \nbeen allocated to the respective segments based on \nthe internal reporting basis under the below stated \nsegments.\nThe reportable segments derive their revenue primarily \nfrom the provision of mobile services, data services, \ninternational direct dialling services, leasing of passive \ninfrastructure, provision of interconnect services, pay \ntelevision transmission services, provision of other data \nservices and digital services.\nAt 31 December 2023, the Group is organised into \nthree main business segments:\n Mobile operation\n Fixed telephony and broadband operation\n Television operations', chunk_type: 'business_segments', index: 2}, {id: 'sanasa_development_bank_plc_business_segments_3', content: 'LCB Finance PLC\nAnnual Report 2023/24\n187\n48. SEGMENTAL ANALYSIS\nAn operating segment is a component of the Company that engages in business activities from which it may earn revenues and incur \nexpenses, including revenues and expenses that relate to transactions with any of the Company’s other components, whose operating \nresults are reviewed regularly by the management to make decisions about resources allocated to each segment and assess its performance, \nand for which discrete financial information is available.\nFor management purposes, the Company has identified operating segments based on products and services. Management monitors \nthe operating results of its business units separately for the purpose of making decisions about resource allocation and performance \nassessment. Segment performance is evaluated based on turnover.\nNo revenue from transactions with a single external customer or counterparty amounted to 10% or more of the Company’s total revenue in \n2024 or 2023.', chunk_type: 'business_segments', index: 3}, {id: 'sanasa_development_bank_plc_business_segments_4', content: '- -  34,831,454 45,992,251  4,195,931,321  7,852,527,083 -  -  4,195,931,321  7,852,527,083 \nDepreciation & Amortisation  2,090,415,171 1,777,317,392  161,580,443 154,637,344  118,768,370  101,554,000  113,837,111  104,769,000 - -  28,473,999 28,555,137  2,513,075,094  2,166,833,203 -  -  2,513,075,094  2,166,833,203 \nProvisions for retirement benefit liability  215,789,732 246,106,369  12,589,470 13,975,373  27,568,694  25,085,000  16,647,241  12,487,000 - -  1,419,013 1,683,581 274,014,150  299,337,323 - -  274,014,150  299,337,323 \n28 SEGMENT INFORMATION\n Primary Reporting Format - Business Segments\n For management purposes, the group is organised into business units based on its products and services and has six reportable segments, \nas follows: \n The following tables present revenue and profit and certain assets and liability information regarding the company’s business segments:', chunk_type: 'business_segments', index: 4}] AS chunk MERGE (ch:Chunk {id: chunk.id}) ON CREATE SET ch.content = chunk.content, ch.chunk_type = chunk.chunk_type, ch.index = chunk.index;

// Query 85
MATCH (c:Company {name: 'SANASA DEVELOPMENT BANK PLC'}) WITH c UNWIND ['sanasa_development_bank_plc_directors_and_executives_0', 'sanasa_development_bank_plc_directors_and_executives_1', 'sanasa_development_bank_plc_directors_and_executives_2', 'sanasa_development_bank_plc_directors_and_executives_3', 'sanasa_development_bank_plc_directors_and_executives_4', 'sanasa_development_bank_plc_financial_performance_0', 'sanasa_development_bank_plc_financial_performance_1', 'sanasa_development_bank_plc_financial_performance_2', 'sanasa_development_bank_plc_financial_performance_3', 'sanasa_development_bank_plc_financial_performance_4', 'sanasa_development_bank_plc_risk_factors_0', 'sanasa_development_bank_plc_risk_factors_1', 'sanasa_development_bank_plc_risk_factors_2', 'sanasa_development_bank_plc_risk_factors_3', 'sanasa_development_bank_plc_risk_factors_4', 'sanasa_development_bank_plc_business_segments_0', 'sanasa_development_bank_plc_business_segments_1', 'sanasa_development_bank_plc_business_segments_2', 'sanasa_development_bank_plc_business_segments_3', 'sanasa_development_bank_plc_business_segments_4'] AS chunk_id MATCH (ch:Chunk {id: chunk_id}) MERGE (c)-[:HAS_CONTENT]->(ch);

// Total queries: 85
// Generated on: 2025-09-30T15:21:00.368971
