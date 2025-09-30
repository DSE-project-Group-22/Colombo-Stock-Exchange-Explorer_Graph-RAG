// Query 1
MERGE (c:Company {name: 'Hayleys PLC'}) ON CREATE SET c.id = 'hayleys_plc';

// Query 2
MERGE (c:Company {name: 'Dipped Products PLC'}) ON CREATE SET c.id = 'dipped_products_plc';

// Query 3
MERGE (c:Company {name: 'Commercial Credit and Finance PLC'}) ON CREATE SET c.id = 'commercial_credit_and_finance_plc';

// Query 4
MERGE (c:Company {name: 'eChannelling PLC'}) ON CREATE SET c.id = 'echannelling_plc';

// Query 5
MERGE (c:Company {name: 'Haycarb PLC'}) ON CREATE SET c.id = 'haycarb_plc';

// Query 6
MERGE (c:Company {name: 'First Capital Treasuries PLC'}) ON CREATE SET c.id = 'first_capital_treasuries_plc';

// Query 7
MERGE (c:Company {name: 'Ceylon Tea Brokers PLC'}) ON CREATE SET c.id = 'ceylon_tea_brokers_plc';

// Query 8
MERGE (c:Company {name: 'Citizens Development Business Finance PLC'}) ON CREATE SET c.id = 'citizens_development_business_finance_plc';

// Query 9
MERGE (c:Company {name: 'Chevron Lubricants Lanka PLC'}) ON CREATE SET c.id = 'chevron_lubricants_lanka_plc';

// Query 10
MERGE (c:Company {name: 'Ex-pack Corrugated Cartons PLC'}) ON CREATE SET c.id = 'ex_pack_corrugated_cartons_plc';

// Query 11
MERGE (c:Company {name: 'Asian Hotels and Properties PLC'}) ON CREATE SET c.id = 'asian_hotels_and_properties_plc';

// Query 12
MERGE (c:Company {name: 'Elpitiya Plantations'}) ON CREATE SET c.id = 'elpitiya_plantations';

// Query 13
MERGE (p:Person {name: 'Manjula Mathews'}) ON CREATE SET p.id = 'manjula_mathews';

// Query 14
MERGE (p:Person {name: 'Sachith Perera'}) ON CREATE SET p.id = 'sachith_perera';

// Query 15
MERGE (p:Person {name: 'Dilshan Wirasekara'}) ON CREATE SET p.id = 'dilshan_wirasekara';

// Query 16
MERGE (p:Person {name: 'Ramesh Schaffter'}) ON CREATE SET p.id = 'ramesh_schaffter';

// Query 17
MERGE (p:Person {name: 'Minette Perera'}) ON CREATE SET p.id = 'minette_perera';

// Query 18
MERGE (p:Person {name: 'Nishan de Mel'}) ON CREATE SET p.id = 'nishan_de_mel';

// Query 19
MERGE (p:Person {name: 'Cilani Wijesinghe'}) ON CREATE SET p.id = 'cilani_wijesinghe';

// Query 20
MERGE (p:Person {name: 'Chandana de Silva'}) ON CREATE SET p.id = 'chandana_de_silva';

// Query 21
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Gross Profit Margin'}) ON CREATE SET m.id = 'gross_profit_margin', m.unit = '%';

// Query 24
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Operating Profit Margin'}) ON CREATE SET m.id = 'operating_profit_margin', m.unit = '%';

// Query 26
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Profit Before Tax Margin'}) ON CREATE SET m.id = 'profit_before_tax_margin', m.unit = '%';

// Query 28
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 30
MERGE (m:Metric {name: 'Return on Capital Employed'}) ON CREATE SET m.id = 'return_on_capital_employed', m.unit = '%';

// Query 31
MERGE (m:Metric {name: 'Interest Cover Ratio'}) ON CREATE SET m.id = 'interest_cover_ratio', m.unit = 'Times';

// Query 32
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 33
MERGE (m:Metric {name: 'Quick Asset Ratio'}) ON CREATE SET m.id = 'quick_asset_ratio', m.unit = 'Times';

// Query 34
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 36
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Shareholders Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Earnings per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Net Assets per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Return on Average Assets'}) ON CREATE SET m.id = 'return_on_average_assets', m.unit = '%';

// Query 42
MERGE (m:Metric {name: 'Equity to Assets Ratio'}) ON CREATE SET m.id = 'equity_to_assets_ratio', m.unit = '%';

// Query 43
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Gearing Ratio'}) ON CREATE SET m.id = 'gearing_ratio', m.unit = '%';

// Query 46
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 47
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 48
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 49
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 50
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 51
MERGE (p:Product {name: 'Activated Carbon'}) ON CREATE SET p.id = 'activated_carbon';

// Query 52
MERGE (p:Product {name: 'Energy Storage Carbons'}) ON CREATE SET p.id = 'energy_storage_carbons';

// Query 53
MERGE (p:Product {name: 'Coconut Shell Activated Carbon'}) ON CREATE SET p.id = 'coconut_shell_activated_carbon';

// Query 54
MATCH (p:Person {name: 'Manjula Mathews'}), (c:Company {name: 'Hayleys PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 55
MATCH (p:Person {name: 'Sachith Perera'}), (c:Company {name: 'Hayleys PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 56
MATCH (p:Person {name: 'Dilshan Wirasekara'}), (c:Company {name: 'Hayleys PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 57
MATCH (p:Person {name: 'Ramesh Schaffter'}), (c:Company {name: 'Hayleys PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 58
MATCH (p:Person {name: 'Minette Perera'}), (c:Company {name: 'Hayleys PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 59
MATCH (p:Person {name: 'Nishan de Mel'}), (c:Company {name: 'Hayleys PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 60
MATCH (p:Person {name: 'Cilani Wijesinghe'}), (c:Company {name: 'Hayleys PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 61
MATCH (p:Person {name: 'Chandana de Silva'}), (c:Company {name: 'Hayleys PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 62
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 79289000000, r.year = 2025;

// Query 63
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16564000000, r.year = 2025;

// Query 64
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Gross Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21, r.year = 2025;

// Query 65
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7172000000, r.year = 2025;

// Query 66
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Operating Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9, r.year = 2025;

// Query 67
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6836000000, r.year = 2025;

// Query 68
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Profit Before Tax Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9, r.year = 2025;

// Query 69
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5032000000, r.year = 2025;

// Query 70
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13, r.year = 2025;

// Query 71
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14, r.year = 2025;

// Query 72
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Interest Cover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9, r.year = 2025;

// Query 73
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.7, r.year = 2025;

// Query 74
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Quick Asset Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.1, r.year = 2025;

// Query 75
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 74616000000, r.year = 2025;

// Query 76
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7, r.year = 2025;

// Query 77
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31055222000, r.year = 2024;

// Query 78
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12808022000, r.year = 2024;

// Query 79
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6594978000, r.year = 2024;

// Query 80
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4193917000, r.year = 2024;

// Query 81
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 107987834000, r.year = 2024;

// Query 82
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24179669000, r.year = 2024;

// Query 83
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.19, r.year = 2024;

// Query 84
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Net Assets per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 76.02, r.year = 2024;

// Query 85
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Return on Average Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.99, r.year = 2024;

// Query 86
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Equity to Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22.39, r.year = 2024;

// Query 87
MATCH (c:Company {name: 'eChannelling PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 256000000, r.year = 2024;

// Query 88
MATCH (c:Company {name: 'Hayleys PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25447000000, r.year = 2024;

// Query 89
MATCH (c:Company {name: 'Hayleys PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 603000000, r.year = 2024;

// Query 90
MATCH (c:Company {name: 'Hayleys PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2743000000, r.year = 2024;

// Query 91
MATCH (c:Company {name: 'Hayleys PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 43860700000, r.year = 2024;

// Query 92
MATCH (c:Company {name: 'Hayleys PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 38370100000, r.year = 2024;

// Query 93
MATCH (c:Company {name: 'Hayleys PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5311300000, r.year = 2024;

// Query 94
MATCH (c:Company {name: 'Hayleys PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -38.1, r.year = 2024;

// Query 95
MATCH (c:Company {name: 'Hayleys PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.0, r.year = 2024;

// Query 96
MATCH (c:Company {name: 'Hayleys PLC'}), (m:Metric {name: 'Net Assets per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 74.0, r.year = 2024;

// Query 97
MATCH (c:Company {name: 'Hayleys PLC'}), (m:Metric {name: 'Gearing Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 58.0, r.year = 2024;

// Query 98
MATCH (c:Company {name: 'Hayleys PLC'}), (m:Metric {name: 'Return on Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6.0, r.year = 2024;

// Query 99
MATCH (c:Company {name: 'Hayleys PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 100
MATCH (c:Company {name: 'Hayleys PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 101
MATCH (c:Company {name: 'Hayleys PLC'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 102
MATCH (c:Company {name: 'Hayleys PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 103
MATCH (c:Company {name: 'Hayleys PLC'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 104
MATCH (c:Company {name: 'Hayleys PLC'}), (p:Product {name: 'Activated Carbon'}) MERGE (c)-[:OFFERS]->(p);

// Query 105
MATCH (c:Company {name: 'Hayleys PLC'}), (p:Product {name: 'Energy Storage Carbons'}) MERGE (c)-[:OFFERS]->(p);

// Query 106
MATCH (c:Company {name: 'Hayleys PLC'}), (p:Product {name: 'Coconut Shell Activated Carbon'}) MERGE (c)-[:OFFERS]->(p);

// Query 107
UNWIND [{id: 'hayleys_plc_directors_and_executives_0', content: '(Pvt) Ltd\na\nr\nThe DIRECTORS of the Company are also DIRECTORS of following companies with which the Company had transactions\nin the ordinary course of business during the year.\nKey management includes members of the Board of DIRECTORS of the Company. The compensation paid or payable\nto key management for employee services is shown below:\nMr. H.N.J \nChandrasekara\nMr. K.A.K \nJayatilake\nr\na', chunk_type: 'directors_and_executives', index: 0}, {id: 'hayleys_plc_directors_and_executives_1', content: 'Company in the preparation of the Financial \nStatements are given on pages 71 to 79, \nwhich are consistent with those of the \nprevious period.\nDIRECTORS’ responsibility for Financial \nReporting\nThe DIRECTORS are responsible for the \npreparation of the Financial Statements of \nthe Company and the Group to reflect a true \nand fair view of the state of its affairs.\nInformation on the DIRECTORS of the \nCompany and the Group \nDIRECTORS of the Company as at  \n31st March 2021\nThe names of the DIRECTORS who held office \nas at the end of the accounting period are \ngiven below and their brief profiles appear on \npages 18 and 19.\nExecutive DIRECTORS\nMr. E. T . De Zoysa - Managing Director\nNon-Executive DIRECTORS\nMr. R. S. A. Wickramasingha - Chairman\nMs. D. S. Wickramasingha - Director\nMs. N. K. Wickramasingha - Director \nMr. L. J. M. De Silva - Director \nMr. M. U. S. G. Thilakawardana - Director*\nDr. D. M. A. Kulasooriya - Director*\nMr. M. S. Nanayakkara - Director*', chunk_type: 'directors_and_executives', index: 1}, {id: 'hayleys_plc_directors_and_executives_2', content: 'from pages 28 to 67 of the Annual Report. \nDIRECTORATE \nThe Board of DIRECTORS of the Company as at date is set out in \n“Corporate Information”. The DIRECTORS of the Company who held \noffice during the year under review and changes thereto are \nindicated below.', chunk_type: 'directors_and_executives', index: 2}, {id: 'hayleys_plc_directors_and_executives_3', content: 'as at the end of the financial year under \nreview. The Company’s Board of DIRECTORS \nconsists of professionals in varied fields who \ncollectively possess a wealth of knowledge \nand experience are thus eminently suitable \nto provide the leadership and direction \nrequired.\nThe CEO has been given the responsibility \nof leading the organization as its chief \nexecutive by the Board. The Board has also \ndesignated additional Key Responsible \nPersons (KRPs) who direct activities, oversee \nbusiness operations, and have significant \ninfluence over policies.  The Board has \ncreated a comprehensive succession plan \nfor these critical roles in order to protect \noperational continuity and minimize \ninterruptions.\nThe Board has instituted an annual self-\nassessment program for each director \nto assess their own performance as well \nas the performance of the Board and its \ncommittees. The objective of this is to \nimprove the Board’s and its committees’ \neffectiveness. The senior director and', chunk_type: 'directors_and_executives', index: 3}, {id: 'hayleys_plc_directors_and_executives_4', content: 'DIRECTORATE \nThe following were the DIRECTORS of the Company as at 31 \nMarch 2025. \n1. Ms. Manjula Mathews \n2. Mr. Sachith Perera \n3. Mr. Dilshan Wirasekara \n4. Mr. Ramesh Schaffter - - \n5. Ms. Minette Perera - - \n6. Dr. Nishan de Mel \n7. Ms. Cilani Wijesinghe \n8. Mr. Chandana de Silva \n \nMr. Chandana de Silva stepped down from the Board with \neffect from 28 June 2024. \n \nMs. Cilani Wijesinghe was appointed to the Borad with \neffect from 20 August 2024. \n \nMr. Sachith Perera and Mr. Chandana de Silva were \nappointed to the Board with effect from 1 January 2025. \n \nThe profiles of the DIRECTORS are given on pages 21 to 25 \nof the Annual Report. \n \nINTEREST IN SHARES / DIRECTORS DEALINGS IN \nSHARES \nDIRECTORS/Chief Executive Officer and their shareholdings \nas at 31 March 2025 were as follows: \n \n No. of \nShares \n31.03.2025 \nNo. of \nShares \n31.03.2024 \nMs. Manjula Mathews - - \nMr. Sachith Perera - - \nMr. Dilshan Wirasekara - - \nMr. Ramesh Schaffter - - - - \nMs. Minette Perera - - - -', chunk_type: 'directors_and_executives', index: 4}, {id: 'hayleys_plc_financial_performance_0', content: 'Financial\nperformance\nCashﬂows\nFinancial\nposition\nCost of\ncapital\nAccess\nto ﬁnance\n-5 -4 -3 -2 -1 0 1 2 3 4 5\nFinancial\nperformance\nCashﬂows\nFinancial\nposition\nCost of\ncapital\nAccess\nto ﬁnance\nIntroduction | Understanding Value Creation and Impacts | Our Value Proposition on ESG\nNurturing Our Resources | Mindful Governance | Financial Statements | Supplementary', chunk_type: 'financial_performance', index: 0}, {id: 'hayleys_plc_financial_performance_1', content: '22 DIPPED PRODUCTS PLC  | Annual Report 2024/25\nPerformance Highlights\nMetric 2024/25 2023/24 % Y-o-Y\nSTRATEGIC PRIORITY- FINANCIAL PERFORMANCES   \nEarnings Highlights\nRevenue Rs. million 79,289 73,942  7 \nGross Profit Rs. million 16,564  17,059  (3)\nGross Profit Margin %  21  23  (2)\nOperating Profit Rs. million 7,172  7,729  (7)\nOperating Profit Margin %  9  10  (1)\nProfit Before Tax Rs. million 6,836  7,567  (10)\nProfit Before Tax Margin %  9  10  (1)\nProfit After Tax Rs. million 5,032  5,779  (13)\nReturn on Equity %  13  16  (3)\nReturn on Capital Employed % 14 17  (3)\nInterest Cover Ratio Times  9 10  (11)\nWorking Capital Ratios\nInventory Days Days  75  78  (3)\nDebtor Days Days  59 60  (1)\nCreditor Days Days  70 64  6 \nCash Conversion Cycle Days  64  74  (10)\nLiquidity Ratios\nCurrent Ratio Times  1.7  2.2  (24)\nQuick Asset Ratio Times  1.1  1.4  (22)\nFinancial Stability\nTotal Assets Rs. million  74,616  63,913  17 \nReturn on Assets %  7  9  (2)', chunk_type: 'financial_performance', index: 1}, {id: 'hayleys_plc_financial_performance_2', content: 'Commercial Credit and Finance PLC | Annual Report 2023/2024\n6\nFINANCIAL \nHIGHLIGHTS\n2023/24\nRs.‘000\'   \n2022/23\nRs.‘000\'    \n% \nChange\nFinancial Performance  \nGross Income  31,055,222  28,949,269 7 .3%\nNet Interest Income  12,808,022  11,106,651 15.3%\nProfit Before Taxation  6,594,978  3,859,879 70.9%\nProfit After Taxation  4,193,917  2,599,629 61.3%\nFinancial Position\nLeases, Hire Purchases, Loans and Advances  81,437 ,828  76,170,663 6.9%\nTotal Assets  107 ,987 ,834  102,154,440 5.7%\nTotal Deposit Base  62,121,240  59,243,651 4.9%\nBorrowings  13,902,823  17 ,555,544 -20.8%\nShareholders’ Funds  24,179,669  20,359,015 18.8%\nLiquid Assets  11,483,294  12,836,935 -10.5%\nKey Indicators per Ordinary Share\nEarnings per Share( Rs.)  13.19  8.17 \nNet Assets per Share ( Rs.)  76.02 64.01 \nYear end Market Price per Share (Rs.)  35.30  26.00 \nKey Performance Indicators\nReturn on Average Assets (%) 3.99 2.66\nEquity / Assets (%) 22.39 19.93\nGross Non Performing Accommodations (%) 10.65 11.07', chunk_type: 'financial_performance', index: 2}, {id: 'hayleys_plc_financial_performance_3', content: 'reinforcing stakeholder trust and \nsupporting our vision for sustainable \ngrowth. By aligning financial strategy with \nour broader purpose, we continue to \ncreate enduring value for shareholders, \npartners, and the communities we serve.\nANALYSIS OF THE FINANCIAL \nPERFORMANCE \neChannelling PLC remained focused on \ndriving profitability through stringent cost \nmanagement and operational efficiency. \nProactive cost optimisation strategies \nenabled the Company to mitigate \nrevenue pressures and sustain operating \nprofit growth. This disciplined approach \nreflects our financial agility and resilience, \nreinforcing our commitment to delivering \nvalue even in a challenging economic \nlandscape. The strategy of broadening \nrevenue streams through non-healthcare \nsegments continued to contribute \npositively to top-line\nREVENUE \nDuring the FY 2024 eChannelling \nrecorded a moderate decline in revenue \nto Rs 256 Mn displaying a reduction of \nrevenue of 6% compared to Rs. 271', chunk_type: 'financial_performance', index: 3}, {id: 'hayleys_plc_financial_performance_4', content: 'decisive impact on the Group’s financial status or overall profitability.\nGROUP FINANCIAL HIGHLIGHTS\nFor the Year (Rs. Mn) 2024 2023 Change %\nIncome Statement\nRevenue 25,447.0 36,167.6 (10,720.6) (30)\nGross Profit /(Loss) 603.0 (6,323.6) 6926.6 (110)\nProfit/(Loss) after Tax (2,743.0) (11,006.4) 8,263.4 (76)\nBalance Sheet\nTotal Assets 43,860.7 39,325.1 4,535.6 12\nTotal Liabilities 38,370.1 36,034.1 2,336.0 6\nShareholders’ Funds 5,311.3 3,086.1 2,225.2 72\nNet Cash & Cash Equivalent 5,262.2 2,619.0 2,643.2 101\nInterest bearing borrowings 28,667.9 23,850.9 4,817.0 20\nFinancial Ratios\nEarnings Per Share (Rs.) (38.1) (153.4) 115.3 (75)\nDividend Per Share (Rs.) 0.0 0.0 0.0 0.0\nNet Assets Per Share (Rs.) 74.0 42.0 33.0 76\nGearing Ratio (%) 58.0 49.0 (9) 18\nReturn on Total Assets (%) (6.0) (31.0) 25.0 (81)\nWorking Capital to Assets (%) (16.0) (17.0) 1.0 (6)\nFINANCIAL PERFORMANCE OF THE GROUP\nGroup Revenue\nIn the 2024 financial year, the Group recorded total revenue of Rs. 25,447.0', chunk_type: 'financial_performance', index: 4}, {id: 'hayleys_plc_risk_factors_0', content: 'driving operational efficiency and sustainability. However, increased \ndigitisation has also given rise to cyber threats and heightened the \nrisk of data losses.\nOur reliance on coconut shells, an agricultural input, exposes us to \nthe potential risks of climate change. However, the transition to a \nlow-carbon economy has led to emerging opportunities. The shift \ntowards renewable energy sources has given rise to innovation in \nenergy storage carbons, while sustainable resource consumption \nhas led to the utilization of activated carbon products across many \nindustries. Increased emphasis on addressing climate change has \nled to a rise in environmental regulations and corporate reporting \nrequirements has led to the utilization of activated carbon products \nacross many industries.\nOur global presence necessitates navigating the regulatory landscape \nof multiple jurisdictions giving rise to high levels of complexity. \nProactive monitoring for new laws and regulations across all', chunk_type: 'risk_factors', index: 0}, {id: 'hayleys_plc_risk_factors_1', content: 'driving operational efficiency and sustainability. However, increased \ndigitisation has also given rise to cyber threats and heightened the \nrisk of data losses.\nOur reliance on coconut shells, an agricultural input, exposes us to \nthe potential risks of climate change. However, the transition to a \nlow-carbon economy has led to emerging opportunities. The shift \ntowards renewable energy sources has given rise to innovation in \nenergy storage carbons, while sustainable resource consumption \nhas led to the utilization of activated carbon products across many \nindustries. Increased emphasis on addressing climate change has \nled to a rise in environmental regulations and corporate reporting \nrequirements has led to the utilization of activated carbon products \nacross many industries.\nOur global presence necessitates navigating the regulatory landscape \nof multiple jurisdictions giving rise to high levels of complexity. \nProactive monitoring for new laws and regulations across all', chunk_type: 'risk_factors', index: 1}, {id: 'hayleys_plc_risk_factors_2', content: 'in internal controls. A shortage of skilled employees could also \nimpede our business growth and expansion. Furthermore, the \neffectiveness and performance of our senior executives are \ncrucial for maintaining our competitive edge and driving future \ngrowth. The departure of key executives could pose challenges \nto our business strategy execution and have other detrimental \neffects.', chunk_type: 'risk_factors', index: 2}, {id: 'hayleys_plc_risk_factors_3', content: 'uncertainty.\n• The physical and transitional risks associated with climate \nchange.\n• Potential challenges in securing and retaining sufficient labour \nresources.\n• Unpredictable fluctuations in agricultural output and essential \nraw material costs.\n• Exposure to adverse fluctuations in foreign exchange rates, \npotentially impacting revenue, and costs.\n• Reliance on a concentration of sales within key markets, \nposing a risk to overall revenue stability.\n• Exposure to volatility and unfavourable movements in the \nprices of key commodities essential to our operations.\nSWOT Analysis\nOpportunities\nStrengths Weaknesses\nThreats\nExternal Factors Internal Factors', chunk_type: 'risk_factors', index: 3}, {id: 'hayleys_plc_risk_factors_4', content: 'or regional instability, which can lead to losing market \nshare or reduced pricing power. To address this, we \nfocus on niche market segments, diversify across \nregions and customer segments, and pursue targeted \nexpansion strategies.\n y Financial Risks involve changes in interest rates, \ncurrency fluctuations, temporary cash flow issues, \nor customer defaults. These can affect profitability, \nraise financing costs, and disrupt revenue. Our risk \nmanagement includes negotiating favorable loan terms, \nusing financial instruments for hedging, matching \ntransactions in foreign currencies, closely monitoring \ncash flows, maintaining reserves and credit lines, \nand applying strict credit assessments and contract \nprotections.\n y Product and Technological Risks relate to meeting \nregulatory standards and keeping up with new \ntechnologies, which, if not managed, could lead to \nproduct rejection or harm our reputation. We mitigate \nthese risks by securing certifications from recognized', chunk_type: 'risk_factors', index: 4}, {id: 'hayleys_plc_business_segments_0', content: 'from one another. Top management of the Company considers the operating results and condition of its business segments in their \ndecision making process and performance evaluation. Types of products and services from which each operating segment derives its \nrevenues are described as follows.\n \nAn operating segment is a component of the Company that engages in business activities from which it may earn revenues and incur \nexpenses, including revenues and expenses that relate to transactions with any of the Company’s other components. All operating \nsegments’ operating results are reviewed regularly by the Senior Management to make decisions about resources to be allocated to \nthe segment and to assess its performance, and for which discrete financial information is available.', chunk_type: 'business_segments', index: 0}, {id: 'hayleys_plc_business_segments_1', content: 'resources and assessing performance of the operating \nsegments, has been identified as the Board of \nDirectors that makes strategic decisions. The revenue, \ncost, depreciation, amortisation, impairment, total \nassets, total liabilities and capital expenditure have \nbeen allocated to the respective segments based on \nthe internal reporting basis under the below stated \nsegments.\nThe reportable segments derive their revenue primarily \nfrom the provision of mobile services, data services, \ninternational direct dialling services, leasing of passive \ninfrastructure, provision of interconnect services, pay \ntelevision transmission services, provision of other data \nservices and digital services.\nAt 31 December 2023, the Group is organised into \nthree main business segments:\n Mobile operation\n Fixed telephony and broadband operation\n Television operations', chunk_type: 'business_segments', index: 1}, {id: 'hayleys_plc_business_segments_2', content: 'of its business segments rather than their geographical location. Each segment is separately managed as it requires \ndifferent management strategies, as underscored by the Group’s organizational structure.\nThe Group’s business operations are classified into eight segments based on the products or services rendered, namely, \nInvestment Holdings, Portfolio and Asset Management, Oil palm plantations, Oils & fats, Beverages, Real Estate, Leisure, \nand Management Services. The following table describes the operations of each segment.  \nInter segmental sales are made at prices that approximate the market prices. Segment revenue, expenses, and results \ninclude transactions between segments. On consolidation, these transactions and any unrealised profits and losses \nare eliminated. Segmental expenses are directly attributed to a relevant segment or a portion of expenses that can be \nallocated reasonably as determined by the management.        \n  \n   \nNotes to the Financial Statements', chunk_type: 'business_segments', index: 2}, {id: 'hayleys_plc_business_segments_3', content: '2.5. Operating Segments\nSegment information is presented in respect of the Group’s business segments. Business segments are based on the Group’s management and \ninternal reporting structure.\nInter-segment transactions are carried in the ordinary course of business. Segment results, assets and liabilities include items directly attributable \nto a segment as well as those that can be allocated on a reasonable basis.\nThe Group comprises the following main business segments.\nRental   -  Warehouses, Yard, Ground and Office Space Rental \nInfrastructure -  Infrastructure Rental \nTrading & Services  -  Selling & Distribution, Renting & Repairs of Transmission Equipment & Machinery   Parts\nUnallocated assets and liabilities comprise mainly of assets and liabilities that cannot be attributed to a particular segment.\nSales to any single customer does not represent more than 10% of the total sales and no segments are determined based on the geographical \narea.', chunk_type: 'business_segments', index: 3}, {id: 'hayleys_plc_business_segments_4', content: 'the customer.\n » Providing motor vehicle repair and maintenance services including sale of spare parts and workshop related activities for value \naddition.\n » Investment and property holding where the entity engages in leasing out its investment properties and earning a rental income \namongst other investment activities.\nThe segment results for the year ended 31 March 2024 are as follows:\nMotor Repair & Investment Group\nvehicle maintenance & property \nsales services holding\nTotal segmental revenue - 222,688,903 82,996,899 305,685,802 \n- 222,688,903 82,996,899 305,685,802 \nOperating profit - (6,258,241) 328,220,941 321,962,700\nFinance income - - 60,174,145 60,174,145 \nFinance costs - (139,135,912) - (139,135,912)\nFinance (costs) / income - net - (139,135,912) 60,174,145 (78,961,767)\nProfit before income tax - (145,394,153) 388,395,086 243,000,933\nIncome tax expense - - (34,683,250) (34,683,250)\nNet profit - (145,394,153) 353,711,836 208,317,683', chunk_type: 'business_segments', index: 4}] AS chunk MERGE (ch:Chunk {id: chunk.id}) ON CREATE SET ch.content = chunk.content, ch.chunk_type = chunk.chunk_type, ch.index = chunk.index;

// Query 108
MATCH (c:Company {name: 'Hayleys PLC'}) WITH c UNWIND ['hayleys_plc_directors_and_executives_0', 'hayleys_plc_directors_and_executives_1', 'hayleys_plc_directors_and_executives_2', 'hayleys_plc_directors_and_executives_3', 'hayleys_plc_directors_and_executives_4', 'hayleys_plc_financial_performance_0', 'hayleys_plc_financial_performance_1', 'hayleys_plc_financial_performance_2', 'hayleys_plc_financial_performance_3', 'hayleys_plc_financial_performance_4', 'hayleys_plc_risk_factors_0', 'hayleys_plc_risk_factors_1', 'hayleys_plc_risk_factors_2', 'hayleys_plc_risk_factors_3', 'hayleys_plc_risk_factors_4', 'hayleys_plc_business_segments_0', 'hayleys_plc_business_segments_1', 'hayleys_plc_business_segments_2', 'hayleys_plc_business_segments_3', 'hayleys_plc_business_segments_4'] AS chunk_id MATCH (ch:Chunk {id: chunk_id}) MERGE (c)-[:HAS_CONTENT]->(ch);

// Total queries: 108
// Generated on: 2025-09-30T14:55:35.703649
