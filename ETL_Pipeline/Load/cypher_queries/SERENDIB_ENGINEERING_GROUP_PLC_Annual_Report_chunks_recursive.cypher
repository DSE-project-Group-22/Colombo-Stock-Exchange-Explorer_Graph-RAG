// Query 1
MERGE (c:Company {name: 'Serendib Engineering Group PLC'}) ON CREATE SET c.id = 'serendib_engineering_group_plc', c.founded_on = date('1992-09-07'), c.listed_on = 'Diri Savi Board of the Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 2
MERGE (p:Person {name: 'ANANDA SAMARANAYAKE'}) ON CREATE SET p.id = 'ananda_samaranayake';

// Query 3
MERGE (p:Person {name: 'H.A.S.P.KUMARA'}) ON CREATE SET p.id = 'h_a_s_p_kumara';

// Query 4
MERGE (p:Person {name: 'K.W.J.P.L. PERERA'}) ON CREATE SET p.id = 'k_w_j_p_l_perera';

// Query 5
MERGE (p:Person {name: 'M.A. MALIYADDA'}) ON CREATE SET p.id = 'm_a_maliyadda';

// Query 6
MERGE (p:Person {name: 'M.A.U. GNANATILAKE'}) ON CREATE SET p.id = 'm_a_u_gnanatilake';

// Query 7
MERGE (p:Person {name: 'MRS H.P GIN'}) ON CREATE SET p.id = 'mrs_h_p_gin';

// Query 8
MERGE (p:Person {name: 'MRS. A.A. RAAYMAKERS'}) ON CREATE SET p.id = 'mrs_a_a_raaymakers';

// Query 9
MERGE (p:Person {name: 'MRS. W.A.N. FONSEKA'}) ON CREATE SET p.id = 'mrs_w_a_n_fonseka';

// Query 10
MERGE (p:Person {name: 'MR. H.L. WIJEWARDENA'}) ON CREATE SET p.id = 'mr_h_l_wijewardena';

// Query 11
MERGE (p:Person {name: 'MR. H.R. DINESH'}) ON CREATE SET p.id = 'mr_h_r_dinesh';

// Query 12
MERGE (p:Person {name: 'MR. K. Sivaskantharajah'}) ON CREATE SET p.id = 'mr_k_sivaskantharajah';

// Query 13
MERGE (p:Person {name: 'MR. M.A. AZEEZ'}) ON CREATE SET p.id = 'mr_m_a_azeez';

// Query 14
MERGE (p:Person {name: 'MR. M.A.T. RAAYMAKERS'}) ON CREATE SET p.id = 'mr_m_a_t_raaymakers';

// Query 15
MERGE (p:Person {name: 'MR. M.I.M. ANAS'}) ON CREATE SET p.id = 'mr_m_i_m_anas';

// Query 16
MERGE (p:Person {name: 'MR. R.E. RAMBUKWELLE'}) ON CREATE SET p.id = 'mr_r_e_rambukwelle';

// Query 17
MERGE (p:Person {name: 'Mr. Saman Sri Lal'}) ON CREATE SET p.id = 'mr_saman_sri_lal';

// Query 18
MERGE (p:Person {name: 'Mr. Santhirasegaram Sivarajah'}) ON CREATE SET p.id = 'mr_santhirasegaram_sivarajah';

// Query 19
MERGE (p:Person {name: 'Mr.G.T.Jayaseelan'}) ON CREATE SET p.id = 'mr_g_t_jayaseelan';

// Query 20
MERGE (p:Person {name: 'Mr.N.D.Rathnayake'}) ON CREATE SET p.id = 'mr_n_d_rathnayake';

// Query 21
MERGE (p:Person {name: 'Mr.Vaitheswaran Rajarajan'}) ON CREATE SET p.id = 'mr_vaitheswaran_rajarajan';

// Query 22
MERGE (p:Person {name: 'R.G.G. WIJESURIYA'}) ON CREATE SET p.id = 'r_g_g_wijesuriya';

// Query 23
MERGE (p:Person {name: 'RAVINDRA ERLE RAMBUKWELLE'}) ON CREATE SET p.id = 'ravindra_erle_rambukwelle';

// Query 24
MERGE (p:Person {name: 'RIYANSI KENAT DICKMAN'}) ON CREATE SET p.id = 'riyansi_kenat_dickman';

// Query 25
MERGE (c:Company {name: 'ASSETLINE LEASING COMPANY LTD'}) ON CREATE SET c.id = 'assetline_leasing_company_ltd';

// Query 26
MERGE (c:Company {name: 'BANSEI SECURITIES CAPITAL (PVT) LTD'}) ON CREATE SET c.id = 'bansei_securities_capital_pvt_ltd';

// Query 27
MERGE (c:Company {name: 'DIALOG FINANCE PLC'}) ON CREATE SET c.id = 'dialog_finance_plc';

// Query 28
MERGE (c:Company {name: 'FLYASIA SDN.BHD'}) ON CREATE SET c.id = 'flyasia_sdn_bhd';

// Query 29
MERGE (c:Company {name: 'HATTON NATIONAL BANK PLC'}) ON CREATE SET c.id = 'hatton_national_bank_plc';

// Query 30
MERGE (c:Company {name: 'MERCHANT BANK OF SRI LANKA & FINANCE PLC'}) ON CREATE SET c.id = 'merchant_bank_of_sri_lanka_finance_plc';

// Query 31
MERGE (c:Company {name: 'S S P Corporate Secretarial (Pvt) Limited'}) ON CREATE SET c.id = 's_s_p_corporate_secretarial_pvt_limited';

// Query 32
MERGE (c:Company {name: 'SAMPATH BANK PLC'}) ON CREATE SET c.id = 'sampath_bank_plc';

// Query 33
MERGE (c:Company {name: 'SERENDIB HOLDINGS PTE. LTD.'}) ON CREATE SET c.id = 'serendib_holdings_pte_ltd';

// Query 34
MERGE (c:Company {name: 'SERENDIB INVESTMENT HOLDINGS LIMITED'}) ON CREATE SET c.id = 'serendib_investment_holdings_limited';

// Query 35
MERGE (c:Company {name: 'Serendib Engineering & Agencies (Pvt) Limited'}) ON CREATE SET c.id = 'serendib_engineering_agencies_pvt_limited';

// Query 36
MERGE (c:Company {name: 'SEYLAN BANK PLC'}) ON CREATE SET c.id = 'seylan_bank_plc';

// Query 37
MERGE (c:Company {name: 'V. S. & Associates'}) ON CREATE SET c.id = 'v_s_associates';

// Query 38
MERGE (m:Metric {name: 'Administration Expenses'}) ON CREATE SET m.id = 'administration_expenses', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Amount Due to Related Party (Current)'}) ON CREATE SET m.id = 'amount_due_to_related_party_current', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Bank Overdrafts (Current)'}) ON CREATE SET m.id = 'bank_overdrafts_current', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Cash Generated from Operating Activities'}) ON CREATE SET m.id = 'cash_generated_from_operating_activities', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Cost of Sales'}) ON CREATE SET m.id = 'cost_of_sales', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Deferred Tax Liabilities'}) ON CREATE SET m.id = 'deferred_tax_liabilities', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Depreciation & Amortization'}) ON CREATE SET m.id = 'depreciation_amortization', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Exchange Gain/Loss on Interest Bearing Borrowings'}) ON CREATE SET m.id = 'exchange_gain_loss_on_interest_bearing_borrowings', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Finance Expenses'}) ON CREATE SET m.id = 'finance_expenses', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Finance Income'}) ON CREATE SET m.id = 'finance_income', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Gratuity Paid'}) ON CREATE SET m.id = 'gratuity_paid', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Gratuity Provision/Reversal'}) ON CREATE SET m.id = 'gratuity_provision_reversal', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Gross Profit'}) ON CREATE SET m.id = 'gross_profit', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Income Tax Liabilities (Current)'}) ON CREATE SET m.id = 'income_tax_liabilities_current', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Interest Bearing Borrowings (Current)'}) ON CREATE SET m.id = 'interest_bearing_borrowings_current', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Interest Bearing Borrowings (Non-Current)'}) ON CREATE SET m.id = 'interest_bearing_borrowings_non_current', m.unit = 'Rs';

// Query 54
MERGE (m:Metric {name: 'Interest Paid'}) ON CREATE SET m.id = 'interest_paid', m.unit = 'Rs';

// Query 55
MERGE (m:Metric {name: 'Net Asset Per Share'}) ON CREATE SET m.id = 'net_asset_per_share', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Net Cash Flow from Operating Activities'}) ON CREATE SET m.id = 'net_cash_flow_from_operating_activities', m.unit = 'Rs';

// Query 57
MERGE (m:Metric {name: 'Net Profit/Loss Before Interest & Taxation'}) ON CREATE SET m.id = 'net_profit_loss_before_interest_taxation', m.unit = 'Rs';

// Query 58
MERGE (m:Metric {name: 'Net Profit/Loss for the period (Parent)'}) ON CREATE SET m.id = 'net_profit_loss_for_the_period_parent', m.unit = 'Rs';

// Query 59
MERGE (m:Metric {name: 'Net Profit/Loss for the period (Total)'}) ON CREATE SET m.id = 'net_profit_loss_for_the_period_total', m.unit = 'Rs';

// Query 60
MERGE (m:Metric {name: 'Non-Controlling Interest'}) ON CREATE SET m.id = 'non_controlling_interest', m.unit = 'Rs';

// Query 61
MERGE (m:Metric {name: 'Operating Profit/Loss Before Working Capital Changes'}) ON CREATE SET m.id = 'operating_profit_loss_before_working_capital_changes', m.unit = 'Rs';

// Query 62
MERGE (m:Metric {name: 'Other Income'}) ON CREATE SET m.id = 'other_income', m.unit = 'Rs';

// Query 63
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 64
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 65
MERGE (m:Metric {name: 'Profit from Operating Activities'}) ON CREATE SET m.id = 'profit_from_operating_activities', m.unit = 'Rs';

// Query 66
MERGE (m:Metric {name: 'Retained Earnings'}) ON CREATE SET m.id = 'retained_earnings', m.unit = 'Rs';

// Query 67
MERGE (m:Metric {name: 'Retirement Benefit Obligations'}) ON CREATE SET m.id = 'retirement_benefit_obligations', m.unit = 'Rs';

// Query 68
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 69
MERGE (m:Metric {name: 'Shareholders\' Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 70
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 71
MERGE (m:Metric {name: 'Tax Paid'}) ON CREATE SET m.id = 'tax_paid', m.unit = 'Rs';

// Query 72
MERGE (m:Metric {name: 'Taxation'}) ON CREATE SET m.id = 'taxation', m.unit = 'Rs';

// Query 73
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 74
MERGE (m:Metric {name: 'Total Comprehensive Income'}) ON CREATE SET m.id = 'total_comprehensive_income', m.unit = 'Rs';

// Query 75
MERGE (m:Metric {name: 'Total Current Liabilities'}) ON CREATE SET m.id = 'total_current_liabilities', m.unit = 'Rs';

// Query 76
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 77
MERGE (m:Metric {name: 'Total Non-Current Liabilities'}) ON CREATE SET m.id = 'total_non_current_liabilities', m.unit = 'Rs';

// Query 78
MERGE (m:Metric {name: 'Trade & Other Payables (Current)'}) ON CREATE SET m.id = 'trade_other_payables_current', m.unit = 'Rs';

// Query 79
MATCH (p:Person {id: 'mr_k_sivaskantharajah'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-31');

// Query 80
MATCH (p:Person {id: 'mr_santhirasegaram_sivarajah'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-08');

// Query 81
MATCH (p:Person {id: 'mr_saman_sri_lal'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non Executive Director', r.as_of = date('2024-01-31');

// Query 82
MATCH (s:Company {id: 'assetline_leasing_company_ltd'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (s)-[r:OWNS]->(c) ON CREATE SET r.count = 155798, r.pct = 0.48, r.as_of = date('2024-09-30');

// Query 83
MATCH (s:Company {id: 'bansei_securities_capital_pvt_ltd'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (s)-[r:OWNS]->(c) ON CREATE SET r.count = 32959, r.pct = 0.1, r.as_of = date('2024-09-30');

// Query 84
MATCH (s:Company {id: 'dialog_finance_plc'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (s)-[r:OWNS]->(c) ON CREATE SET r.count = 125000, r.pct = 0.39, r.as_of = date('2024-09-30');

// Query 85
MATCH (s:Company {id: 'flyasia_sdn_bhd'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (s)-[r:OWNS]->(c) ON CREATE SET r.count = 1175625, r.pct = 3.63, r.as_of = date('2024-09-30');

// Query 86
MATCH (s:Company {id: 'hatton_national_bank_plc'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (s)-[r:OWNS]->(c) ON CREATE SET r.count = 151000, r.pct = 0.47, r.as_of = date('2024-09-30');

// Query 87
MATCH (s:Company {id: 'merchant_bank_of_sri_lanka_finance_plc'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (s)-[r:OWNS]->(c) ON CREATE SET r.count = 30000, r.pct = 0.09, r.as_of = date('2024-09-30');

// Query 88
MATCH (s:Company {id: 'sampath_bank_plc'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (s)-[r:OWNS]->(c) ON CREATE SET r.count = 48848, r.pct = 0.15, r.as_of = date('2024-09-30');

// Query 89
MATCH (s:Company {id: 'serendib_holdings_pte_ltd'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (s)-[r:OWNS]->(c) ON CREATE SET r.count = 27241287, r.pct = 84.12, r.as_of = date('2024-09-30');

// Query 90
MATCH (s:Company {id: 'seylan_bank_plc'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (s)-[r:OWNS]->(c) ON CREATE SET r.count = 469914, r.pct = 1.45, r.as_of = date('2024-09-30');

// Query 91
MATCH (p:Person {id: 'ananda_samaranayake'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 48848, r.pct = 0.15, r.as_of = date('2024-09-30');

// Query 92
MATCH (p:Person {id: 'h_a_s_p_kumara'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 155798, r.pct = 0.48, r.as_of = date('2024-09-30');

// Query 93
MATCH (p:Person {id: 'k_w_j_p_l_perera'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 125000, r.pct = 0.39, r.as_of = date('2024-09-30');

// Query 94
MATCH (p:Person {id: 'm_a_maliyadda'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 30000, r.pct = 0.09, r.as_of = date('2024-09-30');

// Query 95
MATCH (p:Person {id: 'm_a_u_gnanatilake'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 32959, r.pct = 0.1, r.as_of = date('2024-09-30');

// Query 96
MATCH (p:Person {id: 'mrs_h_p_gin'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 50920, r.pct = 0.16, r.as_of = date('2024-09-30');

// Query 97
MATCH (p:Person {id: 'mrs_a_a_raaymakers'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 226359, r.pct = 0.7, r.as_of = date('2024-09-30');

// Query 98
MATCH (p:Person {id: 'mrs_w_a_n_fonseka'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 50000, r.pct = 0.15, r.as_of = date('2024-09-30');

// Query 99
MATCH (p:Person {id: 'mr_h_l_wijewardena'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 103000, r.pct = 0.32, r.as_of = date('2024-09-30');

// Query 100
MATCH (p:Person {id: 'mr_h_r_dinesh'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 67392, r.pct = 0.21, r.as_of = date('2024-09-30');

// Query 101
MATCH (p:Person {id: 'mr_m_a_azeez'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 30000, r.pct = 0.09, r.as_of = date('2024-09-30');

// Query 102
MATCH (p:Person {id: 'mr_m_a_t_raaymakers'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 150286, r.pct = 0.46, r.as_of = date('2024-09-30');

// Query 103
MATCH (p:Person {id: 'mr_m_i_m_anas'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 31077, r.pct = 0.1, r.as_of = date('2024-09-30');

// Query 104
MATCH (p:Person {id: 'mr_r_e_rambukwelle'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 72500, r.pct = 0.22, r.as_of = date('2024-09-30');

// Query 105
MATCH (p:Person {id: 'r_g_g_wijesuriya'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 30000, r.pct = 0.09, r.as_of = date('2024-09-30');

// Query 106
MATCH (p:Person {id: 'ravindra_erle_rambukwelle'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 151000, r.pct = 0.47, r.as_of = date('2024-09-30');

// Query 107
MATCH (p:Person {id: 'riyansi_kenat_dickman'}), (c:Company {id: 'serendib_engineering_group_plc'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 469914, r.pct = 1.45, r.as_of = date('2024-09-30');

// Query 108
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (a:Company {id: 'v_s_associates'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 109
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 18392411, r.year = 2024;

// Query 110
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'cost_of_sales'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -22500062, r.year = 2024;

// Query 111
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'gross_profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -4107651, r.year = 2024;

// Query 112
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'other_income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2041701, r.year = 2024;

// Query 113
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'administration_expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -59001202, r.year = 2024;

// Query 114
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'profit_from_operating_activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -61067152, r.year = 2024;

// Query 115
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'finance_income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4620637, r.year = 2024;

// Query 116
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'finance_expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -16303487, r.year = 2024;

// Query 117
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'profit_before_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -72750002, r.year = 2024;

// Query 118
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5082293, r.year = 2024;

// Query 119
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'profit_after_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -77832295, r.year = 2024;

// Query 120
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'total_comprehensive_income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -77832295, r.year = 2024;

// Query 121
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'net_profit_loss_before_interest_taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -56465392, r.year = 2024;

// Query 122
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'depreciation_amortization'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1692474, r.year = 2024;

// Query 123
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'gratuity_provision_reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1936430, r.year = 2024;

// Query 124
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'exchange_gain_loss_on_interest_bearing_borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -4601760, r.year = 2024;

// Query 125
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'operating_profit_loss_before_working_capital_changes'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -57438248, r.year = 2024;

// Query 126
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'cash_generated_from_operating_activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19350918, r.year = 2024;

// Query 127
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'tax_paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -4196051, r.year = 2024;

// Query 128
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'interest_paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -16303487, r.year = 2024;

// Query 129
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'gratuity_paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6786662, r.year = 2024;

// Query 130
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'net_cash_flow_from_operating_activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -7935282, r.year = 2024;

// Query 131
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14172000, r.year = 2023;

// Query 132
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'cost_of_sales'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -13590308, r.year = 2023;

// Query 133
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'gross_profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 581692, r.year = 2023;

// Query 134
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'other_income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1520225, r.year = 2023;

// Query 135
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'administration_expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -8056980, r.year = 2023;

// Query 136
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'profit_from_operating_activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -13632769, r.year = 2023;

// Query 137
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'finance_income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 245014, r.year = 2023;

// Query 138
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'finance_expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -8701357, r.year = 2023;

// Query 139
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'profit_before_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -22326262, r.year = 2023;

// Query 140
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -890000, r.year = 2023;

// Query 141
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'profit_after_tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -23216262, r.year = 2023;

// Query 142
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'total_comprehensive_income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -23216262, r.year = 2023;

// Query 143
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'net_profit_loss_before_interest_taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -18167819, r.year = 2023;

// Query 144
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'depreciation_amortization'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 972469, r.year = 2023;

// Query 145
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'gratuity_provision_reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 453700, r.year = 2023;

// Query 146
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'exchange_gain_loss_on_interest_bearing_borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1659345, r.year = 2023;

// Query 147
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'operating_profit_loss_before_working_capital_changes'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -18646009, r.year = 2023;

// Query 148
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'cash_generated_from_operating_activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6879092, r.year = 2023;

// Query 149
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'interest_paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6449916, r.year = 2023;

// Query 150
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'net_cash_flow_from_operating_activities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 429177, r.year = 2023;

// Query 151
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'total_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 54810910, r.as_of = date('2024-03-31');

// Query 152
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'stated_capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 178107910, r.as_of = date('2024-03-31');

// Query 153
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'retained_earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -491571360, r.as_of = date('2024-03-31');

// Query 154
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'shareholders_funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -313463450, r.as_of = date('2024-03-31');

// Query 155
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'non_controlling_interest'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -25635520, r.as_of = date('2024-03-31');

// Query 156
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'total_equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -339098970, r.as_of = date('2024-03-31');

// Query 157
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'interest_bearing_borrowings_non_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 45800085, r.as_of = date('2024-03-31');

// Query 158
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'total_non_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 45800085, r.as_of = date('2024-03-31');

// Query 159
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'trade_other_payables_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 156477271, r.as_of = date('2024-03-31');

// Query 160
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'amount_due_to_related_party_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 131884854, r.as_of = date('2024-03-31');

// Query 161
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'interest_bearing_borrowings_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 24336258, r.as_of = date('2024-03-31');

// Query 162
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'income_tax_liabilities_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1015350, r.as_of = date('2024-03-31');

// Query 163
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'bank_overdrafts_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 34396062, r.as_of = date('2024-03-31');

// Query 164
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'total_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 348109795, r.as_of = date('2024-03-31');

// Query 165
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'net_asset_per_share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -9.68, r.as_of = date('2024-03-31');

// Query 166
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'total_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 96920452, r.as_of = date('2023-03-31');

// Query 167
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'stated_capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 178107910, r.as_of = date('2023-03-31');

// Query 168
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'retained_earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -434634470, r.as_of = date('2023-03-31');

// Query 169
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'shareholders_funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -256526560, r.as_of = date('2023-03-31');

// Query 170
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'non_controlling_interest'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -22099217, r.as_of = date('2023-03-31');

// Query 171
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'total_equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -278625779, r.as_of = date('2023-03-31');

// Query 172
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'retirement_benefit_obligations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7252467, r.as_of = date('2023-03-31');

// Query 173
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'deferred_tax_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 226, r.as_of = date('2023-03-31');

// Query 174
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'interest_bearing_borrowings_non_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 48742500, r.as_of = date('2023-03-31');

// Query 175
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'total_non_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 55995193, r.as_of = date('2023-03-31');

// Query 176
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'trade_other_payables_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 169477911, r.as_of = date('2023-03-31');

// Query 177
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'amount_due_to_related_party_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 96656278, r.as_of = date('2023-03-31');

// Query 178
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'interest_bearing_borrowings_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 24336258, r.as_of = date('2023-03-31');

// Query 179
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'income_tax_liabilities_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 129106, r.as_of = date('2023-03-31');

// Query 180
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'bank_overdrafts_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 28951485, r.as_of = date('2023-03-31');

// Query 181
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'total_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 319551038, r.as_of = date('2023-03-31');

// Query 182
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'net_asset_per_share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -7.92, r.as_of = date('2023-03-31');

// Query 183
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'total_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 31460223, r.as_of = date('2024-09-30');

// Query 184
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'stated_capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 178107910, r.as_of = date('2024-09-30');

// Query 185
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'retained_earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -513653708, r.as_of = date('2024-09-30');

// Query 186
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'shareholders_funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -335545798, r.as_of = date('2024-09-30');

// Query 187
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'non_controlling_interest'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -26769433, r.as_of = date('2024-09-30');

// Query 188
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'total_equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -362315231, r.as_of = date('2024-09-30');

// Query 189
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'interest_bearing_borrowings_non_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 45384705, r.as_of = date('2024-09-30');

// Query 190
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'total_non_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 45384705, r.as_of = date('2024-09-30');

// Query 191
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'trade_other_payables_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 143566129, r.as_of = date('2024-09-30');

// Query 192
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'amount_due_to_related_party_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 141806677, r.as_of = date('2024-09-30');

// Query 193
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'interest_bearing_borrowings_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 24336258, r.as_of = date('2024-09-30');

// Query 194
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'income_tax_liabilities_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 129106, r.as_of = date('2024-09-30');

// Query 195
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'bank_overdrafts_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 38552578, r.as_of = date('2024-09-30');

// Query 196
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'total_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 348390749, r.as_of = date('2024-09-30');

// Query 197
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'net_asset_per_share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -10.36, r.as_of = date('2024-09-30');

// Query 198
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'net_profit_loss_for_the_period_parent'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -22082348, r.as_of = date('2024-09-30');

// Query 199
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'net_profit_loss_for_the_period_total'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -23216262, r.as_of = date('2024-09-30');

// Query 200
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'total_assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 96920452, r.as_of = date('2023-09-30');

// Query 201
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'stated_capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 178107910, r.as_of = date('2023-09-30');

// Query 202
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'retained_earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -434634470, r.as_of = date('2023-09-30');

// Query 203
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'shareholders_funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -256526560, r.as_of = date('2023-09-30');

// Query 204
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'non_controlling_interest'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -22099217, r.as_of = date('2023-09-30');

// Query 205
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'total_equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -278625778, r.as_of = date('2023-09-30');

// Query 206
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'interest_bearing_borrowings_non_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 48742500, r.as_of = date('2023-09-30');

// Query 207
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'total_non_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 55995193, r.as_of = date('2023-09-30');

// Query 208
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'trade_other_payables_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 169477911, r.as_of = date('2023-09-30');

// Query 209
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'amount_due_to_related_party_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 96656278, r.as_of = date('2023-09-30');

// Query 210
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'interest_bearing_borrowings_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 24336258, r.as_of = date('2023-09-30');

// Query 211
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'income_tax_liabilities_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 129106, r.as_of = date('2023-09-30');

// Query 212
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'bank_overdrafts_current'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 28951485, r.as_of = date('2023-09-30');

// Query 213
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'total_current_liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 319551038, r.as_of = date('2023-09-30');

// Query 214
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'net_asset_per_share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -7.92, r.as_of = date('2023-09-30');

// Query 215
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'net_profit_loss_for_the_period_parent'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -23166088, r.as_of = date('2023-09-30');

// Query 216
MATCH (c:Company {id: 'serendib_engineering_group_plc'}), (m:Metric {id: 'net_profit_loss_for_the_period_total'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -24617736, r.as_of = date('2023-09-30');

// Total queries: 216
// Generated on: 2025-10-02T18:53:15.913882
