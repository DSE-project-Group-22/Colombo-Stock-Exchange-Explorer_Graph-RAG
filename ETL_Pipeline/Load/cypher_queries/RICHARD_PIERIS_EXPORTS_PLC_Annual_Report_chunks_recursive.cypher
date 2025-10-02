// Query 1
MERGE (c:Company {name: 'Richard Pieris Exports PLC'}) ON CREATE SET c.id = 'richard_pieris_exports_plc', c.founded_on = date('1983-06-30'), c.listed_on = 'CSE (Diri Savi Board) as of 2017-07-07', c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'Richard Pieris Group Services (Private) Limited'}) ON CREATE SET c.id = 'richard_pieris_group_services_private_limited';

// Query 3
MERGE (c:Company {name: 'Kreston MNS & Company'}) ON CREATE SET c.id = 'kreston_mns_and_company';

// Query 4
MERGE (c:Company {name: 'Richard Pieris & Company PLC'}) ON CREATE SET c.id = 'richard_pieris_and_company_plc';

// Query 5
MERGE (c:Company {name: 'MSS Investments (Pvt) Limited'}) ON CREATE SET c.id = 'mss_investments_pvt_limited';

// Query 6
MERGE (c:Company {name: 'Kalday Private Limited'}) ON CREATE SET c.id = 'kalday_private_limited';

// Query 7
MERGE (c:Company {name: 'Ransiri Enterprises (Pvt) Ltd'}) ON CREATE SET c.id = 'ransiri_enterprises_pvt_ltd';

// Query 8
MERGE (c:Company {name: 'Union Investments (Pvt) ltd'}) ON CREATE SET c.id = 'union_investments_pvt_ltd';

// Query 9
MERGE (p:Person {name: 'Dr. Sena Yaddehige'}) ON CREATE SET p.id = 'dr_sena_yadddehige';

// Query 10
MERGE (p:Person {name: 'Shaminda Yaddehige'}) ON CREATE SET p.id = 'shaminda_yadddehige';

// Query 11
MERGE (p:Person {name: 'W.J. Viville P Perera'}) ON CREATE SET p.id = 'w_j_viville_p_perera';

// Query 12
MERGE (p:Person {name: 'W R Abeysirigunawardena'}) ON CREATE SET p.id = 'w_r_abeysirigunawardena';

// Query 13
MERGE (p:Person {name: 'Dr.L.M.K.Tillekeratne'}) ON CREATE SET p.id = 'dr_l_m_k_tillekeratne';

// Query 14
MERGE (p:Person {name: 'Lalith Chandrasiri Wijeyesinghe'}) ON CREATE SET p.id = 'lalith_chandrasiri_wijeyesinghe';

// Query 15
MERGE (p:Person {name: 'Dr.Lawrence Perera'}) ON CREATE SET p.id = 'dr_lawrence_perera';

// Query 16
MERGE (p:Person {name: 'Charith Ariyarathna'}) ON CREATE SET p.id = 'charith_ariyarathna';

// Query 17
MERGE (p:Person {name: 'Mr T.T.T.Al-Nakib'}) ON CREATE SET p.id = 'mr_t_t_t_al_nakib';

// Query 18
MERGE (p:Person {name: 'Mrs.V.Saraswathi'}) ON CREATE SET p.id = 'mrs_v_saraswathi';

// Query 19
MERGE (p:Person {name: 'Mr. P.Vijendran'}) ON CREATE SET p.id = 'mr_p_vijendran';

// Query 20
MERGE (p:Person {name: 'Ms S Sinthuja'}) ON CREATE SET p.id = 'ms_s_sinthuja';

// Query 21
MERGE (p:Person {name: 'Mr S Sivaharan'}) ON CREATE SET p.id = 'mr_s_sivaharan';

// Query 22
MERGE (p:Person {name: 'Mrs.M.Y.Amerasinghe'}) ON CREATE SET p.id = 'mrs_m_y_amerasinghe';

// Query 23
MERGE (p:Person {name: 'Mr S.Malalasekera'}) ON CREATE SET p.id = 'mr_s_malalasekera';

// Query 24
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 25
MERGE (p:Product {name: 'rubber based products'}) ON CREATE SET p.id = 'rubber_based_products';

// Query 26
MERGE (p:Product {name: 'fillers for the rubber industry'}) ON CREATE SET p.id = 'fillers_for_the_rubber_industry';

// Query 27
MERGE (m:Metric {name: 'Revenue (Company)'}) ON CREATE SET m.id = 'revenue_company', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Cost of Sales (Company)'}) ON CREATE SET m.id = 'cost_of_sales_company', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Gross Profit (Company)'}) ON CREATE SET m.id = 'gross_profit_company', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Other Operating Income (Company)'}) ON CREATE SET m.id = 'other_operating_income_company', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Distribution Costs (Company)'}) ON CREATE SET m.id = 'distribution_costs_company', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Administrative Expenses (Company)'}) ON CREATE SET m.id = 'administrative_expenses_company', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Profit from Operations (Company)'}) ON CREATE SET m.id = 'profit_from_operations_company', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Finance Income (Company)'}) ON CREATE SET m.id = 'finance_income_company', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Finance Cost (Company)'}) ON CREATE SET m.id = 'finance_cost_company', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Other Financial Items (Company)'}) ON CREATE SET m.id = 'other_financial_items_company', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Profit Before Tax (Company)'}) ON CREATE SET m.id = 'profit_before_tax_company', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Taxation (Company)'}) ON CREATE SET m.id = 'taxation_company', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Profit Attributable to Ordinary Shareholders (Company)'}) ON CREATE SET m.id = 'profit_attributable_to_ordinary_shareholders_company', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Earnings Per Share (Company)'}) ON CREATE SET m.id = 'earnings_per_share_company', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Dividend Per Share (Company)'}) ON CREATE SET m.id = 'dividend_per_share_company', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Total Assets (Company)'}) ON CREATE SET m.id = 'total_assets_company', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Total Equity (Company)'}) ON CREATE SET m.id = 'total_equity_company', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Stated Capital (Company)'}) ON CREATE SET m.id = 'stated_capital_company', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Revenue Reserves (Company)'}) ON CREATE SET m.id = 'revenue_reserves_company', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Retirement Benefit Obligation (Company)'}) ON CREATE SET m.id = 'retirement_benefit_obligation_company', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Trade and Other Payables (Company)'}) ON CREATE SET m.id = 'trade_and_other_payables_company', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Amounts Due to Related Parties (Company)'}) ON CREATE SET m.id = 'amounts_due_to_related_parties_company', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Total Liabilities (Company)'}) ON CREATE SET m.id = 'total_liabilities_company', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Net Asset Value per Share (Company)'}) ON CREATE SET m.id = 'net_asset_value_per_share_company', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Market Capitalization (Company)'}) ON CREATE SET m.id = 'market_capitalization_company', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Float adjusted Market Capitalization (Company)'}) ON CREATE SET m.id = 'float_adjusted_market_capitalization_company', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Price Earnings Ratio (Company)'}) ON CREATE SET m.id = 'price_earnings_ratio_company', m.unit = 'Times';

// Query 54
MERGE (m:Metric {name: 'Highest Share Price (Company)'}) ON CREATE SET m.id = 'highest_share_price_company', m.unit = 'Rs';

// Query 55
MERGE (m:Metric {name: 'Lowest Share Price (Company)'}) ON CREATE SET m.id = 'lowest_share_price_company', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Last Traded Price (Company)'}) ON CREATE SET m.id = 'last_traded_price_company', m.unit = 'Rs';

// Query 57
MERGE (m:Metric {name: 'Operating profit before working capital changes (Company)'}) ON CREATE SET m.id = 'operating_profit_before_working_capital_changes_company', m.unit = 'Rs';

// Query 58
MERGE (m:Metric {name: 'Cash generated from operations (Company)'}) ON CREATE SET m.id = 'cash_generated_from_operations_company', m.unit = 'Rs';

// Query 59
MERGE (m:Metric {name: 'Interest Paid (Company)'}) ON CREATE SET m.id = 'interest_paid_company', m.unit = 'Rs';

// Query 60
MERGE (m:Metric {name: 'Income Tax Paid (Company)'}) ON CREATE SET m.id = 'income_tax_paid_company', m.unit = 'Rs';

// Query 61
MERGE (m:Metric {name: 'Net cash flows from Operating activities (Company)'}) ON CREATE SET m.id = 'net_cash_flows_from_operating_activities_company', m.unit = 'Rs';

// Query 62
MERGE (m:Metric {name: 'Net cashflows from investing activities (Company)'}) ON CREATE SET m.id = 'net_cashflows_from_investing_activities_company', m.unit = 'Rs';

// Query 63
MERGE (m:Metric {name: 'Net cash inflow before financing (Company)'}) ON CREATE SET m.id = 'net_cash_inflow_before_financing_company', m.unit = 'Rs';

// Query 64
MERGE (m:Metric {name: 'Net cash flows from financing activities (Company)'}) ON CREATE SET m.id = 'net_cash_flows_from_financing_activities_company', m.unit = 'Rs';

// Query 65
MERGE (m:Metric {name: 'Net Increase in cash and cash equivalents (Company)'}) ON CREATE SET m.id = 'net_increase_in_cash_and_cash_equivalents_company', m.unit = 'Rs';

// Query 66
MERGE (m:Metric {name: 'Cash and cash equivalents at the beginning of the period (Company)'}) ON CREATE SET m.id = 'cash_and_cash_equivalents_at_the_beginning_of_the_period_company', m.unit = 'Rs';

// Query 67
MERGE (m:Metric {name: 'Cash and cash equivalents at the end of the period (Company)'}) ON CREATE SET m.id = 'cash_and_cash_equivalents_at_the_end_of_the_period_company', m.unit = 'Rs';

// Query 68
MERGE (m:Metric {name: 'Revenue (Consolidated)'}) ON CREATE SET m.id = 'revenue_consolidated', m.unit = 'Rs';

// Query 69
MERGE (m:Metric {name: 'Cost of Sales (Consolidated)'}) ON CREATE SET m.id = 'cost_of_sales_consolidated', m.unit = 'Rs';

// Query 70
MERGE (m:Metric {name: 'Gross Profit (Consolidated)'}) ON CREATE SET m.id = 'gross_profit_consolidated', m.unit = 'Rs';

// Query 71
MERGE (m:Metric {name: 'Other Operating Income (Consolidated)'}) ON CREATE SET m.id = 'other_operating_income_consolidated', m.unit = 'Rs';

// Query 72
MERGE (m:Metric {name: 'Distribution Costs (Consolidated)'}) ON CREATE SET m.id = 'distribution_costs_consolidated', m.unit = 'Rs';

// Query 73
MERGE (m:Metric {name: 'Administrative Expenses (Consolidated)'}) ON CREATE SET m.id = 'administrative_expenses_consolidated', m.unit = 'Rs';

// Query 74
MERGE (m:Metric {name: 'Profit Before Tax (Consolidated)'}) ON CREATE SET m.id = 'profit_before_tax_consolidated', m.unit = 'Rs';

// Query 75
MERGE (m:Metric {name: 'Taxation (Consolidated)'}) ON CREATE SET m.id = 'taxation_consolidated', m.unit = 'Rs';

// Query 76
MERGE (m:Metric {name: 'Profit for the Period from Continuing Operations (Consolidated)'}) ON CREATE SET m.id = 'profit_for_the_period_from_continuing_operations_consolidated', m.unit = 'Rs';

// Query 77
MERGE (m:Metric {name: 'Loss after tax for the period from discontinued operations (Consolidated)'}) ON CREATE SET m.id = 'loss_after_tax_for_the_period_from_discontinued_operations_consolidated', m.unit = 'Rs';

// Query 78
MERGE (m:Metric {name: 'Earnings Per Share (Consolidated)'}) ON CREATE SET m.id = 'earnings_per_share_consolidated', m.unit = 'Rs';

// Query 79
MERGE (m:Metric {name: 'Earnings Per Share from Continuing Operations (Consolidated)'}) ON CREATE SET m.id = 'earnings_per_share_from_continuing_operations_consolidated', m.unit = 'Rs';

// Query 80
MERGE (m:Metric {name: 'Dividend per Share (Consolidated)'}) ON CREATE SET m.id = 'dividend_per_share_consolidated', m.unit = 'Rs';

// Query 81
MERGE (m:Metric {name: 'Total Assets (Consolidated)'}) ON CREATE SET m.id = 'total_assets_consolidated', m.unit = 'Rs';

// Query 82
MERGE (m:Metric {name: 'Total Equity (Consolidated)'}) ON CREATE SET m.id = 'total_equity_consolidated', m.unit = 'Rs';

// Query 83
MERGE (m:Metric {name: 'Stated Capital (Consolidated)'}) ON CREATE SET m.id = 'stated_capital_consolidated', m.unit = 'Rs';

// Query 84
MERGE (m:Metric {name: 'Revenue Reserves (Consolidated)'}) ON CREATE SET m.id = 'revenue_reserves_consolidated', m.unit = 'Rs';

// Query 85
MERGE (m:Metric {name: 'Foreign Currency Translation (Consolidated)'}) ON CREATE SET m.id = 'foreign_currency_translation_consolidated', m.unit = 'Rs';

// Query 86
MERGE (m:Metric {name: 'Equity Attributable to Equity Holders of the Parent (Consolidated)'}) ON CREATE SET m.id = 'equity_attributable_to_equity_holders_of_the_parent_consolidated', m.unit = 'Rs';

// Query 87
MERGE (m:Metric {name: 'Non Controlling Interest (Equity) (Consolidated)'}) ON CREATE SET m.id = 'non_controlling_interest_equity_consolidated', m.unit = 'Rs';

// Query 88
MERGE (m:Metric {name: 'Retirement Benefit Obligation (Consolidated)'}) ON CREATE SET m.id = 'retirement_benefit_obligation_consolidated', m.unit = 'Rs';

// Query 89
MERGE (m:Metric {name: 'Lease Instalments Payable After One Year (Consolidated)'}) ON CREATE SET m.id = 'lease_instalments_payable_after_one_year_consolidated', m.unit = 'Rs';

// Query 90
MERGE (m:Metric {name: 'Total Liabilities (Consolidated)'}) ON CREATE SET m.id = 'total_liabilities_consolidated', m.unit = 'Rs';

// Query 91
MERGE (m:Metric {name: 'Net Asset Value per Share (Consolidated)'}) ON CREATE SET m.id = 'net_asset_value_per_share_consolidated', m.unit = 'Rs';

// Query 92
MERGE (m:Metric {name: 'Operating profit before working capital changes (Consolidated)'}) ON CREATE SET m.id = 'operating_profit_before_working_capital_changes_consolidated', m.unit = 'Rs';

// Query 93
MERGE (m:Metric {name: 'Loss from discontinued Operations (Consolidated)'}) ON CREATE SET m.id = 'loss_from_discontinued_operations_consolidated', m.unit = 'Rs';

// Query 94
MERGE (m:Metric {name: 'Cash generated from operations (Consolidated)'}) ON CREATE SET m.id = 'cash_generated_from_operations_consolidated', m.unit = 'Rs';

// Query 95
MERGE (m:Metric {name: 'Interest Paid (Consolidated)'}) ON CREATE SET m.id = 'interest_paid_consolidated', m.unit = 'Rs';

// Query 96
MERGE (m:Metric {name: 'Income Tax Paid (Consolidated)'}) ON CREATE SET m.id = 'income_tax_paid_consolidated', m.unit = 'Rs';

// Query 97
MERGE (m:Metric {name: 'Net cash flows from Operating activities (Consolidated)'}) ON CREATE SET m.id = 'net_cash_flows_from_operating_activities_consolidated', m.unit = 'Rs';

// Query 98
MERGE (m:Metric {name: 'Net cashflows from investing activities (Consolidated)'}) ON CREATE SET m.id = 'net_cashflows_from_investing_activities_consolidated', m.unit = 'Rs';

// Query 99
MERGE (m:Metric {name: 'Net cash inflow before financing (Consolidated)'}) ON CREATE SET m.id = 'net_cash_inflow_before_financing_consolidated', m.unit = 'Rs';

// Query 100
MERGE (m:Metric {name: 'Net cash flows from financing activities (Consolidated)'}) ON CREATE SET m.id = 'net_cash_flows_from_financing_activities_consolidated', m.unit = 'Rs';

// Query 101
MERGE (m:Metric {name: 'Net Increase in cash and cash equivalents (Consolidated)'}) ON CREATE SET m.id = 'net_increase_in_cash_and_cash_equivalents_consolidated', m.unit = 'Rs';

// Query 102
MERGE (m:Metric {name: 'Cash and cash equivalents at the beginning of the period (Consolidated)'}) ON CREATE SET m.id = 'cash_and_cash_equivalents_at_the_beginning_of_the_period_consolidated', m.unit = 'Rs';

// Query 103
MERGE (m:Metric {name: 'Cash and cash equivalents at the end of the period (Consolidated)'}) ON CREATE SET m.id = 'cash_and_cash_equivalents_at_the_end_of_the_period_consolidated', m.unit = 'Rs';

// Query 104
MATCH (p:Person {name: 'Dr. Sena Yaddehige'}), (c:Company {name: 'Richard Pieris Exports PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-05-30');

// Query 105
MATCH (p:Person {name: 'Shaminda Yaddehige'}), (c:Company {name: 'Richard Pieris Exports PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-05-30');

// Query 106
MATCH (p:Person {name: 'W.J. Viville P Perera'}), (c:Company {name: 'Richard Pieris Exports PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-05-30');

// Query 107
MATCH (p:Person {name: 'W R Abeysirigunawardena'}), (c:Company {name: 'Richard Pieris Exports PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-05-30');

// Query 108
MATCH (p:Person {name: 'Dr.L.M.K.Tillekeratne'}), (c:Company {name: 'Richard Pieris Exports PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-05-30');

// Query 109
MATCH (p:Person {name: 'Lalith Chandrasiri Wijeyesinghe'}), (c:Company {name: 'Richard Pieris Exports PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-05-30');

// Query 110
MATCH (p:Person {name: 'Dr.Lawrence Perera'}), (c:Company {name: 'Richard Pieris Exports PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-05-30');

// Query 111
MATCH (p:Person {name: 'Charith Ariyarathna'}), (c:Company {name: 'Richard Pieris Exports PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Finance Controller -Exports Sector', r.as_of = date('2024-05-30');

// Query 112
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (a:Company {name: 'Kreston MNS & Company'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 113
MATCH (parent:Company {name: 'Richard Pieris & Company PLC'}), (child:Company {name: 'Richard Pieris Exports PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 84.13, r.as_of = date('2024-03-31');

// Query 114
MATCH (owner:Company {name: 'MSS Investments (Pvt) Limited'}), (company:Company {name: 'Richard Pieris Exports PLC'}) MERGE (owner)-[r:OWNS_SHARES]->(company) ON CREATE SET r.pct = 0.20, r.as_of = date('2024-03-31');

// Query 115
MATCH (owner:Company {name: 'Kalday Private Limited'}), (company:Company {name: 'Richard Pieris Exports PLC'}) MERGE (owner)-[r:OWNS_SHARES]->(company) ON CREATE SET r.pct = 0.48, r.as_of = date('2024-03-31');

// Query 116
MATCH (owner:Company {name: 'Ransiri Enterprises (Pvt) Ltd'}), (company:Company {name: 'Richard Pieris Exports PLC'}) MERGE (owner)-[r:OWNS_SHARES]->(company) ON CREATE SET r.pct = 0.38, r.as_of = date('2024-03-31');

// Query 117
MATCH (owner:Company {name: 'Union Investments (Pvt) ltd'}), (company:Company {name: 'Richard Pieris Exports PLC'}) MERGE (owner)-[r:OWNS_SHARES]->(company) ON CREATE SET r.pct = 0.35, r.as_of = date('2024-03-31');

// Query 118
MATCH (p:Person {name: 'W.J. Viville P Perera'}), (c:Company {name: 'Richard Pieris Exports PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 100, r.as_of = date('2024-03-31');

// Query 119
MATCH (p:Person {name: 'W.J. Viville P Perera'}), (c:Company {name: 'Richard Pieris Exports PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 100, r.as_of = date('2023-03-31');

// Query 120
MATCH (p:Person {name: 'Mr T.T.T.Al-Nakib'}), (c:Company {name: 'Richard Pieris Exports PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 127000, r.pct = 1.14, r.as_of = date('2024-03-31');

// Query 121
MATCH (p:Person {name: 'Mrs.V.Saraswathi'}), (c:Company {name: 'Richard Pieris Exports PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 100000, r.pct = 0.90, r.as_of = date('2024-03-31');

// Query 122
MATCH (p:Person {name: 'Mr. P.Vijendran'}), (c:Company {name: 'Richard Pieris Exports PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 62500, r.pct = 0.56, r.as_of = date('2024-03-31');

// Query 123
MATCH (p:Person {name: 'Ms S Sinthuja'}), (c:Company {name: 'Richard Pieris Exports PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 62200, r.pct = 0.56, r.as_of = date('2024-03-31');

// Query 124
MATCH (p:Person {name: 'Mr S Sivaharan'}), (c:Company {name: 'Richard Pieris Exports PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 52700, r.pct = 0.47, r.as_of = date('2024-03-31');

// Query 125
MATCH (p:Person {name: 'Mrs.M.Y.Amerasinghe'}), (c:Company {name: 'Richard Pieris Exports PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 21998, r.pct = 0.20, r.as_of = date('2024-03-31');

// Query 126
MATCH (p:Person {name: 'Mr S.Malalasekera'}), (c:Company {name: 'Richard Pieris Exports PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 19800, r.pct = 0.18, r.as_of = date('2024-03-31');

// Query 127
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (s:Sector {name: 'Materials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 128
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (p:Product {name: 'rubber based products'}) MERGE (c)-[:OFFERS]->(p);

// Query 129
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (p:Product {name: 'fillers for the rubber industry'}) MERGE (c)-[:OFFERS]->(p);

// Query 130
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Revenue (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1945498000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 131
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Revenue (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3141325000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 132
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Cost of Sales (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1427884000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 133
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Cost of Sales (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2006241000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 134
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Gross Profit (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 517614000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 135
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Gross Profit (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1135084000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 136
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Other Operating Income (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1178000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 137
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Other Operating Income (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1749000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 138
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Distribution Costs (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -90328000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 139
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Distribution Costs (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -336147000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 140
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Administrative Expenses (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -198552000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 141
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Administrative Expenses (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -153920000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 142
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Profit from Operations (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 229912000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 143
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Profit from Operations (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 646766000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 144
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Finance Income (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 110497000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 145
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Finance Income (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 195606000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 146
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Finance Cost (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -3257000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 147
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Finance Cost (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5819000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 148
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Other Financial Items (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -102138000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 149
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Other Financial Items (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 231590000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 150
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Profit Before Tax (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 235014000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 151
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Profit Before Tax (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1068142000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 152
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Taxation (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -131832000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 153
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Taxation (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -139564000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 154
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Profit Attributable to Ordinary Shareholders (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 103182000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 155
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Profit Attributable to Ordinary Shareholders (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 928578000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 156
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Earnings Per Share (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9.24, r.year = 2024, r.as_of = date('2024-03-31');

// Query 157
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Earnings Per Share (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 83.18, r.year = 2023, r.as_of = date('2023-03-31');

// Query 158
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Dividend Per Share (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12.00, r.year = 2024, r.as_of = date('2024-03-31');

// Query 159
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Dividend Per Share (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 35.00, r.year = 2023, r.as_of = date('2023-03-31');

// Query 160
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Total Assets (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3384695000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 161
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Total Assets (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3310119000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 162
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Total Equity (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2940769000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 163
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Total Equity (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2990022000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 164
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Stated Capital (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 220262000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 165
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Stated Capital (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 220262000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 166
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Revenue Reserves (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2720507000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 167
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Revenue Reserves (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2769760000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 168
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Retirement Benefit Obligation (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 109013000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 169
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Retirement Benefit Obligation (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 76294000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 170
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Trade and Other Payables (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 226890000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 171
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Trade and Other Payables (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 220105000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 172
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Amounts Due to Related Parties (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 108023000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 173
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Amounts Due to Related Parties (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 23698000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 174
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Total Liabilities (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 443926000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 175
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Total Liabilities (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 320097000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 176
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net Asset Value per Share (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 263.42, r.year = 2024, r.as_of = date('2024-03-31');

// Query 177
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net Asset Value per Share (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 267.83, r.year = 2023, r.as_of = date('2023-03-31');

// Query 178
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Market Capitalization (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4889720000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 179
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Market Capitalization (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6223788000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 180
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Float adjusted Market Capitalization (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 775999000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 181
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Float adjusted Market Capitalization (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 987715000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 182
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Price Earnings Ratio (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 76.34, r.year = 2024, r.as_of = date('2024-03-31');

// Query 183
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Price Earnings Ratio (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6.36, r.year = 2023, r.as_of = date('2023-03-31');

// Query 184
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Highest Share Price (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 610.00, r.year = 2024, r.as_of = date('2024-03-31');

// Query 185
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Highest Share Price (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 660.00, r.year = 2023, r.as_of = date('2023-03-31');

// Query 186
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Lowest Share Price (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 430.00, r.year = 2024, r.as_of = date('2024-03-31');

// Query 187
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Lowest Share Price (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 547.00, r.year = 2023, r.as_of = date('2023-03-31');

// Query 188
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Last Traded Price (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 438.00, r.year = 2024, r.as_of = date('2024-03-31');

// Query 189
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Last Traded Price (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 557.50, r.year = 2023, r.as_of = date('2023-03-31');

// Query 190
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Operating profit before working capital changes (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 159311000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 191
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Operating profit before working capital changes (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 901507000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 192
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Cash generated from operations (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 598187000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 193
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Cash generated from operations (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 600870000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 194
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Interest Paid (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -3257000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 195
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Interest Paid (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5819000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 196
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Income Tax Paid (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -132433000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 197
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Income Tax Paid (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -331842000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 198
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net cash flows from Operating activities (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 449511000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 199
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net cash flows from Operating activities (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 259942000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 200
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net cashflows from investing activities (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 46967000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 201
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net cashflows from investing activities (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 56555000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 202
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net cash inflow before financing (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 496478000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 203
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net cash inflow before financing (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 316497000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 204
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net cash flows from financing activities (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -133965000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 205
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net cash flows from financing activities (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -390731000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 206
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net Increase in cash and cash equivalents (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 362513000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 207
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net Increase in cash and cash equivalents (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -74234000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 208
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Cash and cash equivalents at the beginning of the period (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 919714000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 209
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Cash and cash equivalents at the beginning of the period (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 993948000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 210
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Cash and cash equivalents at the end of the period (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1282227000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 211
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Cash and cash equivalents at the end of the period (Company)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 919714000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 212
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Revenue (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7120443000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 213
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Revenue (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9040796000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 214
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Cost of Sales (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5731299000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 215
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Cost of Sales (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6436887000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 216
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Gross Profit (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1389144000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 217
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Gross Profit (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2603909000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 218
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Other Operating Income (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 40565000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 219
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Other Operating Income (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 27663000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 220
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Distribution Costs (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -759240000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 221
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Distribution Costs (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1440854000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 222
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Administrative Expenses (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -374461000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 223
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Administrative Expenses (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -454330000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 224
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Profit Before Tax (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 84631000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 225
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Profit Before Tax (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1287317000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 226
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Taxation (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -50495000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 227
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Taxation (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -240260000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 228
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Profit for the Period from Continuing Operations (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 34136000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 229
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Profit for the Period from Continuing Operations (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1047057000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 230
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Loss after tax for the period from discontinued operations (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -77000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 231
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Loss after tax for the period from discontinued operations (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -69000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 232
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Earnings Per Share (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.74, r.year = 2024, r.as_of = date('2024-03-31');

// Query 233
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Earnings Per Share (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 87.69, r.year = 2023, r.as_of = date('2023-03-31');

// Query 234
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Earnings Per Share from Continuing Operations (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.73, r.year = 2024, r.as_of = date('2024-03-31');

// Query 235
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Earnings Per Share from Continuing Operations (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 87.68, r.year = 2023, r.as_of = date('2023-03-31');

// Query 236
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Dividend per Share (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12.00, r.year = 2024, r.as_of = date('2024-03-31');

// Query 237
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Dividend per Share (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 35.00, r.year = 2023, r.as_of = date('2023-03-31');

// Query 238
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Total Assets (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9741087000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 239
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Total Assets (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8313737000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 240
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Total Equity (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5130615000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 241
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Total Equity (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5290571000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 242
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Stated Capital (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 220262000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 243
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Stated Capital (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 220262000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 244
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Revenue Reserves (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3205775000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 245
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Revenue Reserves (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3298080000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 246
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Foreign Currency Translation (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 265112000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 247
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Foreign Currency Translation (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 298144000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 248
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Equity Attributable to Equity Holders of the Parent (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3691149000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 249
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Equity Attributable to Equity Holders of the Parent (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3816486000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 250
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Non Controlling Interest (Equity) (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1439466000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 251
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Non Controlling Interest (Equity) (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1474085000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 252
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Retirement Benefit Obligation (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 138266000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 253
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Retirement Benefit Obligation (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 107657000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 254
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Lease Instalments Payable After One Year (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 145270000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 255
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Lease Instalments Payable After One Year (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 153980000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 256
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Total Liabilities (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4610472000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 257
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Total Liabilities (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3023166000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 258
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net Asset Value per Share (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 330.64, r.year = 2024, r.as_of = date('2024-03-31');

// Query 259
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net Asset Value per Share (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 341.86, r.year = 2023, r.as_of = date('2023-03-31');

// Query 260
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Operating profit before working capital changes (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 163620000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 261
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Operating profit before working capital changes (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1366736000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 262
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Loss from discontinued Operations (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -77000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 263
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Loss from discontinued Operations (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -69000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 264
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Cash generated from operations (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 223276000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 265
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Cash generated from operations (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1183068000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 266
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Interest Paid (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -42696000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 267
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Interest Paid (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -24182000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 268
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Income Tax Paid (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -185756000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 269
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Income Tax Paid (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -678335000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 270
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net cash flows from Operating activities (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -40332000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 271
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net cash flows from Operating activities (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 468860000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 272
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net cashflows from investing activities (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -557208000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 273
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net cashflows from investing activities (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -573794000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 274
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net cash inflow before financing (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -597540000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 275
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net cash inflow before financing (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -104934000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 276
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net cash flows from financing activities (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 663806000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 277
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net cash flows from financing activities (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -512940000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 278
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net Increase in cash and cash equivalents (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 66266000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 279
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Net Increase in cash and cash equivalents (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -617874000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 280
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Cash and cash equivalents at the beginning of the period (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 332353000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 281
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Cash and cash equivalents at the beginning of the period (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 950227000, r.year = 2023, r.as_of = date('2023-03-31');

// Query 282
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Cash and cash equivalents at the end of the period (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 398619000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 283
MATCH (c:Company {name: 'Richard Pieris Exports PLC'}), (m:Metric {name: 'Cash and cash equivalents at the end of the period (Consolidated)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 332353000, r.year = 2023, r.as_of = date('2023-03-31');

// Total queries: 283
// Generated on: 2025-10-02T20:28:29.650469
