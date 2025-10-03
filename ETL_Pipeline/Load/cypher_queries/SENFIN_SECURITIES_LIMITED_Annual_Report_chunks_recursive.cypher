// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Senfin Securities'}) ON CREATE SET c.id = 'senfin_securities', c.region = 'Sri Lanka';

// Query 3
// Step 2: Auditor - No auditor information found in the provided text.;

// Query 4
// Step 3: People - Directors and Executives;

// Query 5
MERGE (p:Person {name: 'H.O.E.D.Z Siriwardhana'}) ON CREATE SET p.id = 'h_o_e_d_z_siriwardhana';

// Query 6
MERGE (p:Person {name: 'S. A. A. Kumarasinghe'}) ON CREATE SET p.id = 's_a_a_kumarasinghe';

// Query 7
MERGE (p:Person {name: 'V.A.A.P.Tharindu Priyankara'}) ON CREATE SET p.id = 'v_a_a_p_tharindu_priyankara';

// Query 8
MERGE (p:Person {name: 'Bishen Priyanjith Mendis'}) ON CREATE SET p.id = 'bishen_priyanjith_mendis';

// Query 9
MERGE (p:Person {name: 'Dumbara Madawalage Damayanthi'}) ON CREATE SET p.id = 'dumbara_madawalage_damayanthi';

// Query 10
MERGE (p:Person {name: 'Mohammed Ameer Mohammed Riyas'}) ON CREATE SET p.id = 'mohammed_ameer_mohammed_riyas';

// Query 11
// Step 4: HOLDS_POSITION Relationships - The roles identified ('Advisor') are not among the standardized titles. Therefore, no HOLDS_POSITION relationships are created.;

// Query 12
// Step 5: Metrics - No financial metrics found in the provided text.;

// Query 13
// Step 6: HAS_METRIC Relationships - No financial metrics found in the provided text.;

// Query 14
// Step 7: Sectors;

// Query 15
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 16
// Step 8: IN_SECTOR Relationships;

// Query 17
MATCH (c:Company {name: 'Senfin Securities'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 18
// Step 9: Products - No product information found in the provided text.;

// Query 19
// Step 10: OFFERS Relationships - No product information found in the provided text.;

// Query 20
// Step 11: Company-Company Relationships (OWNS, MANAGES) - No other companies or ownership/management relationships found in the provided text.;

// Total queries: 20
// Generated on: 2025-10-03T00:05:42.807832
