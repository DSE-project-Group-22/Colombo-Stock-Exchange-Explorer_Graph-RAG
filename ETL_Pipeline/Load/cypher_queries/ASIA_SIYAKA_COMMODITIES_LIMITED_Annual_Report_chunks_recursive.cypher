// Query 1
MERGE (c:Company {name: 'Asia Asset Finance PLC'}) ON CREATE SET c.id = 'asia_asset_finance_plc';

// Query 2
MERGE (c:Company {name: 'Asian Hotels and Properties PLC'}) ON CREATE SET c.id = 'asian_hotels_and_properties_plc';

// Query 3
MERGE (c:Company {name: 'Asia Capital PLC'}) ON CREATE SET c.id = 'asia_capital_plc';

// Query 4
MERGE (c:Company {name: 'Asia Siyaka Commodities Limited'}) ON CREATE SET c.id = 'asia_siyaka_commodities_limited';

// Query 5
MERGE (c:Company {name: 'John Keells Holdings PLC'}) ON CREATE SET c.id = 'john_keells_holdings_plc';

// Query 6
MERGE (c:Company {name: 'BDO Partners'}) ON CREATE SET c.id = 'bdo_partners';

// Query 7
MERGE (p:Person {name: 'V. A. Prasanth'}) ON CREATE SET p.id = 'v_a_prasanth';

// Query 8
MERGE (p:Person {name: 'G. Alexander'}) ON CREATE SET p.id = 'g_alexander';

// Query 9
MERGE (p:Person {name: 'K.G.K Pillai'}) ON CREATE SET p.id = 'k_g_k_pillai';

// Query 10
MERGE (p:Person {name: 'K. R. Bijimon'}) ON CREATE SET p.id = 'k_r_bijimon';

// Query 11
MERGE (p:Person {name: 'R. J. A. Gunawardena'}) ON CREATE SET p.id = 'r_j_a_gunawardena';

// Query 12
MERGE (p:Person {name: 'R. A. B. Basnayake'}) ON CREATE SET p.id = 'r_a_b_basnayake';

// Query 13
MERGE (p:Person {name: 'J. P. D. R. Jayasekara'}) ON CREATE SET p.id = 'j_p_d_r_jayasekara';

// Query 14
MERGE (p:Person {name: 'S. S. R. D. De Silva Gunasekera'}) ON CREATE SET p.id = 's_s_r_d_de_silva_gunasekera';

// Query 15
MERGE (m:Metric {name: 'Gross Revenue'}) ON CREATE SET m.id = 'gross_revenue', m.unit = 'Rs';

// Query 16
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 17
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 18
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 19
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Net Interest Margin'}) ON CREATE SET m.id = 'net_interest_margin', m.unit = '%';

// Query 21
MERGE (m:Metric {name: 'Return on Assets (ROA)'}) ON CREATE SET m.id = 'return_on_assets_(roa)', m.unit = '%';

// Query 22
MERGE (m:Metric {name: 'Earnings per share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Net Asset Value per share'}) ON CREATE SET m.id = 'net_asset_value_per_share', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Return on equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 25
MERGE (m:Metric {name: 'Debt to Equity ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = 'Times';

// Query 26
MERGE (m:Metric {name: 'Interest Cover'}) ON CREATE SET m.id = 'interest_cover', m.unit = 'Times';

// Query 27
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 28
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 29
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 30
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 31
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 32
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 33
MERGE (pr:Product {name: 'Lease & Hire-purchase'}) ON CREATE SET pr.id = 'lease_&_hire-purchase';

// Query 34
MERGE (pr:Product {name: 'Loans'}) ON CREATE SET pr.id = 'loans';

// Query 35
MERGE (pr:Product {name: 'Gold Loans'}) ON CREATE SET pr.id = 'gold_loans';

// Query 36
MERGE (pr:Product {name: 'Investment'}) ON CREATE SET pr.id = 'investment';

// Query 37
MATCH (p:Person {name: 'V. A. Prasanth'}), (c:Company {name: 'Asia Asset Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 38
MATCH (p:Person {name: 'G. Alexander'}), (c:Company {name: 'Asia Asset Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 39
MATCH (p:Person {name: 'K.G.K Pillai'}), (c:Company {name: 'Asia Asset Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 40
MATCH (p:Person {name: 'K. R. Bijimon'}), (c:Company {name: 'Asia Asset Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 41
MATCH (p:Person {name: 'R. J. A. Gunawardena'}), (c:Company {name: 'Asia Asset Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 42
MATCH (p:Person {name: 'R. A. B. Basnayake'}), (c:Company {name: 'Asia Asset Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 43
MATCH (p:Person {name: 'J. P. D. R. Jayasekara'}), (c:Company {name: 'Asia Asset Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 44
MATCH (p:Person {name: 'S. S. R. D. De Silva Gunasekera'}), (c:Company {name: 'Asia Asset Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31');

// Query 45
MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6604000000, r.year = 2024;

// Query 46
MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1432000000, r.year = 2024;

// Query 47
MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 373000000, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 344000000, r.year = 2024;

// Query 49
MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25843000000, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (m:Metric {name: 'Net Interest Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.94, r.year = 2024;

// Query 51
MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (m:Metric {name: 'Return on Assets (ROA)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.33, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (m:Metric {name: 'Earnings per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.77, r.year = 2024;

// Query 53
MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (m:Metric {name: 'Net Asset Value per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27.1, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (m:Metric {name: 'Return on equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.82, r.year = 2024;

// Query 55
MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (m:Metric {name: 'Debt to Equity ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.43, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.12, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10772000000, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78000000, r.year = 2024;

// Query 59
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 48381000000, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 61
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 62
MATCH (c:Company {name: 'Asian Hotels and Properties PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 63
MATCH (c:Company {name: 'Asia Capital PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 64
MATCH (c:Company {name: 'Asia Capital PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 65
MATCH (c:Company {name: 'Asia Capital PLC'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 66
MATCH (c:Company {name: 'Asia Capital PLC'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 67
MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (pr:Product {name: 'Lease & Hire-purchase'}) MERGE (c)-[:OFFERS]->(pr);

// Query 68
MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (pr:Product {name: 'Loans'}) MERGE (c)-[:OFFERS]->(pr);

// Query 69
MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (pr:Product {name: 'Gold Loans'}) MERGE (c)-[:OFFERS]->(pr);

// Query 70
MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (pr:Product {name: 'Investment'}) MERGE (c)-[:OFFERS]->(pr);

// Query 71
MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (a:Company {name: 'BDO Partners'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 72
UNWIND [{id: 'asia_siyaka_commodities_limited_directors_and_executives_0', content: 'foreseeable future. Accordingly, the Financial Statements are \nprepared based on the going concern concept.\nDIRECTORS who held office during the Year\nThe DIRECTORS of the Company during the year were as follows.\nDr. J. T. Sumathipala \nChairman (resigned with effect from 25th March 2024)\nMr. R. Radha \nManaging Director  \n(appointed with effect from 09th January 2024)\nMr. R.A.T.P Perera Executive Director/CEO  \n(resigned with effect from 31st January 2024)\nMr. D.A.S.D. A. Abeyesinhe \nNon-independent Non-Executive Director\nMr. A. D. Ross  \nIndependent Non-Executive Director\nMr. V. Siva Jr.  \nIndependent Non-Executive Director\nMr. S. S. Balasubramaniam    \nNon-Executive Director\nMr. D. Swarnasinghe \nIndependent Non-Executive Director', chunk_type: 'directors_and_executives', index: 0}, {id: 'asia_siyaka_commodities_limited_directors_and_executives_1', content: 'enquiry of the information available to the entity and making assumptions that are considered to be \nreasonable at the present point in time in the best judgment of the DIRECTORS.” \n“As per Section 40 (1) b the Companies Act No. 07 of 2007, we being the persons named in the  \nIntroductory Document , as  DIRECTORS of the Company do hereby declare that we  have read the \nprovisions of the  Act No. 7 of 2007 relating to the issue of this Document (where relevant), and those \nprovisions have been complied with to the best of our knowledge and belief.” \n \nSgd. Mr. W. D. N. H. Perera    Sgd. Mr. A. R. Cooke \nNon-Executive Chairman    President/Chief Executive Officer \n \n \nSgd. Mr. W. M. R. Iddawela    Sgd. Mr. D. J. Wedande \nSenior Vice President/Executive Director  SVP/Executive Director \n \n \nSgd. Mr. U. A. Sirisekera    Sgd. Mr. T. G. Thoradeniya \nSVP/Executive Director     Non - Executive Director \n \n \nSgd. Dr. K. I. M. Ranasoma    Sgd. K. A. K. P. Gunawardena', chunk_type: 'directors_and_executives', index: 1}, {id: 'asia_siyaka_commodities_limited_directors_and_executives_2', content: 'The DIRECTORS are subject to an annual \nassessment of their fitness and propriety \nto continue as DIRECTORS in terms of \nFinance Business Act Directions No.06 of \n2021. \nA brief profile of the DIRECTORS with their \nqualifications and experience is detailed \non page 84 to 90 of this report. \nFollowing were the DIRECTORS of the \nCompany during the year\n• Mr. V. A. Prasanth\n• Mr. G. Alexander\n• Mr. K.G.K Pillai\n• Mr. K. R. Bijimon\n• Mr. R. J. A. Gunawardena\n• Mr. R. A. B. Basnayake\n• Mr. J. P . D. R. Jayasekara\n• Mr. S. S. R. D. De Silva Gunasekera\nIndependence of DIRECTORS\nThe Board has carried out a determination \nof the independence or non-independence \nstatus of its non-executive DIRECTORS in \naccordance with the Section 7.10.3 of \nthe Continuous Listing Rules of the CSE. \nParticulars of independence of DIRECTORS \nare set out in pages 84 to 90 of this \nReport along with a brief profile of the \nDirector. \nBoard and Committee Meetings\nA number of Board meetings, Audit', chunk_type: 'directors_and_executives', index: 2}, {id: 'asia_siyaka_commodities_limited_directors_and_executives_3', content: 'WEBSITE\nhttps://asiaassetfinance.com/\nCOMPANY SECRETORY\nMs. Chalani Gonaduwa, \nNo. 76, Park Street, Colombo 02.\nCorporate Information\nCOMPANY REGISTRAS\nM/s Central Depository Systems (Private) \nLimited (CDS) of Ground Floor, M&M\nCenter 341/5, Kotte Road, Rajagiriya\nLAWYERS OF THE COMPANY\nShiranthi Gunawardena Associates \nNo. 22/1, Elliot Place\nColombo 08.\nCOMPANY AUDITORS - EXTERNAL BDO \nPARTNERS 65/2,\nSir Chiththapalam A Gardiner Mawatha, \nColombo 02.\nBOARD OF DIRECTORS AS AT  \n31 MARCH 2024\nMr. V. A. Prasanth\nMr. R. J. A. Gunawardena \nMr. S. S. R. D. De Silva Gunasekera\nMr. G. Alexander \nMr. K. R. Bijimon \nMr. K. G. K. Pillai\nMr. R. A. B. Basnayake \nMr. J. P . D. R. Jayasekara\nALTERNATE DIRECTORS\nMr. K.G.K. Pillai \n(Alternate director to Mr. K.R. Bijimon) Mr. \nK.G.K. Pillai has resigned from the position \nof alternate director to Mr. Bijimon with \neffect from 28th Feb 2024.\nMr. Basnayake, Senior Independent \nNon- Executive Director re-designated as', chunk_type: 'directors_and_executives', index: 3}, {id: 'asia_siyaka_commodities_limited_directors_and_executives_4', content: 'listed and unlisted companies (outside the Group) in Sri Lanka by each Director as of 31 March 2024.\nName of Director No. of Board Seats Held in Other Listed \nSri Lankan Companies\nBoard Seats Held  in Other Unlisted Sri \nLankan Companies\nExecutive \nCapacity\nNon-Executive \nCapacity\nMr. K N J Balendra - - -\nMr. J G A Cooray - - -\nMr. M R Svensson - - -\nMr. S Rajendra - - -\nMr. C L P Gunawardane - - -\nMr. A S De Zoysa - - A E C Properties (Pvt) Ltd, Associated Electrical \nCorporation Ltd, Econic (Private) Ltd. Ashan de \nZoysa & Co (Pvt) Ltd, Forest Sense (Pvt) Ltd, ADZ \nInsurance Brokers (Pvt) Ltd\nMr. J Durairatnam - - -\nMs. A Nanayakkara - Sampath Bank PLC Global Consulting Company, Sri Lanka Institute of \nDIRECTORS\nRemuneration\nThe Remuneration policy is determined by the Human Resources \n& Compensation Committee of the ultimate parent company , JKH. \nThe remuneration policy is designed to attract and retain highly \ncapable executives and to motivate the implementation of business', chunk_type: 'directors_and_executives', index: 4}] AS chunk MERGE (ch:Chunk {id: chunk.id}) ON CREATE SET ch.content = chunk.content, ch.chunk_type = chunk.chunk_type, ch.index = chunk.index;

// Query 73
MATCH (c:Company {name: 'Asia Siyaka Commodities Limited'}) WITH c UNWIND ['asia_siyaka_commodities_limited_directors_and_executives_0', 'asia_siyaka_commodities_limited_directors_and_executives_1', 'asia_siyaka_commodities_limited_directors_and_executives_2', 'asia_siyaka_commodities_limited_directors_and_executives_3', 'asia_siyaka_commodities_limited_directors_and_executives_4'] AS chunk_id MATCH (ch:Chunk {id: chunk_id}) MERGE (c)-[:HAS_CONTENT]->(ch);

// Total queries: 73
// Generated on: 2025-09-30T13:07:20.836732
