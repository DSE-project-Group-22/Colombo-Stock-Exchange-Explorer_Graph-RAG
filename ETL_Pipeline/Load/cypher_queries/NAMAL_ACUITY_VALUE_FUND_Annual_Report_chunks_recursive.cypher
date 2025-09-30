// Query 1
MERGE (c:Company {name: 'Dipped Products PLC'}) ON CREATE SET c.id = 'dipped_products_plc';

// Query 2
MERGE (c:Company {name: 'Commercial Credit and Finance PLC'}) ON CREATE SET c.id = 'commercial_credit_and_finance_plc';

// Query 3
MERGE (c:Company {name: 'Lankem Ceylon PLC'}) ON CREATE SET c.id = 'lankem_ceylon_plc';

// Query 4
MERGE (c:Company {name: 'Citizens Development Business Finance PLC'}) ON CREATE SET c.id = 'citizens_development_business_finance_plc';

// Query 5
MERGE (c:Company {name: 'Ceylon Tea Brokers PLC'}) ON CREATE SET c.id = 'ceylon_tea_brokers_plc';

// Query 6
MERGE (c:Company {name: 'Dialog Axiata PLC'}) ON CREATE SET c.id = 'dialog_axiata_plc';

// Query 7
MERGE (c:Company {name: 'Chevron Lubricants Lanka PLC'}) ON CREATE SET c.id = 'chevron_lubricants_lanka_plc';

// Query 8
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 9
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 10
MERGE (m:Metric {name: 'Gross Profit Margin'}) ON CREATE SET m.id = 'gross_profit_margin', m.unit = '%';

// Query 11
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 12
MERGE (m:Metric {name: 'Operating Profit Margin'}) ON CREATE SET m.id = 'operating_profit_margin', m.unit = '%';

// Query 13
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 14
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 15
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 16
MERGE (m:Metric {name: 'Return on Capital Employed'}) ON CREATE SET m.id = 'return_on_capital_employed', m.unit = '%';

// Query 17
MERGE (m:Metric {name: 'Interest Cover Ratio'}) ON CREATE SET m.id = 'interest_cover_ratio', m.unit = 'Times';

// Query 18
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 19
MERGE (m:Metric {name: 'Quick Asset Ratio'}) ON CREATE SET m.id = 'quick_asset_ratio', m.unit = 'Times';

// Query 20
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 22
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Profit Before Taxation'}) ON CREATE SET m.id = 'profit_before_taxation', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Profit After Taxation'}) ON CREATE SET m.id = 'profit_after_taxation', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Shareholders’ Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Earnings per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Net Assets per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Return on Average Assets'}) ON CREATE SET m.id = 'return_on_average_assets', m.unit = '%';

// Query 30
MERGE (m:Metric {name: 'Equity / Assets Ratio'}) ON CREATE SET m.id = 'equity_assets_ratio', m.unit = '%';

// Query 31
MERGE (m:Metric {name: 'Dividend per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Dividend Payout Ratio'}) ON CREATE SET m.id = 'dividend_payout_ratio', m.unit = '%';

// Query 33
MERGE (m:Metric {name: 'Dividend Yield'}) ON CREATE SET m.id = 'dividend_yield', m.unit = '%';

// Query 34
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 35
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 79289000000, r.year = 2025;

// Query 36
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 73942000000, r.year = 2024;

// Query 37
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16564000000, r.year = 2025;

// Query 38
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17059000000, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Gross Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21, r.year = 2025;

// Query 40
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7172000000, r.year = 2025;

// Query 41
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6836000000, r.year = 2025;

// Query 42
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5032000000, r.year = 2025;

// Query 43
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13, r.year = 2025;

// Query 44
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14, r.year = 2025;

// Query 45
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Interest Cover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9, r.year = 2025;

// Query 46
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.7, r.year = 2025;

// Query 47
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Quick Asset Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.1, r.year = 2025;

// Query 48
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 74616000000, r.year = 2025;

// Query 49
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7, r.year = 2025;

// Query 50
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31055222000, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12808022000, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Profit Before Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6594978000, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Profit After Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4193917000, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 107987834000, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Shareholders’ Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24179669000, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.19, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Net Assets per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 76.02, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Return on Average Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.99, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Equity / Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22.39, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Citizens Development Business Finance PLC'}), (m:Metric {name: 'Dividend per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.00, r.year = 2025;

// Query 61
MATCH (c:Company {name: 'Citizens Development Business Finance PLC'}), (m:Metric {name: 'Dividend per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.00, r.year = 2025;

// Query 62
MATCH (c:Company {name: 'Ceylon Tea Brokers PLC'}), (m:Metric {name: 'Dividend per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.44, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Ceylon Tea Brokers PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 56.55, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'Dialog Axiata PLC'}), (m:Metric {name: 'Dividend per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.34, r.year = 2023;

// Query 65
MATCH (c:Company {name: 'Dialog Axiata PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 55, r.year = 2023;

// Query 66
MATCH (c:Company {name: 'Dialog Axiata PLC'}), (m:Metric {name: 'Dividend Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14.9, r.year = 2023;

// Query 67
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividend per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.00, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Dividend Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.4, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Chevron Lubricants Lanka PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.06, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Lankem Ceylon PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 71
UNWIND [{id: 'dipped_products_plc_directors_and_executives_0', content: '(Pvt) Ltd\na\nr\nThe DIRECTORS of the Company are also DIRECTORS of following companies with which the Company had transactions\nin the ordinary course of business during the year.\nKey management includes members of the Board of DIRECTORS of the Company. The compensation paid or payable\nto key management for employee services is shown below:\nMr. H.N.J \nChandrasekara\nMr. K.A.K \nJayatilake\nr\na', chunk_type: 'directors_and_executives', index: 0}, {id: 'dipped_products_plc_directors_and_executives_1', content: 'contracts in which they have an interest are disclosed in \nNote 34.1.1 to the financial statements on page 68.\nDIRECTORS’ Interest in Shares\nDIRECTORS of the Company who have an interest in the \nshares of the Company are required to disclose their \nshareholdings and any acquisitions/ disposals to the \nBoard in compliance with Section 200 of the Companies \nAct No. 07 of 2007. However, none of the DIRECTORS held \nany shares during the period under review nor in the \nprevious year.\nDIRECTORS’ Remuneration\nKey Management Personnel Compensation in respect of \nthe Company and the Group for the financial year 2021/ \n2022 is detailed in Note 34.1.2 to the Financial Statements \non page 68.\nDirectorate\nThe names of the DIRECTORS who held office during the \nfinancial year are given below and brief profiles of the \nDIRECTORS who are currently in office appear on pages 5 \nto 6.\nMr. S.D.R. Arudpragasam - Chairman\nMr. R.C.A. Welikala - Director\nMr. R.N. Bopearatchy - Director', chunk_type: 'directors_and_executives', index: 1}, {id: 'dipped_products_plc_directors_and_executives_2', content: 'Company in the preparation of the Financial \nStatements are given on pages 71 to 79, \nwhich are consistent with those of the \nprevious period.\nDIRECTORS’ responsibility for Financial \nReporting\nThe DIRECTORS are responsible for the \npreparation of the Financial Statements of \nthe Company and the Group to reflect a true \nand fair view of the state of its affairs.\nInformation on the DIRECTORS of the \nCompany and the Group \nDIRECTORS of the Company as at  \n31st March 2021\nThe names of the DIRECTORS who held office \nas at the end of the accounting period are \ngiven below and their brief profiles appear on \npages 18 and 19.\nExecutive DIRECTORS\nMr. E. T . De Zoysa - Managing Director\nNon-Executive DIRECTORS\nMr. R. S. A. Wickramasingha - Chairman\nMs. D. S. Wickramasingha - Director\nMs. N. K. Wickramasingha - Director \nMr. L. J. M. De Silva - Director \nMr. M. U. S. G. Thilakawardana - Director*\nDr. D. M. A. Kulasooriya - Director*\nMr. M. S. Nanayakkara - Director*', chunk_type: 'directors_and_executives', index: 2}, {id: 'dipped_products_plc_directors_and_executives_3', content: 'from pages 28 to 67 of the Annual Report. \nDIRECTORATE \nThe Board of DIRECTORS of the Company as at date is set out in \n“Corporate Information”. The DIRECTORS of the Company who held \noffice during the year under review and changes thereto are \nindicated below.', chunk_type: 'directors_and_executives', index: 3}, {id: 'dipped_products_plc_directors_and_executives_4', content: 'in the Shareholders Information section on pages 166 to 167.\nThe Company endeavours at all times to ensure equitable treatment to all \nshareholders.\nSubstantial Shareholdings\nThere were 1738 registered shareholders, holding ordinary voting shares \nas at 31st March 2025 (1,582 registered shareholders as at 31st March \n2024).\nThe names of the twenty largest shareholders, the number of shares held, \nand the percentages held are given on page 167 of the Annual Report. \nThe distribution schedule of the shareholders and public holdings are \ndisclosed on page 166 of the Annual Report.\nDirectorate\nAs at 31st March 2025 the Board of DIRECTORS of the Company consisted \nof eight DIRECTORS with wide commercial, academic knowledge and \nexperience. The DIRECTORS profile is given on pages 56 to 57 of this Annual \nReport.\nThe Board of DIRECTORS of the Company and its subsidiaries as at 31st \nMarch 2025 are listed below.\nName of the Director\nJohn Keells PLC \nPLC\nJohn \nKeells PLC \nStockbrokers\nJohn Keells PLC', chunk_type: 'directors_and_executives', index: 4}] AS chunk MERGE (ch:Chunk {id: chunk.id}) ON CREATE SET ch.content = chunk.content, ch.chunk_type = chunk.chunk_type, ch.index = chunk.index;

// Query 72
MATCH (c:Company {name: 'Dipped Products PLC'}) WITH c UNWIND ['dipped_products_plc_directors_and_executives_0', 'dipped_products_plc_directors_and_executives_1', 'dipped_products_plc_directors_and_executives_2', 'dipped_products_plc_directors_and_executives_3', 'dipped_products_plc_directors_and_executives_4'] AS chunk_id MATCH (ch:Chunk {id: chunk_id}) MERGE (c)-[:HAS_CONTENT]->(ch);

// Total queries: 72
// Generated on: 2025-09-30T13:53:36.230006
