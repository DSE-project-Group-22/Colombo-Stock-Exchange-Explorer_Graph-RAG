// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Capital Alliance Holdings'}) ON CREATE SET c.id = 'capital_alliance_holdings', c.founded_on = date('2003-03-25'), c.region = 'Sri Lanka';

// Query 3
// Step 1: Subsidiary Companies;

// Query 4
MERGE (c:Company {name: 'Capital Alliance'}) ON CREATE SET c.id = 'capital_alliance';

// Query 5
MERGE (c:Company {name: 'Capital Alliance Partners'}) ON CREATE SET c.id = 'capital_alliance_partners';

// Query 6
MERGE (c:Company {name: 'Capital Alliance Securities'}) ON CREATE SET c.id = 'capital_alliance_securities';

// Query 7
MERGE (c:Company {name: 'Capital Alliance Investments'}) ON CREATE SET c.id = 'capital_alliance_investments';

// Query 8
MERGE (c:Company {name: 'Finnovation'}) ON CREATE SET c.id = 'finnovation';

// Query 9
MERGE (c:Company {name: 'FipBox'}) ON CREATE SET c.id = 'fipbox';

// Query 10
MERGE (c:Company {name: 'CAL Investment Consultancy FZ'}) ON CREATE SET c.id = 'cal_investment_consultancy_fz';

// Query 11
MERGE (c:Company {name: 'CAL Bangladesh'}) ON CREATE SET c.id = 'cal_bangladesh';

// Query 12
MERGE (c:Company {name: 'Fixed Income Investment I'}) ON CREATE SET c.id = 'fixed_income_investment_i';

// Query 13
MERGE (c:Company {name: 'Fixed Income Investment II'}) ON CREATE SET c.id = 'fixed_income_investment_ii';

// Query 14
MERGE (c:Company {name: 'Fixed Income Investment III'}) ON CREATE SET c.id = 'fixed_income_investment_iii';

// Query 15
MERGE (c:Company {name: 'Fixed Income Investment V'}) ON CREATE SET c.id = 'fixed_income_investment_v';

// Query 16
// Step 2: Auditor (No auditor firm found matching hardcoded list);

// Query 17
// Step 3: People - Directors and Executives (No specific names found);

// Query 18
// Step 4: HOLDS_POSITION Relationships (No people, so no positions);

// Query 19
// Step 5: Metrics;

// Query 20
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs';

// Query 21
MERGE (m:Metric {name: 'Operating Profit'}) ON CREATE SET m.id = 'operating_profit', m.unit = 'Rs';

// Query 22
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = 'Rs';

// Query 23
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs';

// Query 24
MERGE (m:Metric {name: 'Earnings Per Share'}) ON CREATE SET m.id = 'earnings_per_share', m.unit = 'Rs';

// Query 25
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs';

// Query 26
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = 'Rs';

// Query 27
// Step 6: HAS_METRIC Relationships for Capital Alliance Holdings (Company);

// Query 28
MATCH (c:Company {name: 'Capital Alliance Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4832441126, r.year = 2024, r.as_of = date('2024-12-31');

// Query 29
MATCH (c:Company {name: 'Capital Alliance Holdings'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2115481137, r.year = 2024, r.as_of = date('2024-03-31');

// Query 30
MATCH (c:Company {name: 'Capital Alliance Holdings'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4802295100, r.year = 2024, r.as_of = date('2024-12-31');

// Query 31
MATCH (c:Company {name: 'Capital Alliance Holdings'}), (m:Metric {name: 'Operating Profit'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1935707649, r.year = 2024, r.as_of = date('2024-03-31');

// Query 32
MATCH (c:Company {name: 'Capital Alliance Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4802295100, r.year = 2024, r.as_of = date('2024-12-31');

// Query 33
MATCH (c:Company {name: 'Capital Alliance Holdings'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1935707649, r.year = 2024, r.as_of = date('2024-03-31');

// Query 34
MATCH (c:Company {name: 'Capital Alliance Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4803960588, r.year = 2024, r.as_of = date('2024-12-31');

// Query 35
MATCH (c:Company {name: 'Capital Alliance Holdings'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 1936572225, r.year = 2024, r.as_of = date('2024-03-31');

// Query 36
MATCH (c:Company {name: 'Capital Alliance Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 37.64, r.year = 2024, r.as_of = date('2024-12-31');

// Query 37
MATCH (c:Company {name: 'Capital Alliance Holdings'}), (m:Metric {name: 'Earnings Per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 17.76, r.year = 2024, r.as_of = date('2024-03-31');

// Query 38
MATCH (c:Company {name: 'Capital Alliance Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6100288993, r.year = 2024, r.as_of = date('2024-12-31');

// Query 39
MATCH (c:Company {name: 'Capital Alliance Holdings'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2995086858, r.year = 2024, r.as_of = date('2024-03-31');

// Query 40
MATCH (c:Company {name: 'Capital Alliance Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5700374787, r.year = 2024, r.as_of = date('2024-12-31');

// Query 41
MATCH (c:Company {name: 'Capital Alliance Holdings'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 2938601767, r.year = 2024, r.as_of = date('2024-03-31');

// Query 42
// Step 7: Sectors;

// Query 43
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 44
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 45
// Step 8: IN_SECTOR Relationships;

// Query 46
MATCH (c:Company {name: 'Capital Alliance Holdings'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 47
MATCH (c:Company {name: 'Capital Alliance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 48
MATCH (c:Company {name: 'Capital Alliance Partners'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 49
MATCH (c:Company {name: 'Capital Alliance Securities'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 50
MATCH (c:Company {name: 'Capital Alliance Investments'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 51
MATCH (c:Company {name: 'FipBox'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 52
MATCH (c:Company {name: 'CAL Investment Consultancy FZ'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 53
MATCH (c:Company {name: 'CAL Bangladesh'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 54
MATCH (c:Company {name: 'Fixed Income Investment I'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 55
MATCH (c:Company {name: 'Fixed Income Investment II'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 56
MATCH (c:Company {name: 'Fixed Income Investment III'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 57
MATCH (c:Company {name: 'Fixed Income Investment V'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 58
// Step 9: Product nodes;

// Query 59
MERGE (p:Product {name: 'Investment Consultancy'}) ON CREATE SET p.id = 'investment_consultancy';

// Query 60
MERGE (p:Product {name: 'Government Securities'}) ON CREATE SET p.id = 'government_securities';

// Query 61
MERGE (p:Product {name: 'Corporate Debt Securities'}) ON CREATE SET p.id = 'corporate_debt_securities';

// Query 62
MERGE (p:Product {name: 'Corporate Finance'}) ON CREATE SET p.id = 'corporate_finance';

// Query 63
MERGE (p:Product {name: 'Fee-based Financial Services'}) ON CREATE SET p.id = 'fee_based_financial_services';

// Query 64
MERGE (p:Product {name: 'Stock Brokering'}) ON CREATE SET p.id = 'stock_brokering';

// Query 65
MERGE (p:Product {name: 'Unit Trust Funds Management'}) ON CREATE SET p.id = 'unit_trust_funds_management';

// Query 66
MERGE (p:Product {name: 'Private Wealth Management'}) ON CREATE SET p.id = 'private_wealth_management';

// Query 67
MERGE (p:Product {name: 'Digital Investment Transaction Platform'}) ON CREATE SET p.id = 'digital_investment_transaction_platform';

// Query 68
MERGE (p:Product {name: 'Consultancy Services'}) ON CREATE SET p.id = 'consultancy_services';

// Query 69
// Step 10: OFFERS relationships;

// Query 70
MATCH (c:Company {name: 'Capital Alliance Holdings'}), (p:Product {name: 'Investment Consultancy'}) MERGE (c)-[:OFFERS]->(p);

// Query 71
MATCH (c:Company {name: 'Capital Alliance'}), (p:Product {name: 'Government Securities'}) MERGE (c)-[:OFFERS]->(p);

// Query 72
MATCH (c:Company {name: 'Capital Alliance'}), (p:Product {name: 'Corporate Debt Securities'}) MERGE (c)-[:OFFERS]->(p);

// Query 73
MATCH (c:Company {name: 'Capital Alliance Partners'}), (p:Product {name: 'Corporate Finance'}) MERGE (c)-[:OFFERS]->(p);

// Query 74
MATCH (c:Company {name: 'Capital Alliance Partners'}), (p:Product {name: 'Fee-based Financial Services'}) MERGE (c)-[:OFFERS]->(p);

// Query 75
MATCH (c:Company {name: 'Capital Alliance Securities'}), (p:Product {name: 'Stock Brokering'}) MERGE (c)-[:OFFERS]->(p);

// Query 76
MATCH (c:Company {name: 'Capital Alliance Investments'}), (p:Product {name: 'Unit Trust Funds Management'}) MERGE (c)-[:OFFERS]->(p);

// Query 77
MATCH (c:Company {name: 'Capital Alliance Investments'}), (p:Product {name: 'Private Wealth Management'}) MERGE (c)-[:OFFERS]->(p);

// Query 78
MATCH (c:Company {name: 'FipBox'}), (p:Product {name: 'Digital Investment Transaction Platform'}) MERGE (c)-[:OFFERS]->(p);

// Query 79
MATCH (c:Company {name: 'CAL Investment Consultancy FZ'}), (p:Product {name: 'Investment Consultancy'}) MERGE (c)-[:OFFERS]->(p);

// Query 80
MATCH (c:Company {name: 'CAL Bangladesh'}), (p:Product {name: 'Consultancy Services'}) MERGE (c)-[:OFFERS]->(p);

// Total queries: 80
// Generated on: 2025-10-02T22:45:46.881619
