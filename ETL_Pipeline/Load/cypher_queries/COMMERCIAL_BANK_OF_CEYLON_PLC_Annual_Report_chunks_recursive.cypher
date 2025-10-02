// Query 1
MERGE (c:Company {name: 'Commercial Bank of Ceylon PLC'}) ON CREATE SET c.id = 'commercial_bank_of_ceylon_plc', c.region = 'Sri Lanka', c.listed_on = 'CSE';

// Query 2
MERGE (c:Company {name: 'DFCC Bank PLC'}) ON CREATE SET c.id = 'dfcc_bank_plc';

// Query 3
MERGE (c:Company {name: 'State Entities'}) ON CREATE SET c.id = 'state_entities';

// Query 4
MERGE (c:Company {name: 'International Finance Corporation'}) ON CREATE SET c.id = 'international_finance_corporation';

// Query 5
MERGE (c:Company {name: 'Commercial Bank of Ceylon PLC (Bangladesh Operations)'}) ON CREATE SET c.id = 'commercial_bank_of_ceylon_plc_bangladesh_operations', c.region = 'Bangladesh';

// Query 6
MERGE (c:Company {name: 'Commercial Bank of Ceylon PLC (Maldives Subsidiary)'}) ON CREATE SET c.id = 'commercial_bank_of_ceylon_plc_maldives_subsidiary', c.region = 'Maldives';

// Query 7
MERGE (c:Company {name: 'Commercial Bank of Ceylon PLC (Myanmar Subsidiary)'}) ON CREATE SET c.id = 'commercial_bank_of_ceylon_plc_myanmar_subsidiary', c.region = 'Myanmar';

// Query 8
MERGE (c:Company {name: 'Crédit Agricole Indosuez'}) ON CREATE SET c.id = 'credit_agricole_indosuez';

// Query 9
MERGE (c:Company {name: 'Credit Rating Information Services Ltd.'}) ON CREATE SET c.id = 'credit_rating_information_services_ltd';

// Query 10
MERGE (c:Company {name: 'PepperCube Consultants'}) ON CREATE SET c.id = 'peppercube_consultants';

// Query 11
MERGE (c:Company {name: 'Lankaclear (Pvt) Ltd'}) ON CREATE SET c.id = 'lankaclear_pvt_ltd';

// Query 12
MERGE (c:Company {name: 'Industrial Development Board'}) ON CREATE SET c.id = 'industrial_development_board';

// Query 13
MERGE (c:Company {name: 'Media Services (Private) Limited'}) ON CREATE SET c.id = 'media_services_private_limited';

// Query 14
MERGE (c:Company {name: 'Sri Lanka Institute of Marketing'}) ON CREATE SET c.id = 'sri_lanka_institute_of_marketing';

// Query 15
MERGE (p:Person {name: 'Y S H I Silva'}) ON CREATE SET p.id = 'y_s_h_i_silva';

// Query 16
MERGE (p:Person {name: 'D P Pieris'}) ON CREATE SET p.id = 'd_p_pieris';

// Query 17
MERGE (s:Sector {name: 'Banks'}) ON CREATE SET s.id = 'banks';

// Query 18
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 19
MERGE (s:Sector {name: 'Real Estate'}) ON CREATE SET s.id = 'real_estate';

// Query 20
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 21
MERGE (p:Product {name: 'Savings'}) ON CREATE SET p.id = 'savings';

// Query 22
MERGE (p:Product {name: 'Loans'}) ON CREATE SET p.id = 'loans';

// Query 23
MERGE (p:Product {name: 'Trade Finance'}) ON CREATE SET p.id = 'trade_finance';

// Query 24
MERGE (p:Product {name: 'Investment Solutions'}) ON CREATE SET p.id = 'investment_solutions';

// Query 25
MERGE (p:Product {name: 'Overdrafts'}) ON CREATE SET p.id = 'overdrafts';

// Query 26
MERGE (p:Product {name: 'Lease/Hire Purchase'}) ON CREATE SET p.id = 'lease_hire_purchase';

// Query 27
MERGE (p:Product {name: 'Credit Cards'}) ON CREATE SET p.id = 'credit_cards';

// Query 28
MERGE (p:Product {name: 'Pawning'}) ON CREATE SET p.id = 'pawning';

// Query 29
MERGE (p:Product {name: 'Staff Loans'}) ON CREATE SET p.id = 'staff_loans';

// Query 30
MERGE (p:Product {name: 'Housing Loans'}) ON CREATE SET p.id = 'housing_loans';

// Query 31
MERGE (p:Product {name: 'Personal Loans'}) ON CREATE SET p.id = 'personal_loans';

// Query 32
MERGE (p:Product {name: 'Short Term Loans'}) ON CREATE SET p.id = 'short_term_loans';

// Query 33
MERGE (p:Product {name: 'Long Term Loans'}) ON CREATE SET p.id = 'long_term_loans';

// Query 34
MERGE (p:Product {name: 'Bills of Exchange'}) ON CREATE SET p.id = 'bills_of_exchange';

// Query 35
MERGE (p:Product {name: 'Green Financing'}) ON CREATE SET p.id = 'green_financing';

// Query 36
MERGE (m:Metric {name: 'Income Tax'}) ON CREATE SET m.id = 'income_tax', m.unit = 'Rs';

// Query 37
MERGE (m:Metric {name: 'Taxes on Financial Services'}) ON CREATE SET m.id = 'taxes_on_financial_services', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Other Taxes Paid'}) ON CREATE SET m.id = 'other_taxes_paid', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Total Direct Taxes Paid'}) ON CREATE SET m.id = 'total_direct_taxes_paid', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Advance Income Tax on Deposits'}) ON CREATE SET m.id = 'advance_income_tax_on_deposits', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'PAYE Tax on Staff Emoluments'}) ON CREATE SET m.id = 'paye_tax_on_staff_emoluments', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Stamp Duty'}) ON CREATE SET m.id = 'stamp_duty', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Value Added Tax'}) ON CREATE SET m.id = 'value_added_tax', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Other Taxes Collected and Remitted'}) ON CREATE SET m.id = 'other_taxes_collected_and_remitted', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Total Taxes Collected and Remitted'}) ON CREATE SET m.id = 'total_taxes_collected_and_remitted', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Ordinary Voting Shareholders Count'}) ON CREATE SET m.id = 'ordinary_voting_shareholders_count', m.unit = 'Count';

// Query 47
MERGE (m:Metric {name: 'Foreign Shareholders Stake'}) ON CREATE SET m.id = 'foreign_shareholders_stake', m.unit = '%';

// Query 48
MERGE (m:Metric {name: 'International Operations Assets Percentage'}) ON CREATE SET m.id = 'international_operations_assets_percentage', m.unit = '%';

// Query 49
MERGE (m:Metric {name: 'International Operations Profit Before Tax Percentage'}) ON CREATE SET m.id = 'international_operations_profit_before_tax_percentage', m.unit = '%';

// Query 50
MERGE (m:Metric {name: 'Employees Count'}) ON CREATE SET m.id = 'employees_count', m.unit = 'Count';

// Query 51
MERGE (m:Metric {name: 'Customer Base Count'}) ON CREATE SET m.id = 'customer_base_count', m.unit = 'Count';

// Query 52
MERGE (m:Metric {name: 'Market Capitalisation'}) ON CREATE SET m.id = 'market_capitalisation', m.unit = 'Rs';

// Query 53
MERGE (m:Metric {name: 'Market Capitalisation USD'}) ON CREATE SET m.id = 'market_capitalisation_usd', m.unit = 'USD';

// Query 54
MERGE (m:Metric {name: 'CASA Ratio'}) ON CREATE SET m.id = 'casa_ratio', m.unit = '%';

// Query 55
MERGE (m:Metric {name: 'Loans and Advances CAGR'}) ON CREATE SET m.id = 'loans_and_advances_cagr', m.unit = '%';

// Query 56
MERGE (m:Metric {name: 'Total Assets CAGR'}) ON CREATE SET m.id = 'total_assets_cagr', m.unit = '%';

// Query 57
MERGE (m:Metric {name: 'Deposits CAGR'}) ON CREATE SET m.id = 'deposits_cagr', m.unit = '%';

// Query 58
MERGE (m:Metric {name: 'Gross Income CAGR'}) ON CREATE SET m.id = 'gross_income_cagr', m.unit = '%';

// Query 59
MERGE (m:Metric {name: 'Profit Before Tax CAGR'}) ON CREATE SET m.id = 'profit_before_tax_cagr', m.unit = '%';

// Query 60
MERGE (m:Metric {name: 'Profit After Tax CAGR'}) ON CREATE SET m.id = 'profit_after_tax_cagr', m.unit = '%';

// Query 61
MERGE (m:Metric {name: 'Deposits to Total Assets Ratio'}) ON CREATE SET m.id = 'deposits_to_total_assets_ratio', m.unit = '%';

// Query 62
MERGE (m:Metric {name: 'Capital to Total Assets Ratio'}) ON CREATE SET m.id = 'capital_to_total_assets_ratio', m.unit = '%';

// Query 63
MERGE (m:Metric {name: 'Subordinated Liabilities to Total Assets Ratio'}) ON CREATE SET m.id = 'subordinated_liabilities_to_total_assets_ratio', m.unit = '%';

// Query 64
MERGE (m:Metric {name: 'Other Borrowings to Total Assets Ratio'}) ON CREATE SET m.id = 'other_borrowings_to_total_assets_ratio', m.unit = '%';

// Query 65
MERGE (m:Metric {name: 'Due to Banks to Total Assets Ratio'}) ON CREATE SET m.id = 'due_to_banks_to_total_assets_ratio', m.unit = '%';

// Query 66
MERGE (m:Metric {name: 'Securities Sold Under Repurchase Agreements to Total Assets Ratio'}) ON CREATE SET m.id = 'securities_sold_under_repurchase_agreements_to_total_assets_ratio', m.unit = '%';

// Query 67
MERGE (m:Metric {name: 'Other Liabilities to Total Assets Ratio'}) ON CREATE SET m.id = 'other_liabilities_to_total_assets_ratio', m.unit = '%';

// Query 68
MERGE (m:Metric {name: 'Loans to Deposits Ratio'}) ON CREATE SET m.id = 'loans_to_deposits_ratio', m.unit = 'Ratio';

// Query 69
MERGE (m:Metric {name: 'Equity Infusion'}) ON CREATE SET m.id = 'equity_infusion', m.unit = 'Rs';

// Query 70
MERGE (m:Metric {name: 'Tier I Capital Ratio'}) ON CREATE SET m.id = 'tier_i_capital_ratio', m.unit = '%';

// Query 71
MERGE (m:Metric {name: 'Total Capital Ratio'}) ON CREATE SET m.id = 'total_capital_ratio', m.unit = '%';

// Query 72
MERGE (m:Metric {name: 'Net Impairment Reversal'}) ON CREATE SET m.id = 'net_impairment_reversal', m.unit = 'Rs';

// Query 73
MERGE (m:Metric {name: 'Gross Loans and Advances'}) ON CREATE SET m.id = 'gross_loans_and_advances', m.unit = 'Rs';

// Query 74
MERGE (m:Metric {name: 'Gross Loans and Advances Market Share'}) ON CREATE SET m.id = 'gross_loans_and_advances_market_share', m.unit = '%';

// Query 75
MERGE (m:Metric {name: 'Deposits'}) ON CREATE SET m.id = 'deposits', m.unit = 'Rs';

// Query 76
MERGE (m:Metric {name: 'Deposits Market Share'}) ON CREATE SET m.id = 'deposits_market_share', m.unit = '%';

// Query 77
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 78
MERGE (m:Metric {name: 'Total Assets Market Share'}) ON CREATE SET m.id = 'total_assets_market_share', m.unit = '%';

// Query 79
MERGE (m:Metric {name: 'Import Volumes'}) ON CREATE SET m.id = 'import_volumes', m.unit = 'USD';

// Query 80
MERGE (m:Metric {name: 'Import Volumes Market Share'}) ON CREATE SET m.id = 'import_volumes_market_share', m.unit = '%';

// Query 81
MERGE (m:Metric {name: 'Export Volumes'}) ON CREATE SET m.id = 'export_volumes', m.unit = 'USD';

// Query 82
MERGE (m:Metric {name: 'Export Volumes Market Share'}) ON CREATE SET m.id = 'export_volumes_market_share', m.unit = '%';

// Query 83
MERGE (m:Metric {name: 'USD LKR Exchange Rate'}) ON CREATE SET m.id = 'usd_lkr_exchange_rate', m.unit = 'Ratio';

// Query 84
MERGE (m:Metric {name: 'Total Group Assets'}) ON CREATE SET m.id = 'total_group_assets', m.unit = 'Rs';

// Query 85
MATCH (p:Person {name: 'Y S H I Silva'}), (c:Company {name: 'Commercial Bank of Ceylon PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 9.87, r.as_of = date('2024-12-31');

// Query 86
MATCH (c1:Company {name: 'DFCC Bank PLC'}), (c2:Company {name: 'Commercial Bank of Ceylon PLC'}) MERGE (c1)-[r:OWNS]->(c2) ON CREATE SET r.pct = 9.72, r.as_of = date('2024-12-31');

// Query 87
MATCH (p:Person {name: 'D P Pieris'}), (c:Company {name: 'Commercial Bank of Ceylon PLC'}) MERGE (p)-[r:OWNS_SHARES]->(c) ON CREATE SET r.pct = 9.68, r.as_of = date('2024-12-31');

// Query 88
MATCH (c1:Company {name: 'State Entities'}), (c2:Company {name: 'Commercial Bank of Ceylon PLC'}) MERGE (c1)-[r:OWNS]->(c2) ON CREATE SET r.pct = 17.93, r.as_of = date('2024-12-31');

// Query 89
MATCH (c1:Company {name: 'International Finance Corporation'}), (c2:Company {name: 'Commercial Bank of Ceylon PLC'}) MERGE (c1)-[r:OWNS]->(c2) ON CREATE SET r.pct = 14.41, r.as_of = date('2024-12-31');

// Query 90
MATCH (parent:Company {name: 'Commercial Bank of Ceylon PLC'}), (child:Company {name: 'Commercial Bank of Ceylon PLC (Bangladesh Operations)'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.as_of = date('2003-01-01');

// Query 91
MATCH (parent:Company {name: 'Commercial Bank of Ceylon PLC'}), (child:Company {name: 'Commercial Bank of Ceylon PLC (Maldives Subsidiary)'}) MERGE (parent)-[:OWNS]->(child);

// Query 92
MATCH (parent:Company {name: 'Commercial Bank of Ceylon PLC'}), (child:Company {name: 'Commercial Bank of Ceylon PLC (Myanmar Subsidiary)'}) MERGE (parent)-[:OWNS]->(child);

// Query 93
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (s:Sector {name: 'Banks'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 94
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 95
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (s:Sector {name: 'Real Estate'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 96
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 97
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (p:Product {name: 'Savings'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (p:Product {name: 'Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (p:Product {name: 'Trade Finance'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (p:Product {name: 'Investment Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 101
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (p:Product {name: 'Overdrafts'}) MERGE (c)-[:OFFERS]->(p);

// Query 102
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (p:Product {name: 'Lease/Hire Purchase'}) MERGE (c)-[:OFFERS]->(p);

// Query 103
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (p:Product {name: 'Credit Cards'}) MERGE (c)-[:OFFERS]->(p);

// Query 104
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (p:Product {name: 'Pawning'}) MERGE (c)-[:OFFERS]->(p);

// Query 105
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (p:Product {name: 'Staff Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 106
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (p:Product {name: 'Housing Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 107
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (p:Product {name: 'Personal Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 108
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (p:Product {name: 'Short Term Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 109
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (p:Product {name: 'Long Term Loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 110
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (p:Product {name: 'Bills of Exchange'}) MERGE (c)-[:OFFERS]->(p);

// Query 111
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (p:Product {name: 'Green Financing'}) MERGE (c)-[:OFFERS]->(p);

// Query 112
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Income Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19558000000, r.year = 2024;

// Query 113
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Taxes on Financial Services'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10188000000, r.year = 2024;

// Query 114
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Other Taxes Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 884000000, r.year = 2024;

// Query 115
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Total Direct Taxes Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 30630000000, r.year = 2024;

// Query 116
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Advance Income Tax on Deposits'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 6101000000, r.year = 2024;

// Query 117
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'PAYE Tax on Staff Emoluments'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 3152000000, r.year = 2024;

// Query 118
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Stamp Duty'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 671000000, r.year = 2024;

// Query 119
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Value Added Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 426000000, r.year = 2024;

// Query 120
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Other Taxes Collected and Remitted'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 191000000, r.year = 2024;

// Query 121
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Total Taxes Collected and Remitted'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 10541000000, r.year = 2024;

// Query 122
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Ordinary Voting Shareholders Count'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 16966, r.as_of = date('2024-12-31');

// Query 123
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Foreign Shareholders Stake'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 18.26, r.as_of = date('2024-12-31');

// Query 124
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Foreign Shareholders Stake'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 18.00, r.as_of = date('2023-12-31');

// Query 125
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'International Operations Assets Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 15.04;

// Query 126
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'International Operations Profit Before Tax Percentage'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 22.21;

// Query 127
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Employees Count'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 5000;

// Query 128
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Customer Base Count'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4000000;

// Query 129
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Market Capitalisation'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 230309000000, r.as_of = date('2024-12-31');

// Query 130
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Market Capitalisation USD'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 786039000, r.as_of = date('2024-12-31');

// Query 131
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'CASA Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 38.07, r.as_of = date('2024-12-31');

// Query 132
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Loans and Advances CAGR'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13.05;

// Query 133
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Total Assets CAGR'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13.37;

// Query 134
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Deposits CAGR'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 15.50;

// Query 135
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Gross Income CAGR'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13.90;

// Query 136
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Profit Before Tax CAGR'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 19.76;

// Query 137
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Profit After Tax CAGR'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 17.07;

// Query 138
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Deposits to Total Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 80.17, r.as_of = date('2024-12-31');

// Query 139
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Deposits to Total Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 80.81, r.as_of = date('2023-12-31');

// Query 140
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Capital to Total Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 9.87, r.as_of = date('2024-12-31');

// Query 141
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Capital to Total Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 8.33, r.as_of = date('2023-12-31');

// Query 142
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Subordinated Liabilities to Total Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.07, r.as_of = date('2024-12-31');

// Query 143
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Subordinated Liabilities to Total Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.41, r.as_of = date('2023-12-31');

// Query 144
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Other Borrowings to Total Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.51, r.as_of = date('2024-12-31');

// Query 145
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Other Borrowings to Total Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.49, r.as_of = date('2023-12-31');

// Query 146
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Due to Banks to Total Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 0.76, r.as_of = date('2024-12-31');

// Query 147
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Due to Banks to Total Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.83, r.as_of = date('2023-12-31');

// Query 148
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Securities Sold Under Repurchase Agreements to Total Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.03, r.as_of = date('2024-12-31');

// Query 149
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Securities Sold Under Repurchase Agreements to Total Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 4.31, r.as_of = date('2023-12-31');

// Query 150
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Other Liabilities to Total Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.59, r.as_of = date('2024-12-31');

// Query 151
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Other Liabilities to Total Assets Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2.82, r.as_of = date('2023-12-31');

// Query 152
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Loans to Deposits Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 66.48, r.as_of = date('2024-12-31');

// Query 153
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Equity Infusion'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 22540000000, r.as_of = date('2024-08-01');

// Query 154
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Tier I Capital Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14.227, r.as_of = date('2024-12-31');

// Query 155
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Total Capital Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 18.142, r.as_of = date('2024-12-31');

// Query 156
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Net Impairment Reversal'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 46390000000, r.year = 2024;

// Query 157
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Gross Loans and Advances'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1487000000000, r.as_of = date('2024-12-31');

// Query 158
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Gross Loans and Advances'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1266000000000, r.as_of = date('2023-12-31');

// Query 159
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Gross Loans and Advances Market Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13.22, r.as_of = date('2024-12-31');

// Query 160
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Gross Loans and Advances Market Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11.49, r.as_of = date('2023-12-31');

// Query 161
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Deposits'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2237000000000, r.as_of = date('2024-12-31');

// Query 162
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Deposits'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2085000000000, r.as_of = date('2023-12-31');

// Query 163
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Deposits Market Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12.90, r.as_of = date('2024-12-31');

// Query 164
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Deposits Market Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12.54, r.as_of = date('2023-12-31');

// Query 165
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2790000000000, r.as_of = date('2024-12-31');

// Query 166
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2580000000000, r.as_of = date('2023-12-31');

// Query 167
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Total Assets Market Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 13.16, r.as_of = date('2024-12-31');

// Query 168
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Total Assets Market Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 12.65, r.as_of = date('2023-12-31');

// Query 169
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Import Volumes'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2368000000, r.as_of = date('2024-12-31');

// Query 170
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Import Volumes'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1475000000, r.as_of = date('2023-12-31');

// Query 171
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Import Volumes Market Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14.30, r.as_of = date('2024-12-31');

// Query 172
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Import Volumes Market Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11.40, r.as_of = date('2023-12-31');

// Query 173
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Export Volumes'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2709000000, r.as_of = date('2024-12-31');

// Query 174
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Export Volumes'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2248000000, r.as_of = date('2023-12-31');

// Query 175
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Export Volumes Market Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 21.20, r.as_of = date('2024-12-31');

// Query 176
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Export Volumes Market Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 18.90, r.as_of = date('2023-12-31');

// Query 177
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'USD LKR Exchange Rate'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 293.00, r.as_of = date('2024-12-31');

// Query 178
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'USD LKR Exchange Rate'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 324.25, r.as_of = date('2023-12-31');

// Query 179
MATCH (c:Company {name: 'Commercial Bank of Ceylon PLC'}), (m:Metric {name: 'Total Group Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 2876000000000, r.as_of = date('2024-12-31');

// Total queries: 179
// Generated on: 2025-10-02T17:54:42.953639
