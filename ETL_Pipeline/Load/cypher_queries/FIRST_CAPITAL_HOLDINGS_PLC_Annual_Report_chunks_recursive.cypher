// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'First Capital Holdings'}) ON CREATE SET c.id = 'first_capital_holdings', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
MERGE (c:Company {name: 'First Capital Equities'}) ON CREATE SET c.id = 'first_capital_equities';

// Query 4
MERGE (c:Company {name: 'First Capital Asset Management'}) ON CREATE SET c.id = 'first_capital_asset_management';

// Query 5
MERGE (c:Company {name: 'First Capital Treasuries'}) ON CREATE SET c.id = 'first_capital_treasuries';

// Query 6
MERGE (c:Company {name: 'First Capital Trustee Services'}) ON CREATE SET c.id = 'first_capital_trustee_services';

// Query 7
MERGE (c:Company {name: 'First Capital Advisory Services'}) ON CREATE SET c.id = 'first_capital_advisory_services';

// Query 8
MERGE (c:Company {name: 'First Capital Limited'}) ON CREATE SET c.id = 'first_capital_limited';

// Query 9
// Step 2: Auditor;

// Query 10
MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm';

// Query 11
// Step 3: AUDITED_BY Relationship;

// Query 12
MATCH (c:Company {name: 'First Capital Holdings'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24';

// Query 13
// Step 4: People - Directors and Executives;

// Query 14
MERGE (p:Person {name: 'Dilshan Wirasekara'}) ON CREATE SET p.id = 'dilshan_wirasekara';

// Query 15
MERGE (p:Person {name: 'Nishan Fernando'}) ON CREATE SET p.id = 'nishan_fernando';

// Query 16
MERGE (p:Person {name: 'Manjula Mathews'}) ON CREATE SET p.id = 'manjula_mathews';

// Query 17
MERGE (p:Person {name: 'Tharusha Ekanayake'}) ON CREATE SET p.id = 'tharusha_ekanayake';

// Query 18
MERGE (p:Person {name: 'Mangala Jayashantha'}) ON CREATE SET p.id = 'mangala_jayashantha';

// Query 19
MERGE (p:Person {name: 'K. V. Kuganathan'}) ON CREATE SET p.id = 'k_v_kuganathan';

// Query 20
MERGE (p:Person {name: 'Wasanthi Stephen'}) ON CREATE SET p.id = 'wasanthi_stephen';

// Query 21
MERGE (p:Person {name: 'Gamika De Silva'}) ON CREATE SET p.id = 'gamika_de_silva';

// Query 22
MERGE (p:Person {name: 'Jaliya Wijeratne'}) ON CREATE SET p.id = 'jaliya_wijeratne';

// Query 23
MERGE (p:Person {name: 'Kavin Karunamoorthy'}) ON CREATE SET p.id = 'kavin_karunamoorthy';

// Query 24
MERGE (p:Person {name: 'Sachith Perera'}) ON CREATE SET p.id = 'sachith_perera';

// Query 25
// Step 5: HOLDS_POSITION Relationships;

// Query 26
MATCH (p:Person {name: 'Dilshan Wirasekara'}), (c:Company {name: 'First Capital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 27
MATCH (p:Person {name: 'Dilshan Wirasekara'}), (c:Company {name: 'First Capital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 28
MATCH (p:Person {name: 'Nishan Fernando'}), (c:Company {name: 'First Capital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 29
MATCH (p:Person {name: 'Nishan Fernando'}), (c:Company {name: 'First Capital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 30
MATCH (p:Person {name: 'Manjula Mathews'}), (c:Company {name: 'First Capital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'Manjula Mathews'}), (c:Company {name: 'First Capital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Deputy Chairman', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'Tharusha Ekanayake'}), (c:Company {name: 'First Capital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Operating Officer', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'Mangala Jayashantha'}), (c:Company {name: 'First Capital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'K. V. Kuganathan'}), (c:Company {name: 'First Capital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'Wasanthi Stephen'}), (c:Company {name: 'First Capital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 36
MATCH (p:Person {name: 'Gamika De Silva'}), (c:Company {name: 'First Capital Holdings'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Senior Manager', r.as_of = date('2024-03-31');

// Query 37
MATCH (p:Person {name: 'Jaliya Wijeratne'}), (c:Company {name: 'First Capital Equities'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 38
MATCH (p:Person {name: 'Kavin Karunamoorthy'}), (c:Company {name: 'First Capital Asset Management'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 39
MATCH (p:Person {name: 'Sachith Perera'}), (c:Company {name: 'First Capital Treasuries'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-03-31');

// Query 40
// Step 6: Metrics;

// Query 41
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 44
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 46
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 47
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 48
// Step 7: HAS_METRIC Relationships;

// Query 49
MATCH (c:Company {name: 'First Capital Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 29558000000.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'First Capital Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 14280000000.0, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'First Capital Holdings'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16309000000.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'First Capital Holdings'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3826000000.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'First Capital Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10156000000.0, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'First Capital Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2647000000.0, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'First Capital Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7940000000.0, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'First Capital Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6681000000.0, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'First Capital Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 22.15, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'First Capital Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.78, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'First Capital Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16309000000.0, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'First Capital Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3826000000.0, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'First Capital Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 78671000000.0, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'First Capital Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 66626000000.0, r.year = 2023;

// Query 63
// Step 8: Sectors;

// Query 64
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 65
// Step 9: IN_SECTOR Relationships;

// Query 66
MATCH (c:Company {name: 'First Capital Holdings'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 67
// Step 10: Product Nodes;

// Query 68
MERGE (p:Product {name: 'Fixed Income Investment Products'}) ON CREATE SET p.id = 'fixed_income_investment_products';

// Query 69
MERGE (p:Product {name: 'Repos'}) ON CREATE SET p.id = 'repos';

// Query 70
MERGE (p:Product {name: 'Reverse Repos'}) ON CREATE SET p.id = 'reverse_repos';

// Query 71
MERGE (p:Product {name: 'Term Repos'}) ON CREATE SET p.id = 'term_repos';

// Query 72
MERGE (p:Product {name: 'Structured Products (Gilts)'}) ON CREATE SET p.id = 'structured_products_gilts';

// Query 73
MERGE (p:Product {name: 'Rate Solutions'}) ON CREATE SET p.id = 'rate_solutions';

// Query 74
MERGE (p:Product {name: 'Forwards'}) ON CREATE SET p.id = 'forwards';

// Query 75
MERGE (p:Product {name: 'Swaps'}) ON CREATE SET p.id = 'swaps';

// Query 76
MERGE (p:Product {name: 'Corporate Debt Securities'}) ON CREATE SET p.id = 'corporate_debt_securities';

// Query 77
MERGE (p:Product {name: 'Secondary Market Government Securities Trading'}) ON CREATE SET p.id = 'secondary_market_government_securities_trading';

// Query 78
MERGE (p:Product {name: 'Market Making'}) ON CREATE SET p.id = 'market_making';

// Query 79
MERGE (p:Product {name: 'Secondary Market Equities Trading'}) ON CREATE SET p.id = 'secondary_market_equities_trading';

// Query 80
MERGE (p:Product {name: 'Credit Against Listed Equities'}) ON CREATE SET p.id = 'credit_against_listed_equities';

// Query 81
MERGE (p:Product {name: 'Unit Trusts'}) ON CREATE SET p.id = 'unit_trusts';

// Query 82
MERGE (p:Product {name: 'Private Wealth Management'}) ON CREATE SET p.id = 'private_wealth_management';

// Query 83
MERGE (p:Product {name: 'Portfolio Management'}) ON CREATE SET p.id = 'portfolio_management';

// Query 84
MERGE (p:Product {name: 'Personal Financial Planning'}) ON CREATE SET p.id = 'personal_financial_planning';

// Query 85
MERGE (p:Product {name: 'Succession Planning'}) ON CREATE SET p.id = 'succession_planning';

// Query 86
MERGE (p:Product {name: 'Lifestyle Financial Planning Solutions'}) ON CREATE SET p.id = 'lifestyle_financial_planning_solutions';

// Query 87
MERGE (p:Product {name: 'Government Securities'}) ON CREATE SET p.id = 'government_securities';

// Query 88
MERGE (p:Product {name: 'Corporate Finance Advisory'}) ON CREATE SET p.id = 'corporate_finance_advisory';

// Query 89
MERGE (p:Product {name: 'Corporate Dealing Securities'}) ON CREATE SET p.id = 'corporate_dealing_securities';

// Query 90
MERGE (p:Product {name: 'Asset Management Services'}) ON CREATE SET p.id = 'asset_management_services';

// Query 91
MERGE (p:Product {name: 'Stock Brokering Services'}) ON CREATE SET p.id = 'stock_brokering_services';

// Query 92
MERGE (p:Product {name: 'First Capital Money Plus Fund'}) ON CREATE SET p.id = 'first_capital_money_plus_fund';

// Query 93
// Step 11: OFFERS Relationships;

// Query 94
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Fixed Income Investment Products'}) MERGE (c)-[:OFFERS]->(p);

// Query 95
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Repos'}) MERGE (c)-[:OFFERS]->(p);

// Query 96
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Reverse Repos'}) MERGE (c)-[:OFFERS]->(p);

// Query 97
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Term Repos'}) MERGE (c)-[:OFFERS]->(p);

// Query 98
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Structured Products (Gilts)'}) MERGE (c)-[:OFFERS]->(p);

// Query 99
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Rate Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 100
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Forwards'}) MERGE (c)-[:OFFERS]->(p);

// Query 101
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Swaps'}) MERGE (c)-[:OFFERS]->(p);

// Query 102
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Corporate Debt Securities'}) MERGE (c)-[:OFFERS]->(p);

// Query 103
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Secondary Market Government Securities Trading'}) MERGE (c)-[:OFFERS]->(p);

// Query 104
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Market Making'}) MERGE (c)-[:OFFERS]->(p);

// Query 105
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Secondary Market Equities Trading'}) MERGE (c)-[:OFFERS]->(p);

// Query 106
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Credit Against Listed Equities'}) MERGE (c)-[:OFFERS]->(p);

// Query 107
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Unit Trusts'}) MERGE (c)-[:OFFERS]->(p);

// Query 108
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Private Wealth Management'}) MERGE (c)-[:OFFERS]->(p);

// Query 109
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Portfolio Management'}) MERGE (c)-[:OFFERS]->(p);

// Query 110
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Personal Financial Planning'}) MERGE (c)-[:OFFERS]->(p);

// Query 111
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Succession Planning'}) MERGE (c)-[:OFFERS]->(p);

// Query 112
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Lifestyle Financial Planning Solutions'}) MERGE (c)-[:OFFERS]->(p);

// Query 113
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Government Securities'}) MERGE (c)-[:OFFERS]->(p);

// Query 114
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Corporate Finance Advisory'}) MERGE (c)-[:OFFERS]->(p);

// Query 115
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Corporate Dealing Securities'}) MERGE (c)-[:OFFERS]->(p);

// Query 116
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Asset Management Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 117
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'Stock Brokering Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 118
MATCH (c:Company {name: 'First Capital Holdings'}), (p:Product {name: 'First Capital Money Plus Fund'}) MERGE (c)-[:OFFERS]->(p);

// Query 119
// Step 12: Company-Company Relationships (OWNS);

// Query 120
MATCH (p:Company {name: 'First Capital Holdings'}), (c:Company {name: 'First Capital Limited'}) MERGE (p)-[r:OWNS]->(c) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 120
// Generated on: 2025-10-03T02:44:00.552175
