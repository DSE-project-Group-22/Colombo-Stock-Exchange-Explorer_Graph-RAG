// Query 1
MERGE (c:Company {name: 'Brown and Company PLC'}) ON CREATE SET c.id = 'brown_and_company_plc', c.region = 'Sri Lanka';

// Query 2
MERGE (p:Person {name: 'Ishara Nanayakkara'}) ON CREATE SET p.id = 'ishara_nanayakkara';

// Query 3
MERGE (p:Person {name: 'Kalsha Amarasinghe'}) ON CREATE SET p.id = 'kalsha_amarasinghe';

// Query 4
MERGE (p:Person {name: 'Kapila Jayawardena'}) ON CREATE SET p.id = 'kapila_jayawardena';

// Query 5
MERGE (p:Person {name: 'Janaka de Silva'}) ON CREATE SET p.id = 'janaka_de_silva';

// Query 6
MERGE (p:Person {name: 'Tissa Bandaranayake'}) ON CREATE SET p.id = 'tissa_bandaranayake';

// Query 7
MERGE (p:Person {name: 'Danesh Abeyrathne'}) ON CREATE SET p.id = 'danesh_abeyrathne';

// Query 8
MERGE (p:Person {name: 'Thamotharampillai Sanakan'}) ON CREATE SET p.id = 'thamotharampillai_sanakan';

// Query 9
MERGE (c:Company {name: 'L O L C Corporate Services (Private) Limited'}) ON CREATE SET c.id = 'l_o_l_c_corporate_services_private_limited';

// Query 10
MERGE (c:Company {name: 'Deloitte Partners'}) ON CREATE SET c.id = 'deloitte_partners';

// Query 11
MERGE (c:Company {name: 'LOLC Technology Services Limited'}) ON CREATE SET c.id = 'lolc_technology_services_limited';

// Query 12
MERGE (c:Company {name: 'LOLC Holdings PLC'}) ON CREATE SET c.id = 'lolc_holdings_plc';

// Query 13
MERGE (c:Company {name: 'Colombo Dockyard'}) ON CREATE SET c.id = 'colombo_dockyard';

// Query 14
MERGE (c:Company {name: 'Browns Agri Solutions (Pvt) Ltd'}) ON CREATE SET c.id = 'browns_agri_solutions_pvt_ltd';

// Query 15
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 16
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 17
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 18
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 19
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 20
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 21
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 22
MERGE (s:Sector {name: 'Automobiles and Components'}) ON CREATE SET s.id = 'automobiles_and_components';

// Query 23
MERGE (s:Sector {name: 'Pharmaceuticals, Biotechnology, and Life Sciences'}) ON CREATE SET s.id = 'pharmaceuticals_biotechnology_and_life_sciences';

// Query 24
MERGE (s:Sector {name: 'Household and Personal Products'}) ON CREATE SET s.id = 'household_and_personal_products';

// Query 25
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 26
MERGE (p:Product {name: 'Drone Operated Agriculture Services'}) ON CREATE SET p.id = 'drone_operated_agriculture_services';

// Query 27
MERGE (p:Product {name: 'New Construction Pipe System Installation'}) ON CREATE SET p.id = 'new_construction_pipe_system_installation';

// Query 28
MERGE (p:Product {name: 'Wholesale Goods'}) ON CREATE SET p.id = 'wholesale_goods';

// Query 29
MERGE (p:Product {name: 'Agrochemical Distribution'}) ON CREATE SET p.id = 'agrochemical_distribution';

// Query 30
MERGE (p:Product {name: 'Technical and Farm Management Support Programme'}) ON CREATE SET p.id = 'technical_and_farm_management_support_programme';

// Query 31
MERGE (p:Product {name: 'Farmer Education Programmes'}) ON CREATE SET p.id = 'farmer_education_programmes';

// Query 32
MERGE (p:Product {name: 'Third-Party Lab Facilities'}) ON CREATE SET p.id = 'third_party_lab_facilities';

// Query 33
MERGE (p:Product {name: 'Consultancy for Farmers'}) ON CREATE SET p.id = 'consultancy_for_farmers';

// Query 34
MERGE (p:Product {name: 'Quality Certification Consultation for Chicken & Eggs'}) ON CREATE SET p.id = 'quality_certification_consultation_for_chicken_eggs';

// Query 35
MERGE (p:Product {name: 'Vaccination Teams with Consultation and Audit Services'}) ON CREATE SET p.id = 'vaccination_teams_with_consultation_and_audit_services';

// Query 36
MERGE (m:Metric {name: 'Gross Revenue'}) ON CREATE SET m.id = 'gross_revenue', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'EBIT'}) ON CREATE SET m.id = 'ebit', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Profit Attributable to Equity Holders'}) ON CREATE SET m.id = 'profit_attributable_to_equity_holders', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Shareholders Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Market Capitalisation'}) ON CREATE SET m.id = 'market_capitalisation', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Retained Earnings'}) ON CREATE SET m.id = 'retained_earnings', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Gross Profit Percentage'}) ON CREATE SET m.id = 'gross_profit_percentage', m.unit = '%';

// Query 46
MERGE (m:Metric {name: 'Net Cash Flow from Operating Activities'}) ON CREATE SET m.id = 'net_cash_flow_from_operating_activities', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Net Cash Flow from Investing Activities'}) ON CREATE SET m.id = 'net_cash_flow_from_investing_activities', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Net Cash Flow from Financing Activities'}) ON CREATE SET m.id = 'net_cash_flow_from_financing_activities', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Net Increase/Decrease in Cash and Cash Equivalents'}) ON CREATE SET m.id = 'net_increase_decrease_in_cash_and_cash_equivalents', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Interest Expense'}) ON CREATE SET m.id = 'interest_expense', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Profit for the Year'}) ON CREATE SET m.id = 'profit_for_the_year', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Net Debt'}) ON CREATE SET m.id = 'net_debt', m.unit = 'Rs';

// Query 54
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 55
MERGE (m:Metric {name: 'Net Debt to Equity Ratio'}) ON CREATE SET m.id = 'net_debt_to_equity_ratio', m.unit = '%';

// Query 56
MERGE (m:Metric {name: 'Interest Cover'}) ON CREATE SET m.id = 'interest_cover', m.unit = 'Times';

// Query 57
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 58
MERGE (m:Metric {name: 'Debt to Equity Ratio'}) ON CREATE SET m.id = 'debt_to_equity_ratio', m.unit = '%';

// Query 59
MERGE (m:Metric {name: 'Number of Shares'}) ON CREATE SET m.id = 'number_of_shares', m.unit = 'Count';

// Query 60
MERGE (m:Metric {name: 'Company Profit for the Year'}) ON CREATE SET m.id = 'company_profit_for_the_year', m.unit = 'Rs';

// Query 61
MERGE (m:Metric {name: 'Cost of Sales'}) ON CREATE SET m.id = 'cost_of_sales', m.unit = 'Rs';

// Query 62
MERGE (m:Metric {name: 'Number of Employees'}) ON CREATE SET m.id = 'number_of_employees', m.unit = 'Count';

// Query 63
MERGE (m:Metric {name: 'Market Value Per Share'}) ON CREATE SET m.id = 'market_value_per_share', m.unit = 'Rs';

// Query 64
MERGE (m:Metric {name: 'Number of Shareholders'}) ON CREATE SET m.id = 'number_of_shareholders', m.unit = 'Count';

// Query 65
MATCH (p:Person {name: 'Ishara Nanayakkara'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Chairman', r.as_of = date('2024-03-31');

// Query 66
MATCH (p:Person {name: 'Kalsha Amarasinghe'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 67
MATCH (p:Person {name: 'Kapila Jayawardena'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 68
MATCH (p:Person {name: 'Janaka de Silva'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Non-Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 69
MATCH (p:Person {name: 'Tissa Bandaranayake'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 70
MATCH (p:Person {name: 'Danesh Abeyrathne'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Executive Director', r.as_of = date('2024-03-31');

// Query 71
MATCH (p:Person {name: 'Thamotharampillai Sanakan'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Executive Director', r.as_of = date('2024-03-31');

// Query 72
MATCH (cs:Company {name: 'L O L C Corporate Services (Private) Limited'}), (c:Company {name: 'Brown and Company PLC'}) MERGE (cs)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Company Secretary', r.as_of = date('2024-03-31');

// Query 73
MATCH (c:Company {name: 'Brown and Company PLC'}), (a:Company {name: 'Deloitte Partners'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 74
MATCH (p:Company {name: 'LOLC Holdings PLC'}), (c:Company {name: 'LOLC Technology Services Limited'}) MERGE (p)-[:OWNS]->(c);

// Query 75
MATCH (p:Company {name: 'Brown and Company PLC'}), (c:Company {name: 'Browns Agri Solutions (Pvt) Ltd'}) MERGE (p)-[:OWNS]->(c);

// Query 76
MATCH (c:Company {name: 'Brown and Company PLC'}), (p:Product {name: 'Drone Operated Agriculture Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'Brown and Company PLC'}), (p:Product {name: 'New Construction Pipe System Installation'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'Brown and Company PLC'}), (p:Product {name: 'Wholesale Goods'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Brown and Company PLC'}), (p:Product {name: 'Agrochemical Distribution'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'Brown and Company PLC'}), (p:Product {name: 'Technical and Farm Management Support Programme'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'Brown and Company PLC'}), (p:Product {name: 'Farmer Education Programmes'}) MERGE (c)-[:OFFERS]->(p);

// Query 82
MATCH (c:Company {name: 'Brown and Company PLC'}), (p:Product {name: 'Third-Party Lab Facilities'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Brown and Company PLC'}), (p:Product {name: 'Consultancy for Farmers'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Brown and Company PLC'}), (p:Product {name: 'Quality Certification Consultation for Chicken & Eggs'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
MATCH (c:Company {name: 'Brown and Company PLC'}), (p:Product {name: 'Vaccination Teams with Consultation and Audit Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Brown and Company PLC'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 87
MATCH (c:Company {name: 'Brown and Company PLC'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 88
MATCH (c:Company {name: 'Brown and Company PLC'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 89
MATCH (c:Company {name: 'Brown and Company PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 90
MATCH (c:Company {name: 'Brown and Company PLC'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 91
MATCH (c:Company {name: 'Brown and Company PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 92
MATCH (c:Company {name: 'Brown and Company PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 93
MATCH (c:Company {name: 'Brown and Company PLC'}), (s:Sector {name: 'Automobiles and Components'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 94
MATCH (c:Company {name: 'Brown and Company PLC'}), (s:Sector {name: 'Pharmaceuticals, Biotechnology, and Life Sciences'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 95
MATCH (c:Company {name: 'Brown and Company PLC'}), (s:Sector {name: 'Household and Personal Products'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 96
MATCH (c:Company {name: 'Brown and Company PLC'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 97
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 80609000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 98
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 72652000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 99
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 50304000000.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 100
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 29391000000.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 101
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 20439000000.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 102
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'EBIT'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 48309000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 103
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'EBIT'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 35779000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 104
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'EBIT'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 43137000000.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 105
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'EBIT'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2799000000.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 106
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'EBIT'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4448000000.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 107
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6509000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 108
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -11108000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 109
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 30304000000.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 110
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2783000000.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 111
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -970000000.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 112
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -8531000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 113
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -12528000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 114
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 29747000000.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 115
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -3344000000.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 116
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1515000000.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 117
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Profit Attributable to Equity Holders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2382000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 118
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Profit Attributable to Equity Holders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6230000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 119
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Profit Attributable to Equity Holders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 21589000000.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 120
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Profit Attributable to Equity Holders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -16000000.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 121
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Profit Attributable to Equity Holders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3620000000.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 122
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 70191000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 123
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 79104000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 124
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 85208000000.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 125
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 46888000000.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 126
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 30257000000.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 127
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 563371000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 128
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 466854000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 129
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 415402000000.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 130
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 195762000000.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 131
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 147673000000.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 132
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Market Capitalisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 23389000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 133
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Market Capitalisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 25409000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 134
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Market Capitalisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 28385000000.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 135
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Market Capitalisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 33006000000.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 136
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Market Capitalisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8930000000.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 137
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 33838000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 138
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 36572000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 139
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 43154000000.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 140
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19985000000.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 141
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16520000000.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 142
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Gross Profit Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 23.03, r.year = 2024, r.as_of = date('2024-03-31');

// Query 143
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Gross Profit Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 28.55, r.year = 2023, r.as_of = date('2023-03-31');

// Query 144
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Gross Profit Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 23.33, r.year = 2022, r.as_of = date('2022-03-31');

// Query 145
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Gross Profit Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 24.84, r.year = 2021, r.as_of = date('2021-03-31');

// Query 146
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Gross Profit Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 24.37, r.year = 2020, r.as_of = date('2020-03-31');

// Query 147
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Cash Flow from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12085701.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 148
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Cash Flow from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16792709.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 149
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Cash Flow from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 28472522.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 150
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Cash Flow from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -985535.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 151
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Cash Flow from Operating Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8922656.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 152
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Cash Flow from Investing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -7387628.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 153
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Cash Flow from Investing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -9756432.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 154
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Cash Flow from Investing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -61126632.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 155
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Cash Flow from Investing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6311442.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 156
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Cash Flow from Investing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -13426033.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 157
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Cash Flow from Financing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1606215.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 158
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Cash Flow from Financing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -8139033.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 159
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Cash Flow from Financing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 34305383.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 160
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Cash Flow from Financing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9499726.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 161
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Cash Flow from Financing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5422655.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 162
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Increase/Decrease in Cash and Cash Equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3091858.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 163
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Increase/Decrease in Cash and Cash Equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1102756.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 164
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Increase/Decrease in Cash and Cash Equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1651273.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 165
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Increase/Decrease in Cash and Cash Equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2202748.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 166
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Increase/Decrease in Cash and Cash Equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 919278.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 167
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11.2, r.year = 2024, r.as_of = date('2024-03-31');

// Query 168
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -29.3, r.year = 2023, r.as_of = date('2023-03-31');

// Query 169
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 101.54, r.year = 2022, r.as_of = date('2022-03-31');

// Query 170
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.08, r.year = 2021, r.as_of = date('2021-03-31');

// Query 171
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 17.03, r.year = 2020, r.as_of = date('2020-03-31');

// Query 172
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Interest Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 54818209000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 173
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Interest Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 46886564000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 174
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Profit for the Year'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -8530675000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 175
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Profit for the Year'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -12527509000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 176
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 86602494000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 177
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Debt'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 93365608000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 178
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 188743671000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 179
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 172642422000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 180
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 46.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 181
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Net Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 54.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 182
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.88, r.year = 2024, r.as_of = date('2024-03-31');

// Query 183
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Interest Cover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.76, r.year = 2023, r.as_of = date('2023-03-31');

// Query 184
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.33, r.year = 2024, r.as_of = date('2024-03-31');

// Query 185
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.39, r.year = 2023, r.as_of = date('2023-03-31');

// Query 186
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 56.32, r.year = 2024, r.as_of = date('2024-03-31');

// Query 187
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Debt to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 62.07, r.year = 2023, r.as_of = date('2023-03-31');

// Query 188
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Number of Shares'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 212625.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 189
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Number of Shares'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 212625.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 190
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Company Profit for the Year'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -4246642000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 191
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Company Profit for the Year'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1429851000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 192
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Cost of Sales'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -62047498000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 193
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Cost of Sales'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -51910127000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 194
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Number of Employees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 625, r.year = 2024, r.as_of = date('2024-03-31');

// Query 195
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Number of Employees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 597, r.year = 2023, r.as_of = date('2023-03-31');

// Query 196
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Market Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 110.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 197
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Market Value Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 119.5, r.year = 2023, r.as_of = date('2023-03-31');

// Query 198
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Number of Shareholders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4806, r.year = 2024, r.as_of = date('2024-03-31');

// Query 199
MATCH (c:Company {name: 'Brown and Company PLC'}), (m:Metric {name: 'Number of Shareholders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4954, r.year = 2023, r.as_of = date('2023-03-31');

// Total queries: 199
// Generated on: 2025-10-02T18:17:37.407895
