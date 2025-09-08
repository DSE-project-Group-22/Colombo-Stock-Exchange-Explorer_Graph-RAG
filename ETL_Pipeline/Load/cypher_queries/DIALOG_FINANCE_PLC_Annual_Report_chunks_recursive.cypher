// Query 1
MERGE (c:Company {name: 'DIALOG FINANCE PLC'}) ON CREATE SET c.id = 'dialog_finance_plc';

// Query 2
MERGE (m:Metric {name: 'Dividend per Share'}) ON CREATE SET m.id = 'dividend_per_share', m.unit = 'Rs.';

// Query 3
MATCH (c:Company {name: 'DIALOG FINANCE PLC'}), (m:Metric {name: 'Dividend per Share'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 1.34, r.year = 2023;

// Query 4
MERGE (m:Metric {name: 'Dividend Payout Ratio'}) ON CREATE SET m.id = 'dividend_payout_ratio', m.unit = '%';

// Query 5
MATCH (c:Company {name: 'DIALOG FINANCE PLC'}), (m:Metric {name: 'Dividend Payout Ratio'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 55, r.year = 2023;

// Query 6
MERGE (m:Metric {name: 'Total Dividend'}) ON CREATE SET m.id = 'total_dividend', m.unit = 'Rs. billion';

// Query 7
MATCH (c:Company {name: 'DIALOG FINANCE PLC'}), (m:Metric {name: 'Total Dividend'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 11.1, r.year = 2023;

// Query 8
MERGE (m:Metric {name: 'Dividend Yield'}) ON CREATE SET m.id = 'dividend_yield', m.unit = '%';

// Query 9
MATCH (c:Company {name: 'DIALOG FINANCE PLC'}), (m:Metric {name: 'Dividend Yield'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 14.9, r.year = 2023;

// Query 10
MERGE (m:Metric {name: 'Total Shareholder Return'}) ON CREATE SET m.id = 'total_shareholder_return', m.unit = '%';

// Query 11
MATCH (c:Company {name: 'DIALOG FINANCE PLC'}), (m:Metric {name: 'Total Shareholder Return'}) MERGE (c)-[r:HAS_METRIC]->(m) ON CREATE SET r.value = 21.8, r.year = 2023;

// Total queries: 11
// Generated on: 2025-09-03T13:47:18.566876
