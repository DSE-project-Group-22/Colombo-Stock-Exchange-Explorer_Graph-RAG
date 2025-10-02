// Query 1
MERGE (c:Company {name: 'Dialog Finance PLC'}) ON CREATE SET c.id = 'dialog_finance_plc', c.region = 'Sri Lanka';

// Query 2
MERGE (c:Company {name: 'Dialog Axiata PLC'}) ON CREATE SET c.id = 'dialog_axiata_plc';

// Query 3
MERGE (c:Company {name: 'Ernst & Young'}) ON CREATE SET c.id = 'ernst_and_young';

// Query 4
MERGE (c:Company {name: 'Deloitte Partners'}) ON CREATE SET c.id = 'deloitte_partners';

// Query 5
MERGE (p:Person {name: 'Renuka Nandini Kurukulasuriya Fernando'}) ON CREATE SET p.id = 'renuka_nandini_kurukulasuriya_fernando';

// Query 6
MERGE (p:Person {name: 'Wewage Viranga Supun Dep Weerasinghe'}) ON CREATE SET p.id = 'wewage_viranga_supun_dep_weerasinghe';

// Query 7
MERGE (p:Person {name: 'Patrick Priyan Edirisinghe'}) ON CREATE SET p.id = 'patrick_priyan_edirisinghe';

// Query 8
MERGE (p:Person {name: 'Lim Li San'}) ON CREATE SET p.id = 'lim_li_san';

// Query 9
MERGE (p:Person {name: 'Lakshman Dileep Roshaan Hettiaratchi'}) ON CREATE SET p.id = 'lakshman_dileep_roshaan_hettiaratchi';

// Query 10
MERGE (p:Person {name: 'Alexander Löwbäck'}) ON CREATE SET p.id = 'alexander_lowback';

// Query 11
MERGE (p:Person {name: 'Mohamed Hassen Nazeem Mohamed'}) ON CREATE SET p.id = 'mohamed_hassen_nazeem_mohamed';

// Query 12
MERGE (p:Person {name: 'Shivaan Kanag-Isvaran'}) ON CREATE SET p.id = 'shivaan_kanag_isvaran';

// Query 13
MERGE (p:Person {name: 'Uditha Chinthana Jayasinghe'}) ON CREATE SET p.id = 'uditha_chinthana_jayasinghe';

// Query 14
MERGE (p:Person {name: 'Ajith Akmeemana'}) ON CREATE SET p.id = 'ajith_akmeemana';

// Query 15
MERGE (s:Sector {name: 'Consumer Services'}) ON CREATE SET s.id = 'consumer_services';

// Query 16
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 17
MERGE (pr:Product {name: 'Lesi Pay'}) ON CREATE SET pr.id = 'lesi_pay';

// Query 18
MERGE (pr:Product {name: 'Digital Payment Services'}) ON CREATE SET pr.id = 'digital_payment_services';

// Query 19
MERGE (pr:Product {name: 'Lending Portfolio'}) ON CREATE SET pr.id = 'lending_portfolio';

// Query 20
MERGE (pr:Product {name: 'Microfinance'}) ON CREATE SET pr.id = 'microfinance';

// Query 21
MERGE (m:Metric {name: 'Gross Income'}) ON CREATE SET m.id = 'gross_income', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Total Operating Income'}) ON CREATE SET m.id = 'total_operating_income', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Impairment Charges for Loans and Advances'}) ON CREATE SET m.id = 'impairment_charges_for_loans_and_advances', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Operating Expenses'}) ON CREATE SET m.id = 'operating_expenses', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Operating Profit Before Taxes on Financial Services'}) ON CREATE SET m.id = 'operating_profit_before_taxes_on_financial_services', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 27
MERGE (m:Metric {name: 'Customer Deposits'}) ON CREATE SET m.id = 'customer_deposits', m.unit = 'Rs';

// Query 28
MERGE (m:Metric {name: 'Loans and Receivables'}) ON CREATE SET m.id = 'loans_and_receivables', m.unit = 'Rs';

// Query 29
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 30
MERGE (m:Metric {name: 'Total Liabilities'}) ON CREATE SET m.id = 'total_liabilities', m.unit = 'Rs';

// Query 31
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 32
MERGE (m:Metric {name: 'Net Interest Margin'}) ON CREATE SET m.id = 'net_interest_margin', m.unit = '%';

// Query 33
MERGE (m:Metric {name: 'Return on Assets'}) ON CREATE SET m.id = 'return_on_assets', m.unit = '%';

// Query 34
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 35
MERGE (m:Metric {name: 'Market Price'}) ON CREATE SET m.id = 'market_price', m.unit = 'Rs';

// Query 36
MERGE (m:Metric {name: 'Net Assets Per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Income Tax Expense'}) ON CREATE SET m.id = 'income_tax_expense', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Cash and Cash Equivalents and Short-Term Funds'}) ON CREATE SET m.id = 'cash_and_cash_equivalents_and_short_term_funds', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Financial Assets at Amortised Cost - Loan and Advances'}) ON CREATE SET m.id = 'financial_assets_at_amortised_cost_loan_and_advances', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Financial Investment at Amortised Cost'}) ON CREATE SET m.id = 'financial_investment_at_amortised_cost', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Property, Plant and Equipment and Intangible Assets'}) ON CREATE SET m.id = 'property_plant_and_equipment_and_intangible_assets', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Other Assets'}) ON CREATE SET m.id = 'other_assets', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Financial Liabilities at Amortised Cost - Due to Customers'}) ON CREATE SET m.id = 'financial_liabilities_at_amortised_cost_due_to_customers', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Borrowings'}) ON CREATE SET m.id = 'borrowings', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Other Liabilities'}) ON CREATE SET m.id = 'other_liabilities', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Total Liabilities and Shareholders Funds'}) ON CREATE SET m.id = 'total_liabilities_and_shareholders_funds', m.unit = 'Rs';

// Query 48
MERGE (m:Metric {name: 'Profit Per Share'}) ON CREATE SET m.id = 'profit_per_share', m.unit = 'Rs';

// Query 49
MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs';

// Query 50
MERGE (m:Metric {name: 'Net Fees and Commission Income'}) ON CREATE SET m.id = 'net_fees_and_commission_income', m.unit = 'Rs';

// Query 51
MERGE (m:Metric {name: 'Other Income'}) ON CREATE SET m.id = 'other_income', m.unit = 'Rs';

// Query 52
MERGE (m:Metric {name: 'Taxes on Financial Services'}) ON CREATE SET m.id = 'taxes_on_financial_services', m.unit = 'Rs';

// Query 53
MATCH (p:Person {name: 'Renuka Nandini Kurukulasuriya Fernando'}), (c:Company {name: 'Dialog Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairperson', r.role = 'Non-Independent, Non-Executive', r.as_of = date('2024-12-31');

// Query 54
MATCH (p:Person {name: 'Wewage Viranga Supun Dep Weerasinghe'}), (c:Company {name: 'Dialog Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.role = 'Non-Independent, Non-Executive', r.as_of = date('2024-12-31');

// Query 55
MATCH (p:Person {name: 'Patrick Priyan Edirisinghe'}), (c:Company {name: 'Dialog Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-12-31');

// Query 56
MATCH (p:Person {name: 'Lim Li San'}), (c:Company {name: 'Dialog Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.role = 'Non-Independent, Non-Executive', r.as_of = date('2024-12-31');

// Query 57
MATCH (p:Person {name: 'Lakshman Dileep Roshaan Hettiaratchi'}), (c:Company {name: 'Dialog Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.role = 'Independent Non-Executive', r.as_of = date('2024-12-31');

// Query 58
MATCH (p:Person {name: 'Alexander Löwbäck'}), (c:Company {name: 'Dialog Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.role = 'Independent, Non-Executive', r.as_of = date('2024-12-31');

// Query 59
MATCH (p:Person {name: 'Mohamed Hassen Nazeem Mohamed'}), (c:Company {name: 'Dialog Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director / Chief Executive Officer', r.role = 'Non-Independent, Executive', r.as_of = date('2024-12-31');

// Query 60
MATCH (p:Person {name: 'Shivaan Kanag-Isvaran'}), (c:Company {name: 'Dialog Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.role = 'Independent, Non-Executive', r.as_of = date('2025-03-05');

// Query 61
MATCH (p:Person {name: 'Uditha Chinthana Jayasinghe'}), (c:Company {name: 'Dialog Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.role = 'Independent, Non-Executive', r.as_of = date('2025-04-11');

// Query 62
MATCH (p:Person {name: 'Ajith Akmeemana'}), (c:Company {name: 'Dialog Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.role = 'Independent and Non-Executive Director', r.as_of = date('2025-02-07');

// Query 63
MATCH (child:Company {name: 'Dialog Finance PLC'}), (parent:Company {name: 'Dialog Axiata PLC'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 99.05, r.as_of = date('2024-12-31');

// Query 64
MATCH (c:Company {name: 'Dialog Finance PLC'}), (auditor:Company {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(auditor) ON CREATE SET r.year = 2024;

// Query 65
MATCH (c:Company {name: 'Dialog Finance PLC'}), (auditor:Company {name: 'Deloitte Partners'}) MERGE (c)-[r:AUDITED_BY]->(auditor) ON CREATE SET r.year = 2024;

// Query 66
MATCH (c:Company {name: 'Dialog Finance PLC'}), (s:Sector {name: 'Consumer Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 67
MATCH (c:Company {name: 'Dialog Finance PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 68
MATCH (c:Company {name: 'Dialog Finance PLC'}), (pr:Product {name: 'Lesi Pay'}) MERGE (c)-[:OFFERS]->(pr);

// Query 69
MATCH (c:Company {name: 'Dialog Finance PLC'}), (pr:Product {name: 'Digital Payment Services'}) MERGE (c)-[:OFFERS]->(pr);

// Query 70
MATCH (c:Company {name: 'Dialog Finance PLC'}), (pr:Product {name: 'Lending Portfolio'}) MERGE (c)-[:OFFERS]->(pr);

// Query 71
MATCH (c:Company {name: 'Dialog Finance PLC'}), (pr:Product {name: 'Microfinance'}) MERGE (c)-[:OFFERS]->(pr);

// Query 72
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1641040000, r.year = 2024;

// Query 73
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Gross Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1161153000, r.year = 2023;

// Query 74
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Total Operating Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1145467000, r.year = 2024;

// Query 75
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Total Operating Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 756674000, r.year = 2023;

// Query 76
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Impairment Charges for Loans and Advances'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 114248000, r.year = 2024;

// Query 77
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Impairment Charges for Loans and Advances'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 21816000, r.year = 2023;

// Query 78
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Operating Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 987170000, r.year = 2024;

// Query 79
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Operating Expenses'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 631969000, r.year = 2023;

// Query 80
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Operating Profit Before Taxes on Financial Services'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 44049000, r.year = 2024;

// Query 81
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Operating Profit Before Taxes on Financial Services'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 102889000, r.year = 2023;

// Query 82
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -41083000, r.year = 2024;

// Query 83
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 39438000, r.year = 2023;

// Query 84
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 67096000, r.year = 2022;

// Query 85
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -77241000, r.year = 2021;

// Query 86
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -99519000, r.year = 2020;

// Query 87
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Customer Deposits'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4044853000, r.year = 2024;

// Query 88
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Customer Deposits'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2616766000, r.year = 2023;

// Query 89
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Loans and Receivables'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5171335000, r.year = 2024;

// Query 90
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Loans and Receivables'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3042903000, r.year = 2023;

// Query 91
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7385099000, r.year = 2024;

// Query 92
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5953048000, r.year = 2023;

// Query 93
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6584626000, r.year = 2022;

// Query 94
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4021380000, r.year = 2021;

// Query 95
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3227222000, r.year = 2020;

// Query 96
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4782156000, r.year = 2024;

// Query 97
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Total Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3308283000, r.year = 2023;

// Query 98
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2602943000, r.year = 2024;

// Query 99
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2644765000, r.year = 2023;

// Query 100
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2603769000, r.year = 2022;

// Query 101
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2536795000, r.year = 2021;

// Query 102
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2053872000, r.year = 2020;

// Query 103
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Net Interest Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12.90, r.year = 2024;

// Query 104
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Net Interest Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12.68, r.year = 2023;

// Query 105
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Net Interest Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10.99, r.year = 2022;

// Query 106
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Net Interest Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7.31, r.year = 2021;

// Query 107
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Net Interest Margin'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5.33, r.year = 2020;

// Query 108
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.65, r.year = 2024;

// Query 109
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.78, r.year = 2023;

// Query 110
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.03, r.year = 2022;

// Query 111
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -2.24, r.year = 2021;

// Query 112
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Return on Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -6.44, r.year = 2020;

// Query 113
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -1.58, r.year = 2024;

// Query 114
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.49, r.year = 2023;

// Query 115
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.61, r.year = 2022;

// Query 116
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -3.52, r.year = 2021;

// Query 117
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -4.83, r.year = 2020;

// Query 118
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Market Price'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 47.80, r.year = 2024;

// Query 119
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Market Price'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 53.20, r.year = 2023;

// Query 120
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 22.17, r.year = 2024;

// Query 121
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 22.53, r.year = 2023;

// Query 122
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -15935000, r.year = 2024;

// Query 123
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 44742000, r.year = 2023;

// Query 124
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 67096000, r.year = 2022;

// Query 125
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -77241000, r.year = 2021;

// Query 126
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -186299000, r.year = 2020;

// Query 127
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -25148000, r.year = 2024;

// Query 128
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -5304000, r.year = 2023;

// Query 129
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 86780000, r.year = 2020;

// Query 130
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Cash and Cash Equivalents and Short-Term Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1187803000, r.year = 2024;

// Query 131
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Cash and Cash Equivalents and Short-Term Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1209775000, r.year = 2023;

// Query 132
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Cash and Cash Equivalents and Short-Term Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2887175000, r.year = 2022;

// Query 133
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Cash and Cash Equivalents and Short-Term Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 330863000, r.year = 2021;

// Query 134
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Cash and Cash Equivalents and Short-Term Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1889246000, r.year = 2020;

// Query 135
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Financial Assets at Amortised Cost - Loan and Advances'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5171335000, r.year = 2024;

// Query 136
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Financial Assets at Amortised Cost - Loan and Advances'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3042903000, r.year = 2023;

// Query 137
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Financial Assets at Amortised Cost - Loan and Advances'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3056448000, r.year = 2022;

// Query 138
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Financial Assets at Amortised Cost - Loan and Advances'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2742531000, r.year = 2021;

// Query 139
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Financial Assets at Amortised Cost - Loan and Advances'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 806332000, r.year = 2020;

// Query 140
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Financial Investment at Amortised Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 387959000, r.year = 2024;

// Query 141
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Financial Investment at Amortised Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1250021000, r.year = 2023;

// Query 142
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Financial Investment at Amortised Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 221329000, r.year = 2022;

// Query 143
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Financial Investment at Amortised Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 597106000, r.year = 2021;

// Query 144
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Financial Investment at Amortised Cost'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2186000, r.year = 2020;

// Query 145
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Property, Plant and Equipment and Intangible Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 250855000, r.year = 2024;

// Query 146
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Property, Plant and Equipment and Intangible Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 237583000, r.year = 2023;

// Query 147
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Property, Plant and Equipment and Intangible Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 227151000, r.year = 2022;

// Query 148
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Property, Plant and Equipment and Intangible Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 165630000, r.year = 2021;

// Query 149
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Property, Plant and Equipment and Intangible Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 177254000, r.year = 2020;

// Query 150
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Other Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 387147000, r.year = 2024;

// Query 151
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Other Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 212766000, r.year = 2023;

// Query 152
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Other Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 192523000, r.year = 2022;

// Query 153
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Other Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 185250000, r.year = 2021;

// Query 154
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Other Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 352204000, r.year = 2020;

// Query 155
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Financial Liabilities at Amortised Cost - Due to Customers'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4044853000, r.year = 2024;

// Query 156
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Financial Liabilities at Amortised Cost - Due to Customers'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2616766000, r.year = 2023;

// Query 157
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Financial Liabilities at Amortised Cost - Due to Customers'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3786922000, r.year = 2022;

// Query 158
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Financial Liabilities at Amortised Cost - Due to Customers'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1323916000, r.year = 2021;

// Query 159
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Financial Liabilities at Amortised Cost - Due to Customers'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1064175000, r.year = 2020;

// Query 160
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 100296000, r.year = 2024;

// Query 161
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Borrowings'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 502117000, r.year = 2023;

// Query 162
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Other Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 637007000, r.year = 2024;

// Query 163
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Other Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 189400000, r.year = 2023;

// Query 164
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Other Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 193935000, r.year = 2022;

// Query 165
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Other Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 160669000, r.year = 2021;

// Query 166
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Other Liabilities'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 109175000, r.year = 2020;

// Query 167
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Total Liabilities and Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7385099000, r.year = 2024;

// Query 168
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Total Liabilities and Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5953048000, r.year = 2023;

// Query 169
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Total Liabilities and Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6584626000, r.year = 2022;

// Query 170
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Total Liabilities and Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4021380000, r.year = 2021;

// Query 171
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Total Liabilities and Shareholders Funds'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3227222000, r.year = 2020;

// Query 172
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Profit Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.35, r.year = 2024;

// Query 173
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Profit Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.34, r.year = 2023;

// Query 174
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Profit Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.57, r.year = 2022;

// Query 175
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Profit Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.70, r.year = 2021;

// Query 176
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Profit Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -0.98, r.year = 2020;

// Query 177
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 778241000, r.year = 2024;

// Query 178
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Net Interest Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 698929000, r.year = 2023;

// Query 179
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Net Fees and Commission Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 350809000, r.year = 2024;

// Query 180
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Net Fees and Commission Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 50554000, r.year = 2023;

// Query 181
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16417000, r.year = 2024;

// Query 182
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Other Income'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 7191000, r.year = 2023;

// Query 183
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Taxes on Financial Services'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -59984000, r.year = 2024;

// Query 184
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Taxes on Financial Services'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -58147000, r.year = 2023;

// Query 185
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Taxes on Financial Services'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -48177000, r.year = 2022;

// Query 186
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Taxes on Financial Services'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = -4689000, r.year = 2021;

// Query 187
MATCH (c:Company {name: 'Dialog Finance PLC'}), (m:Metric {name: 'Taxes on Financial Services'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0, r.year = 2020;

// Total queries: 187
// Generated on: 2025-10-02T20:32:02.251959
