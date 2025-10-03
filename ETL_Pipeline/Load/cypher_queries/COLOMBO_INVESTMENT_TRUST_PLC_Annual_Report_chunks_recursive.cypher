// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Colombo Investment Trust'}) ON CREATE SET c.id = 'colombo_investment_trust', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 5: Sectors;

// Query 4
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 5
// Step 8: IN_SECTOR Relationships;

// Query 6
MATCH (c:Company {name: 'Colombo Investment Trust'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 6
// Generated on: 2025-10-03T02:11:52.403246
