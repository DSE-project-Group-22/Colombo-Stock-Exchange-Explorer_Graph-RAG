// Query 1
MERGE (c:Company {name: 'E M L Consultants PLC'}) ON CREATE SET c.id = 'e_m_l_consultants_plc';

// Query 2
MERGE (c:Company {name: 'Dipped Products PLC'}) ON CREATE SET c.id = 'dipped_products_plc';

// Query 3
MERGE (c:Company {name: 'Commercial Credit and Finance PLC'}) ON CREATE SET c.id = 'commercial_credit_and_finance_plc';

// Query 4
MERGE (c:Company {name: 'eChannelling PLC'}) ON CREATE SET c.id = 'echannelling_plc';

// Query 5
MERGE (c:Company {name: 'Ceylon Tea Brokers PLC'}) ON CREATE SET c.id = 'ceylon_tea_brokers_plc';

// Query 6
MERGE (c:Company {name: 'Chrissworld PLC'}) ON CREATE SET c.id = 'chrissworld_plc';

// Query 7
MERGE (c:Company {name: 'Colombo Investment Trust PLC'}) ON CREATE SET c.id = 'colombo_investment_trust_plc';

// Query 8
MERGE (c:Company {name: 'Citizens Development Business Finance PLC'}) ON CREATE SET c.id = 'citizens_development_business_finance_plc';

// Query 9
MERGE (c:Company {name: 'Dialog'}) ON CREATE SET c.id = 'dialog';

// Query 10
MERGE (c:Company {name: 'CDPLC'}) ON CREATE SET c.id = 'cdplc';

// Query 11
MERGE (c:Company {name: 'Asian Hotels and Properties PLC'}) ON CREATE SET c.id = 'asian_hotels_and_properties_plc';

// Query 12
MERGE (c:Company {name: 'Aitken Spence Group'}) ON CREATE SET c.id = 'aitken_spence_group';

// Query 13
MERGE (c:Company {name: 'Ambeon Capital PLC'}) ON CREATE SET c.id = 'ambeon_capital_plc';

// Query 14
MERGE (p:Person {name: 'H.N.J. Chandrasekara'}) ON CREATE SET p.id = 'h_n_j_chandrasekara';

// Query 15
MERGE (p:Person {name: 'K.A.K. Jayatilake'}) ON CREATE SET p.id = 'k_a_k_jayatilake';

// Query 16
MERGE (p:Person {name: 'E.T. De Zoysa'}) ON CREATE SET p.id = 'e_t_de_zoysa';

// Query 17
MERGE (p:Person {name: 'R.S.A. Wickramasingha'}) ON CREATE SET p.id = 'r_s_a_wickramasingha';

// Query 18
MERGE (p:Person {name: 'D.S. Wickramasingha'}) ON CREATE SET p.id = 'd_s_wickramasingha';

// Query 19
MERGE (p:Person {name: 'N.K. Wickramasingha'}) ON CREATE SET p.id = 'n_k_wickramasingha';

// Query 20
MERGE (p:Person {name: 'L.J.M. De Silva'}) ON CREATE SET p.id = 'l_j_m_de_silva';

// Query 21
MERGE (p:Person {name: 'M.U.S.G. Thilakawardana'}) ON CREATE SET p.id = 'm_u_s_g_thilakawardana';

// Query 22
MERGE (p:Person {name: 'D.M.A. Kulasooriya'}) ON CREATE SET p.id = 'd_m_a_kulasooriya';

// Query 23
MERGE (p:Person {name: 'M.S. Nanayakkara'}) ON CREATE SET p.id = 'm_s_nanayakkara';

// Query 24
MERGE (p:Person {name: 'A. Rajaratnam'}) ON CREATE SET p.id = 'a_rajaratnam';

// Query 25
MERGE (p:Person {name: 'S.D.R. Arudpragasam'}) ON CREATE SET p.id = 's_d_r_arudpragasam';

// Query 26
MERGE (p:Person {name: 'J.M. Swaminathan'}) ON CREATE SET p.id = 'j_m_swaminathan';

// Query 27
MERGE (p:Person {name: 'A.M. de S. Jayaratne'}) ON CREATE SET p.id = 'a_m_de_s_jayaratne';

// Query 28
MERGE (p:Person {name: 'S. Rajaratnam'}) ON CREATE SET p.id = 's_rajaratnam';

// Query 29
MERGE (p:Person {name: 'Anushman Rajaratnam'}) ON CREATE SET p.id = 'anushman_rajaratnam';

// Query 30
MERGE (p:Person {name: 'R.M.M.J. Ratnayake'}) ON CREATE SET p.id = 'r_m_m_j_ratnayake';

// Query 31
MERGE (p:Person {name: 'A.S. Azariah'}) ON CREATE SET p.id = 'a_s_azariah';

// Query 32
MERGE (p:Person {name: 'A.K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 33
MERGE (p:Person {name: 'S. Selliah'}) ON CREATE SET p.id = 's_selliah';

// Query 34
MERGE (p:Person {name: 'K.M.P. Karunaratne'}) ON CREATE SET p.id = 'k_m_p_karunaratne';

// Query 35
MERGE (p:Person {name: 'G.L.H. Premaratne'}) ON CREATE SET p.id = 'g_l_h_premaratne';

// Query 36
MERGE (p:Person {name: 'H.K. Kaimal'}) ON CREATE SET p.id = 'h_k_kaimal';

// Query 37
MERGE (p:Person {name: 'S.A.B. Rajapaksa'}) ON CREATE SET p.id = 's_a_b_rajapaksa';

// Query 38
MERGE (p:Person {name: 'V. Bali'}) ON CREATE SET p.id = 'v_bali';

// Query 39
MERGE (p:Person {name: 'A.N. Thadani'}) ON CREATE SET p.id = 'a_n_thadani';

// Query 40
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Gross Profit Margin'}) ON CREATE SET m.id = 'gross_profit_margin', m.unit = '%';

// Query 43
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Operating Profit Margin'}) ON CREATE SET m.id = 'operating_profit_margin', m.unit = '%';

// Query 45
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Profit Before Tax Margin'}) ON CREATE SET m.id = 'profit_before_tax_margin', m.unit = '%';

// Query 47
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 49
MERGE (m:Metric {name: 'Return on Capital Employed'}) ON CREATE SET m.id = 'return_on_capital_employed', m.unit = '%';

// Query 50
MERGE (m:Metric {name: 'Interest Cover Ratio'}) ON CREATE SET m.id = 'interest_cover_ratio', m.unit = 'Times';

// Query 51
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 52
MERGE (m:Metric {name: 'Quick Asset Ratio'}) ON CREATE SET m.id = 'quick_asset_ratio', m.unit = 'Times';

// Query 53
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 54
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 55
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 57
MERGE (m:Metric {name: 'Profit Before Taxation'}) ON CREATE SET m.id = 'profit_before_taxation', m.unit = 'Rs';

// Query 58
MERGE (m:Metric {name: 'Profit After Taxation'}) ON CREATE SET m.id = 'profit_after_taxation', m.unit = 'Rs';

// Query 59
MERGE (m:Metric {name: 'Shareholders Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 60
MERGE (m:Metric {name: 'Earnings per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 61
MERGE (m:Metric {name: 'Net Assets per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs';

// Query 62
MERGE (m:Metric {name: 'Return on Average Assets'}) ON CREATE SET m.id = 'return_on_average_assets', m.unit = '%';

// Query 63
MERGE (m:Metric {name: 'Equity to Assets Ratio'}) ON CREATE SET m.id = 'equity_to_assets_ratio', m.unit = '%';

// Query 64
MERGE (m:Metric {name: 'Gross Non Performing Accommodations'}) ON CREATE SET m.id = 'gross_non_performing_accommodations', m.unit = '%';

// Query 65
MERGE (m:Metric {name: 'Net Loss'}) ON CREATE SET m.id = 'net_loss', m.unit = 'Rs';

// Query 66
MERGE (m:Metric {name: 'Dividend per share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 67
MERGE (m:Metric {name: 'Dividend payout ratio'}) ON CREATE SET m.id = 'dividend_payout_ratio', m.unit = '%';

// Query 68
MERGE (m:Metric {name: 'Net Asset Value per Share'}) ON CREATE SET m.id = 'net_asset_value_per_share', m.unit = 'Rs';

// Query 69
MERGE (m:Metric {name: 'Equity'}) ON CREATE SET m.id = 'equity', m.unit = 'Rs';

// Query 70
MERGE (m:Metric {name: 'Price Earnings Ratio'}) ON CREATE SET m.id = 'price_earnings_ratio', m.unit = 'Times';

// Query 71
MERGE (m:Metric {name: 'Total Shareholder Return'}) ON CREATE SET m.id = 'total_shareholder_return', m.unit = '%';

// Query 72
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 79289000000, r.year = 2025;

// Query 73
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Gross Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16564000000, r.year = 2025;

// Query 74
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Gross Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21, r.year = 2025;

// Query 75
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7172000000, r.year = 2025;

// Query 76
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Operating Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9, r.year = 2025;

// Query 77
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6836000000, r.year = 2025;

// Query 78
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Profit Before Tax Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9, r.year = 2025;

// Query 79
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5032000000, r.year = 2025;

// Query 80
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13, r.year = 2025;

// Query 81
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Return on Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14, r.year = 2025;

// Query 82
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Interest Cover Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9, r.year = 2025;

// Query 83
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.7, r.year = 2025;

// Query 84
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Quick Asset Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.1, r.year = 2025;

// Query 85
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 74616000000, r.year = 2025;

// Query 86
MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7, r.year = 2025;

// Query 87
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31055222000, r.year = 2024;

// Query 88
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12808022000, r.year = 2024;

// Query 89
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Profit Before Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6594978000, r.year = 2024;

// Query 90
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Profit After Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4193917000, r.year = 2024;

// Query 91
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 107987834000, r.year = 2024;

// Query 92
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24179669000, r.year = 2024;

// Query 93
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.19, r.year = 2024;

// Query 94
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Net Assets per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 76.02, r.year = 2024;

// Query 95
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Return on Average Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3.99, r.year = 2024;

// Query 96
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Equity to Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22.39, r.year = 2024;

// Query 97
MATCH (c:Company {name: 'Commercial Credit and Finance PLC'}), (m:Metric {name: 'Gross Non Performing Accommodations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10.65, r.year = 2024;

// Query 98
MATCH (c:Company {name: 'eChannelling PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 256000000, r.year = 2024;

// Query 99
MATCH (c:Company {name: 'CDPLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23695500000, r.year = 2024;

// Query 100
MATCH (c:Company {name: 'CDPLC'}), (m:Metric {name: 'Net Loss'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2757400000, r.year = 2024;

// Query 101
MATCH (c:Company {name: 'Citizens Development Business Finance PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15.0, r.year = 2025;

// Query 102
MATCH (c:Company {name: 'Citizens Development Business Finance PLC'}), (m:Metric {name: 'Earnings per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 56.53, r.year = 2025;

// Query 103
MATCH (c:Company {name: 'Citizens Development Business Finance PLC'}), (m:Metric {name: 'Net Asset Value per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 337.84, r.year = 2025;

// Query 104
MATCH (c:Company {name: 'Citizens Development Business Finance PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 18.15, r.year = 2025;

// Query 105
MATCH (c:Company {name: 'Citizens Development Business Finance PLC'}), (m:Metric {name: 'Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23936000000, r.year = 2025;

// Query 106
MATCH (c:Company {name: 'Citizens Development Business Finance PLC'}), (m:Metric {name: 'Price Earnings Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4.16, r.year = 2025;

// Query 107
MATCH (c:Company {name: 'Ceylon Tea Brokers PLC'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.44, r.year = 2024;

// Query 108
MATCH (c:Company {name: 'Ceylon Tea Brokers PLC'}), (m:Metric {name: 'Dividend payout ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 56.55, r.year = 2024;

// Query 109
MATCH (c:Company {name: 'Dialog'}), (m:Metric {name: 'Dividend per share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.34, r.year = 2023;

// Query 110
MATCH (c:Company {name: 'Dialog'}), (m:Metric {name: 'Dividend payout ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 55, r.year = 2023;

// Query 111
MATCH (c:Company {name: 'Dialog'}), (m:Metric {name: 'Total Shareholder Return'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21.8, r.year = 2023;

// Total queries: 111
// Generated on: 2025-09-30T13:38:04.693289
