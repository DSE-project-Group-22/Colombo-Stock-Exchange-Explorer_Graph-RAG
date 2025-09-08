// Query 1
MERGE (c:Company {name: 'Arpico Insurance PLC'}) ON CREATE SET c.id = 'arpico_insurance_plc';

// Query 2
MERGE (p:Person {name: 'S.H.Dulanjith Kaweesha'}) ON CREATE SET p.id = 's_h_dulanjith_kaweesha';

// Query 3
MATCH (p:Person {name: 'S.H.Dulanjith Kaweesha'}), (c:Company {name: 'Arpico Insurance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Financial Controller', r.as_of = date('2025-05-07');

// Query 4
MERGE (p:Person {name: 'Ramal Jasinghe'}) ON CREATE SET p.id = 'ramal_jasinghe';

// Query 5
MATCH (p:Person {name: 'Ramal Jasinghe'}), (c:Company {name: 'Arpico Insurance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-05-07');

// Query 6
MERGE (p:Person {name: 'Kelum Senanayake'}) ON CREATE SET p.id = 'kelum_senanayake';

// Query 7
MATCH (p:Person {name: 'Kelum Senanayake'}), (c:Company {name: 'Arpico Insurance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Director / Chief Executive Officer', r.as_of = date('2025-05-07');

// Query 8
MERGE (m:Metric {name: 'Profit/(Loss) before Taxation'}) ON CREATE SET m.id = 'profit_loss_before_taxation', m.unit = 'LKR';

// Query 9
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Profit/(Loss) before Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 21494500, r.year = 2025;

// Query 10
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Profit/(Loss) before Taxation'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 66424369, r.year = 2024;

// Query 11
MERGE (m:Metric {name: 'Income Tax Expense'}) ON CREATE SET m.id = 'income_tax_expense', m.unit = 'LKR';

// Query 12
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -9660350, r.year = 2025;

// Query 13
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Income Tax Expense'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -19180040, r.year = 2024;

// Query 14
MERGE (m:Metric {name: 'Profit/(Loss) for the Period'}) ON CREATE SET m.id = 'profit_loss_for_the_period', m.unit = 'LKR';

// Query 15
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Profit/(Loss) for the Period'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11834150, r.year = 2025;

// Query 16
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Profit/(Loss) for the Period'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 47244329, r.year = 2024;

// Query 17
MERGE (m:Metric {name: 'Basic Earning per Share'}) ON CREATE SET m.id = 'basic_earning_per_share', m.unit = 'LKR';

// Query 18
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Basic Earning per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.18, r.year = 2025;

// Query 19
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Basic Earning per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.71, r.year = 2024;

// Query 20
MERGE (m:Metric {name: 'Diluted Earning per Share'}) ON CREATE SET m.id = 'diluted_earning_per_share', m.unit = 'LKR';

// Query 21
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Diluted Earning per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.18, r.year = 2025;

// Query 22
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Diluted Earning per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 0.71, r.year = 2024;

// Query 23
MERGE (m:Metric {name: 'Net cash generated from operating activities'}) ON CREATE SET m.id = 'net_cash_generated_from_operating_activities', m.unit = 'LKR';

// Query 24
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Net cash generated from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -81981582, r.year = 2025;

// Query 25
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Net cash generated from operating activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -70818935, r.year = 2024;

// Query 26
MERGE (m:Metric {name: 'Net Cash Used in Investing Activities'}) ON CREATE SET m.id = 'net_cash_used_in_investing_activities', m.unit = 'LKR';

// Query 27
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Net Cash Used in Investing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 252023394, r.year = 2025;

// Query 28
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Net Cash Used in Investing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 68919696, r.year = 2024;

// Query 29
MERGE (m:Metric {name: 'Net Cash Flows Before Financing Activities'}) ON CREATE SET m.id = 'net_cash_flows_before_financing_activities', m.unit = 'LKR';

// Query 30
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Net Cash Flows Before Financing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 170041812, r.year = 2025;

// Query 31
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Net Cash Flows Before Financing Activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -1899239, r.year = 2024;

// Query 32
MERGE (m:Metric {name: 'Net cash used in financing activities'}) ON CREATE SET m.id = 'net_cash_used_in_financing_activities', m.unit = 'LKR';

// Query 33
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Net cash used in financing activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -247400, r.year = 2025;

// Query 34
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Net cash used in financing activities'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -419325, r.year = 2024;

// Query 35
MERGE (m:Metric {name: 'Actuarial loss on defined benefit plan'}) ON CREATE SET m.id = 'actuarial_loss_on_defined_benefit_plan', m.unit = 'LKR';

// Query 36
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Actuarial loss on defined benefit plan'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 660193, r.year = 2024;

// Query 37
MERGE (m:Metric {name: 'Net change in fair value of available-for-sale financial assets'}) ON CREATE SET m.id = 'net_change_in_fair_value_of_available_for_sale_financial_assets', m.unit = 'LKR';

// Query 38
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Net change in fair value of available-for-sale financial assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 169398370, r.year = 2024;

// Query 39
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Net change in fair value of available-for-sale financial assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -22712972, r.year = 2025;

// Query 40
MERGE (m:Metric {name: 'Net Assets Per Share'}) ON CREATE SET m.id = 'net_assets_per_share', m.unit = 'LKR';

// Query 41
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27.63, r.year = 2025;

// Query 42
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Net Assets Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22.40, r.year = 2024;

// Query 43
MERGE (m:Metric {name: 'Highest Price'}) ON CREATE SET m.id = 'highest_price', m.unit = 'LKR';

// Query 44
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Highest Price'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 27.40, r.year = 2025;

// Query 45
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Highest Price'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24.90, r.year = 2024;

// Query 46
MERGE (m:Metric {name: 'Lowest Price'}) ON CREATE SET m.id = 'lowest_price', m.unit = 'LKR';

// Query 47
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Lowest Price'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25.10, r.year = 2025;

// Query 48
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Lowest Price'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 20.90, r.year = 2024;

// Query 49
MERGE (m:Metric {name: 'Closing Price'}) ON CREATE SET m.id = 'closing_price', m.unit = 'LKR';

// Query 50
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Closing Price'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 25.10, r.year = 2025;

// Query 51
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Closing Price'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 24.00, r.year = 2024;

// Query 52
MERGE (m:Metric {name: 'Market Capitalization'}) ON CREATE SET m.id = 'market_capitalization', m.unit = 'LKR';

// Query 53
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Market Capitalization'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1642915355, r.year = 2025;

// Query 54
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Market Capitalization'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1589529768, r.year = 2024;

// Query 55
MERGE (m:Metric {name: 'Float Adjusted Market capitalization'}) ON CREATE SET m.id = 'float_adjusted_market_capitalization', m.unit = 'LKR';

// Query 56
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Float Adjusted Market capitalization'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 166423140, r.year = 2025;

// Query 57
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Float Adjusted Market capitalization'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 159129696, r.year = 2024;

// Query 58
MERGE (m:Metric {name: 'Gross Written Premium'}) ON CREATE SET m.id = 'gross_written_premium', m.unit = 'LKR';

// Query 59
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Gross Written Premium'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 447483879, r.year = 2025;

// Query 60
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Gross Written Premium'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 568240498, r.year = 2024;

// Query 61
MERGE (m:Metric {name: 'Premium ceded to reinsurers'}) ON CREATE SET m.id = 'premium_ceded_to_reinsurers', m.unit = 'LKR';

// Query 62
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Premium ceded to reinsurers'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -21557173, r.year = 2025;

// Query 63
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Premium ceded to reinsurers'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -22268362, r.year = 2024;

// Query 64
MERGE (m:Metric {name: 'Net written premium'}) ON CREATE SET m.id = 'net_written_premium', m.unit = 'LKR';

// Query 65
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Net written premium'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 425926706, r.year = 2025;

// Query 66
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Net written premium'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 545972136, r.year = 2024;

// Query 67
MERGE (m:Metric {name: 'Fees and commission income'}) ON CREATE SET m.id = 'fees_and_commission_income', m.unit = 'LKR';

// Query 68
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Fees and commission income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4468225, r.year = 2025;

// Query 69
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Fees and commission income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5295940, r.year = 2024;

// Query 70
MERGE (m:Metric {name: 'Investment income'}) ON CREATE SET m.id = 'investment_income', m.unit = 'LKR';

// Query 71
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Investment income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 139580223, r.year = 2025;

// Query 72
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Investment income'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 137828756, r.year = 2024;

// Query 73
MERGE (m:Metric {name: 'Fair value gains'}) ON CREATE SET m.id = 'fair_value_gains', m.unit = 'LKR';

// Query 74
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Fair value gains'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3129765, r.year = 2025;

// Query 75
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Fair value gains'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4138612, r.year = 2024;

// Query 76
MERGE (m:Metric {name: 'Other operating revenue'}) ON CREATE SET m.id = 'other_operating_revenue', m.unit = 'LKR';

// Query 77
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Other operating revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 681282, r.year = 2025;

// Query 78
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Other operating revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 525588, r.year = 2024;

// Query 79
MERGE (m:Metric {name: 'Total Other revenue'}) ON CREATE SET m.id = 'total_other_revenue', m.unit = 'LKR';

// Query 80
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Total Other revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 147859495, r.year = 2025;

// Query 81
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Total Other revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 147788896, r.year = 2024;

// Query 82
MERGE (m:Metric {name: 'Total net revenue'}) ON CREATE SET m.id = 'total_net_revenue', m.unit = 'LKR';

// Query 83
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Total net revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 573786201, r.year = 2025;

// Query 84
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Total net revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 693761032, r.year = 2024;

// Query 85
MERGE (m:Metric {name: 'Net Insurance Benefits and Claims Paid'}) ON CREATE SET m.id = 'net_insurance_benefits_and_claims_paid', m.unit = 'LKR';

// Query 86
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Net Insurance Benefits and Claims Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -206897608, r.year = 2025;

// Query 87
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Net Insurance Benefits and Claims Paid'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -321229138, r.year = 2024;

// Query 88
MERGE (m:Metric {name: 'Net change in insurance claims outstanding'}) ON CREATE SET m.id = 'net_change_in_insurance_claims_outstanding', m.unit = 'LKR';

// Query 89
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Net change in insurance claims outstanding'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -28164171, r.year = 2025;

// Query 90
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Net change in insurance claims outstanding'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -748071, r.year = 2024;

// Query 91
MERGE (m:Metric {name: 'Underwriting and net acquisition costs'}) ON CREATE SET m.id = 'underwriting_and_net_acquisition_costs', m.unit = 'LKR';

// Query 92
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Underwriting and net acquisition costs'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -105421309, r.year = 2025;

// Query 93
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (m:Metric {name: 'Underwriting and net acquisition costs'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = -97828237, r.year = 2024;

// Query 94
MERGE (s:Sector {name: 'Insurance'}) ON CREATE SET s.id = 'insurance';

// Query 95
MATCH (c:Company {name: 'Arpico Insurance PLC'}), (s:Sector {name: 'Insurance'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 95
// Generated on: 2025-09-03T15:10:06.913650
