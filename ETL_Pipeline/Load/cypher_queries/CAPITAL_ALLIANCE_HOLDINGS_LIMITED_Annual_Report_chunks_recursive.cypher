// Query 1
MERGE (c:Company {name: 'Capital Alliance Holdings Limited'}) ON CREATE SET c.id = 'capital_alliance_holdings_limited', c.founded_on = date('2003-03-25'), c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'Capital Alliance PLC'}) ON CREATE SET c.id = 'capital_alliance_plc';

// Query 3
MERGE (c:Company {name: 'Capital Alliance Partners Limited'}) ON CREATE SET c.id = 'capital_alliance_partners_limited';

// Query 4
MERGE (c:Company {name: 'Capital Alliance Securities (Pvt) Limited'}) ON CREATE SET c.id = 'capital_alliance_securities_pvt_limited';

// Query 5
MERGE (c:Company {name: 'Capital Alliance Investments Limited'}) ON CREATE SET c.id = 'capital_alliance_investments_limited';

// Query 6
MERGE (c:Company {name: 'Finnovation (Pvt) Limited'}) ON CREATE SET c.id = 'finnovation_pvt_limited';

// Query 7
MERGE (c:Company {name: 'FipBox (Pvt) Limited'}) ON CREATE SET c.id = 'fipbox_pvt_limited';

// Query 8
MERGE (c:Company {name: 'CAL Investment Consultancy FZ LLC'}) ON CREATE SET c.id = 'cal_investment_consultancy_fz_llc', c.region = 'United Arab Emirates';

// Query 9
MERGE (c:Company {name: 'CAL Bangladesh Limited'}) ON CREATE SET c.id = 'cal_bangladesh_limited', c.region = 'Bangladesh';

// Query 10
MERGE (c:Company {name: 'Fixed Income Investment I (Private) Limited'}) ON CREATE SET c.id = 'fixed_income_investment_i_private_limited';

// Query 11
MERGE (c:Company {name: 'Fixed Income Investment II (Private) Limited'}) ON CREATE SET c.id = 'fixed_income_investment_ii_private_limited';

// Query 12
MERGE (c:Company {name: 'Fixed Income Investment III (Private) Limited'}) ON CREATE SET c.id = 'fixed_income_investment_iii_private_limited';

// Query 13
MERGE (c:Company {name: 'Fixed Income Investment V (Private) Limited'}) ON CREATE SET c.id = 'fixed_income_investment_v_private_limited';

// Query 14
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 15
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 16
MERGE (p:Product {name: 'Government Securities'}) ON CREATE SET p.id = 'government_securities';

// Query 17
MERGE (p:Product {name: 'Corporate Debt Securities'}) ON CREATE SET p.id = 'corporate_debt_securities';

// Query 18
MERGE (p:Product {name: 'Corporate Finance'}) ON CREATE SET p.id = 'corporate_finance';

// Query 19
MERGE (p:Product {name: 'Fee-based Activities'}) ON CREATE SET p.id = 'fee_based_activities';

// Query 20
MERGE (p:Product {name: 'Stock Brokering'}) ON CREATE SET p.id = 'stock_brokering';

// Query 21
MERGE (p:Product {name: 'Unit Trust Funds'}) ON CREATE SET p.id = 'unit_trust_funds';

// Query 22
MERGE (p:Product {name: 'Private Wealth Management'}) ON CREATE SET p.id = 'private_wealth_management';

// Query 23
MERGE (p:Product {name: 'IT Services'}) ON CREATE SET p.id = 'it_services';

// Query 24
MERGE (p:Product {name: 'Digitalized Transactions for Investment Related Products'}) ON CREATE SET p.id = 'digitalized_transactions_for_investment_related_products';

// Query 25
MERGE (p:Product {name: 'Investment Holding'}) ON CREATE SET p.id = 'investment_holding';

// Query 26
MERGE (p:Product {name: 'Investment Consultancy'}) ON CREATE SET p.id = 'investment_consultancy';

// Query 27
MERGE (p:Product {name: 'Consultancy Services'}) ON CREATE SET p.id = 'consultancy_services';

// Query 28
MERGE (m:Metric {name: 'Net Gains from Trading'}) ON CREATE SET m.id = 'net_gains_from_trading', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Net Fair Value Gains/Losses from Financial Assets at FVTPL'}) ON CREATE SET m.id = 'net_fair_value_gains_losses_from_financial_assets_at_fvtpl', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Direct Expenses'}) ON CREATE SET m.id = 'direct_expenses', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Other Income'}) ON CREATE SET m.id = 'other_income', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Total Operating Income'}) ON CREATE SET m.id = 'total_operating_income', m.unit = 'Rs';

// Query 33
MERGE (m:Metric {name: 'Personnel Expenses'}) ON CREATE SET m.id = 'personnel_expenses', m.unit = 'Rs';

// Query 34
MERGE (m:Metric {name: 'Depreciation & Amortization'}) ON CREATE SET m.id = 'depreciation_amortization', m.unit = 'Rs';

// Query 35
MERGE (m:Metric {name: 'Other Operating Expenses'}) ON CREATE SET m.id = 'other_operating_expenses', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Profit Before Income Tax'}) ON CREATE SET m.id = 'profit_before_income_tax', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Income Tax Expense/Reversal'}) ON CREATE SET m.id = 'income_tax_expense_reversal', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Profit for the Period'}) ON CREATE SET m.id = 'profit_for_the_period', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Profit Attributable to Owners of the Company'}) ON CREATE SET m.id = 'profit_attributable_to_owners_of_the_company', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Profit Attributable to Non-Controlling Interests'}) ON CREATE SET m.id = 'profit_attributable_to_non_controlling_interests', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Basic Earnings per Share - Before Split'}) ON CREATE SET m.id = 'basic_earnings_per_share_before_split', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Basic Earnings per Share - After Split'}) ON CREATE SET m.id = 'basic_earnings_per_share_after_split', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Equity Attributable to Owners of the Company'}) ON CREATE SET m.id = 'equity_attributable_to_owners_of_the_company', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Non-Controlling Interests (Equity)'}) ON CREATE SET m.id = 'non_controlling_interests_equity', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Net Assets Value per Share - Before Split'}) ON CREATE SET m.id = 'net_assets_value_per_share_before_split', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Net Assets Value per Share - After Share Split'}) ON CREATE SET m.id = 'net_assets_value_per_share_after_share_split', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Stated Capital'}) ON CREATE SET m.id = 'stated_capital', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Special Risk Reserve'}) ON CREATE SET m.id = 'special_risk_reserve', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Retained Earnings'}) ON CREATE SET m.id = 'retained_earnings', m.unit = 'Rs';

// Query 54
MERGE (m:Metric {name: 'Foreign Currency Translation Reserve'}) ON CREATE SET m.id = 'foreign_currency_translation_reserve', m.unit = 'Rs';

// Query 55
MERGE (m:Metric {name: 'Cash and Cash Equivalents'}) ON CREATE SET m.id = 'cash_and_cash_equivalents', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Financial Assets Measured at FVTPL'}) ON CREATE SET m.id = 'financial_assets_measured_at_fvtpl', m.unit = 'Rs';

// Query 57
MERGE (m:Metric {name: 'Financial Assets Measured at Amortised Cost'}) ON CREATE SET m.id = 'financial_assets_measured_at_amortised_cost', m.unit = 'Rs';

// Query 58
MERGE (m:Metric {name: 'Trade and Other Receivables'}) ON CREATE SET m.id = 'trade_and_other_receivables', m.unit = 'Rs';

// Query 59
MERGE (m:Metric {name: 'Bank Overdrafts'}) ON CREATE SET m.id = 'bank_overdrafts', m.unit = 'Rs';

// Query 60
MERGE (m:Metric {name: 'Financial Liabilities Measured at Amortised Cost'}) ON CREATE SET m.id = 'financial_liabilities_measured_at_amortised_cost', m.unit = 'Rs';

// Query 61
MERGE (m:Metric {name: 'Trade and Other Payables'}) ON CREATE SET m.id = 'trade_and_other_payables', m.unit = 'Rs';

// Query 62
MERGE (m:Metric {name: 'Income Tax Payable'}) ON CREATE SET m.id = 'income_tax_payable', m.unit = 'Rs';

// Query 63
MERGE (m:Metric {name: 'Lease Liability'}) ON CREATE SET m.id = 'lease_liability', m.unit = 'Rs';

// Query 64
MERGE (m:Metric {name: 'Retirement Benefit Obligations'}) ON CREATE SET m.id = 'retirement_benefit_obligations', m.unit = 'Rs';

// Query 65
MERGE (m:Metric {name: 'Dividend Paid'}) ON CREATE SET m.id = 'dividend_paid', m.unit = 'Rs';

// Query 66
MATCH (p:Company {name: 'Capital Alliance Holdings Limited'}), (c:Company {name: 'Capital Alliance PLC'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.as_of = date('2024-12-31');

// Query 67
MATCH (p:Company {name: 'Capital Alliance Holdings Limited'}), (c:Company {name: 'Capital Alliance Partners Limited'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.as_of = date('2024-12-31');

// Query 68
MATCH (p:Company {name: 'Capital Alliance Holdings Limited'}), (c:Company {name: 'Capital Alliance Securities (Pvt) Limited'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.as_of = date('2024-12-31');

// Query 69
MATCH (p:Company {name: 'Capital Alliance Holdings Limited'}), (c:Company {name: 'Capital Alliance Investments Limited'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.as_of = date('2024-12-31');

// Query 70
MATCH (p:Company {name: 'Capital Alliance Holdings Limited'}), (c:Company {name: 'Finnovation (Pvt) Limited'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.as_of = date('2024-12-31');

// Query 71
MATCH (p:Company {name: 'Capital Alliance Holdings Limited'}), (c:Company {name: 'FipBox (Pvt) Limited'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.as_of = date('2024-12-31');

// Query 72
MATCH (p:Company {name: 'Capital Alliance Holdings Limited'}), (c:Company {name: 'CAL Investment Consultancy FZ LLC'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.as_of = date('2024-12-31');

// Query 73
MATCH (p:Company {name: 'Capital Alliance Holdings Limited'}), (c:Company {name: 'CAL Bangladesh Limited'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.as_of = date('2024-12-31');

// Query 74
MATCH (p:Company {name: 'Capital Alliance Holdings Limited'}), (c:Company {name: 'Fixed Income Investment I (Private) Limited'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.as_of = date('2024-12-31');

// Query 75
MATCH (p:Company {name: 'Capital Alliance Holdings Limited'}), (c:Company {name: 'Fixed Income Investment II (Private) Limited'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.as_of = date('2024-12-31');

// Query 76
MATCH (p:Company {name: 'Capital Alliance Holdings Limited'}), (c:Company {name: 'Fixed Income Investment III (Private) Limited'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.as_of = date('2024-12-31');

// Query 77
MATCH (p:Company {name: 'Capital Alliance Holdings Limited'}), (c:Company {name: 'Fixed Income Investment V (Private) Limited'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.as_of = date('2024-12-31');

// Query 78
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 79
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (p:Product {name: 'Investment Holding'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (p:Product {name: 'Investment Consultancy'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
MATCH (c:Company {name: 'Capital Alliance PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 82
MATCH (c:Company {name: 'Capital Alliance PLC'}), (p:Product {name: 'Government Securities'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Capital Alliance PLC'}), (p:Product {name: 'Corporate Debt Securities'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Capital Alliance Partners Limited'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 85
MATCH (c:Company {name: 'Capital Alliance Partners Limited'}), (p:Product {name: 'Corporate Finance'}) MERGE (c)-[:OFFERS]->(p);

// Query 86
MATCH (c:Company {name: 'Capital Alliance Partners Limited'}), (p:Product {name: 'Fee-based Activities'}) MERGE (c)-[:OFFERS]->(p);

// Query 87
MATCH (c:Company {name: 'Capital Alliance Securities (Pvt) Limited'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 88
MATCH (c:Company {name: 'Capital Alliance Securities (Pvt) Limited'}), (p:Product {name: 'Stock Brokering'}) MERGE (c)-[:OFFERS]->(p);

// Query 89
MATCH (c:Company {name: 'Capital Alliance Investments Limited'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 90
MATCH (c:Company {name: 'Capital Alliance Investments Limited'}), (p:Product {name: 'Unit Trust Funds'}) MERGE (c)-[:OFFERS]->(p);

// Query 91
MATCH (c:Company {name: 'Capital Alliance Investments Limited'}), (p:Product {name: 'Private Wealth Management'}) MERGE (c)-[:OFFERS]->(p);

// Query 92
MATCH (c:Company {name: 'Finnovation (Pvt) Limited'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 93
MATCH (c:Company {name: 'Finnovation (Pvt) Limited'}), (p:Product {name: 'IT Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 94
MATCH (c:Company {name: 'FipBox (Pvt) Limited'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 95
MATCH (c:Company {name: 'FipBox (Pvt) Limited'}), (p:Product {name: 'Digitalized Transactions for Investment Related Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'CAL Investment Consultancy FZ LLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 97
MATCH (c:Company {name: 'CAL Investment Consultancy FZ LLC'}), (p:Product {name: 'Investment Holding'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'CAL Investment Consultancy FZ LLC'}), (p:Product {name: 'Investment Consultancy'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'CAL Bangladesh Limited'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 100
MATCH (c:Company {name: 'CAL Bangladesh Limited'}), (p:Product {name: 'Consultancy Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 101
MATCH (c:Company {name: 'Fixed Income Investment I (Private) Limited'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 102
MATCH (c:Company {name: 'Fixed Income Investment I (Private) Limited'}), (p:Product {name: 'Investment Holding'}) MERGE (c)-[:OFFERS]->(p);

// Query 103
MATCH (c:Company {name: 'Fixed Income Investment II (Private) Limited'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 104
MATCH (c:Company {name: 'Fixed Income Investment II (Private) Limited'}), (p:Product {name: 'Investment Holding'}) MERGE (c)-[:OFFERS]->(p);

// Query 105
MATCH (c:Company {name: 'Fixed Income Investment III (Private) Limited'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 106
MATCH (c:Company {name: 'Fixed Income Investment III (Private) Limited'}), (p:Product {name: 'Investment Holding'}) MERGE (c)-[:OFFERS]->(p);

// Query 107
MATCH (c:Company {name: 'Fixed Income Investment V (Private) Limited'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 108
MATCH (c:Company {name: 'Fixed Income Investment V (Private) Limited'}), (p:Product {name: 'Investment Holding'}) MERGE (c)-[:OFFERS]->(p);

// Query 109
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net Gains from Trading'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4920972001.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 110
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net Gains from Trading'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19060617107.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 111
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net Gains from Trading'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 64959474.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 112
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net Gains from Trading'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19512068.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 113
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net Fair Value Gains/Losses from Financial Assets at FVTPL'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -414535842.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 114
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net Fair Value Gains/Losses from Financial Assets at FVTPL'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 882129474.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 115
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net Fair Value Gains/Losses from Financial Assets at FVTPL'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7452395.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 116
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net Fair Value Gains/Losses from Financial Assets at FVTPL'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9021051.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 117
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Direct Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -40731905.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 118
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Direct Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -68752133.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 119
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 60164106.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 120
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 73378918.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 121
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4778666359.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 122
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2182564022.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 123
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total Operating Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8976691386.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 124
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total Operating Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26221204926.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 125
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total Operating Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4832441126.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 126
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total Operating Income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2115481137.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 127
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Personnel Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1216417394.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 128
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Personnel Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3579266059.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 129
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Personnel Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -43374923.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 130
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Personnel Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -53515849.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 131
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Depreciation & Amortization'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -77398169.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 132
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Depreciation & Amortization'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -103487344.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 133
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Depreciation & Amortization'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -3055508.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 134
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Depreciation & Amortization'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -7147301.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 135
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Other Operating Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1754917253.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 136
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Other Operating Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1845627578.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 137
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Other Operating Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -7757182.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 138
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Other Operating Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -123024964.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 139
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5927958570.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 140
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20692823945.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 141
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4802295100.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 142
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1935707649.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 143
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit Before Income Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5927958570.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 144
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit Before Income Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20713894246.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 145
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit Before Income Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4802295100.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 146
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit Before Income Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1935707649.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 147
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Income Tax Expense/Reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1984355876.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 148
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Income Tax Expense/Reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -6622920742.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 149
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Income Tax Expense/Reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1665488.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 150
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Income Tax Expense/Reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 864576.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 151
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit for the Period'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3943602694.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 152
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit for the Period'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14090973504.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 153
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit for the Period'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4803960588.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 154
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit for the Period'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1936572225.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 155
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit Attributable to Owners of the Company'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3404437546.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 156
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit Attributable to Owners of the Company'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11337769357.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 157
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit Attributable to Owners of the Company'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4803960588.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 158
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit Attributable to Owners of the Company'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1936572225.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 159
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit Attributable to Non-Controlling Interests'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 539165148.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 160
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Profit Attributable to Non-Controlling Interests'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2753204147.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 161
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Basic Earnings per Share - Before Split'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 26.67, r.year = 2024, r.as_of = date('2024-12-31');

// Query 162
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Basic Earnings per Share - Before Split'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 103.97, r.year = 2024, r.as_of = date('2024-03-31');

// Query 163
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Basic Earnings per Share - Before Split'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 37.64, r.year = 2024, r.as_of = date('2024-12-31');

// Query 164
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Basic Earnings per Share - Before Split'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.76, r.year = 2024, r.as_of = date('2024-03-31');

// Query 165
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Basic Earnings per Share - After Split'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1.78, r.year = 2024, r.as_of = date('2024-12-31');

// Query 166
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Basic Earnings per Share - After Split'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.51, r.year = 2024, r.as_of = date('2024-03-31');

// Query 167
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 114242353500.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 168
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 66590754407.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 169
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6100288993.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 170
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2995086858.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 171
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 93912165791.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 172
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47082465438.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 173
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 399914206.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 174
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 56485091.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 175
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20330187709.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 176
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19508288969.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 177
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5700374787.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 178
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2938601767.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 179
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Equity Attributable to Owners of the Company'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17863280241.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 180
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Equity Attributable to Owners of the Company'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16590937102.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 181
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Equity Attributable to Owners of the Company'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5700374787.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 182
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Equity Attributable to Owners of the Company'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2938601767.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 183
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Non-Controlling Interests (Equity)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2466907468.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 184
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Non-Controlling Interests (Equity)'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2917351867.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 185
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net Assets Value per Share - Before Split'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 139.95, r.year = 2024, r.as_of = date('2024-12-31');

// Query 186
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net Assets Value per Share - Before Split'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 129.99, r.year = 2024, r.as_of = date('2024-03-31');

// Query 187
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net Assets Value per Share - Before Split'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 44.66, r.year = 2024, r.as_of = date('2024-12-31');

// Query 188
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net Assets Value per Share - Before Split'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 23.02, r.year = 2024, r.as_of = date('2024-03-31');

// Query 189
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net Assets Value per Share - After Share Split'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.33, r.year = 2024, r.as_of = date('2024-12-31');

// Query 190
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Net Assets Value per Share - After Share Split'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2.98, r.year = 2024, r.as_of = date('2024-12-31');

// Query 191
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2532798096.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 192
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2532798096.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 193
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2532798096.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 194
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Stated Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2532798096.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 195
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Special Risk Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2696078924.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 196
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Special Risk Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2316818030.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 197
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12795512111.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 198
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11808827473.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 199
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3167576691.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 200
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Retained Earnings'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 405803671.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 201
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Foreign Currency Translation Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -161108890.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 202
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Foreign Currency Translation Reserve'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -67506497.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 203
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Cash and Cash Equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 516088431.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 204
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Cash and Cash Equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1136890360.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 205
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Cash and Cash Equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5485700.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 206
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Cash and Cash Equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11399645.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 207
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Financial Assets Measured at FVTPL'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 103350215615.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 208
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Financial Assets Measured at FVTPL'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 60881033014.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 209
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Financial Assets Measured at FVTPL'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1007375117.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 210
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Financial Assets Measured at FVTPL'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 473366448.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 211
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Financial Assets Measured at Amortised Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5482309287.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 212
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Financial Assets Measured at Amortised Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1157988494.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 213
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Trade and Other Receivables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4482184004.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 214
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Trade and Other Receivables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2975864325.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 215
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Trade and Other Receivables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2598081990.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 216
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Trade and Other Receivables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 76093412.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 217
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Bank Overdrafts'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 909377040.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 218
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Bank Overdrafts'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 33872168.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 219
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Financial Liabilities Measured at Amortised Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 88163260344.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 220
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Financial Liabilities Measured at Amortised Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 37914225387.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 221
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Financial Liabilities Measured at Amortised Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 327344808.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 222
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Trade and Other Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2769245108.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 223
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Trade and Other Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3912195041.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 224
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Trade and Other Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19358163.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 225
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Trade and Other Payables'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 35649314.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 226
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Income Tax Payable'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1838702835.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 227
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Income Tax Payable'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4992449148.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 228
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Lease Liability'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 70338511.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 229
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Lease Liability'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 115012852.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 230
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Retirement Benefit Obligations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 161241952.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 231
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Retirement Benefit Obligations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 148402712.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 232
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Retirement Benefit Obligations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 19339067.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 233
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Retirement Benefit Obligations'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17456276.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 234
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Dividend Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2966378771.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 235
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Dividend Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2357618221.0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 236
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Dividend Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -2042187568.0, r.year = 2024, r.as_of = date('2024-12-31');

// Query 237
MATCH (c:Company {name: 'Capital Alliance Holdings Limited'}), (m:Metric {name: 'Dividend Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1850731034.0, r.year = 2024, r.as_of = date('2024-03-31');

// Total queries: 237
// Generated on: 2025-10-02T19:26:05.172151
