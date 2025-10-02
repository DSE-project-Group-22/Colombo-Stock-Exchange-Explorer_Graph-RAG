// Query 1
MERGE (c:Company {name: 'People\'s Leasing & Finance PLC'}) ON CREATE SET c.id = 'peoples_leasing_finance_plc', c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'People\'s Bank'}) ON CREATE SET c.id = 'peoples_bank', c.region = 'Sri Lanka';

// Query 3
MERGE (c:Company {name: 'People\'s Leasing Fleet Management Limited'}) ON CREATE SET c.id = 'peoples_leasing_fleet_management_limited', c.region = 'Sri Lanka';

// Query 4
MERGE (p:Person {name: 'Prof. S M A K Samarakoon'}) ON CREATE SET p.id = 'prof_s_m_a_k_samarakoon';

// Query 5
MERGE (p:Person {name: 'Mr. P D Samarasinghe'}) ON CREATE SET p.id = 'mr_p_d_samarasinghe';

// Query 6
MERGE (p:Person {name: 'Mr. K C J C Fonseka'}) ON CREATE SET p.id = 'mr_k_c_j_c_fonseka';

// Query 7
MERGE (p:Person {name: 'Mr. K J D G Perera'}) ON CREATE SET p.id = 'mr_k_j_d_g_perera';

// Query 8
MERGE (p:Person {name: 'Ms. P G U Gallage'}) ON CREATE SET p.id = 'ms_p_g_u_gallage';

// Query 9
MERGE (p:Person {name: 'Mr. S. Sudarshan'}) ON CREATE SET p.id = 'mr_s_sudarshan';

// Query 10
MERGE (p:Person {name: 'Mr. R B R Emerson'}) ON CREATE SET p.id = 'mr_r_b_r_emerson';

// Query 11
MERGE (p:Person {name: 'Mr. P G A C Perera'}) ON CREATE SET p.id = 'mr_p_g_a_c_perera';

// Query 12
MERGE (p:Person {name: 'Mrs. K S R S Kolu Kaluge'}) ON CREATE SET p.id = 'mrs_k_s_r_s_kolu_kaluge';

// Query 13
MERGE (p:Person {name: 'Mr. M J Thilakarathne'}) ON CREATE SET p.id = 'mr_m_j_thilakarathne';

// Query 14
MERGE (p:Person {name: 'Mr. K S Bandaranayake'}) ON CREATE SET p.id = 'mr_k_s_bandaranayake';

// Query 15
MERGE (p:Person {name: 'Mr. M P Amirthanayagam'}) ON CREATE SET p.id = 'mr_m_p_amirthanayagam';

// Query 16
MERGE (p:Person {name: 'Mr. Rajapaksa Pathiranage Udesh Priyadarshana Gunawardena'}) ON CREATE SET p.id = 'mr_rajapaksa_pathiranage_udesh_priyadarshana_gunawardena';

// Query 17
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 18
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 19
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 20
MERGE (s:Sector {name: 'Transportation'}) ON CREATE SET s.id = 'transportation';

// Query 21
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 22
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 23
MERGE (s:Sector {name: 'Telecommunication Services'}) ON CREATE SET s.id = 'telecommunication_services';

// Query 24
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 25
MERGE (prod:Product {name: 'Leasing'}) ON CREATE SET prod.id = 'leasing';

// Query 26
MERGE (prod:Product {name: 'Hire Purchase'}) ON CREATE SET prod.id = 'hire_purchase';

// Query 27
MERGE (prod:Product {name: 'Loans'}) ON CREATE SET prod.id = 'loans';

// Query 28
MERGE (prod:Product {name: 'Ijarah'}) ON CREATE SET prod.id = 'ijarah';

// Query 29
MERGE (prod:Product {name: 'Murabah'}) ON CREATE SET prod.id = 'murabah';

// Query 30
MERGE (prod:Product {name: 'Musharakah'}) ON CREATE SET prod.id = 'musharakah';

// Query 31
MERGE (prod:Product {name: 'Trading Murabah'}) ON CREATE SET prod.id = 'trading_murabah';

// Query 32
MERGE (prod:Product {name: 'General Insurance'}) ON CREATE SET prod.id = 'general_insurance';

// Query 33
MERGE (prod:Product {name: 'Term Loans'}) ON CREATE SET prod.id = 'term_loans';

// Query 34
MERGE (prod:Product {name: 'Islamic Finance'}) ON CREATE SET prod.id = 'islamic_finance';

// Query 35
MERGE (prod:Product {name: 'Margin Trading'}) ON CREATE SET prod.id = 'margin_trading';

// Query 36
MERGE (prod:Product {name: 'Factoring'}) ON CREATE SET prod.id = 'factoring';

// Query 37
MERGE (prod:Product {name: 'Gold Loans'}) ON CREATE SET prod.id = 'gold_loans';

// Query 38
MERGE (prod:Product {name: 'Debt Instruments'}) ON CREATE SET prod.id = 'debt_instruments';

// Query 39
MERGE (prod:Product {name: 'Public Deposits'}) ON CREATE SET prod.id = 'public_deposits';

// Query 40
MERGE (prod:Product {name: 'Vehicle Rental'}) ON CREATE SET prod.id = 'vehicle_rental';

// Query 41
MERGE (prod:Product {name: 'Vehicle Service Centers'}) ON CREATE SET prod.id = 'vehicle_service_centers';

// Query 42
MERGE (prod:Product {name: 'Solar Leasing Solutions'}) ON CREATE SET prod.id = 'solar_leasing_solutions';

// Query 43
MERGE (prod:Product {name: 'Motor Insurance Policies'}) ON CREATE SET prod.id = 'motor_insurance_policies';

// Query 44
MERGE (prod:Product {name: 'Tailored Insurance Products'}) ON CREATE SET prod.id = 'tailored_insurance_products';

// Query 45
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Impairment Charges and Other Losses'}) ON CREATE SET m.id = 'impairment_charges_and_other_losses', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Loans and Receivables Portfolio'}) ON CREATE SET m.id = 'loans_and_receivables_portfolio', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Shareholders\' Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Deposits'}) ON CREATE SET m.id = 'deposits', m.unit = 'Rs';

// Query 54
MERGE (m:Metric {name: 'Market Capitalisation'}) ON CREATE SET m.id = 'market_capitalisation', m.unit = 'Rs';

// Query 55
MERGE (m:Metric {name: 'Net Assets Per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Closing Market Price Per Share'}) ON CREATE SET m.id = 'closing_market_price_per_share', m.unit = 'Rs';

// Query 57
MERGE (m:Metric {name: 'Dividend Payout Ratio'}) ON CREATE SET m.id = 'dividend_payout_ratio', m.unit = '%';

// Query 58
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 59
MERGE (m:Metric {name: 'Tier 1 Capital Ratio'}) ON CREATE SET m.id = 'tier_1_capital_ratio', m.unit = '%';

// Query 60
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 61
MERGE (m:Metric {name: 'Cost to Income Ratio'}) ON CREATE SET m.id = 'cost_to_income_ratio', m.unit = '%';

// Query 62
MERGE (m:Metric {name: 'Net Interest Margin'}) ON CREATE SET m.id = 'net_interest_margin', m.unit = '%';

// Query 63
MERGE (m:Metric {name: 'Total Assets to Equity Ratio'}) ON CREATE SET m.id = 'total_assets_to_equity_ratio', m.unit = 'Times';

// Query 64
MERGE (m:Metric {name: 'Price to Book Value'}) ON CREATE SET m.id = 'price_to_book_value', m.unit = 'Times';

// Query 65
MERGE (m:Metric {name: 'Cash, Balances with Banks & Reverse Repo'}) ON CREATE SET m.id = 'cash_balances_with_banks_reverse_repo', m.unit = 'Rs';

// Query 66
MERGE (m:Metric {name: 'Income Tax Expense'}) ON CREATE SET m.id = 'income_tax_expense', m.unit = 'Rs';

// Query 67
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 68
MERGE (m:Metric {name: 'Statutory Reserve Fund'}) ON CREATE SET m.id = 'statutory_reserve_fund', m.unit = 'Rs';

// Query 69
MERGE (m:Metric {name: 'Retained Earnings'}) ON CREATE SET m.id = 'retained_earnings', m.unit = 'Rs';

// Query 70
MERGE (m:Metric {name: 'Other Reserves'}) ON CREATE SET m.id = 'other_reserves', m.unit = 'Rs';

// Query 71
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 72
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 73
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 74
MATCH (p:Person {name: 'Prof. S M A K Samarakoon'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 75
MATCH (p:Person {name: 'Prof. S M A K Samarakoon'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2025-03-31');

// Query 76
MATCH (p:Person {name: 'Mr. P D Samarasinghe'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 77
MATCH (p:Person {name: 'Mr. P D Samarasinghe'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2025-03-31');

// Query 78
MATCH (p:Person {name: 'Mr. P D Samarasinghe'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman of Board Audit Committee', r.as_of = date('2025-03-31');

// Query 79
MATCH (p:Person {name: 'Mr. P D Samarasinghe'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman of Human Resources and Remuneration Committee', r.as_of = date('2025-03-31');

// Query 80
MATCH (p:Person {name: 'Mr. P D Samarasinghe'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member of Nomination & Governance Committee', r.as_of = date('2025-03-31');

// Query 81
MATCH (p:Person {name: 'Mr. K C J C Fonseka'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-31');

// Query 82
MATCH (p:Person {name: 'Mr. K C J C Fonseka'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member of Board Audit Committee', r.as_of = date('2025-03-31');

// Query 83
MATCH (p:Person {name: 'Mr. K C J C Fonseka'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 66133, r.as_of = date('2025-03-31');

// Query 84
MATCH (p:Person {name: 'Mr. K J D G Perera'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-01-23');

// Query 85
MATCH (p:Person {name: 'Mr. K J D G Perera'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member of Related Party Transactions Committee', r.as_of = date('2025-03-31');

// Query 86
MATCH (p:Person {name: 'Ms. P G U Gallage'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-01-31');

// Query 87
MATCH (p:Person {name: 'Ms. P G U Gallage'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2025-03-31');

// Query 88
MATCH (p:Person {name: 'Ms. P G U Gallage'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman of Related Party Transactions Committee', r.as_of = date('2025-03-31');

// Query 89
MATCH (p:Person {name: 'Mr. S. Sudarshan'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-02-10');

// Query 90
MATCH (p:Person {name: 'Mr. S. Sudarshan'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2025-03-31');

// Query 91
MATCH (p:Person {name: 'Mr. S. Sudarshan'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member of Board Audit Committee', r.as_of = date('2025-03-31');

// Query 92
MATCH (p:Person {name: 'Mr. S. Sudarshan'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman of Board Integrated Risk Management Committee', r.as_of = date('2025-03-31');

// Query 93
MATCH (p:Person {name: 'Mr. S. Sudarshan'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member of Human Resources and Remuneration Committee', r.as_of = date('2025-03-31');

// Query 94
MATCH (p:Person {name: 'Mr. S. Sudarshan'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman of Nomination & Governance Committee', r.as_of = date('2025-03-31');

// Query 95
MATCH (p:Person {name: 'Mr. S. Sudarshan'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member of Related Party Transactions Committee', r.as_of = date('2025-03-31');

// Query 96
MATCH (p:Person {name: 'Mr. R B R Emerson'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-02-10');

// Query 97
MATCH (p:Person {name: 'Mr. R B R Emerson'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member of Human Resources and Remuneration Committee', r.as_of = date('2025-03-31');

// Query 98
MATCH (p:Person {name: 'Mr. R B R Emerson'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member of Nomination & Governance Committee', r.as_of = date('2025-03-31');

// Query 99
MATCH (p:Person {name: 'Mr. P G A C Perera'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-02-10');

// Query 100
MATCH (p:Person {name: 'Mr. P G A C Perera'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Member of Board Integrated Risk Management Committee', r.as_of = date('2025-03-31');

// Query 101
MATCH (p:Person {name: 'Mr. P G A C Perera'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman of Board Investment Committee', r.as_of = date('2025-03-31');

// Query 102
MATCH (p:Person {name: 'Mrs. K S R S Kolu Kaluge'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-02-17');

// Query 103
MATCH (p:Person {name: 'Mr. M J Thilakarathne'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2025-03-11');

// Query 104
MATCH (p:Person {name: 'Mr. K S Bandaranayake'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'CEO/GM', r.as_of = date('2024-08-06');

// Query 105
MATCH (p:Person {name: 'Mr. M P Amirthanayagam'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-12-31');

// Query 106
MATCH (p:Person {name: 'Mr. M P Amirthanayagam'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 13632, r.as_of = date('2024-03-31');

// Query 107
MATCH (p:Person {name: 'Mr. Rajapaksa Pathiranage Udesh Priyadarshana Gunawardena'}), (c:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Operating Officer', r.as_of = date('2024-08-06');

// Query 108
MATCH (parent:Company {name: 'People\'s Bank'}), (child:Company {name: 'People\'s Leasing & Finance PLC'}) MERGE (parent)-[:OWNS]->(child);

// Query 109
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 110
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 111
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 112
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (s:Sector {name: 'Transportation'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 113
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 114
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 115
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (s:Sector {name: 'Telecommunication Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 116
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 117
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'Leasing'}) MERGE (c)-[:OFFERS]->(prod);

// Query 118
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'Hire Purchase'}) MERGE (c)-[:OFFERS]->(prod);

// Query 119
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'Loans'}) MERGE (c)-[:OFFERS]->(prod);

// Query 120
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'Ijarah'}) MERGE (c)-[:OFFERS]->(prod);

// Query 121
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'Murabah'}) MERGE (c)-[:OFFERS]->(prod);

// Query 122
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'Musharakah'}) MERGE (c)-[:OFFERS]->(prod);

// Query 123
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'Trading Murabah'}) MERGE (c)-[:OFFERS]->(prod);

// Query 124
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'General Insurance'}) MERGE (c)-[:OFFERS]->(prod);

// Query 125
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'Term Loans'}) MERGE (c)-[:OFFERS]->(prod);

// Query 126
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'Islamic Finance'}) MERGE (c)-[:OFFERS]->(prod);

// Query 127
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'Margin Trading'}) MERGE (c)-[:OFFERS]->(prod);

// Query 128
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'Factoring'}) MERGE (c)-[:OFFERS]->(prod);

// Query 129
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'Gold Loans'}) MERGE (c)-[:OFFERS]->(prod);

// Query 130
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'Debt Instruments'}) MERGE (c)-[:OFFERS]->(prod);

// Query 131
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'Public Deposits'}) MERGE (c)-[:OFFERS]->(prod);

// Query 132
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'Vehicle Rental'}) MERGE (c)-[:OFFERS {status: 'planned'}]->(prod);

// Query 133
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'Vehicle Service Centers'}) MERGE (c)-[:OFFERS {status: 'planned'}]->(prod);

// Query 134
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'Solar Leasing Solutions'}) MERGE (c)-[:OFFERS]->(prod);

// Query 135
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'Motor Insurance Policies'}) MERGE (c)-[:OFFERS]->(prod);

// Query 136
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (prod:Product {name: 'Tailored Insurance Products'}) MERGE (c)-[:OFFERS]->(prod);

// Query 137
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 28430000000.0, r.year = 2025;

// Query 138
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 31040000000.0, r.year = 2024;

// Query 139
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 32020000000.0, r.year = 2023;

// Query 140
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14070000000.0, r.year = 2025;

// Query 141
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11650000000.0, r.year = 2024;

// Query 142
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11990000000.0, r.year = 2023;

// Query 143
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Impairment Charges and Other Losses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -400000000.0, r.year = 2025;

// Query 144
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Impairment Charges and Other Losses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1160000000.0, r.year = 2024;

// Query 145
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Impairment Charges and Other Losses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 570000000.0, r.year = 2023;

// Query 146
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5790000000.0, r.year = 2025;

// Query 147
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5380000000.0, r.year = 2024;

// Query 148
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4340000000.0, r.year = 2023;

// Query 149
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3600000000.0, r.year = 2025;

// Query 150
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3540000000.0, r.year = 2024;

// Query 151
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3020000000.0, r.year = 2023;

// Query 152
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 194530000000.0, r.year = 2025;

// Query 153
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 159850000000.0, r.year = 2024;

// Query 154
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 171070000000.0, r.year = 2023;

// Query 155
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Loans and Receivables Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 157090000000.0, r.year = 2025;

// Query 156
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Loans and Receivables Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 103650000000.0, r.year = 2024;

// Query 157
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Loans and Receivables Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 114280000000.0, r.year = 2023;

// Query 158
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Shareholders\' Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 42410000000.0, r.year = 2025;

// Query 159
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Shareholders\' Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 41830000000.0, r.year = 2024;

// Query 160
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Shareholders\' Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 39790000000.0, r.year = 2023;

// Query 161
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Deposits'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 124530000000.0, r.year = 2025;

// Query 162
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Deposits'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 97440000000.0, r.year = 2024;

// Query 163
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Deposits'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 100940000000.0, r.year = 2023;

// Query 164
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Market Capitalisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 38560000000.0, r.year = 2025;

// Query 165
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Market Capitalisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 23700000000.0, r.year = 2024;

// Query 166
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Market Capitalisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16130000000.0, r.year = 2023;

// Query 167
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19.69, r.year = 2025;

// Query 168
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19.41, r.year = 2024;

// Query 169
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19.49, r.year = 2023;

// Query 170
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Closing Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 17.90, r.year = 2025;

// Query 171
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Closing Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11.00, r.year = 2024;

// Query 172
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Closing Market Price Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7.90, r.year = 2023;

// Query 173
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 83.70, r.year = 2025;

// Query 174
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 80.74, r.year = 2024;

// Query 175
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 31.28, r.year = 2023;

// Query 176
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.56, r.year = 2025;

// Query 177
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.68, r.year = 2024;

// Query 178
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7.68, r.year = 2023;

// Query 179
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Tier 1 Capital Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 22.94, r.year = 2025;

// Query 180
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Tier 1 Capital Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 30.00, r.year = 2024;

// Query 181
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Tier 1 Capital Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 25.76, r.year = 2023;

// Query 182
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5788000000.0, r.year = 2025;

// Query 183
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5376000000.0, r.year = 2024;

// Query 184
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4342000000.0, r.year = 2023;

// Query 185
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6650000000.0, r.year = 2022;

// Query 186
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5873000000.0, r.year = 2021;

// Query 187
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2185000000.0, r.year = 2025;

// Query 188
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1835000000.0, r.year = 2024;

// Query 189
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1324000000.0, r.year = 2023;

// Query 190
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1991000000.0, r.year = 2022;

// Query 191
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1840000000.0, r.year = 2021;

// Query 192
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3603000000.0, r.year = 2025;

// Query 193
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3540000000.0, r.year = 2024;

// Query 194
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3018000000.0, r.year = 2023;

// Query 195
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4659000000.0, r.year = 2022;

// Query 196
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4033000000.0, r.year = 2021;

// Query 197
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.27, r.year = 2025;

// Query 198
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.25, r.year = 2024;

// Query 199
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.47, r.year = 2023;

// Query 200
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.85, r.year = 2022;

// Query 201
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.49, r.year = 2021;

// Query 202
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Cost to Income Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 54.96, r.year = 2025;

// Query 203
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Cost to Income Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 55.61, r.year = 2024;

// Query 204
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Cost to Income Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 52.64, r.year = 2023;

// Query 205
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Cost to Income Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 43.74, r.year = 2022;

// Query 206
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Cost to Income Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 42.03, r.year = 2021;

// Query 207
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Net Interest Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.64, r.year = 2025;

// Query 208
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Net Interest Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7.69, r.year = 2024;

// Query 209
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Net Interest Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7.35, r.year = 2023;

// Query 210
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Net Interest Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.10, r.year = 2022;

// Query 211
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Net Interest Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7.58, r.year = 2021;

// Query 212
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Total Assets to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.59, r.year = 2025;

// Query 213
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Total Assets to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3.82, r.year = 2024;

// Query 214
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Total Assets to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.3, r.year = 2023;

// Query 215
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Total Assets to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.66, r.year = 2022;

// Query 216
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Total Assets to Equity Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.79, r.year = 2021;

// Query 217
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Price to Book Value'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.91, r.year = 2025;

// Query 218
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Price to Book Value'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.57, r.year = 2024;

// Query 219
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Price to Book Value'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.41, r.year = 2023;

// Query 220
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Price to Book Value'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.39, r.year = 2022;

// Query 221
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Price to Book Value'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.59, r.year = 2021;

// Query 222
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Cash, Balances with Banks & Reverse Repo'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 21728000000.0, r.year = 2025;

// Query 223
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Cash, Balances with Banks & Reverse Repo'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 24016000000.0, r.year = 2024;

// Query 224
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Cash, Balances with Banks & Reverse Repo'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 35685000000.0, r.year = 2023;

// Query 225
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Cash, Balances with Banks & Reverse Repo'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9787000000.0, r.year = 2022;

// Query 226
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Cash, Balances with Banks & Reverse Repo'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8102000000.0, r.year = 2021;

// Query 227
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Loans and Receivables Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 157092000000.0, r.year = 2025;

// Query 228
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Loans and Receivables Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 103650000000.0, r.year = 2024;

// Query 229
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Loans and Receivables Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 114278000000.0, r.year = 2023;

// Query 230
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Loans and Receivables Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 151274000000.0, r.year = 2022;

// Query 231
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Loans and Receivables Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 141388000000.0, r.year = 2021;

// Query 232
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19230000000.0, r.year = 2025;

// Query 233
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 18016000000.0, r.year = 2024;

// Query 234
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Statutory Reserve Fund'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2968000000.0, r.year = 2025;

// Query 235
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Statutory Reserve Fund'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2791000000.0, r.year = 2024;

// Query 236
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 18774000000.0, r.year = 2025;

// Query 237
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19879000000.0, r.year = 2024;

// Query 238
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Other Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 50000000.0, r.year = 2025;

// Query 239
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Other Reserves'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -541000000.0, r.year = 2024;

// Query 240
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 41022000000.0, r.year = 2025;

// Query 241
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 40145000000.0, r.year = 2024;

// Query 242
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.40, r.year = 2025;

// Query 243
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Dividend Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.40, r.year = 2024;

// Query 244
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.67, r.year = 2025;

// Query 245
MATCH (c:Company {name: 'People\'s Leasing & Finance PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.64, r.year = 2024;

// Total queries: 245
// Generated on: 2025-10-02T18:14:00.919446
