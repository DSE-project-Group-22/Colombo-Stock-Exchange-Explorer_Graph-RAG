// Query 1
MERGE (c:Company {name: 'LOLC Holdings PLC'}) ON CREATE SET c.id = 'lolc_holdings_plc';

// Query 2
MERGE (c:Company {name: 'Dipped Products PLC'}) ON CREATE SET c.id = 'dipped_products_plc';

// Query 3
MERGE (c:Company {name: 'Commercial Credit and Finance PLC'}) ON CREATE SET c.id = 'commercial_credit_and_finance_plc';

// Query 4
MERGE (c:Company {name: 'John Keells PLC'}) ON CREATE SET c.id = 'john_keells_plc';

// Query 5
MERGE (c:Company {name: 'Lankem Ceylon PLC'}) ON CREATE SET c.id = 'lankem_ceylon_plc';

// Query 6
MERGE (c:Company {name: 'LCB Finance PLC'}) ON CREATE SET c.id = 'lcb_finance_plc';

// Query 7
MERGE (c:Company {name: 'First Capital Treasuries PLC'}) ON CREATE SET c.id = 'first_capital_treasuries_plc';

// Query 8
MERGE (c:Company {name: 'Haycarb PLC'}) ON CREATE SET c.id = 'haycarb_plc';

// Query 9
MERGE (c:Company {name: 'eChannelling PLC'}) ON CREATE SET c.id = 'echannelling_plc';

// Query 10
MERGE (c:Company {name: 'Citizens Development Business Finance PLC'}) ON CREATE SET c.id = 'citizens_development_business_finance_plc';

// Query 11
MERGE (c:Company {name: 'Dialog'}) ON CREATE SET c.id = 'dialog';

// Query 12
MERGE (c:Company {name: 'Chevron Lubricants Lanka PLC'}) ON CREATE SET c.id = 'chevron_lubricants_lanka_plc';

// Query 13
MERGE (c:Company {name: 'First Capital Holdings PLC'}) ON CREATE SET c.id = 'first_capital_holdings_plc';

// Query 14
MERGE (c:Company {name: 'HNB Assurance PLC'}) ON CREATE SET c.id = 'hnb_assurance_plc';

// Query 15
MERGE (c:Company {name: 'Asian Hotels and Properties PLC'}) ON CREATE SET c.id = 'asian_hotels_and_properties_plc';

// Query 16
MERGE (c:Company {name: 'Ex-pack Corrugated Cartons PLC'}) ON CREATE SET c.id = 'ex_pack_corrugated_cartons_plc';

// Query 17
MERGE (c:Company {name: 'Ceylon Tea Brokers PLC'}) ON CREATE SET c.id = 'ceylon_tea_brokers_plc';

// Query 18
MERGE (p:Person {name: 'H.N.J Chandrasekara'}) ON CREATE SET p.id = 'h_n_j_chandrasekara';

// Query 19
MERGE (p:Person {name: 'K.A.K Jayatilake'}) ON CREATE SET p.id = 'k_a_k_jayatilake';

// Query 20
MERGE (p:Person {name: 'E. T. De Zoysa'}) ON CREATE SET p.id = 'e_t_de_zoysa';

// Query 21
MERGE (p:Person {name: 'R. S. A. Wickramasingha'}) ON CREATE SET p.id = 'r_s_a_wickramasingha';

// Query 22
MERGE (p:Person {name: 'D. S. Wickramasingha'}) ON CREATE SET p.id = 'd_s_wickramasingha';

// Query 23
MERGE (p:Person {name: 'N. K. Wickramasingha'}) ON CREATE SET p.id = 'n_k_wickramasingha';

// Query 24
MERGE (p:Person {name: 'L. J. M. De Silva'}) ON CREATE SET p.id = 'l_j_m_de_silva';

// Query 25
MERGE (p:Person {name: 'M. U. S. G. Thilakawardana'}) ON CREATE SET p.id = 'm_u_s_g_thilakawardana';

// Query 26
MERGE (p:Person {name: 'D. M. A. Kulasooriya'}) ON CREATE SET p.id = 'd_m_a_kulasooriya';

// Query 27
MERGE (p:Person {name: 'M. S. Nanayakkara'}) ON CREATE SET p.id = 'm_s_nanayakkara';

// Query 28
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Gross Profit Margin'}) ON CREATE SET m.id = 'gross_profit_margin', m.unit = '%';

// Query 31
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Operating Profit Margin'}) ON CREATE SET m.id = 'operating_profit_margin', m.unit = '%';

// Query 33
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Profit Before Tax Margin'}) ON CREATE SET m.id = 'profit_before_tax_margin', m.unit = '%';

// Query 35
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 37
MERGE (m:Metric {name: 'Return on Capital Employed'}) ON CREATE SET m.id = 'return_on_capital_employed', m.unit = '%';

// Query 38
MERGE (m:Metric {name: 'Interest Cover Ratio'}) ON CREATE SET m.id = 'interest_cover_ratio', m.unit = 'Times';

// Query 39
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 40
MERGE (m:Metric {name: 'Quick Asset Ratio'}) ON CREATE SET m.id = 'quick_asset_ratio', m.unit = 'Times';

// Query 41
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 43
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Shareholders Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Earnings per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Net Assets per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Return on Average Assets'}) ON CREATE SET m.id = 'return_on_average_assets', m.unit = '%';

// Query 49
MERGE (m:Metric {name: 'Equity to Assets Ratio'}) ON CREATE SET m.id = 'equity_to_assets_ratio', m.unit = '%';

// Query 50
MERGE (m:Metric {name: 'Dividend per share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Dividend Pay-out Ratio'}) ON CREATE SET m.id = 'dividend_pay_out_ratio', m.unit = '%';

// Query 52
MERGE (m:Metric {name: 'Dividend Yield'}) ON CREATE SET m.id = 'dividend_yield', m.unit = '%';

// Query 53
MERGE (m:Metric {name: 'Price Earnings Ratio'}) ON CREATE SET m.id = 'price_earnings_ratio', m.unit = 'Times';

// Query 54
MERGE (m:Metric {name: 'Total borrowings'}) ON CREATE SET m.id = 'total_borrowings', m.unit = 'Rs';

// Query 55
MERGE (m:Metric {name: 'Equity'}) ON CREATE SET m.id = 'equity', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Gearing Ratio'}) ON CREATE SET m.id = 'gearing_ratio', m.unit = '%';

// Query 57
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 58
MERGE (s:Sector {name: 'Telecommunication Services'}) ON CREATE SET s.id = 'telecommunication_services';

// Query 59
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 60
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 79289000000, r.year = 2025;

// Query 61
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16564000000, r.year = 2025;

// Query 62
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Gross Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21, r.year = 2025;

// Query 63
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7172000000, r.year = 2025;

// Query 64
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Operating Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9, r.year = 2025;

// Query 65
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6836000000, r.year = 2025;

// Query 66
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Profit Before Tax Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9, r.year = 2025;

// Query 67
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5032000000, r.year = 2025;

// Query 68
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13, r.year = 2025;

// Query 69
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14, r.year = 2025;

// Query 70
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Interest Cover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9, r.year = 2025;

// Query 71
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.7, r.year = 2025;

// Query 72
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Quick Asset Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.1, r.year = 2025;

// Query 73
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 74616000000, r.year = 2025;

// Query 74
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7, r.year = 2025;

// Query 75
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Total borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12013765000, r.year = 2025;

// Query 76
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 39631220000, r.year = 2025;

// Query 77
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23, r.year = 2025;

// Query 78
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31055222000, r.year = 2024;

// Query 79
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12808022000, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6594978000, r.year = 2024;

// Query 81
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4193917000, r.year = 2024;

// Query 82
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 107987834000, r.year = 2024;

// Query 83
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24179669000, r.year = 2024;

// Query 84
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.19, r.year = 2024;

// Query 85
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Net Assets per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 76.02, r.year = 2024;

// Query 86
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Return on Average Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.99, r.year = 2024;

// Query 87
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Equity to Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22.39, r.year = 2024;

// Query 88
MATCH (c:Company {name: 'Citizens Development Business Finance PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.00, r.year = 2025;

// Query 89
MATCH (c:Company {name: 'Ceylon Tea Brokers PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.44, r.year = 2024;

// Query 90
MATCH (c:Company {name: 'Ceylon Tea Brokers PLC'}), (m:Metric {name: 'Dividend Pay-out Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 56.55, r.year = 2024;

// Query 91
MATCH (c:Company {name: 'Dialog'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.34, r.year = 2023;

// Query 92
MATCH (c:Company {name: 'Dialog'}), (m:Metric {name: 'Dividend Pay-out Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 55, r.year = 2023;

// Query 93
MATCH (c:Company {name: 'Dialog'}), (m:Metric {name: 'Dividend Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14.9, r.year = 2023;

// Query 94
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.00, r.year = 2024;

// Query 95
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividend Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.4, r.year = 2024;

// Query 96
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.06, r.year = 2024;

// Query 97
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Price Earnings Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.96, r.year = 2024;

// Query 98
MATCH (c:Company {name: 'Lankem Ceylon PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 99
MATCH (c:Company {name: 'Dialog'}), (s:Sector {name: 'Telecommunication Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 100
MATCH (c:Company {name: 'LCB Finance PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 101
UNWIND [{id: 'lolc_holdings_plc_directors_and_executives_0', content: '(Pvt) Ltd\na\nr\nThe DIRECTORS of the Company are also DIRECTORS of following companies with which the Company had transactions\nin the ordinary course of business during the year.\nKey management includes members of the Board of DIRECTORS of the Company. The compensation paid or payable\nto key management for employee services is shown below:\nMr. H.N.J \nChandrasekara\nMr. K.A.K \nJayatilake\nr\na', chunk_type: 'directors_and_executives', index: 0}, {id: 'lolc_holdings_plc_directors_and_executives_1', content: 'Company in the preparation of the Financial \nStatements are given on pages 71 to 79, \nwhich are consistent with those of the \nprevious period.\nDIRECTORS’ responsibility for Financial \nReporting\nThe DIRECTORS are responsible for the \npreparation of the Financial Statements of \nthe Company and the Group to reflect a true \nand fair view of the state of its affairs.\nInformation on the DIRECTORS of the \nCompany and the Group \nDIRECTORS of the Company as at  \n31st March 2021\nThe names of the DIRECTORS who held office \nas at the end of the accounting period are \ngiven below and their brief profiles appear on \npages 18 and 19.\nExecutive DIRECTORS\nMr. E. T . De Zoysa - Managing Director\nNon-Executive DIRECTORS\nMr. R. S. A. Wickramasingha - Chairman\nMs. D. S. Wickramasingha - Director\nMs. N. K. Wickramasingha - Director \nMr. L. J. M. De Silva - Director \nMr. M. U. S. G. Thilakawardana - Director*\nDr. D. M. A. Kulasooriya - Director*\nMr. M. S. Nanayakkara - Director*', chunk_type: 'directors_and_executives', index: 1}, {id: 'lolc_holdings_plc_directors_and_executives_2', content: 'from pages 28 to 67 of the Annual Report. \nDIRECTORATE \nThe Board of DIRECTORS of the Company as at date is set out in \n“Corporate Information”. The DIRECTORS of the Company who held \noffice during the year under review and changes thereto are \nindicated below.', chunk_type: 'directors_and_executives', index: 2}, {id: 'lolc_holdings_plc_directors_and_executives_3', content: 'in the Shareholders Information section on pages 166 to 167.\nThe Company endeavours at all times to ensure equitable treatment to all \nshareholders.\nSubstantial Shareholdings\nThere were 1738 registered shareholders, holding ordinary voting shares \nas at 31st March 2025 (1,582 registered shareholders as at 31st March \n2024).\nThe names of the twenty largest shareholders, the number of shares held, \nand the percentages held are given on page 167 of the Annual Report. \nThe distribution schedule of the shareholders and public holdings are \ndisclosed on page 166 of the Annual Report.\nDirectorate\nAs at 31st March 2025 the Board of DIRECTORS of the Company consisted \nof eight DIRECTORS with wide commercial, academic knowledge and \nexperience. The DIRECTORS profile is given on pages 56 to 57 of this Annual \nReport.\nThe Board of DIRECTORS of the Company and its subsidiaries as at 31st \nMarch 2025 are listed below.\nName of the Director\nJohn Keells PLC \nPLC\nJohn \nKeells PLC \nStockbrokers\nJohn Keells PLC', chunk_type: 'directors_and_executives', index: 3}, {id: 'lolc_holdings_plc_directors_and_executives_4', content: 'in the Shareholders Information section on pages 166 to 167.\nThe Company endeavours at all times to ensure equitable treatment to all \nshareholders.\nSubstantial Shareholdings\nThere were 1738 registered shareholders, holding ordinary voting shares \nas at 31st March 2025 (1,582 registered shareholders as at 31st March \n2024).\nThe names of the twenty largest shareholders, the number of shares held, \nand the percentages held are given on page 167 of the Annual Report. \nThe distribution schedule of the shareholders and public holdings are \ndisclosed on page 166 of the Annual Report.\nDirectorate\nAs at 31st March 2025 the Board of DIRECTORS of the Company consisted \nof eight DIRECTORS with wide commercial, academic knowledge and \nexperience. The DIRECTORS profile is given on pages 56 to 57 of this Annual \nReport.\nThe Board of DIRECTORS of the Company and its subsidiaries as at 31st \nMarch 2025 are listed below.\nName of the Director\nJohn Keells PLC \nPLC\nJohn \nKeells PLC \nStockbrokers\nJohn Keells PLC', chunk_type: 'directors_and_executives', index: 4}, {id: 'lolc_holdings_plc_financial_performance_0', content: 'About Us Management Discussion and Analysis Stewardship Financial Information Supplementary Information\nPERFORMANCE\nFINANCIAL INFORMATION\nPRECISION IN\nOur financial performance directly reflects the strategic decisions and thoughtful investments we \nmake by managing resources with precision. Each financial decision is focused on strengthening our \nfoundation and driving sustained success, offering the clarity and confidence necessary for informed \ndecision-making.', chunk_type: 'financial_performance', index: 0}, {id: 'lolc_holdings_plc_financial_performance_1', content: 'About Us Management Discussion and Analysis Stewardship Financial Information Supplementary Information\nPERFORMANCE\nFINANCIAL INFORMATION\nPRECISION IN\nOur financial performance directly reflects the strategic decisions and thoughtful investments we \nmake by managing resources with precision. Each financial decision is focused on strengthening our \nfoundation and driving sustained success, offering the clarity and confidence necessary for informed \ndecision-making.', chunk_type: 'financial_performance', index: 1}, {id: 'lolc_holdings_plc_financial_performance_2', content: 'Financial\nperformance\nCashﬂows\nFinancial\nposition\nCost of\ncapital\nAccess\nto ﬁnance\n-5 -4 -3 -2 -1 0 1 2 3 4 5\nFinancial\nperformance\nCashﬂows\nFinancial\nposition\nCost of\ncapital\nAccess\nto ﬁnance\nIntroduction | Understanding Value Creation and Impacts | Our Value Proposition on ESG\nNurturing Our Resources | Mindful Governance | Financial Statements | Supplementary', chunk_type: 'financial_performance', index: 2}, {id: 'lolc_holdings_plc_financial_performance_3', content: '22 DIPPED PRODUCTS PLC  | Annual Report 2024/25\nPerformance Highlights\nMetric 2024/25 2023/24 % Y-o-Y\nSTRATEGIC PRIORITY- FINANCIAL PERFORMANCES   \nEarnings Highlights\nRevenue Rs. million 79,289 73,942  7 \nGross Profit Rs. million 16,564  17,059  (3)\nGross Profit Margin %  21  23  (2)\nOperating Profit Rs. million 7,172  7,729  (7)\nOperating Profit Margin %  9  10  (1)\nProfit Before Tax Rs. million 6,836  7,567  (10)\nProfit Before Tax Margin %  9  10  (1)\nProfit After Tax Rs. million 5,032  5,779  (13)\nReturn on Equity %  13  16  (3)\nReturn on Capital Employed % 14 17  (3)\nInterest Cover Ratio Times  9 10  (11)\nWorking Capital Ratios\nInventory Days Days  75  78  (3)\nDebtor Days Days  59 60  (1)\nCreditor Days Days  70 64  6 \nCash Conversion Cycle Days  64  74  (10)\nLiquidity Ratios\nCurrent Ratio Times  1.7  2.2  (24)\nQuick Asset Ratio Times  1.1  1.4  (22)\nFinancial Stability\nTotal Assets Rs. million  74,616  63,913  17 \nReturn on Assets %  7  9  (2)', chunk_type: 'financial_performance', index: 3}, {id: 'lolc_holdings_plc_financial_performance_4', content: 'Commercial Credit and Finance PLC | Annual Report 2023/2024\n6\nFINANCIAL \nHIGHLIGHTS\n2023/24\nRs.‘000\'   \n2022/23\nRs.‘000\'    \n% \nChange\nFinancial Performance  \nGross Income  31,055,222  28,949,269 7 .3%\nNet Interest Income  12,808,022  11,106,651 15.3%\nProfit Before Taxation  6,594,978  3,859,879 70.9%\nProfit After Taxation  4,193,917  2,599,629 61.3%\nFinancial Position\nLeases, Hire Purchases, Loans and Advances  81,437 ,828  76,170,663 6.9%\nTotal Assets  107 ,987 ,834  102,154,440 5.7%\nTotal Deposit Base  62,121,240  59,243,651 4.9%\nBorrowings  13,902,823  17 ,555,544 -20.8%\nShareholders’ Funds  24,179,669  20,359,015 18.8%\nLiquid Assets  11,483,294  12,836,935 -10.5%\nKey Indicators per Ordinary Share\nEarnings per Share( Rs.)  13.19  8.17 \nNet Assets per Share ( Rs.)  76.02 64.01 \nYear end Market Price per Share (Rs.)  35.30  26.00 \nKey Performance Indicators\nReturn on Average Assets (%) 3.99 2.66\nEquity / Assets (%) 22.39 19.93\nGross Non Performing Accommodations (%) 10.65 11.07', chunk_type: 'financial_performance', index: 4}] AS chunk MERGE (ch:Chunk {id: chunk.id}) ON CREATE SET ch.content = chunk.content, ch.chunk_type = chunk.chunk_type, ch.index = chunk.index;

// Query 102
MATCH (c:Company {name: 'LOLC Holdings PLC'}) WITH c UNWIND ['lolc_holdings_plc_directors_and_executives_0', 'lolc_holdings_plc_directors_and_executives_1', 'lolc_holdings_plc_directors_and_executives_2', 'lolc_holdings_plc_directors_and_executives_3', 'lolc_holdings_plc_directors_and_executives_4', 'lolc_holdings_plc_financial_performance_0', 'lolc_holdings_plc_financial_performance_1', 'lolc_holdings_plc_financial_performance_2', 'lolc_holdings_plc_financial_performance_3', 'lolc_holdings_plc_financial_performance_4'] AS chunk_id MATCH (ch:Chunk {id: chunk_id}) MERGE (c)-[:HAS_CONTENT]->(ch);

// Total queries: 102
// Generated on: 2025-09-30T12:40:53.217938
