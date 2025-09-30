// Query 1
MERGE (c:Company {name: 'Asian Hotels and Properties PLC'}) ON CREATE SET c.id = 'asian_hotels_and_properties_plc', c.listed_on = 'Colombo Stock Exchange of Sri Lanka';

// Query 2
MERGE (c:Company {name: 'John Keells Holdings PLC'}) ON CREATE SET c.id = 'john_keells_holdings_plc';

// Query 3
MERGE (c:Company {name: 'Sampath Bank PLC'}) ON CREATE SET c.id = 'sampath_bank_plc';

// Query 4
MERGE (c:Company {name: 'A E C Properties (Pvt) Ltd'}) ON CREATE SET c.id = 'a_e_c_properties_pvt_ltd';

// Query 5
MERGE (c:Company {name: 'Associated Electrical Corporation Ltd'}) ON CREATE SET c.id = 'associated_electrical_corporation_ltd';

// Query 6
MERGE (c:Company {name: 'Econic (Private) Ltd'}) ON CREATE SET c.id = 'econic_private_ltd';

// Query 7
MERGE (c:Company {name: 'Ashan de Zoysa & Co (Pvt) Ltd'}) ON CREATE SET c.id = 'ashan_de_zoysa_&_co_pvt_ltd';

// Query 8
MERGE (c:Company {name: 'Forest Sense (Pvt) Ltd'}) ON CREATE SET c.id = 'forest_sense_pvt_ltd';

// Query 9
MERGE (c:Company {name: 'ADZ Insurance Brokers (Pvt) Ltd'}) ON CREATE SET c.id = 'adz_insurance_brokers_pvt_ltd';

// Query 10
MERGE (c:Company {name: 'KPMG'}) ON CREATE SET c.id = 'kpmg';

// Query 11
MERGE (c:Company {name: 'Deloitte Advisory Services (Pvt) Ltd'}) ON CREATE SET c.id = 'deloitte_advisory_services_pvt_ltd';

// Query 12
MERGE (p:Person {name: 'Krishan Niraj Jayasekara Balendra'}) ON CREATE SET p.id = 'krishan_niraj_jayasekara_balendra';

// Query 13
MERGE (p:Person {name: 'Joseph Gihan Adisha Cooray'}) ON CREATE SET p.id = 'joseph_gihan_adisha_cooray';

// Query 14
MERGE (p:Person {name: 'Suresh Rajendra'}) ON CREATE SET p.id = 'suresh_rajendra';

// Query 15
MERGE (p:Person {name: 'Jegatheesan Durairatnam'}) ON CREATE SET p.id = 'jegatheesan_durairatnam';

// Query 16
MERGE (p:Person {name: 'Ashan Suresh De Zoysa'}) ON CREATE SET p.id = 'ashan_suresh_de_zoysa';

// Query 17
MERGE (p:Person {name: 'Mikael Roland Svensson'}) ON CREATE SET p.id = 'mikael_roland_svensson';

// Query 18
MERGE (p:Person {name: 'Changa Lashantha Poojitha Gunawardane'}) ON CREATE SET p.id = 'changa_lashantha_poojitha_gunawardane';

// Query 19
MERGE (p:Person {name: 'Aroshi Nanayakkara'}) ON CREATE SET p.id = 'aroshi_nanayakkara';

// Query 20
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 21
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 22
MERGE (p:Product {name: 'Hoteliering Services'}) ON CREATE SET p.id = 'hoteliering_services';

// Query 23
MERGE (p:Product {name: 'Property Development'}) ON CREATE SET p.id = 'property_development';

// Query 24
MERGE (p:Product {name: 'Property Renting'}) ON CREATE SET p.id = 'property_renting';

// Query 25
MERGE (p:Product {name: 'Food & Beverage'}) ON CREATE SET p.id = 'food_&_beverage';

// Query 26
MERGE (p:Product {name: 'Rooms'}) ON CREATE SET p.id = 'rooms';

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Results from operating activities'}) ON CREATE SET m.id = 'results_from_operating_activities', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Profit before tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Profit after tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Finance cost'}) ON CREATE SET m.id = 'finance_cost', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Finance income'}) ON CREATE SET m.id = 'finance_income', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Return on equity (ROE)'}) ON CREATE SET m.id = 'return_on_equity_(roe)', m.unit = '%';

// Query 37
MERGE (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) ON CREATE SET m.id = 'pre-tax_return_on_capital_employed_(roce)', m.unit = '%';

// Query 38
MERGE (m:Metric {name: 'Net debt'}) ON CREATE SET m.id = 'net_debt', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Equity capital'}) ON CREATE SET m.id = 'equity_capital', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Debt capital'}) ON CREATE SET m.id = 'debt_capital', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Net assets value per share'}) ON CREATE SET m.id = 'net_assets_value_per_share', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Total equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 43
MATCH (p:Person {name: 'Krishan Niraj Jayasekara Balendra'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairperson', r.as_of = date('2024-03-31');

// Query 44
MATCH (p:Person {name: 'Joseph Gihan Adisha Cooray'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 45
MATCH (p:Person {name: 'Suresh Rajendra'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 46
MATCH (p:Person {name: 'Jegatheesan Durairatnam'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 47
MATCH (p:Person {name: 'Ashan Suresh De Zoysa'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 48
MATCH (p:Person {name: 'Mikael Roland Svensson'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 49
MATCH (p:Person {name: 'Changa Lashantha Poojitha Gunawardane'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 50
MATCH (p:Person {name: 'Aroshi Nanayakkara'}), (c:Company {name: 'Asian Hotels and Properties PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 51
MATCH (p:Person {name: 'Krishan Niraj Jayasekara Balendra'}), (c:Company {name: 'John Keells Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairperson-CEO', r.as_of = date('2024-03-31');

// Query 52
MATCH (p:Person {name: 'Joseph Gihan Adisha Cooray'}), (c:Company {name: 'John Keells Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairperson/ Group Finance Director', r.as_of = date('2024-03-31');

// Query 53
MATCH (p:Person {name: 'Aroshi Nanayakkara'}), (c:Company {name: 'Sampath Bank PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2024-03-31');

// Query 54
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 55
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 56
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (p:Product {name: 'Hoteliering Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 57
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (p:Product {name: 'Property Development'}) MERGE (c)-[:OFFERS]->(p);

// Query 58
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (p:Product {name: 'Property Renting'}) MERGE (c)-[:OFFERS]->(p);

// Query 59
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (p:Product {name: 'Food & Beverage'}) MERGE (c)-[:OFFERS]->(p);

// Query 60
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (p:Product {name: 'Rooms'}) MERGE (c)-[:OFFERS]->(p);

// Query 61
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772000000, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Results from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 612000000, r.year = 2024;

// Query 63
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 212000000, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78000000, r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381000000, r.year = 2024;

// Query 66
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14832000000, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4891000000, r.year = 2024;

// Query 68
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Finance cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 336016000, r.year = 2024;

// Query 69
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Finance income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25800000, r.year = 2024;

// Query 70
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Return on equity (ROE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.07, r.year = 2024;

// Query 71
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Pre-Tax return on capital employed (ROCE)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.86, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net debt'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2284000000, r.year = 2024;

// Query 73
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Equity capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29900000000, r.year = 2024;

// Query 74
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Debt capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 581000000, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Net assets value per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 67.64, r.year = 2024;

// Query 76
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33549000000, r.year = 2024;

// Query 77
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (a:Company {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 78
UNWIND [{id: 'asian_hotels_and_properties_plc_directors_and_executives_0', content: 'listed and unlisted companies (outside the Group) in Sri Lanka by each Director as of 31 March 2024.\nName of Director No. of Board Seats Held in Other Listed \nSri Lankan Companies\nBoard Seats Held  in Other Unlisted Sri \nLankan Companies\nExecutive \nCapacity\nNon-Executive \nCapacity\nMr. K N J Balendra - - -\nMr. J G A Cooray - - -\nMr. M R Svensson - - -\nMr. S Rajendra - - -\nMr. C L P Gunawardane - - -\nMr. A S De Zoysa - - A E C Properties (Pvt) Ltd, Associated Electrical \nCorporation Ltd, Econic (Private) Ltd. Ashan de \nZoysa & Co (Pvt) Ltd, Forest Sense (Pvt) Ltd, ADZ \nInsurance Brokers (Pvt) Ltd\nMr. J Durairatnam - - -\nMs. A Nanayakkara - Sampath Bank PLC Global Consulting Company, Sri Lanka Institute of \nDIRECTORS\nRemuneration\nThe Remuneration policy is determined by the Human Resources \n& Compensation Committee of the ultimate parent company , JKH. \nThe remuneration policy is designed to attract and retain highly \ncapable executives and to motivate the implementation of business', chunk_type: 'directors_and_executives', index: 0}, {id: 'asian_hotels_and_properties_plc_directors_and_executives_1', content: '152  | ASIAN HOTELS AND PROPERTIES PLC\nDIRECTORS\nThe Board of DIRECTORS of the Company as at 31st March 2024 \nand brief profiles of each Director are given in the Board of \nDIRECTORS section of this Annual Report.\nThe DIRECTORS of the Company who held office during the year \nunder review are set out below:\nMr. K. N. J. Balendra - Chairperson \nMr. J. G. A. Cooray\nMr. S. Rajendra\nMr. A. S. De Zoysa \nMr. J. Durairatnam \nMr. M. R. Svensson\nMr. C.L.P. Gunawardane\nMs. A. Nanayakkara \nThe Board consists of eight (8) DIRECTORS comprising of five (5) \nNon-Executive Non- Independent DIRECTORS (NED/NID) and \nthree (3) Non-Executive Independent DIRECTORS (NED/ID).\nIn accordance with the criteria for ‘Independence’ specified by \nsection 7.10.4 of the listing rules of the CSE and as identified \nby the Code of Best Practice on Corporate Governance (2013) \njointly advocated by the SEC and CA Sri Lanka, the Board \naffirms that the aforesaid NED/IDs satisfy the criteria for', chunk_type: 'directors_and_executives', index: 1}, {id: 'asian_hotels_and_properties_plc_directors_and_executives_2', content: 'Annual Report 2023/24 |  13\nOverview Operating Context \nand Strategy\nFinancial  \nInformation\nCorporate \nGovernance and Risk \nManagement\nManagement \nDiscussion and \nAnalysis\nSupplementary \nInformation\nBoard of DIRECTORS\nKrishan Balendra\nChairperson\nKrishan Balendra is the Chairperson-CEO of John Keells PLC \nHoldings PLC (JKH). He is also the Chairman of the Employers \nFederation of Ceylon, Deputy Vice Chairman of the Ceylon \nChamber of Commerce and the Hon. Consul General of the \nRepublic of Poland in Sri Lanka. He is a former Chairman of \nNations Trust Bank and the Colombo Stock Exchange. Krishan \nstarted his career at UBS Warburg, Hong Kong, in investment \nbanking, focusing primarily on equity capital markets. He \njoined JKH in 2002. Krishan holds a law degree (LLB) from the \nUniversity of London and an MBA from INSEAD.\nGihan Cooray\nDirector\nGihan Cooray is the Deputy Chairperson/ Group Finance \nDirector of John Keells PLC Holdings PLC  (JKH) and has overall', chunk_type: 'directors_and_executives', index: 2}, {id: 'asian_hotels_and_properties_plc_directors_and_executives_3', content: 'Annual Report 2023/24 |  233\nCorporate Information\nNAME OF COMPANY\nAsian Hotels and Properties PLC\nLEGAL FORM\nA Public Limited Liability Company incorporated in Sri Lanka \nin 1993 and registered with the Board of Investment of Sri \nLanka under Section 17 of the Board of Investment Law No. 4 \nof 1978\nThe Company was re-registered under the New Companies Act \nNo. 7 of 2007 on 15th June 2007\nSTOCK EXCHANGE LISTING\nThe issued Ordinary shares of the Company are listed on the \nColombo Stock Exchange of Sri Lanka\nCOMPA NY REGISTRATION NO.\n PQ 2\nBOARD OF DIRECTORS\nMr. Krishan Niraj Jayasekara Balendra - Chairperson\nMr. Joseph Gihan Adisha Cooray\nMr. Suresh Rajendra\nMr. Jegatheesan Durairatnam\nMr. Ashan Suresh De Zoysa\nMr. Mikael Roland Svensson \nMr. Changa Lashantha Poojitha Gunawardane \nMs. Aroshi Nanayakkara\nCOMPA N Y SECRETARIES\nKeells Consultants (Private) Limited\n117, Sir Chiththapalam A .Gardiner Mawatha,Colombo 2.\nREGISTERED OFFICE\nNo.77, Galle Road, Colombo 03', chunk_type: 'directors_and_executives', index: 3}, {id: 'asian_hotels_and_properties_plc_directors_and_executives_4', content: 'Annual Report 2023/24 |  95\nOverview Operating Context \nand Strategy\nFinancial  \nInformation\nLeadership Management \nDiscussion and \nAnalysis\nSupplementary \nInformation\nBoard Of DIRECTORS\nRoles and Responsibilities\nThe Board has overall responsibility for formulating strategy, \nsetting risk appetite, ensuring consistency of workforce \npolicies with Company values, and monitoring achievement of \ngoals and objectives while balancing stakeholder interests. \nIntegrated thinking at the Board level ensures that \nEnvironmental, Social and Governance (ESG) perspectives are \nincorporated into policy and strategy across the Company.\nApproves Policy and \nCapital Planning \nGives effect to strategy, sets \ndirection, resource \nallocation and risk appetite\nOverlooks and Monitors\nImplementation by \nManagement\nSteers and Sets Strategic \nDirection   \nApproves strategy. Focuses on \nhigh environmental, social \nand governance standards\nEnsures Accountability\nFor organisational \nperformance through', chunk_type: 'directors_and_executives', index: 4}, {id: 'asian_hotels_and_properties_plc_financial_performance_0', content: 'Annual Report 2023/24 |  7\nOperating Context \nand Strategy\nFinancial  \nInformation\nLeadership Corporate \nGovernance and Risk \nManagement\nManagement \nDiscussion and \nAnalysis\nSupplementary \nInformation\nPerformance Highlights (Financial)\n2024 2023 2022 2021 2020\nGroup Operational Performance \nRevenue Rs. Mn  10,772  8,417  4,095  1,790  5,560 \nResults from operating activities Rs. Mn  612  93  (407)  (1,913)  (28)\nProfit/(Loss) before tax Rs. Mn  212  (133)  (459)  (2,370)  199 \nProfit/(Loss) after tax Rs. Mn  78  (333)  (508)  (2,244)  106 \nDividends paid Rs. Mn  -    -    -    -    442 \nReturn on equity (ROE) %  0.07)  (0.92)  (1.62)  (5.54)  (0.15)\nPre-Tax return on capital employed \n(ROCE)\n%  1.86  0.86  (0.65)  (6.43)  0.61 \nBalance Sheet Strength \nTotal assets Rs. Mn  48,381  45,912  42,509  40,869  42,582 \nTotal liabilities Rs. Mn  14,832  13,674  7,549  6,256  5,889 \nNet debt / (Cash) Rs. Mn  2,284  2,101  1,645  691  (587)', chunk_type: 'financial_performance', index: 0}, {id: 'asian_hotels_and_properties_plc_financial_performance_1', content: '44  | ASIAN HOTELS AND PROPERTIES PLC\nGross proﬁt, expenses and post tax proﬁtability YoY movement\nGross Proﬁt\n4,891\nOther \noperating\n income\n82\nDistribution \nexpenses\n-442\nAdministration\n expenses\n-2,787 -1,132 -336 26 -90 212 -135 78\nOther \noperating \nexpenses\nFinance\n cost\nFinance \nincome\nChange in \nFV of \ninvestment \nproperty\nPBT Income Tax PAT\nRs.Mn\nIncrease in Income/Proﬁt\nIncrease in Expense \nIncrease in Gross Proﬁt\n-3,000\n-2,000\n-1,000\n0\n1,000\n2,000\n3,000\n4,000\n5,000\nFinancial capital\nNet finance cost \nNet finance cost declined by a notable 18% to Rs. 310 Mn, driven by finance income of Rs. 26 Mn and finance expense of Rs. 336 Mn. \nFinance expense posted a notable decline of 15%, benefiting rom the decline in market-wide interest rates and also decline in \ninterest bearing borrowings under the non-current liabilities category. \nProfitability\nReversing the loss trend of the prior years, the Group posted a welcoming pre-tax profit of Rs. 212 Mn. With income taxes of Rs. 135', chunk_type: 'financial_performance', index: 1}, {id: 'asian_hotels_and_properties_plc_financial_performance_2', content: 'Results from operating activities 7  612,456  92,966 308,624  786 \n Finance cost  (336,016)  (393,477)  (152,578)  (191,090)\n Finance income  25,800  13,609  7,274  9,807 \nNet Finance cost 8  (310,216)  (379,868)  (145,304)  (181,283)\nChange in fair value of investment property 14  (89,904)  154,393  (184,959) (59,909)\n Profit/(Loss) before tax  212,336  (132,509)  (21,639)  (240,406)\n Tax (expense)/reversal 9  (134,679)  (200,254)  (73,821)  5,139 \n Profit/(Loss) for the year  77,657  (332,763) (95,460)  (235,267)\nAttributable to:\nEquity holders of the parent  (20,310)  (277,589)  (95,460)  (235,267)\nNon-controlling interest 97,967  (55,174)  -  - \n 77,657  (332,763)  (95,460)  (235,267)\n Rs.  Rs.  Rs.  Rs. \n Loss per share - Basic/Diluted 10  (0.05)  (0.63)  (0.22)  (0.53)\n Dividend per share 11  -  -  -  - \nFigures in brackets indicate deductions.\nThe accounting policies and notes as set out in pages 168 to 212 form an integral part of these Financial Statements.', chunk_type: 'financial_performance', index: 2}, {id: 'asian_hotels_and_properties_plc_financial_performance_3', content: '42  | ASIAN HOTELS AND PROPERTIES PLC\nFinancial capital\nAsian Hotels and Properties PLC’s financial capital is represented by the amalgam of funds comprising shareholders’ funds and \nborrowings. The robust financial capital base has enabled the Group’s strategic goals and growth plans. \n Equity capital - Rs. 29.9 Bn\n Debt capital - Rs. 581 Mn\nNet assets value per share – Rs. 67.64 \nRole of financial capital in our value creation process\nInputs\nOptimisation  of cost of capital with the declining interest rates and deployment of funds in \nreturn enhancing ventures. Supporting business growth and operations with timely provision \nof funds by maintaining adequate liquidity \nValue \ncreated\nKey strategic \nfocus areas \nduring the FY\nRevenue, costs and profitability\nIn Rs.Mn\nFor the year ended 31 March \nGroup\n2024 2023 YoY change\nRevenue from contracts with customers 10,772 8,417 28%\nCost of sales (5,881 ) (5,008 ) 17%\nGross Profit 4,891 3,408 43%\nOther operating income 82 56 47%', chunk_type: 'financial_performance', index: 3}, {id: 'asian_hotels_and_properties_plc_financial_performance_4', content: 'Annual Report 2023/24 |  161\nOverview Operating Context \nand Strategy\nFinancial  \nInformation\nLeadership Corporate \nGovernance and Risk \nManagement\nManagement \nDiscussion and \nAnalysis\nSupplementary \nInformation\nGROUP COMPANY\nFor the year ended 31st March 2024 2023 2024 2023\nIn Rs.’000s Note\nRevenue from contracts with customers 5  10,771,758  8,416,558  6,309,914  4,847,533 \nCost of sales  (5,881,167) (5,008,403)  (3,446,755)  (2,885,705)\nGross Profit  4,890,591 3,408,155  2,863,159  1,961,828 \n Other operating income 6 82,053  55,711 72,153  54,732 \n Selling and Distribution expenses  (442,079)  (300,740)  (224,832)  (157,144)\n Administrative expenses  (2,786,533)  (2,204,387)  (1,783,912)  (1,397,003)\n Other operating expenses  (1,131,576)  (865,773)  (617,944)  (461,627)\nResults from operating activities 7  612,456  92,966 308,624  786 \n Finance cost  (336,016)  (393,477)  (152,578)  (191,090)\n Finance income  25,800  13,609  7,274  9,807', chunk_type: 'financial_performance', index: 4}] AS chunk MERGE (ch:Chunk {id: chunk.id}) ON CREATE SET ch.content = chunk.content, ch.chunk_type = chunk.chunk_type, ch.index = chunk.index;

// Query 79
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}) WITH c UNWIND ['asian_hotels_and_properties_plc_directors_and_executives_0', 'asian_hotels_and_properties_plc_directors_and_executives_1', 'asian_hotels_and_properties_plc_directors_and_executives_2', 'asian_hotels_and_properties_plc_directors_and_executives_3', 'asian_hotels_and_properties_plc_directors_and_executives_4', 'asian_hotels_and_properties_plc_financial_performance_0', 'asian_hotels_and_properties_plc_financial_performance_1', 'asian_hotels_and_properties_plc_financial_performance_2', 'asian_hotels_and_properties_plc_financial_performance_3', 'asian_hotels_and_properties_plc_financial_performance_4'] AS chunk_id MATCH (ch:Chunk {id: chunk_id}) MERGE (c)-[:HAS_CONTENT]->(ch);

// Total queries: 79
// Generated on: 2025-09-30T14:33:16.753349
