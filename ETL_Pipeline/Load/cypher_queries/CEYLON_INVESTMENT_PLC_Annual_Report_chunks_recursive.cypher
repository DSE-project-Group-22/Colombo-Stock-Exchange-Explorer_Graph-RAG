// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Ceylon Investment'}) ON CREATE SET c.id = 'ceylon_investment', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange', c.founded_on = date('1919-01-01');

// Query 3
// Step 2: Auditor;

// Query 4
MERGE (a:Auditor:Company {name: 'KPMG'}) ON CREATE SET a.id = 'kpmg', a.type = 'Auditing Firm';

// Query 5
// Step 3: AUDITED_BY Relationship;

// Query 6
MATCH (c:Company {name: 'Ceylon Investment'}), (a:Auditor {name: 'KPMG'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024;

// Query 7
// Step 4: Other Companies (Parents, Managers, Associates, Bankers, Regulators);

// Query 8
MERGE (c:Company {name: 'Ceylon Guardian Investment Trust'}) ON CREATE SET c.id = 'ceylon_guardian_investment_trust', c.region = 'Sri Lanka';

// Query 9
MERGE (c:Company {name: 'Carson Cumberbatch'}) ON CREATE SET c.id = 'carson_cumberbatch', c.region = 'Sri Lanka';

// Query 10
MERGE (c:Company {name: 'Bukit Darah'}) ON CREATE SET c.id = 'bukit_darah', c.region = 'Sri Lanka';

// Query 11
MERGE (c:Company {name: 'Standard Chartered Bank'}) ON CREATE SET c.id = 'standard_chartered_bank', c.region = 'Sri Lanka';

// Query 12
MERGE (c:Company {name: 'Commercial Bank of Ceylon'}) ON CREATE SET c.id = 'commercial_bank_of_ceylon', c.region = 'Sri Lanka';

// Query 13
MERGE (c:Company {name: 'Deutsche Bank'}) ON CREATE SET c.id = 'deutsche_bank', c.region = 'Sri Lanka';

// Query 14
MERGE (c:Company {name: 'Guardian Fund Management'}) ON CREATE SET c.id = 'guardian_fund_management', c.region = 'Sri Lanka';

// Query 15
MERGE (c:Company {name: 'Carsons Management Services'}) ON CREATE SET c.id = 'carsons_management_services', c.region = 'Sri Lanka';

// Query 16
MERGE (c:Company {name: 'Rubber Investment Trust'}) ON CREATE SET c.id = 'rubber_investment_trust', c.region = 'Sri Lanka';

// Query 17
MERGE (c:Company {name: 'Guardian Value Fund'}) ON CREATE SET c.id = 'guardian_value_fund', c.region = 'Mauritius';

// Query 18
MERGE (c:Company {name: 'Guardian Fund Management LLC'}) ON CREATE SET c.id = 'guardian_fund_management_llc', c.region = 'Mauritius';

// Query 19
MERGE (c:Company {name: 'Colombo Stock Exchange'}) ON CREATE SET c.id = 'colombo_stock_exchange', c.region = 'Sri Lanka';

// Query 20
MERGE (c:Company {name: 'Securities and Exchange Commission of Sri Lanka'}) ON CREATE SET c.id = 'securities_and_exchange_commission_of_sri_lanka', c.region = 'Sri Lanka';

// Query 21
MERGE (c:Company {name: 'Central Bank of Sri Lanka'}) ON CREATE SET c.id = 'central_bank_of_sri_lanka', c.region = 'Sri Lanka';

// Query 22
// Step 5: Person Nodes;

// Query 23
MERGE (p:Person {name: 'M. A. R. C. Cooray'}) ON CREATE SET p.id = 'm_a_r_c_cooray';

// Query 24
MERGE (p:Person {name: 'D. C. R. Gunawardena'}) ON CREATE SET p.id = 'd_c_r_gunawardena';

// Query 25
MERGE (p:Person {name: 'A. P. Weeratunge'}) ON CREATE SET p.id = 'a_p_weeratunge';

// Query 26
MERGE (p:Person {name: 'V. M. Fernando'}) ON CREATE SET p.id = 'v_m_fernando';

// Query 27
MERGE (p:Person {name: 'K. Selvanathan'}) ON CREATE SET p.id = 'k_selvanathan';

// Query 28
MERGE (p:Person {name: 'S. M. Perera'}) ON CREATE SET p.id = 's_m_perera';

// Query 29
// Step 6: HOLDS_POSITION Relationships;

// Query 30
MATCH (p:Person {name: 'M. A. R. C. Cooray'}), (c:Company {name: 'Ceylon Investment'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 31
MATCH (p:Person {name: 'D. C. R. Gunawardena'}), (c:Company {name: 'Ceylon Investment'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 32
MATCH (p:Person {name: 'A. P. Weeratunge'}), (c:Company {name: 'Ceylon Investment'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'V. M. Fernando'}), (c:Company {name: 'Ceylon Investment'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'K. Selvanathan'}), (c:Company {name: 'Ceylon Investment'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'S. M. Perera'}), (c:Company {name: 'Ceylon Investment'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2024-03-31');

// Query 36
// Step 7: Metric Nodes;

// Query 37
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 38
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 39
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 40
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 41
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 42
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 43
MERGE (m:Metric {name: 'Return on Equity'}) ON CREATE SET m.id = 'return_on_equity', m.unit = '%';

// Query 44
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 45
MERGE (m:Metric {name: 'Current Ratio'}) ON CREATE SET m.id = 'current_ratio', m.unit = 'Times';

// Query 46
// Step 8: HAS_METRIC Relationships;

// Query 47
MATCH (c:Company {name: 'Ceylon Investment'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 653887000.0, r.year = 2024;

// Query 48
MATCH (c:Company {name: 'Ceylon Investment'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 314925000.0, r.year = 2023;

// Query 49
MATCH (c:Company {name: 'Ceylon Investment'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1074503000.0, r.year = 2024;

// Query 50
MATCH (c:Company {name: 'Ceylon Investment'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 496966000.0, r.year = 2023;

// Query 51
MATCH (c:Company {name: 'Ceylon Investment'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1690456000.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Ceylon Investment'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 703268000.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Ceylon Investment'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1605443000.0, r.year = 2024;

// Query 54
MATCH (c:Company {name: 'Ceylon Investment'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 656802000.0, r.year = 2023;

// Query 55
MATCH (c:Company {name: 'Ceylon Investment'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12429978000.0, r.year = 2024;

// Query 56
MATCH (c:Company {name: 'Ceylon Investment'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10858365000.0, r.year = 2023;

// Query 57
MATCH (c:Company {name: 'Ceylon Investment'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 11737483000.0, r.year = 2024;

// Query 58
MATCH (c:Company {name: 'Ceylon Investment'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 10572207000.0, r.year = 2023;

// Query 59
MATCH (c:Company {name: 'Ceylon Investment'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 13.68, r.year = 2024;

// Query 60
MATCH (c:Company {name: 'Ceylon Investment'}), (m:Metric {name: 'Return on Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.21, r.year = 2023;

// Query 61
MATCH (c:Company {name: 'Ceylon Investment'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 16.06, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Ceylon Investment'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6.57, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Ceylon Investment'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5.24, r.year = 2024;

// Query 64
MATCH (c:Company {name: 'Ceylon Investment'}), (m:Metric {name: 'Current Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 9.24, r.year = 2023;

// Query 65
// Step 9: Sector Nodes;

// Query 66
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 67
// Step 10: IN_SECTOR Relationships;

// Query 68
MATCH (c:Company {name: 'Ceylon Investment'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 69
// Step 11: Product Nodes;

// Query 70
MERGE (p:Product {name: 'Listed Equity Investments'}) ON CREATE SET p.id = 'listed_equity_investments';

// Query 71
MERGE (p:Product {name: 'Fixed-Income Investments'}) ON CREATE SET p.id = 'fixed_income_investments';

// Query 72
MERGE (p:Product {name: 'Unit Trusts'}) ON CREATE SET p.id = 'unit_trusts';

// Query 73
MERGE (p:Product {name: 'Fixed Deposits'}) ON CREATE SET p.id = 'fixed_deposits';

// Query 74
MERGE (p:Product {name: 'Securities Purchased Under Resale Agreements'}) ON CREATE SET p.id = 'securities_purchased_under_resale_agreements';

// Query 75
// Step 12: OFFERS Relationships;

// Query 76
MATCH (c:Company {name: 'Ceylon Investment'}), (p:Product {name: 'Listed Equity Investments'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'Ceylon Investment'}), (p:Product {name: 'Fixed-Income Investments'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'Ceylon Investment'}), (p:Product {name: 'Unit Trusts'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'Ceylon Investment'}), (p:Product {name: 'Fixed Deposits'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'Ceylon Investment'}), (p:Product {name: 'Securities Purchased Under Resale Agreements'}) MERGE (c)-[:OFFERS]->(p);

// Query 81
// Step 13: Company-Company Relationships (OWNS, MANAGES);

// Query 82
MATCH (parent:Company {name: 'Ceylon Guardian Investment Trust'}), (child:Company {name: 'Ceylon Investment'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 65.94, r.as_of = date('2024-03-31');

// Query 83
MATCH (manager:Company {name: 'Guardian Fund Management'}), (managed:Company {name: 'Ceylon Investment'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'investment activities', r.as_of = date('2024-03-31');

// Query 84
MATCH (manager:Company {name: 'Carsons Management Services'}), (managed:Company {name: 'Ceylon Investment'}) MERGE (manager)-[r:MANAGES]->(managed) ON CREATE SET r.description = 'management and secretarial services', r.as_of = date('2024-03-31');

// Total queries: 84
// Generated on: 2025-10-03T01:00:02.194371
