// Query 1
MERGE (c:Company {name: 'CAL Five Year Optimum Fund'}) ON CREATE SET c.id = 'cal_five_year_optimum_fund', c.founded_on = date('2023-06-07'), c.listed_on = 'CSE', c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'Capital Alliance Investments Limited'}) ON CREATE SET c.id = 'capital_alliance_investments_limited', c.region = 'Sri Lanka';

// Query 3
MERGE (c:Company {name: 'Hatton National Bank PLC'}) ON CREATE SET c.id = 'hatton_national_bank_plc', c.region = 'Sri Lanka';

// Query 4
MERGE (c:Company {name: 'BDO Partners'}) ON CREATE SET c.id = 'bdo_partners', c.region = 'Sri Lanka';

// Query 5
MERGE (c:Company {name: 'Dinitway Partners'}) ON CREATE SET c.id = 'dinitway_partners', c.region = 'Sri Lanka';

// Query 6
MERGE (c:Company {name: 'NDB Wealth Management Ltd'}) ON CREATE SET c.id = 'ndb_wealth_management_ltd';

// Query 7
MERGE (c:Company {name: 'First Capital Asset Management Limited'}) ON CREATE SET c.id = 'first_capital_asset_management_limited';

// Query 8
MERGE (c:Company {name: 'Ceybank Asset Management (Pvt) Ltd'}) ON CREATE SET c.id = 'ceybank_asset_management_pvt_ltd';

// Query 9
MERGE (c:Company {name: 'JB Financial (Pvt) Ltd'}) ON CREATE SET c.id = 'jb_financial_pvt_ltd';

// Query 10
MERGE (c:Company {name: 'Assetline Capital (Pvt) Ltd'}) ON CREATE SET c.id = 'assetline_capital_pvt_ltd';

// Query 11
MERGE (c:Company {name: 'Ceylon Asset Management Limited'}) ON CREATE SET c.id = 'ceylon_asset_management_limited';

// Query 12
MERGE (c:Company {name: 'Asia Securities Wealth Management (Pvt) Ltd'}) ON CREATE SET c.id = 'asia_securities_wealth_management_pvt_ltd';

// Query 13
MERGE (c:Company {name: 'Senfin Asset Management (Pvt) Ltd'}) ON CREATE SET c.id = 'senfin_asset_management_pvt_ltd';

// Query 14
MERGE (c:Company {name: 'CT CLSA Asset Management (Pvt) Limited'}) ON CREATE SET c.id = 'ct_clsa_asset_management_pvt_limited';

// Query 15
MERGE (c:Company {name: 'National Asset Management Limited'}) ON CREATE SET c.id = 'national_asset_management_limited';

// Query 16
MERGE (c:Company {name: 'Asset Trust Management (Pvt) Ltd'}) ON CREATE SET c.id = 'asset_trust_management_pvt_ltd';

// Query 17
MERGE (c:Company {name: 'LYNEAR Wealth Mangament (Pvt) Ltd'}) ON CREATE SET c.id = 'lynear_wealth_mangament_pvt_ltd';

// Query 18
MERGE (c:Company {name: 'Softlogic Asset Management (Pvt) Ltd'}) ON CREATE SET c.id = 'softlogic_asset_management_pvt_ltd';

// Query 19
MERGE (c:Company {name: 'Premier Wealth Management Limited'}) ON CREATE SET c.id = 'premier_wealth_management_limited';

// Query 20
MERGE (c:Company {name: 'ArpicoAtaraxia Asset Management Pvt Ltd'}) ON CREATE SET c.id = 'arpicoataraxia_asset_management_pvt_ltd';

// Query 21
MERGE (p:Person {name: 'Kanishke Mannakkara'}) ON CREATE SET p.id = 'kanishke_mannakkara';

// Query 22
MERGE (p:Person {name: 'Sharmali Perera'}) ON CREATE SET p.id = 'sharmali_perera';

// Query 23
MERGE (p:Person {name: 'M De Zoysa'}) ON CREATE SET p.id = 'm_de_zoysa';

// Query 24
MERGE (p:Person {name: 'K. S. C. P. K. Gunasinghe'}) ON CREATE SET p.id = 'k_s_c_p_k_gunasinghe';

// Query 25
MERGE (p:Person {name: 'W. A. T. Fernando'}) ON CREATE SET p.id = 'w_a_t_fernando';

// Query 26
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 27
MERGE (s:Sector {name: 'Banks'}) ON CREATE SET s.id = 'banks';

// Query 28
MERGE (p:Product {name: 'Fixed Income Unit Trust Scheme'}) ON CREATE SET p.id = 'fixed_income_unit_trust_scheme';

// Query 29
MERGE (p:Product {name: 'Fixed income securities'}) ON CREATE SET p.id = 'fixed_income_securities';

// Query 30
MERGE (p:Product {name: 'Equity securities'}) ON CREATE SET p.id = 'equity_securities';

// Query 31
MERGE (p:Product {name: 'Mutual fund platform'}) ON CREATE SET p.id = 'mutual_fund_platform';

// Query 32
MERGE (p:Product {name: 'Corporate debt fund'}) ON CREATE SET p.id = 'corporate_debt_fund';

// Query 33
MERGE (p:Product {name: 'Quantitative Equity Fund'}) ON CREATE SET p.id = 'quantitative_equity_fund';

// Query 34
MERGE (p:Product {name: 'PWM platform'}) ON CREATE SET p.id = 'pwm_platform';

// Query 35
MERGE (m:Metric {name: 'Investment income'}) ON CREATE SET m.id = 'investment_income', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Interest income'}) ON CREATE SET m.id = 'interest_income', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Unrealised gain on financial assets at fair value through profit or loss'}) ON CREATE SET m.id = 'unrealised_gain_on_financial_assets_at_fair_value_through_profit_or_loss', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Other income'}) ON CREATE SET m.id = 'other_income', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Management fees'}) ON CREATE SET m.id = 'management_fees', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Trustee fees'}) ON CREATE SET m.id = 'trustee_fees', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Custodian fees'}) ON CREATE SET m.id = 'custodian_fees', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Audit fees'}) ON CREATE SET m.id = 'audit_fees', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Miscellaneous expenses'}) ON CREATE SET m.id = 'miscellaneous_expenses', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Total operating expenses'}) ON CREATE SET m.id = 'total_operating_expenses', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Profit before tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Income tax expense'}) ON CREATE SET m.id = 'income_tax_expense', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Net profit after tax'}) ON CREATE SET m.id = 'net_profit_after_tax', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Total comprehensive income'}) ON CREATE SET m.id = 'total_comprehensive_income', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Increase in net assets attributable to unitholders'}) ON CREATE SET m.id = 'increase_in_net_assets_attributable_to_unitholders', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Earnings per unit'}) ON CREATE SET m.id = 'earnings_per_unit', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Cash and cash equivalents'}) ON CREATE SET m.id = 'cash_and_cash_equivalents', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Other receivables'}) ON CREATE SET m.id = 'other_receivables', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Financial assets at fair value through profit or loss'}) ON CREATE SET m.id = 'financial_assets_at_fair_value_through_profit_or_loss', m.unit = 'Rs';

// Query 54
MERGE (m:Metric {name: 'Total assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 55
MERGE (m:Metric {name: 'Accrued expenses'}) ON CREATE SET m.id = 'accrued_expenses', m.unit = 'Rs';

// Query 56
MERGE (m:Metric {name: 'Total liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs';

// Query 57
MERGE (m:Metric {name: 'Net assets'}) ON CREATE SET m.id = 'net_assets', m.unit = 'Rs';

// Query 58
MERGE (m:Metric {name: 'Net assets attributable to Unitholders'}) ON CREATE SET m.id = 'net_assets_attributable_to_unitholders', m.unit = 'Rs';

// Query 59
MERGE (m:Metric {name: 'Net assets per unit'}) ON CREATE SET m.id = 'net_assets_per_unit', m.unit = 'Rs';

// Query 60
MERGE (m:Metric {name: 'Units in issue'}) ON CREATE SET m.id = 'units_in_issue', m.unit = 'Count';

// Query 61
MERGE (m:Metric {name: 'Unit price'}) ON CREATE SET m.id = 'unit_price', m.unit = 'Rs';

// Query 62
MERGE (m:Metric {name: 'Market value of the Unit'}) ON CREATE SET m.id = 'market_value_of_the_unit', m.unit = 'Rs';

// Query 63
MERGE (m:Metric {name: 'Creations during the period (Value)'}) ON CREATE SET m.id = 'creations_during_the_period_value', m.unit = 'Rs';

// Query 64
MERGE (m:Metric {name: 'Redemptions during the period (Value)'}) ON CREATE SET m.id = 'redemptions_during_the_period_value', m.unit = 'Rs';

// Query 65
MERGE (m:Metric {name: 'Unit creations during the period (No. of Units)'}) ON CREATE SET m.id = 'unit_creations_during_the_period_no_of_units', m.unit = 'Count';

// Query 66
MERGE (m:Metric {name: 'Unit redemptions during the period (No. of Units)'}) ON CREATE SET m.id = 'unit_redemptions_during_the_period_no_of_units', m.unit = 'Count';

// Query 67
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 68
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (p:Product {name: 'Fixed Income Unit Trust Scheme'}) MERGE (c)-[:OFFERS]->(p) ON CREATE SET p.status = 'active';

// Query 69
MATCH (manager:Company {name: 'Capital Alliance Investments Limited'}), (fund:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (manager)-[:MANAGES]->(fund) ON CREATE SET manager.description = 'Management Company';

// Query 70
MATCH (trustee:Company {name: 'Hatton National Bank PLC'}), (fund:Company {name: 'CAL Five Year Optimum Fund'}) MERGE (trustee)-[:MANAGES]->(fund) ON CREATE SET trustee.description = 'Trustee & Custodian';

// Query 71
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (auditor:Company {name: 'BDO Partners'}) MERGE (c)-[:AUDITED_BY]->(auditor) ON CREATE SET auditor.year = 2024;

// Query 72
MATCH (c:Company {name: 'Capital Alliance Investments Limited'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 73
MATCH (c:Company {name: 'Capital Alliance Investments Limited'}), (p:Product {name: 'Fixed income securities'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Capital Alliance Investments Limited'}), (p:Product {name: 'Equity securities'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Capital Alliance Investments Limited'}), (p:Product {name: 'Mutual fund platform'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'Capital Alliance Investments Limited'}), (p:Product {name: 'Corporate debt fund'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'Capital Alliance Investments Limited'}), (p:Product {name: 'Quantitative Equity Fund'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'Capital Alliance Investments Limited'}), (p:Product {name: 'PWM platform'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Hatton National Bank PLC'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 80
MATCH (c:Company {name: 'NDB Wealth Management Ltd'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 81
MATCH (c:Company {name: 'First Capital Asset Management Limited'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 82
MATCH (c:Company {name: 'Ceybank Asset Management (Pvt) Ltd'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 83
MATCH (c:Company {name: 'JB Financial (Pvt) Ltd'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 84
MATCH (c:Company {name: 'Assetline Capital (Pvt) Ltd'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 85
MATCH (c:Company {name: 'Ceylon Asset Management Limited'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 86
MATCH (c:Company {name: 'Asia Securities Wealth Management (Pvt) Ltd'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 87
MATCH (c:Company {name: 'Senfin Asset Management (Pvt) Ltd'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 88
MATCH (c:Company {name: 'CT CLSA Asset Management (Pvt) Limited'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 89
MATCH (c:Company {name: 'National Asset Management Limited'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 90
MATCH (c:Company {name: 'Asset Trust Management (Pvt) Ltd'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 91
MATCH (c:Company {name: 'LYNEAR Wealth Mangament (Pvt) Ltd'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 92
MATCH (c:Company {name: 'Softlogic Asset Management (Pvt) Ltd'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 93
MATCH (c:Company {name: 'Premier Wealth Management Limited'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 94
MATCH (c:Company {name: 'ArpicoAtaraxia Asset Management Pvt Ltd'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 95
MATCH (p:Person {name: 'Kanishke Mannakkara'}), (c:Company {name: 'Capital Alliance Investments Limited'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 96
MATCH (p:Person {name: 'Kanishke Mannakkara'}), (c:Company {name: 'Capital Alliance Investments Limited'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Executive', r.as_of = date('2024-03-31');

// Query 97
MATCH (p:Person {name: 'Sharmali Perera'}), (c:Company {name: 'Capital Alliance Investments Limited'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Risk & Compliance Officer', r.as_of = date('2024-03-31');

// Query 98
MATCH (p:Person {name: 'Sharmali Perera'}), (c:Company {name: 'Capital Alliance Investments Limited'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Executive', r.as_of = date('2024-03-31');

// Query 99
MATCH (p:Person {name: 'M De Zoysa'}), (c:Company {name: 'Capital Alliance Investments Limited'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Director', r.as_of = date('2023-12-01');

// Query 100
MATCH (p:Person {name: 'K. S. C. P. K. Gunasinghe'}), (c:Company {name: 'Capital Alliance Investments Limited'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Director', r.as_of = date('2024-02-01');

// Query 101
MATCH (p:Person {name: 'W. A. T. Fernando'}), (c:Company {name: 'Capital Alliance Investments Limited'}) MERGE (p)-[r:DIRECTOR_OF]->(c) ON CREATE SET r.role = 'Director', r.as_of = date('2023-11-30');

// Query 102
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Investment income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 398642242, r.year = 2024, r.as_of = date('2024-03-31');

// Query 103
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Interest income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 201306746, r.year = 2024, r.as_of = date('2024-03-31');

// Query 104
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Unrealised gain on financial assets at fair value through profit or loss'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 197335496, r.year = 2024, r.as_of = date('2024-03-31');

// Query 105
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Other income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3524968, r.year = 2024, r.as_of = date('2024-03-31');

// Query 106
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Management fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -16529740, r.year = 2024, r.as_of = date('2024-03-31');

// Query 107
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Trustee fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2339348, r.year = 2024, r.as_of = date('2024-03-31');

// Query 108
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Custodian fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -200960, r.year = 2024, r.as_of = date('2024-03-31');

// Query 109
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Audit fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -265000, r.year = 2024, r.as_of = date('2024-03-31');

// Query 110
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Miscellaneous expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2664020, r.year = 2024, r.as_of = date('2024-03-31');

// Query 111
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Total operating expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -21999068, r.year = 2024, r.as_of = date('2024-03-31');

// Query 112
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Profit before tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 380168142, r.year = 2024, r.as_of = date('2024-03-31');

// Query 113
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Income tax expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0, r.year = 2024, r.as_of = date('2024-03-31');

// Query 114
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Net profit after tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 380168142, r.year = 2024, r.as_of = date('2024-03-31');

// Query 115
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Total comprehensive income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 380168142, r.year = 2024, r.as_of = date('2024-03-31');

// Query 116
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Increase in net assets attributable to unitholders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 380168142, r.year = 2024, r.as_of = date('2024-03-31');

// Query 117
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Earnings per unit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.96, r.year = 2024, r.as_of = date('2024-03-31');

// Query 118
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Cash and cash equivalents'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 17258265, r.year = 2024, r.as_of = date('2024-03-31');

// Query 119
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Other receivables'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3795, r.year = 2024, r.as_of = date('2024-03-31');

// Query 120
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Financial assets at fair value through profit or loss'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2321285395, r.year = 2024, r.as_of = date('2024-03-31');

// Query 121
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Total assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2338547455, r.year = 2024, r.as_of = date('2024-03-31');

// Query 122
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Accrued expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19335048, r.year = 2024, r.as_of = date('2024-03-31');

// Query 123
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Total liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19335048, r.year = 2024, r.as_of = date('2024-03-31');

// Query 124
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Net assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2319212407, r.year = 2024, r.as_of = date('2024-03-31');

// Query 125
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Net assets attributable to Unitholders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2319212407, r.year = 2024, r.as_of = date('2024-03-31');

// Query 126
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Net assets per unit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11.9606, r.year = 2024, r.as_of = date('2024-03-31');

// Query 127
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Units in issue'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 193904428, r.year = 2024, r.as_of = date('2024-03-31');

// Query 128
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Unit price'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11.9610, r.year = 2024, r.as_of = date('2024-03-31');

// Query 129
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Market value of the Unit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16.80, r.year = 2024, r.as_of = date('2024-03-31');

// Query 130
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Creations during the period (Value)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1939044521, r.year = 2024, r.as_of = date('2024-03-31');

// Query 131
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Redemptions during the period (Value)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -256, r.year = 2024, r.as_of = date('2024-03-31');

// Query 132
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Unit creations during the period (No. of Units)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 193904452, r.year = 2024, r.as_of = date('2024-03-31');

// Query 133
MATCH (c:Company {name: 'CAL Five Year Optimum Fund'}), (m:Metric {name: 'Unit redemptions during the period (No. of Units)'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -24, r.year = 2024, r.as_of = date('2024-03-31');

// Total queries: 133
// Generated on: 2025-10-02T19:34:42.185287
