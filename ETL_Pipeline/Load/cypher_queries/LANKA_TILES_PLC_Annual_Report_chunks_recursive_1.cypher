// Create Companies, People, Sectors, and Products
MERGE (c:Company {name: 'Lanka Tiles PLC'}) ON CREATE SET c.id = 'lanka_tiles_plc', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';
MERGE (c:Company {name: 'P W Corporate Secretarial (Pvt) Ltd'}) ON CREATE SET c.id = 'p_w_corporate_secretarial_pvt_ltd';
MERGE (c:Company {name: 'Lanka Walltiles PLC'}) ON CREATE SET c.id = 'lanka_walltiles_plc';
MERGE (c:Company {name: 'Vallibel One PLC'}) ON CREATE SET c.id = 'vallibel_one_plc';
MERGE (c:Company {name: 'Beyond Paradise Collection Ltd'}) ON CREATE SET c.id = 'beyond_paradise_collection_ltd';
MERGE (c:Company {name: 'Lanka Swisstek (Pvt) Ltd'}) ON CREATE SET c.id = 'lanka_swisstek_pvt_ltd';
MERGE (c:Company {name: 'L T L Development Ltd'}) ON CREATE SET c.id = 'l_t_l_development_ltd';
MERGE (c:Company {name: 'Swisstek (Ceylon) PLC'}) ON CREATE SET c.id = 'swisstek_ceylon_plc';
MERGE (c:Company {name: 'CP Holdings Private Limited'}) ON CREATE SET c.id = 'cp_holdings_private_limited';
MERGE (c:Company {name: 'Ernst & Young'}) ON CREATE SET c.id = 'ernst_and_young';
MERGE (c:Company {name: 'KPMG'}) ON CREATE SET c.id = 'kpmg';
MERGE (p:Person {name: 'Mahendra Jayasekera'}) ON CREATE SET p.id = 'mahendra_jayasekera';
MERGE (p:Person {name: 'A M Weerasinghe'}) ON CREATE SET p.id = 'a_m_weerasinghe';
MERGE (p:Person {name: 'T G Thoradeniya'}) ON CREATE SET p.id = 't_g_thoradeniya';
MERGE (p:Person {name: 'S M Liyanage'}) ON CREATE SET p.id = 's_m_liyanage';
MERGE (p:Person {name: 'K A D B Perera'}) ON CREATE SET p.id = 'k_a_d_b_perera';
MERGE (p:Person {name: 'S Selliah'}) ON CREATE SET p.id = 's_selliah';
MERGE (p:Person {name: 'K D G Gunaratne'}) ON CREATE SET p.id = 'k_d_g_gunaratne';
MERGE (p:Person {name: 'A M L Page'}) ON CREATE SET p.id = 'a_m_l_page';
MERGE (p:Person {name: 'J A N R Adhihetty'}) ON CREATE SET p.id = 'j_a_n_r_adhihetty';
MERGE (p:Person {name: 'S R Jayaweera'}) ON CREATE SET p.id = 's_r_jayaweera';
MERGE (p:Person {name: 'J R Gunaratne'}) ON CREATE SET p.id = 'j_r_gunaratne';
MERGE (p:Person {name: 'Nandajith Somaratne'}) ON CREATE SET p.id = 'nandajith_somaratne';
MERGE (p:Person {name: 'Sajeewani Amarasinghe'}) ON CREATE SET p.id = 'sajeewani_amarasinghe';
MERGE (p:Person {name: 'Patrick Piyasena'}) ON CREATE SET p.id = 'patrick_piyasena';
MERGE (p:Person {name: 'Sumeda Madawela'}) ON CREATE SET p.id = 'sumeda_madawela';
MERGE (p:Person {name: 'Daminda Perera'}) ON CREATE SET p.id = 'daminda_perera';
MERGE (p:Person {name: 'Anura Ratnayake'}) ON CREATE SET p.id = 'anura_ratnayake';
MERGE (p:Person {name: 'Shirley Mahendra'}) ON CREATE SET p.id = 'shirley_mahendra';
MERGE (p:Person {name: 'Prasad Keerthiratna'}) ON CREATE SET p.id = 'prasad_keerthiratna';
MERGE (p:Person {name: 'B A M Thilakasiri'}) ON CREATE SET p.id = 'b_a_m_thilakasiri';
MERGE (p:Person {name: 'Athula Hewapathirana'}) ON CREATE SET p.id = 'athula_hewapathirana';
MERGE (p:Person {name: 'Kapila Ranatunga'}) ON CREATE SET p.id = 'kapila_ranatunga';
MERGE (p:Person {name: 'Kaushalya Sudasinghe'}) ON CREATE SET p.id = 'kaushalya_sudasinghe';
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';
MERGE (prod:Product {name: 'Glazed Ceramic and Porcelain Floor Tiles'}) ON CREATE SET prod.id = 'glazed_ceramic_and_porcelain_floor_tiles';
MERGE (prod:Product {name: 'Mosaic Tiles'}) ON CREATE SET prod.id = 'mosaic_tiles';
MERGE (prod:Product {name: 'Tiles and Associated Items'}) ON CREATE SET prod.id = 'tiles_and_associated_items';
MERGE (prod:Product {name: 'Tile Grout and Tile Mortar'}) ON CREATE SET prod.id = 'tile_grout_and_tile_mortar';

// Create all Metrics using UNWIND
UNWIND [
  {name: 'Revenue', id: 'revenue', unit: 'Rs'},
  {name: 'Total Comprehensive Income for the Year', id: 'total_comprehensive_income_for_the_year', unit: 'Rs'},
  {name: 'Gross Profits', id: 'gross_profits', unit: 'Rs'},
  {name: 'Earnings Before Interest and Tax (EBIT)', id: 'earnings_before_interest_and_tax_ebit', unit: 'Rs'},
  {name: 'Profit Before Tax', id: 'profit_before_tax', unit: 'Rs'},
  {name: 'Profit After Tax', id: 'profit_after_tax', unit: 'Rs'},
  {name: 'Profits Attributable to Shareholders', id: 'profits_attributable_to_shareholders', unit: 'Rs'},
  {name: 'Gross Profit Margin', id: 'gross_profit_margin', unit: '%'},
  {name: 'Net Profit Margin', id: 'net_profit_margin', unit: '%'},
  {name: 'Return on Assets (ROA)', id: 'return_on_assets_roa', unit: '%'},
  {name: 'Return on Equity (ROE)', id: 'return_on_equity_roe', unit: '%'},
  {name: 'Interest Cover', id: 'interest_cover', unit: 'Times'},
  {name: 'Total Assets', id: 'total_assets', unit: 'Rs'},
  {name: 'Capital Expenditure on PPE', id: 'capital_expenditure_on_ppe', unit: 'Rs'},
  {name: 'Debt', id: 'debt', unit: 'Rs'},
  {name: 'Other Liabilities', id: 'other_liabilities', unit: 'Rs'},
  {name: "Shareholders' Equity", id: 'shareholders_equity', unit: 'Rs'},
  {name: 'Interest Income', id: 'interest_income', unit: 'Rs'},
  {name: 'Inventory', id: 'inventory', unit: 'Rs'},
  {name: 'Cost of Sale', id: 'cost_of_sale', unit: 'Rs'},
  {name: 'Profit Per Employee', id: 'profit_per_employee', unit: 'Rs'},
  {name: 'Revenue Per Employee', id: 'revenue_per_employee', unit: 'Rs'},
  {name: 'Employee Retention Rate', id: 'employee_retention_rate', unit: '%'},
  {name: 'Staff Welfare Spend', id: 'staff_welfare_spend', unit: 'Rs'},
  {name: 'Water Consumption (Litres)', id: 'water_consumption_litres', unit: 'Count'},
  {name: 'Electricity Consumption (KWH)', id: 'electricity_consumption_kwh', unit: 'Count'},
  {name: 'Raw Material Consumption (MT)', id: 'raw_material_consumption_mt', unit: 'Count'},
  {name: 'Expenses on CSR Activities', id: 'expenses_on_csr_activities', unit: 'Rs'},
  {name: 'New Recruitments', id: 'new_recruitments', unit: 'Count'},
  {name: 'Training Activities (Hours)', id: 'training_activities_hours', unit: 'Count'},
  {name: 'Dividends', id: 'dividends', unit: 'Rs'},
  {name: 'Retained Profit for the Year', id: 'retained_profit_for_the_year', unit: 'Rs'},
  {name: 'Earnings Per Share - Basic', id: 'earnings_per_share_basic', unit: 'Rs'},
  {name: 'Dividend Payout Ratio', id: 'dividend_payout_ratio', unit: '%'},
  {name: 'Borrowings', id: 'borrowings', unit: 'Rs'},
  {name: 'Long Term Borrowings', id: 'long_term_borrowings', unit: 'Rs'},
  {name: 'Short Term Borrowings', id: 'short_term_borrowings', unit: 'Rs'},
  {name: "Shareholders' Fund", id: 'shareholders_fund', unit: 'Rs'},
  {name: 'Investments in Associates', id: 'investments_in_associates', unit: 'Rs'},
  {name: 'Cash and Equivalents', id: 'cash_and_equivalents', unit: 'Rs'},
  {name: 'Trade and Other Receivables', id: 'trade_and_other_receivables', unit: 'Rs'},
  {name: 'Liquidity Ratio', id: 'liquidity_ratio', unit: 'Ratio'},
  {name: 'Market Share', id: 'market_share', unit: '%'},
  {name: 'Investments in R&D', id: 'investments_in_r_and_d', unit: 'Rs'},
  {name: 'New Designs Introduced', id: 'new_designs_introduced', unit: 'Count'},
  {name: 'New Products Introduced', id: 'new_products_introduced', unit: 'Count'},
  {name: 'Gearing', id: 'gearing', unit: '%'},
  {name: 'Net Assets Per Share', id: 'net_assets_per_share', unit: 'Rs'}
] AS metricData
MERGE (m:Metric {name: metricData.name})
ON CREATE SET m.id = metricData.id, m.unit = metricData.unit;