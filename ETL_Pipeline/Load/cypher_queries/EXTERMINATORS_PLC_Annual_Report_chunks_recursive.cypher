// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Exterminators'}) ON CREATE SET c.id = 'exterminators', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange';

// Query 3
// Step 2: Auditor - Skipped as 'Jayasinghe & Co.' is not in the hardcoded list of approved auditing firms.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'Denham Marlon Ferreira'}) ON CREATE SET p.id = 'denham_marlon_ferreira';

// Query 6
// Step 4: HOLDS_POSITION Relationships;

// Query 7
MATCH (p:Person {name: 'Denham Marlon Ferreira'}), (c:Company {name: 'Exterminators'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Managing Director', r.as_of = date('2024-03-31');

// Query 8
// Step 5: Metrics - No financial metrics with values found in the provided content.;

// Query 9
// Step 6: Sectors;

// Query 10
MERGE (s:Sector {name: 'Commercial and Professional Services'}) ON CREATE SET s.id = 'commercial_and_professional_services';

// Query 11
// Step 7: IN_SECTOR Relationships;

// Query 12
MATCH (c:Company {name: 'Exterminators'}), (s:Sector {name: 'Commercial and Professional Services'}) MERGE (c)-[:IN_SECTOR]->(s);

// Total queries: 12
// Generated on: 2025-10-03T02:33:52.100941
