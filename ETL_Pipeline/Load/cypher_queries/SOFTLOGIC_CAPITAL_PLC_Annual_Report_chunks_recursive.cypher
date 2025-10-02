// Query 1
MERGE (c:Company {name: 'Softlogic Capital PLC'}) ON CREATE SET c.id = 'softlogic_capital_plc', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 2
MERGE (c:Company {name: 'Softlogic Holdings PLC'}) ON CREATE SET c.id = 'softlogic_holdings_plc';

// Query 3
MERGE (c:Company {name: 'Softlogic Finance PLC'}) ON CREATE SET c.id = 'softlogic_finance_plc';

// Query 4
MERGE (c:Company {name: 'Softlogic Life Insurance PLC'}) ON CREATE SET c.id = 'softlogic_life_insurance_plc';

// Query 5
MERGE (c:Company {name: 'SCAP ONE (PVT) LTD'}) ON CREATE SET c.id = 'scap_one_pvt_ltd';

// Query 6
MERGE (c:Company {name: 'S R ONE (PVT) LTD'}) ON CREATE SET c.id = 's_r_one_pvt_ltd';

// Query 7
MERGE (c:Company {name: 'Softlogic Stockbrokers (Pvt) Ltd'}) ON CREATE SET c.id = 'softlogic_stockbrokers_pvt_ltd';

// Query 8
MERGE (c:Company {name: 'Softlogic Asset Management (Private) Limited'}) ON CREATE SET c.id = 'softlogic_asset_management_private_limited';

// Query 9
MERGE (c:Company {name: 'HNB'}) ON CREATE SET c.id = 'hnb';

// Query 10
MERGE (c:Company {name: 'NDB'}) ON CREATE SET c.id = 'ndb';

// Query 11
MERGE (p:Person {name: 'A. K. Pathirage'}) ON CREATE SET p.id = 'a_k_pathirage';

// Query 12
MERGE (p:Person {name: 'R. J. Perera'}) ON CREATE SET p.id = 'r_j_perera';

// Query 13
MERGE (p:Person {name: 'A. M. Pasqual'}) ON CREATE SET p.id = 'a_m_pasqual';

// Query 14
MERGE (p:Person {name: 'S. Somasunderam'}) ON CREATE SET p.id = 's_somasunderam';

// Query 15
MERGE (p:Person {name: 'H. Kaimal'}) ON CREATE SET p.id = 'h_kaimal';

// Query 16
MERGE (p:Person {name: 'N. C. A. Abeyesekera'}) ON CREATE SET p.id = 'n_c_a_abeyesekera';

// Query 17
MERGE (p:Person {name: 'W. L. P. Wijewardena'}) ON CREATE SET p.id = 'w_l_p_wijewardena';

// Query 18
MERGE (p:Person {name: 'T. M. I. Ahamed'}) ON CREATE SET p.id = 't_m_i_ahamed';

// Query 19
MERGE (p:Person {name: 'A. Russell-Davison'}) ON CREATE SET p.id = 'a_russell_davison';

// Query 20
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 21
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 22
MERGE (p:Product {name: 'specialized business loans'}) ON CREATE SET p.id = 'specialized_business_loans';

// Query 23
MERGE (p:Product {name: 'regular business loans'}) ON CREATE SET p.id = 'regular_business_loans';

// Query 24
MERGE (p:Product {name: 'vehicle and machinery loans'}) ON CREATE SET p.id = 'vehicle_and_machinery_loans';

// Query 25
MERGE (p:Product {name: 'personal financing'}) ON CREATE SET p.id = 'personal_financing';

// Query 26
MERGE (p:Product {name: 'leasing'}) ON CREATE SET p.id = 'leasing';

// Query 27
MERGE (p:Product {name: 'hire purchase'}) ON CREATE SET p.id = 'hire_purchase';

// Query 28
MERGE (p:Product {name: 'fund mobilization'}) ON CREATE SET p.id = 'fund_mobilization';

// Query 29
MERGE (p:Product {name: 'life insurance solutions'}) ON CREATE SET p.id = 'life_insurance_solutions';

// Query 30
MERGE (p:Product {name: 'investment management'}) ON CREATE SET p.id = 'investment_management';

// Query 31
MERGE (p:Product {name: 'consultancy services'}) ON CREATE SET p.id = 'consultancy_services';

// Query 32
MERGE (p:Product {name: 'advisory services'}) ON CREATE SET p.id = 'advisory_services';

// Query 33
MERGE (p:Product {name: 'stockbroking services'}) ON CREATE SET p.id = 'stockbroking_services';

// Query 34
MERGE (p:Product {name: 'Asset Management Services for Unit Trust Funds'}) ON CREATE SET p.id = 'asset_management_services_for_unit_trust_funds';

// Query 35
MERGE (p:Product {name: 'gold loans'}) ON CREATE SET p.id = 'gold_loans';

// Query 36
MERGE (m:Metric {name: 'Total Revenue'}) ON CREATE SET m.id = 'total_revenue', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Profit Before Interest And Tax'}) ON CREATE SET m.id = 'profit_before_interest_and_tax', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Income Tax Expense'}) ON CREATE SET m.id = 'income_tax_expense', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Profit For The Year Attributable To Equity Holders'}) ON CREATE SET m.id = 'profit_for_the_year_attributable_to_equity_holders', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Operating Profit Margin'}) ON CREATE SET m.id = 'operating_profit_margin', m.unit = '%';

// Query 44
MERGE (m:Metric {name: 'Net Profit Margin'}) ON CREATE SET m.id = 'net_profit_margin', m.unit = '%';

// Query 45
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Return On Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 47
MERGE (m:Metric {name: 'Return On Capital Employed'}) ON CREATE SET m.id = 'return_on_capital_employed', m.unit = '%';

// Query 48
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Shareholders Funds'}) ON CREATE SET m.id = 'shareholders_funds', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Total Interest Bearing Borrowings'}) ON CREATE SET m.id = 'total_interest_bearing_borrowings', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Public Deposits'}) ON CREATE SET m.id = 'public_deposits', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Total Gross Income'}) ON CREATE SET m.id = 'total_gross_income', m.unit = 'Rs';

// Query 54
MERGE (m:Metric {name: 'Loans And Advances Portfolio'}) ON CREATE SET m.id = 'loans_and_advances_portfolio', m.unit = 'Rs';

// Query 55
MERGE (m:Metric {name: 'Lease And Hire Purchase Portfolio'}) ON CREATE SET m.id = 'lease_and_hire_purchase_portfolio', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Customer Deposit Base'}) ON CREATE SET m.id = 'customer_deposit_base', m.unit = 'Rs';

// Query 57
MERGE (m:Metric {name: 'Interest Income'}) ON CREATE SET m.id = 'interest_income', m.unit = 'Rs';

// Query 58
MERGE (m:Metric {name: 'Fee And Trading Income'}) ON CREATE SET m.id = 'fee_and_trading_income', m.unit = 'Rs';

// Query 59
MERGE (m:Metric {name: 'Other Income And Gains'}) ON CREATE SET m.id = 'other_income_and_gains', m.unit = 'Rs';

// Query 60
MERGE (m:Metric {name: 'Dividend Income'}) ON CREATE SET m.id = 'dividend_income', m.unit = 'Rs';

// Query 61
MERGE (m:Metric {name: 'Interest Expenses'}) ON CREATE SET m.id = 'interest_expenses', m.unit = 'Rs';

// Query 62
MERGE (m:Metric {name: 'Other Direct Expenses'}) ON CREATE SET m.id = 'other_direct_expenses', m.unit = 'Rs';

// Query 63
MERGE (m:Metric {name: 'Net Earned Premium'}) ON CREATE SET m.id = 'net_earned_premium', m.unit = 'Rs';

// Query 64
MERGE (m:Metric {name: 'Net Realized Gains'}) ON CREATE SET m.id = 'net_realized_gains', m.unit = 'Rs';

// Query 65
MERGE (m:Metric {name: 'Net Fair Value Gains'}) ON CREATE SET m.id = 'net_fair_value_gains', m.unit = 'Rs';

// Query 66
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 67
MERGE (m:Metric {name: 'Reserve Fund'}) ON CREATE SET m.id = 'reserve_fund', m.unit = 'Rs';

// Query 68
MERGE (m:Metric {name: 'Fair Value Reserve'}) ON CREATE SET m.id = 'fair_value_reserve', m.unit = 'Rs';

// Query 69
MERGE (m:Metric {name: 'Other Fair Value Reserve'}) ON CREATE SET m.id = 'other_fair_value_reserve', m.unit = 'Rs';

// Query 70
MERGE (m:Metric {name: 'Revaluation Reserve'}) ON CREATE SET m.id = 'revaluation_reserve', m.unit = 'Rs';

// Query 71
MERGE (m:Metric {name: 'Restricted Regulatory Reserve'}) ON CREATE SET m.id = 'restricted_regulatory_reserve', m.unit = 'Rs';

// Query 72
MERGE (m:Metric {name: 'Non Distributable Regulatory Loss Allowance Reserve'}) ON CREATE SET m.id = 'non_distributable_regulatory_loss_allowance_reserve', m.unit = 'Rs';

// Query 73
MERGE (m:Metric {name: 'Retained Earnings'}) ON CREATE SET m.id = 'retained_earnings', m.unit = 'Rs';

// Query 74
MERGE (m:Metric {name: 'Non Controlling Interest'}) ON CREATE SET m.id = 'non_controlling_interest', m.unit = 'Rs';

// Query 75
MERGE (m:Metric {name: 'Bank Overdraft'}) ON CREATE SET m.id = 'bank_overdraft', m.unit = 'Rs';

// Query 76
MERGE (m:Metric {name: 'Trade And Other Payables'}) ON CREATE SET m.id = 'trade_and_other_payables', m.unit = 'Rs';

// Query 77
MERGE (m:Metric {name: 'Number Of Shares'}) ON CREATE SET m.id = 'number_of_shares', m.unit = 'Count';

// Query 78
MERGE (m:Metric {name: 'Basic Earnings Per Share'}) ON CREATE SET m.id = 'basic_earnings_per_share', m.unit = 'Rs';

// Query 79
MERGE (m:Metric {name: 'Net Assets Per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs';

// Query 80
MERGE (m:Metric {name: 'Dividend Per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs';

// Query 81
MERGE (m:Metric {name: 'Dividend Payout Ratio'}) ON CREATE SET m.id = 'dividend_payout_ratio', m.unit = '%';

// Query 82
MERGE (m:Metric {name: 'Market Capitalization'}) ON CREATE SET m.id = 'market_capitalization', m.unit = 'Rs';

// Query 83
MERGE (m:Metric {name: 'Turnover'}) ON CREATE SET m.id = 'turnover', m.unit = 'Rs';

// Query 84
MERGE (m:Metric {name: 'Tax Paid'}) ON CREATE SET m.id = 'tax_paid', m.unit = 'Rs';

// Query 85
MERGE (m:Metric {name: 'Interest Paid'}) ON CREATE SET m.id = 'interest_paid', m.unit = 'Rs';

// Query 86
MERGE (m:Metric {name: 'Gratuity Paid'}) ON CREATE SET m.id = 'gratuity_paid', m.unit = 'Rs';

// Query 87
MERGE (m:Metric {name: 'Net Cash Used In Operations'}) ON CREATE SET m.id = 'net_cash_used_in_operations', m.unit = 'Rs';

// Query 88
MERGE (m:Metric {name: 'Investment In Subsidiaries'}) ON CREATE SET m.id = 'investment_in_subsidiaries', m.unit = 'Rs';

// Query 89
MERGE (m:Metric {name: 'Proceeds From Non Controlling Interest'}) ON CREATE SET m.id = 'proceeds_from_non_controlling_interest', m.unit = 'Rs';

// Query 90
MERGE (m:Metric {name: 'Proceeds On Disposal Of Property Plant And Equipment'}) ON CREATE SET m.id = 'proceeds_on_disposal_of_property_plant_and_equipment', m.unit = 'Rs';

// Query 91
MERGE (m:Metric {name: 'Purchase Of Property Plant And Equipment And Intangible Assets'}) ON CREATE SET m.id = 'purchase_of_property_plant_and_equipment_and_intangible_assets', m.unit = 'Rs';

// Query 92
MERGE (m:Metric {name: 'Total Securitization Borrowings'}) ON CREATE SET m.id = 'total_securitization_borrowings', m.unit = 'Rs';

// Query 93
MATCH (p:Person {name: 'A. K. Pathirage'}), (c:Company {name: 'Softlogic Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 94
MATCH (p:Person {name: 'R. J. Perera'}), (c:Company {name: 'Softlogic Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 95
MATCH (p:Person {name: 'A. M. Pasqual'}), (c:Company {name: 'Softlogic Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 96
MATCH (p:Person {name: 'S. Somasunderam'}), (c:Company {name: 'Softlogic Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 97
MATCH (p:Person {name: 'H. Kaimal'}), (c:Company {name: 'Softlogic Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Independent Non-Executive Director', r.as_of = date('2023-08-25');

// Query 98
MATCH (p:Person {name: 'N. C. A. Abeyesekera'}), (c:Company {name: 'Softlogic Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2023-12-06');

// Query 99
MATCH (p:Person {name: 'W. L. P. Wijewardena'}), (c:Company {name: 'Softlogic Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2023-12-31');

// Query 100
MATCH (p:Person {name: 'T. M. I. Ahamed'}), (c:Company {name: 'Softlogic Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-01-31');

// Query 101
MATCH (p:Person {name: 'A. Russell-Davison'}), (c:Company {name: 'Softlogic Capital PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-05-01');

// Query 102
MATCH (p:Person {name: 'R. J. Perera'}), (c:Company {name: 'Softlogic Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 103
MATCH (p:Person {name: 'H. Kaimal'}), (c:Company {name: 'Softlogic Holdings PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2024-03-31');

// Query 104
MATCH (parent:Company {name: 'Softlogic Holdings PLC'}), (child:Company {name: 'Softlogic Capital PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 77.36, r.as_of = date('2024-03-31');

// Query 105
MATCH (parent:Company {name: 'Softlogic Capital PLC'}), (child:Company {name: 'Softlogic Life Insurance PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 51.72;

// Query 106
MATCH (parent:Company {name: 'Softlogic Capital PLC'}), (child:Company {name: 'Softlogic Finance PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 95.44;

// Query 107
MATCH (parent:Company {name: 'Softlogic Capital PLC'}), (child:Company {name: 'SCAP ONE (PVT) LTD'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0;

// Query 108
MATCH (parent:Company {name: 'Softlogic Capital PLC'}), (child:Company {name: 'S R ONE (PVT) LTD'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0;

// Query 109
MATCH (parent:Company {name: 'Softlogic Capital PLC'}), (child:Company {name: 'Softlogic Stockbrokers (Pvt) Ltd'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 80.1;

// Query 110
MATCH (parent:Company {name: 'Softlogic Capital PLC'}), (child:Company {name: 'Softlogic Asset Management (Private) Limited'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0;

// Query 111
MATCH (p:Person {name: 'A. K. Pathirage'}), (c:Company {name: 'Softlogic Capital PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 2847872, r.as_of = date('2024-03-31');

// Query 112
MATCH (p:Person {name: 'A. M. Pasqual'}), (c:Company {name: 'Softlogic Capital PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.count = 14200, r.as_of = date('2023-03-31');

// Query 113
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 114
MATCH (c:Company {name: 'Softlogic Finance PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 115
MATCH (c:Company {name: 'Softlogic Life Insurance PLC'}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 116
MATCH (c:Company {name: 'Softlogic Stockbrokers (Pvt) Ltd'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 117
MATCH (c:Company {name: 'Softlogic Asset Management (Private) Limited'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 118
MATCH (c:Company {name: 'Softlogic Finance PLC'}), (p:Product {name: 'specialized business loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 119
MATCH (c:Company {name: 'Softlogic Finance PLC'}), (p:Product {name: 'regular business loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 120
MATCH (c:Company {name: 'Softlogic Finance PLC'}), (p:Product {name: 'vehicle and machinery loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 121
MATCH (c:Company {name: 'Softlogic Finance PLC'}), (p:Product {name: 'personal financing'}) MERGE (c)-[:OFFERS]->(p);

// Query 122
MATCH (c:Company {name: 'Softlogic Finance PLC'}), (p:Product {name: 'leasing'}) MERGE (c)-[:OFFERS]->(p);

// Query 123
MATCH (c:Company {name: 'Softlogic Finance PLC'}), (p:Product {name: 'hire purchase'}) MERGE (c)-[:OFFERS]->(p);

// Query 124
MATCH (c:Company {name: 'Softlogic Finance PLC'}), (p:Product {name: 'fund mobilization'}) MERGE (c)-[:OFFERS]->(p);

// Query 125
MATCH (c:Company {name: 'Softlogic Finance PLC'}), (p:Product {name: 'gold loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 126
MATCH (c:Company {name: 'Softlogic Life Insurance PLC'}), (p:Product {name: 'life insurance solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 127
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (p:Product {name: 'investment management'}) MERGE (c)-[:OFFERS]->(p);

// Query 128
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (p:Product {name: 'consultancy services'}) MERGE (c)-[:OFFERS]->(p);

// Query 129
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (p:Product {name: 'advisory services'}) MERGE (c)-[:OFFERS]->(p);

// Query 130
MATCH (c:Company {name: 'Softlogic Stockbrokers (Pvt) Ltd'}), (p:Product {name: 'stockbroking services'}) MERGE (c)-[:OFFERS]->(p);

// Query 131
MATCH (c:Company {name: 'Softlogic Asset Management (Private) Limited'}), (p:Product {name: 'Asset Management Services for Unit Trust Funds'}) MERGE (c)-[:OFFERS]->(p);

// Query 132
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 36730000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 133
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 32687000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 134
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10830000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 135
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8085000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 136
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Profit Before Interest And Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1864000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 137
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Profit Before Interest And Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5639000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 138
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -3685000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 139
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -626000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 140
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -498000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 141
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1765000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 142
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -4183000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 143
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2391000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 144
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Profit For The Year Attributable To Equity Holders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5565000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 145
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Profit For The Year Attributable To Equity Holders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -3443000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 146
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Operating Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 29.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 147
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Operating Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 25.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 148
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -11.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 149
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Profit Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -7.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 150
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 151
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -4.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 152
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Return On Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -111.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 153
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Return On Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -32.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 154
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Return On Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 155
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Return On Capital Employed'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 156
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 65782000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 157
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 74074000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 158
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3777000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 159
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7539000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 160
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2644000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 161
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2380000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 162
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Interest Bearing Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19636000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 163
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Interest Bearing Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 21686000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 164
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Public Deposits'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7482000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 165
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Public Deposits'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12431000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 166
MATCH (c:Company {name: 'Softlogic Finance PLC'}), (m:Metric {name: 'Total Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2576000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 167
MATCH (c:Company {name: 'Softlogic Finance PLC'}), (m:Metric {name: 'Total Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3925000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 168
MATCH (c:Company {name: 'Softlogic Finance PLC'}), (m:Metric {name: 'Loans And Advances Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3840000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 169
MATCH (c:Company {name: 'Softlogic Finance PLC'}), (m:Metric {name: 'Loans And Advances Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8843000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 170
MATCH (c:Company {name: 'Softlogic Finance PLC'}), (m:Metric {name: 'Lease And Hire Purchase Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3998000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 171
MATCH (c:Company {name: 'Softlogic Finance PLC'}), (m:Metric {name: 'Lease And Hire Purchase Portfolio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7816000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 172
MATCH (c:Company {name: 'Softlogic Finance PLC'}), (m:Metric {name: 'Customer Deposit Base'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7482000000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 173
MATCH (c:Company {name: 'Softlogic Finance PLC'}), (m:Metric {name: 'Customer Deposit Base'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12431000000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 174
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10211400060.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 175
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10132540025.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 176
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5447003547.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 177
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4230637729.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 178
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4779671661.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 179
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Earned Premium'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 25032613563.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 180
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Earned Premium'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 20458557682.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 181
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Earned Premium'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19165724038.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 182
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Earned Premium'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 15066693570.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 183
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Earned Premium'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11919961361.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 184
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Fee And Trading Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 321899115.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 185
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Fee And Trading Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 325488669.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 186
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Fee And Trading Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 666703217.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 187
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Fee And Trading Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 491474441.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 188
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Fee And Trading Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 287755532.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 189
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Other Income And Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 203009380.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 190
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Other Income And Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1171485176.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 191
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Other Income And Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1947325948.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 192
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Other Income And Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 520415775.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 193
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Other Income And Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 114522104.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 194
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Realized Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 809052570.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 195
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Realized Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 196743422.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 196
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Realized Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 284364372.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 197
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Realized Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 245427071.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 198
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Realized Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 83133984.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 199
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Fair Value Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 99237781.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 200
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Fair Value Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 283819758.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 201
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Fair Value Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -108283254.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 202
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Fair Value Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 306540503.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 203
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Fair Value Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 480253993.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 204
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Dividend Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 52469629.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 205
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Dividend Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 118597711.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 206
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Dividend Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 29893003.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 207
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Dividend Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 75952336.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 208
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Dividend Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 112105515.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 209
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 36729682098.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 210
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 32687232443.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 211
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 27432730871.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 212
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 20937141425.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 213
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 17777404150.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 214
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5549257907.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 215
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6264902431.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 216
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2487082301.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 217
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2529703867.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 218
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2874439021.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 219
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1089165794.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 220
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 763784349.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 221
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 96964552.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 222
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 51547762.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 223
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 24676134.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 224
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Fee And Trading Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 201968176.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 225
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Fee And Trading Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 129485084.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 226
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Fee And Trading Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 126565163.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 227
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Fee And Trading Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 176210469.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 228
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Fee And Trading Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 153983871.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 229
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Other Income And Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 23727820.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 230
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Other Income And Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10929981.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 231
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Other Income And Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 166630030.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 232
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Other Income And Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14485272.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 233
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Other Income And Gains'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10295208.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 234
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Dividend Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 618202110.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 235
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Dividend Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 584983902.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 236
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Dividend Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 593135579.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 237
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Dividend Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 586701808.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 238
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Dividend Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1818589.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 239
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1933063900.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 240
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1489183316.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 241
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 983295324.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 242
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 828945311.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 243
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 190773802.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 244
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2472514648.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 245
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2147379739.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 246
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -587341744.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 247
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -444070552.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 248
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -269369077.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 249
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Other Direct Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -33882002.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 250
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Other Direct Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -18010466.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 251
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Other Direct Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -9753622.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 252
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Other Direct Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -25777217.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 253
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Other Direct Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -38038205.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 254
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -573332750.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 255
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -676206889.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 256
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 386199958.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 257
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 359097542.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 258
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -116633480.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 259
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3891595200.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 260
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3891595200.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 261
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3891595200.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 262
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3891595200.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 263
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3891595200.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 264
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Reserve Fund'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 260448732.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 265
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Reserve Fund'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 260448732.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 266
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Fair Value Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1374558535.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 267
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Fair Value Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1806203820.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 268
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Fair Value Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -40153489.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 269
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Fair Value Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -83067326.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 270
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Fair Value Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -70702177.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 271
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Fair Value Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -21442293.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 272
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Fair Value Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -18922229.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 273
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Other Fair Value Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7284972867.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 274
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Other Fair Value Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10162330805.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 275
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Other Fair Value Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13656406108.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 276
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Revaluation Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 87989463.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 277
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Revaluation Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 216993842.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 278
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Restricted Regulatory Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 798004000.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 279
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Restricted Regulatory Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 798004000.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 280
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Non Distributable Regulatory Loss Allowance Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1736237951.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 281
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Non Distributable Regulatory Loss Allowance Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1748974244.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 282
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -8044183367.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 283
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2729795739.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 284
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5558504031.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 285
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -804064701.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 286
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 314366509.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 287
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 107400250.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 288
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -286175935.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 289
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2644466556.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 290
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2380016459.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 291
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5577910547.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 292
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13166793978.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 293
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 17791665640.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 294
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3977553157.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 295
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2574901836.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 296
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Non Controlling Interest'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6421096628.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 297
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Non Controlling Interest'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5158825112.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 298
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3776630072.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 299
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7538841571.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 300
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5577910547.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 301
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13166793978.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 302
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 17791665640.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 303
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3977553157.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 304
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2574901836.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 305
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Bank Overdraft'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 328600752.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 306
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Bank Overdraft'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 322060550.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 307
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Bank Overdraft'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 90887124.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 308
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Bank Overdraft'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 405588.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 309
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Bank Overdraft'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 130125750.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 310
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Trade And Other Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 20622331.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 311
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Trade And Other Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 36603791.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 312
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Trade And Other Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 38367426.0, r.year = 2022, r.as_of = date('2022-03-31');

// Query 313
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Trade And Other Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 34608722.0, r.year = 2021, r.as_of = date('2021-03-31');

// Query 314
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Trade And Other Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 46305004.0, r.year = 2020, r.as_of = date('2020-03-31');

// Query 315
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Number Of Shares'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 977187200, r.year = 2024, r.as_of = date('2024-03-31');

// Query 316
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Number Of Shares'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 977187200, r.year = 2023, r.as_of = date('2023-03-31');

// Query 317
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Basic Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5.7, r.year = 2024, r.as_of = date('2024-03-31');

// Query 318
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Basic Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -3.52, r.year = 2023, r.as_of = date('2023-03-31');

// Query 319
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Basic Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -4.85, r.year = 2024, r.as_of = date('2024-03-31');

// Query 320
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Basic Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1.14, r.year = 2023, r.as_of = date('2023-03-31');

// Query 321
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2.71, r.year = 2024, r.as_of = date('2024-03-31');

// Query 322
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.44, r.year = 2023, r.as_of = date('2023-03-31');

// Query 323
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.71, r.year = 2024, r.as_of = date('2024-03-31');

// Query 324
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13.47, r.year = 2023, r.as_of = date('2023-03-31');

// Query 325
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Market Capitalization'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1485129107.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 326
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Market Capitalization'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10846777920.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 327
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Turnover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3885639098.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 328
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Turnover'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13240339136.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 329
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Tax Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1258026525.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 330
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Tax Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -338898498.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 331
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -4719435014.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 332
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5072324669.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 333
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1948803144.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 334
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Interest Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1443649557.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 335
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Gratuity Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -53427562.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 336
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Gratuity Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -21889428.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 337
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Cash Used In Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4005995336.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 338
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Cash Used In Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -4881062715.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 339
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Cash Used In Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1533190702.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 340
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Net Cash Used In Operations'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1960486411.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 341
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Investment In Subsidiaries'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2370089155.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 342
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Investment In Subsidiaries'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -849123314.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 343
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Proceeds From Non Controlling Interest'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 350110320.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 344
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Proceeds From Non Controlling Interest'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2374003.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 345
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Proceeds On Disposal Of Property Plant And Equipment'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 355546753.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 346
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Proceeds On Disposal Of Property Plant And Equipment'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 160786471.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 347
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Purchase Of Property Plant And Equipment And Intangible Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -226746447.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 348
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Purchase Of Property Plant And Equipment And Intangible Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -164876889.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 349
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Purchase Of Property Plant And Equipment And Intangible Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6872780.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 350
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Purchase Of Property Plant And Equipment And Intangible Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -4448983.0, r.year = 2023, r.as_of = date('2023-03-31');

// Query 351
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Securitization Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1636665230.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 352
MATCH (c:Company {name: 'Softlogic Capital PLC'}), (m:Metric {name: 'Total Securitization Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2427017442.0, r.year = 2023, r.as_of = date('2023-03-31');

// Total queries: 352
// Generated on: 2025-10-02T19:31:06.986129
