// Query 1
MERGE (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) ON CREATE SET c.id = 'bansei_royal_resorts_hikkaduwa_plc', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange of Sri Lanka';

// Query 2
MERGE (c:Company {name: 'Bansei Securities Co Limited'}) ON CREATE SET c.id = 'bansei_securities_co_limited', c.region = 'Japan';

// Query 3
MERGE (c:Company {name: 'Bansei Holdings Co Limited'}) ON CREATE SET c.id = 'bansei_holdings_co_limited', c.region = 'Japan';

// Query 4
MERGE (c:Company {name: 'Ernst & Young'}) ON CREATE SET c.id = 'ernst_and_young';

// Query 5
MERGE (p:Person {name: 'T de Zoysa'}) ON CREATE SET p.id = 't_de_zoysa';

// Query 6
MERGE (p:Person {name: 'T Murakami'}) ON CREATE SET p.id = 't_murakami';

// Query 7
MERGE (p:Person {name: 'H Ota'}) ON CREATE SET p.id = 'h_ota';

// Query 8
MERGE (p:Person {name: 'J V W Malawana'}) ON CREATE SET p.id = 'j_v_w_malawana';

// Query 9
MERGE (p:Person {name: 'G C A De Silva'}) ON CREATE SET p.id = 'g_c_a_de_silva';

// Query 10
MERGE (p:Person {name: 'C S J Perera'}) ON CREATE SET p.id = 'c_s_j_perera';

// Query 11
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 12
MERGE (prod:Product {name: 'food'}) ON CREATE SET prod.id = 'food';

// Query 13
MERGE (prod:Product {name: 'beverage'}) ON CREATE SET prod.id = 'beverage';

// Query 14
MERGE (prod:Product {name: 'lodging'}) ON CREATE SET prod.id = 'lodging';

// Query 15
MERGE (prod:Product {name: 'hospitality industry related services'}) ON CREATE SET prod.id = 'hospitality_industry_related_services';

// Query 16
MERGE (m:Metric {name: 'Turnover'}) ON CREATE SET m.id = 'turnover', m.unit = 'Rs';

// Query 17
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 18
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 19
MERGE (m:Metric {name: 'Shareholders Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 20
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Company Employment'}) ON CREATE SET m.id = 'company_employment', m.unit = 'Count';

// Query 22
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Net Assets Per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Market Value (Closing Price)'}) ON CREATE SET m.id = 'market_value_closing_price', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Highest Price'}) ON CREATE SET m.id = 'highest_price', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Lowest Price'}) ON CREATE SET m.id = 'lowest_price', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Gross Profit Percentage'}) ON CREATE SET m.id = 'gross_profit_percentage', m.unit = '%';

// Query 29
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 30
MERGE (m:Metric {name: 'Dividend Payout Percentage'}) ON CREATE SET m.id = 'dividend_payout_percentage', m.unit = '%';

// Query 31
MERGE (m:Metric {name: 'Revenue from Contract with Customers'}) ON CREATE SET m.id = 'revenue_from_contract_with_customers', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Cost of Sales'}) ON CREATE SET m.id = 'cost_of_sales', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Other Income'}) ON CREATE SET m.id = 'other_income', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Administrative Expenses'}) ON CREATE SET m.id = 'administrative_expenses', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Sales and Marketing Expenses'}) ON CREATE SET m.id = 'sales_and_marketing_expenses', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Finance Income'}) ON CREATE SET m.id = 'finance_income', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Tax Charge'}) ON CREATE SET m.id = 'tax_charge', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Float Adjusted Market Capitalization'}) ON CREATE SET m.id = 'float_adjusted_market_capitalization', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Market Capitalization'}) ON CREATE SET m.id = 'market_capitalization', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Public Holding Percentage'}) ON CREATE SET m.id = 'public_holding_percentage', m.unit = '%';

// Query 43
MERGE (m:Metric {name: 'Total Number of Public Shareholders'}) ON CREATE SET m.id = 'total_number_of_public_shareholders', m.unit = 'Count';

// Query 44
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Number of Ordinary Shares'}) ON CREATE SET m.id = 'number_of_ordinary_shares', m.unit = 'Count';

// Query 46
MERGE (m:Metric {name: 'Total Registered Shareholders'}) ON CREATE SET m.id = 'total_registered_shareholders', m.unit = 'Count';

// Query 47
MATCH (parent:Company {name: 'Bansei Securities Co Limited'}), (child:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (parent)-[:OWNS]->(child);

// Query 48
MATCH (parent:Company {name: 'Bansei Holdings Co Limited'}), (child:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (parent)-[:OWNS]->(child);

// Query 49
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (auditor:Company {name: 'Ernst & Young'}) MERGE (c)-[:AUDITED_BY {year: 2024}]->(auditor);

// Query 50
MATCH (p:Person {name: 'T de Zoysa'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 51
MATCH (p:Person {name: 'T de Zoysa'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman, Related Party Transaction Review Committee', r.as_of = date('2024-03-31');

// Query 52
MATCH (p:Person {name: 'T de Zoysa'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member, Audit Committee', r.as_of = date('2024-03-31');

// Query 53
MATCH (p:Person {name: 'T de Zoysa'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member, Remuneration Committee', r.as_of = date('2024-03-31');

// Query 54
MATCH (p:Person {name: 'T Murakami'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2024-03-31');

// Query 55
MATCH (p:Person {name: 'T Murakami'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman, Remuneration Committee', r.as_of = date('2024-03-31');

// Query 56
MATCH (p:Person {name: 'T Murakami'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member, Audit Committee', r.as_of = date('2024-03-31');

// Query 57
MATCH (p:Person {name: 'H Ota'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Executive', r.as_of = date('2024-03-31');

// Query 58
MATCH (p:Person {name: 'H Ota'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'CEO', r.as_of = date('2024-03-31');

// Query 59
MATCH (p:Person {name: 'J V W Malawana'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2024-03-31');

// Query 60
MATCH (p:Person {name: 'J V W Malawana'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 662176, r.as_of = date('2024-03-31');

// Query 61
MATCH (p:Person {name: 'G C A De Silva'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Non-Executive', r.as_of = date('2024-03-31');

// Query 62
MATCH (p:Person {name: 'G C A De Silva'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman, Audit Committee', r.as_of = date('2024-03-31');

// Query 63
MATCH (p:Person {name: 'G C A De Silva'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member, Related Party Transaction Review Committee', r.as_of = date('2024-03-31');

// Query 64
MATCH (p:Person {name: 'C S J Perera'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-03-31');

// Query 65
MATCH (p:Person {name: 'C S J Perera'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member, Audit Committee', r.as_of = date('2024-03-31');

// Query 66
MATCH (p:Person {name: 'C S J Perera'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member, Related Party Transaction Review Committee', r.as_of = date('2024-03-31');

// Query 67
MATCH (p:Person {name: 'C S J Perera'}), (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member, Remuneration Committee', r.as_of = date('2024-03-31');

// Query 68
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 69
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (prod:Product {name: 'food'}) MERGE (c)-[:OFFERS]->(prod);

// Query 70
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (prod:Product {name: 'beverage'}) MERGE (c)-[:OFFERS]->(prod);

// Query 71
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (prod:Product {name: 'lodging'}) MERGE (c)-[:OFFERS]->(prod);

// Query 72
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (prod:Product {name: 'hospitality industry related services'}) MERGE (c)-[:OFFERS]->(prod);

// Query 73
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Turnover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 115915482.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 74
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Turnover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 98572861.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 75
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Turnover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 51901508.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 76
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Turnover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9498728.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 77
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Turnover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 60143680.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 78
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 32310694.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 79
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 26089816.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 80
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1275425.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 81
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -26192873.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 82
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4490289.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 83
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 22082541.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 84
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16472022.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 85
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 821537.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 86
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -23312102.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 87
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3548802.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 88
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 294482806.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 89
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 283745630.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 90
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 267103713.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 91
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 265512500.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 92
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 291700108.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 93
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 334473867.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 94
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 311314964.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 95
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 280753840.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 96
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 280080544.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 97
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 309548628.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 98
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Company Employment'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 38, r.year = 2024, r.as_of = date('2024-03-31');

// Query 99
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Company Employment'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 38, r.year = 2023, r.as_of = date('2023-03-31');

// Query 100
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Company Employment'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 38, r.year = 2022, r.as_of = date('2022-03-31');

// Query 101
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Company Employment'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 35, r.year = 2021, r.as_of = date('2021-03-31');

// Query 102
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Company Employment'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 45, r.year = 2020, r.as_of = date('2020-03-31');

// Query 103
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.41, r.year = 2024, r.as_of = date('2024-03-31');

// Query 104
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.31, r.year = 2023, r.as_of = date('2023-03-31');

// Query 105
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.02, r.year = 2022, r.as_of = date('2022-03-31');

// Query 106
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.43, r.year = 2021, r.as_of = date('2021-03-31');

// Query 107
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.07, r.year = 2020, r.as_of = date('2020-03-31');

// Query 108
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 109
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.20, r.year = 2023, r.as_of = date('2023-03-31');

// Query 110
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 111
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 112
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.05, r.year = 2020, r.as_of = date('2020-03-31');

// Query 113
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.48, r.year = 2024, r.as_of = date('2024-03-31');

// Query 114
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.28, r.year = 2023, r.as_of = date('2023-03-31');

// Query 115
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.97, r.year = 2022, r.as_of = date('2022-03-31');

// Query 116
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.94, r.year = 2021, r.as_of = date('2021-03-31');

// Query 117
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.43, r.year = 2020, r.as_of = date('2020-03-31');

// Query 118
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Market Value (Closing Price)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12.90, r.year = 2024, r.as_of = date('2024-03-31');

// Query 119
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Market Value (Closing Price)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11.30, r.year = 2023, r.as_of = date('2023-03-31');

// Query 120
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Market Value (Closing Price)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10.60, r.year = 2022, r.as_of = date('2022-03-31');

// Query 121
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Market Value (Closing Price)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9.00, r.year = 2021, r.as_of = date('2021-03-31');

// Query 122
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Market Value (Closing Price)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.00, r.year = 2020, r.as_of = date('2020-03-31');

// Query 123
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Highest Price'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13.70, r.year = 2024, r.as_of = date('2024-03-31');

// Query 124
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Highest Price'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12.90, r.year = 2023, r.as_of = date('2023-03-31');

// Query 125
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Highest Price'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14.00, r.year = 2022, r.as_of = date('2022-03-31');

// Query 126
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Highest Price'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10.80, r.year = 2021, r.as_of = date('2021-03-31');

// Query 127
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Highest Price'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7.90, r.year = 2020, r.as_of = date('2020-03-31');

// Query 128
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Lowest Price'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.50, r.year = 2024, r.as_of = date('2024-03-31');

// Query 129
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Lowest Price'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7.00, r.year = 2023, r.as_of = date('2023-03-31');

// Query 130
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Lowest Price'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7.00, r.year = 2022, r.as_of = date('2022-03-31');

// Query 131
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Lowest Price'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.80, r.year = 2021, r.as_of = date('2021-03-31');

// Query 132
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Lowest Price'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.90, r.year = 2020, r.as_of = date('2020-03-31');

// Query 133
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Gross Profit Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 79.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 134
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Gross Profit Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 78.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 135
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Gross Profit Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 79.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 136
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Gross Profit Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 65.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 137
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Gross Profit Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 85.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 138
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9.14, r.year = 2024, r.as_of = date('2024-03-31');

// Query 139
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.36, r.year = 2023, r.as_of = date('2023-03-31');

// Query 140
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.76, r.year = 2022, r.as_of = date('2022-03-31');

// Query 141
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.42, r.year = 2021, r.as_of = date('2021-03-31');

// Query 142
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10.94, r.year = 2020, r.as_of = date('2020-03-31');

// Query 143
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Dividend Payout Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 144
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Dividend Payout Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 65.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 145
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Dividend Payout Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 146
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Dividend Payout Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 147
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Dividend Payout Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 76.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 148
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Revenue from Contract with Customers'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 115915482.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 149
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Revenue from Contract with Customers'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 98572861.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 150
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Cost of Sales'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -24488448.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 151
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Cost of Sales'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -21692428.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 152
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 91427034.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 153
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 76880433.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 154
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 78874.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 155
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 514384.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 156
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Administrative Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -72595367.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 157
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Administrative Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -59063114.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 158
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Sales and Marketing Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -3552161.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 159
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Sales and Marketing Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2404642.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 160
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 15358380.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 161
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 15927061.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 162
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16952314.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 163
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Finance Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10162755.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 164
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Tax Charge'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -10228153.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 165
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Tax Charge'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -9617794.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 166
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Float Adjusted Market Capitalization'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 69309120.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 167
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Market Capitalization'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 693091200.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 168
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Public Holding Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 169
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Public Holding Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 170
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Public Holding Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 171
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Public Holding Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 172
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Public Holding Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 173
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Total Number of Public Shareholders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 720, r.year = 2024, r.as_of = date('2024-03-31');

// Query 174
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 272280000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 175
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Number of Ordinary Shares'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 53728000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 176
MATCH (c:Company {name: 'Bansei Royal Resorts Hikkaduwa PLC'}), (m:Metric {name: 'Total Registered Shareholders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 724, r.as_of = date('2024-03-31');

// Total queries: 176
// Generated on: 2025-10-02T18:30:25.282148
