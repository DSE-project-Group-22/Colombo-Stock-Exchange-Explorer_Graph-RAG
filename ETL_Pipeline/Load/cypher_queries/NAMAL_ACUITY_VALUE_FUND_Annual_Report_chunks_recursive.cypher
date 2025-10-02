// Query 1
MERGE (c:Company {name: 'NAMAL Acuity Value Fund'}) ON CREATE SET c.id = 'namal_acuity_value_fund', c.founded_on = date('2009-09-07'), c.listed_on = 'Colombo Stock Exchange', c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'National Asset Management Limited'}) ON CREATE SET c.id = 'national_asset_management_limited', c.region = 'Sri Lanka';

// Query 3
MERGE (c:Company {name: 'Deutsche Bank AG'}) ON CREATE SET c.id = 'deutsche_bank_ag';

// Query 4
MERGE (c:Company {name: 'Ernst and Young'}) ON CREATE SET c.id = 'ernst_and_young';

// Query 5
MERGE (c:Company {name: 'Union Bank Of Colombo PLC'}) ON CREATE SET c.id = 'union_bank_of_colombo_plc';

// Query 6
MERGE (c:Company {name: 'F J & G de Saram'}) ON CREATE SET c.id = 'f_j_g_de_saram';

// Query 7
MERGE (c:Company {name: 'Just in Time Group'}) ON CREATE SET c.id = 'just_in_time_group';

// Query 8
MERGE (c:Company {name: 'Union Resorts'}) ON CREATE SET c.id = 'union_resorts';

// Query 9
MERGE (c:Company {name: 'The Blue Water, Wadduwa'}) ON CREATE SET c.id = 'the_blue_water_wadduwa';

// Query 10
MERGE (c:Company {name: 'NorthStar Holdings'}) ON CREATE SET c.id = 'northstar_holdings';

// Query 11
MERGE (c:Company {name: 'Union Industrial Washing (Pvt) Limited'}) ON CREATE SET c.id = 'union_industrial_washing_pvt_limited';

// Query 12
MERGE (c:Company {name: 'Dillys Fashions (Pvt) Ltd'}) ON CREATE SET c.id = 'dillys_fashions_pvt_ltd';

// Query 13
MERGE (c:Company {name: 'Sampath Bank'}) ON CREATE SET c.id = 'sampath_bank';

// Query 14
MERGE (c:Company {name: 'Mercantile Investments and Finance PLC'}) ON CREATE SET c.id = 'mercantile_investments_and_finance_plc';

// Query 15
MERGE (c:Company {name: 'Peoples Leasing and Finance PLC'}) ON CREATE SET c.id = 'peoples_leasing_and_finance_plc';

// Query 16
MERGE (c:Company {name: 'Softlogic Holdings PLC'}) ON CREATE SET c.id = 'softlogic_holdings_plc';

// Query 17
MERGE (c:Company {name: 'Softlogic Finance PLC'}) ON CREATE SET c.id = 'softlogic_finance_plc';

// Query 18
MERGE (c:Company {name: 'Asia Capital PLC'}) ON CREATE SET c.id = 'asia_capital_plc';

// Query 19
MERGE (c:Company {name: 'Dialog Axiata PLC'}) ON CREATE SET c.id = 'dialog_axiata_plc';

// Query 20
MERGE (c:Company {name: 'Asiri Hospitals PLC'}) ON CREATE SET c.id = 'asiri_hospitals_plc';

// Query 21
MERGE (c:Company {name: 'Distilleries Company of Sri Lanka PLC'}) ON CREATE SET c.id = 'distilleries_company_of_sri_lanka_plc';

// Query 22
MERGE (c:Company {name: 'Commercial Bank of Ceylon PLC'}) ON CREATE SET c.id = 'commercial_bank_of_ceylon_plc';

// Query 23
MERGE (c:Company {name: 'Lion Brewery Ceylon PLC'}) ON CREATE SET c.id = 'lion_brewery_ceylon_plc';

// Query 24
MERGE (c:Company {name: 'CT Holdings PLC'}) ON CREATE SET c.id = 'ct_holdings_plc';

// Query 25
MERGE (c:Company {name: 'Ceylon Hospitals PLC'}) ON CREATE SET c.id = 'ceylon_hospitals_plc';

// Query 26
MERGE (c:Company {name: 'Aitken Spence Hotel Holdings PLC'}) ON CREATE SET c.id = 'aitken_spence_hotel_holdings_plc';

// Query 27
MERGE (c:Company {name: 'Hotel Services (Ceylon) PLC'}) ON CREATE SET c.id = 'hotel_services_ceylon_plc';

// Query 28
MERGE (c:Company {name: 'ACL Cables PLC'}) ON CREATE SET c.id = 'acl_cables_plc';

// Query 29
MERGE (c:Company {name: 'Hayleys PLC'}) ON CREATE SET c.id = 'hayleys_plc';

// Query 30
MERGE (c:Company {name: 'John Keells Holdings PLC'}) ON CREATE SET c.id = 'john_keells_holdings_plc';

// Query 31
MERGE (c:Company {name: 'Aitken Spence PLC'}) ON CREATE SET c.id = 'aitken_spence_plc';

// Query 32
MERGE (c:Company {name: 'Free Lanka Capital Holdings PLC'}) ON CREATE SET c.id = 'free_lanka_capital_holdings_plc';

// Query 33
MERGE (c:Company {name: 'First Capital Treasuries Limited'}) ON CREATE SET c.id = 'first_capital_treasuries_limited';

// Query 34
MERGE (c:Company {name: 'Wealth Trust Securities Limited'}) ON CREATE SET c.id = 'wealth_trust_securities_limited';

// Query 35
MERGE (c:Company {name: 'Seylan Bank PLC'}) ON CREATE SET c.id = 'seylan_bank_plc';

// Query 36
MERGE (c:Company {name: 'DFCC Bank'}) ON CREATE SET c.id = 'dfcc_bank';

// Query 37
MERGE (p:Person {name: 'Alexis Lovell'}) ON CREATE SET p.id = 'alexis_lovell';

// Query 38
MERGE (p:Person {name: 'Ajith Wijesekera'}) ON CREATE SET p.id = 'ajith_wijesekera';

// Query 39
MERGE (p:Person {name: 'Anil Amarasuriya'}) ON CREATE SET p.id = 'anil_amarasuriya';

// Query 40
MERGE (p:Person {name: 'Jitendrakumar Warnakulasuriya'}) ON CREATE SET p.id = 'jitendrakumar_warnakulasuriya';

// Query 41
MERGE (p:Person {name: 'A N Fonseka'}) ON CREATE SET p.id = 'a_n_fonseka';

// Query 42
MERGE (p:Person {name: 'M. Gunawardhene'}) ON CREATE SET p.id = 'm_gunawardhene';

// Query 43
MERGE (p:Person {name: 'T W De Silva'}) ON CREATE SET p.id = 't_w_de_silva';

// Query 44
MERGE (p:Person {name: 'Avancka Herat'}) ON CREATE SET p.id = 'avancka_herat';

// Query 45
MERGE (p:Person {name: 'Khoo Siew Bee'}) ON CREATE SET p.id = 'khoo_siew_bee';

// Query 46
MERGE (s:Sector {name: 'Telecommunication Services'}) ON CREATE SET s.id = 'telecommunication_services';

// Query 47
MERGE (s:Sector {name: 'Capital Goods'}) ON CREATE SET s.id = 'capital_goods';

// Query 48
MERGE (s:Sector {name: 'Materials'}) ON CREATE SET s.id = 'materials';

// Query 49
MERGE (s:Sector {name: 'Pharmaceuticals, Biotechnology, and Life Sciences'}) ON CREATE SET s.id = 'pharmaceuticals_biotechnology_and_life_sciences';

// Query 50
MERGE (s:Sector {name: 'Health Care Equipment and Services'}) ON CREATE SET s.id = 'health_care_equipment_and_services';

// Query 51
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 52
MERGE (s:Sector {name: 'Retailing'}) ON CREATE SET s.id = 'retailing';

// Query 53
MERGE (s:Sector {name: 'Food, Beverage, and Tobacco'}) ON CREATE SET s.id = 'food_beverage_and_tobacco';

// Query 54
MERGE (s:Sector {name: 'Banks'}) ON CREATE SET s.id = 'banks';

// Query 55
MERGE (s:Sector {name: 'Energy'}) ON CREATE SET s.id = 'energy';

// Query 56
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 57
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 58
MERGE (m:Metric {name: 'Total Investment Income'}) ON CREATE SET m.id = 'total_investment_income', m.unit = 'Rs';

// Query 59
MERGE (m:Metric {name: 'Net Realised Gains on Financial Assets Held for Trading'}) ON CREATE SET m.id = 'net_realised_gains_on_financial_assets_held_for_trading', m.unit = 'Rs';

// Query 60
MERGE (m:Metric {name: 'Net Change in Unrealised Losses on Financial Assets Held for Trading'}) ON CREATE SET m.id = 'net_change_in_unrealised_losses_on_financial_assets_held_for_trading', m.unit = 'Rs';

// Query 61
MERGE (m:Metric {name: 'Management Fees'}) ON CREATE SET m.id = 'management_fees', m.unit = 'Rs';

// Query 62
MERGE (m:Metric {name: 'Trustee Fees'}) ON CREATE SET m.id = 'trustee_fees', m.unit = 'Rs';

// Query 63
MERGE (m:Metric {name: 'Custodian Fees'}) ON CREATE SET m.id = 'custodian_fees', m.unit = 'Rs';

// Query 64
MERGE (m:Metric {name: 'Audit Fee and Expenses'}) ON CREATE SET m.id = 'audit_fee_and_expenses', m.unit = 'Rs';

// Query 65
MERGE (m:Metric {name: 'Professional Charges'}) ON CREATE SET m.id = 'professional_charges', m.unit = 'Rs';

// Query 66
MERGE (m:Metric {name: 'Other Expenses'}) ON CREATE SET m.id = 'other_expenses', m.unit = 'Rs';

// Query 67
MERGE (m:Metric {name: 'Total Operating Expenses'}) ON CREATE SET m.id = 'total_operating_expenses', m.unit = 'Rs';

// Query 68
MERGE (m:Metric {name: 'Net Operating Profit'}) ON CREATE SET m.id = 'net_operating_profit', m.unit = 'Rs';

// Query 69
MERGE (m:Metric {name: 'Interest Expense'}) ON CREATE SET m.id = 'interest_expense', m.unit = 'Rs';

// Query 70
MERGE (m:Metric {name: 'Distribution to Unit Holders'}) ON CREATE SET m.id = 'distribution_to_unit_holders', m.unit = 'Rs';

// Query 71
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 72
MERGE (m:Metric {name: 'Income Tax Expense'}) ON CREATE SET m.id = 'income_tax_expense', m.unit = 'Rs';

// Query 73
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 74
MERGE (m:Metric {name: 'Change in Net Assets Attributable to Unit Holders'}) ON CREATE SET m.id = 'change_in_net_assets_attributable_to_unit_holders', m.unit = 'Rs';

// Query 75
MERGE (m:Metric {name: 'Dividend Income'}) ON CREATE SET m.id = 'dividend_income', m.unit = 'Rs';

// Query 76
MERGE (m:Metric {name: 'Interest Income'}) ON CREATE SET m.id = 'interest_income', m.unit = 'Rs';

// Query 77
MERGE (m:Metric {name: 'Tax Expense for the Year'}) ON CREATE SET m.id = 'tax_expense_for_the_year', m.unit = 'Rs';

// Query 78
MERGE (m:Metric {name: 'Operating Profit Before Tax'}) ON CREATE SET m.id = 'operating_profit_before_tax', m.unit = 'Rs';

// Query 79
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 80
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs';

// Query 81
MERGE (m:Metric {name: 'Net Asset Value Per Unit'}) ON CREATE SET m.id = 'net_asset_value_per_unit', m.unit = 'Rs';

// Query 82
MERGE (m:Metric {name: 'Unit Capital'}) ON CREATE SET m.id = 'unit_capital', m.unit = 'Rs';

// Query 83
MATCH (p:Person {name: 'Alexis Lovell'}), (c:Company {name: 'National Asset Management Limited'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2013-03-31');

// Query 84
MATCH (p:Person {name: 'Ajith Wijesekera'}), (c:Company {name: 'National Asset Management Limited'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2013-03-31');

// Query 85
MATCH (p:Person {name: 'Anil Amarasuriya'}), (c:Company {name: 'National Asset Management Limited'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2013-03-31');

// Query 86
MATCH (p:Person {name: 'Jitendrakumar Warnakulasuriya'}), (c:Company {name: 'National Asset Management Limited'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2013-03-31');

// Query 87
MATCH (p:Person {name: 'A N Fonseka'}), (c:Company {name: 'National Asset Management Limited'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2013-03-31');

// Query 88
MATCH (p:Person {name: 'M. Gunawardhene'}), (c:Company {name: 'National Asset Management Limited'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Alternate Director', r.as_of = date('2013-03-31');

// Query 89
MATCH (p:Person {name: 'T W De Silva'}), (c:Company {name: 'National Asset Management Limited'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2013-03-31');

// Query 90
MATCH (p:Person {name: 'Avancka Herat'}), (c:Company {name: 'National Asset Management Limited'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2013-03-31');

// Query 91
MATCH (p:Person {name: 'Khoo Siew Bee'}), (c:Company {name: 'National Asset Management Limited'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director', r.as_of = date('2013-03-31');

// Query 92
MATCH (p:Person {name: 'Anil Amarasuriya'}), (c:Company {name: 'Union Bank Of Colombo PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director / Chief Executive Officer', r.as_of = date('2013-03-31');

// Query 93
MATCH (p:Person {name: 'Anil Amarasuriya'}), (c:Company {name: 'Union Resorts'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Founder Chairman/Managing Director', r.as_of = date('2013-03-31');

// Query 94
MATCH (p:Person {name: 'Jitendrakumar Warnakulasuriya'}), (c:Company {name: 'Just in Time Group'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2013-03-31');

// Query 95
MATCH (manager:Company {name: 'National Asset Management Limited'}), (fund:Company {name: 'NAMAL Acuity Value Fund'}) MERGE (manager)-[:MANAGES]->(fund);

// Query 96
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (auditor:Company {name: 'Ernst and Young'}) MERGE (c)-[r:AUDITED_BY]->(auditor) ON CREATE SET r.year = 2013;

// Query 97
MATCH (c:Company {name: 'National Asset Management Limited'}), (auditor:Company {name: 'Ernst and Young'}) MERGE (c)-[r:AUDITED_BY]->(auditor) ON CREATE SET r.year = 2013;

// Query 98
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 99
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 100
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 101
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (s:Sector {name: 'Food, Beverage, and Tobacco'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 102
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (s:Sector {name: 'Health Care Equipment and Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 103
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (s:Sector {name: 'Retailing'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 104
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (s:Sector {name: 'Energy'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 105
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (s:Sector {name: 'Capital Goods'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 106
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Total Investment Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 106894676.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 107
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Total Investment Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -215575887.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 108
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Net Realised Gains on Financial Assets Held for Trading'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 52141890.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 109
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Net Realised Gains on Financial Assets Held for Trading'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 200015383.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 110
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Net Change in Unrealised Losses on Financial Assets Held for Trading'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -4938685.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 111
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Net Change in Unrealised Losses on Financial Assets Held for Trading'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -447294322.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 112
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Management Fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -9835724.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 113
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Management Fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -10402715.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 114
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Trustee Fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2024123.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 115
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Trustee Fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2223532.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 116
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Custodian Fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -268800.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 117
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Custodian Fees'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -264723.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 118
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Audit Fee and Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -149050.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 119
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Audit Fee and Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -136831.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 120
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Professional Charges'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6160.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 121
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Professional Charges'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 122
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Other Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -740875.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 123
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Other Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -608579.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 124
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Total Operating Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -13024732.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 125
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Total Operating Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -13636380.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 126
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Net Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 93869944.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 127
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Net Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -229212267.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 128
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Interest Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -62826.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 129
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Interest Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 130
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Distribution to Unit Holders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -10751200.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 131
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Distribution to Unit Holders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -26878000.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 132
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 83055918.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 133
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -256090267.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 134
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1475801.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 135
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -129534.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 136
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 81580117.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 137
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -256219801.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 138
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Change in Net Assets Attributable to Unit Holders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 81580117.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 139
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Change in Net Assets Attributable to Unit Holders'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -256219801.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 140
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Dividend Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 25669988.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 141
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Dividend Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16076610.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 142
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 34021483.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 143
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 15626442.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 144
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Tax Expense for the Year'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1475801.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 145
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Tax Expense for the Year'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 129534.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 146
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Operating Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 93869944.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 147
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Operating Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -229212267.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 148
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 984952393.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 149
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 880801487.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 150
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1137166534.0, r.year = 2011, r.as_of = date('2011-03-31');

// Query 151
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 23693646.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 152
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1122857.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 153
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1268103.0, r.year = 2011, r.as_of = date('2011-03-31');

// Query 154
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Net Asset Value Per Unit'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 89.16, r.as_of = date('2013-03-31');

// Query 155
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Unit Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1135898431.0, r.year = 2013, r.as_of = date('2013-03-31');

// Query 156
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Unit Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 524121000.0, r.year = 2012, r.as_of = date('2012-03-31');

// Query 157
MATCH (c:Company {name: 'NAMAL Acuity Value Fund'}), (m:Metric {name: 'Unit Capital'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 611777431.0, r.year = 2011, r.as_of = date('2011-03-31');

// Query 158
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'Dialog Axiata PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 2.0, r.as_of = date('2013-03-31');

// Query 159
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'Asiri Hospitals PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 13.0, r.as_of = date('2013-03-31');

// Query 160
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'Distilleries Company of Sri Lanka PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 11.0, r.as_of = date('2013-03-31');

// Query 161
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'Commercial Bank of Ceylon PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 8.0, r.as_of = date('2013-03-31');

// Query 162
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'Lion Brewery Ceylon PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 7.0, r.as_of = date('2013-03-31');

// Query 163
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'CT Holdings PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 6.0, r.as_of = date('2013-03-31');

// Query 164
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'Ceylon Hospitals PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 6.0, r.as_of = date('2013-03-31');

// Query 165
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'Hotel Services (Ceylon) PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 2.0, r.as_of = date('2013-03-31');

// Query 166
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'ACL Cables PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 3.0, r.as_of = date('2013-03-31');

// Query 167
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'Hayleys PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 4.0, r.as_of = date('2013-03-31');

// Query 168
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'Mercantile Investments and Finance PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 5.0, r.as_of = date('2012-03-31');

// Query 169
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'Peoples Leasing and Finance PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 4.0, r.as_of = date('2012-03-31');

// Query 170
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'Softlogic Finance PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 1.0, r.as_of = date('2012-03-31');

// Query 171
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'Asia Capital PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 3.0, r.as_of = date('2012-03-31');

// Query 172
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'Softlogic Holdings PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 3.0, r.as_of = date('2013-03-31');

// Query 173
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'First Capital Treasuries Limited'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 1.0, r.as_of = date('2013-03-31');

// Query 174
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'Wealth Trust Securities Limited'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 3.0, r.as_of = date('2013-03-31');

// Query 175
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'Union Bank Of Colombo PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 2.0, r.as_of = date('2013-03-31');

// Query 176
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'DFCC Bank'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 5.0, r.as_of = date('2012-03-31');

// Query 177
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'John Keells Holdings PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 7.0, r.as_of = date('2011-03-31');

// Query 178
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'Aitken Spence PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 7.0, r.as_of = date('2011-03-31');

// Query 179
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'Free Lanka Capital Holdings PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 0.0, r.as_of = date('2012-03-31');

// Query 180
MATCH (parent:Company {name: 'NAMAL Acuity Value Fund'}), (child:Company {name: 'Aitken Spence Hotel Holdings PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 12.0, r.as_of = date('2011-03-31');

// Total queries: 180
// Generated on: 2025-10-02T19:17:22.040766
