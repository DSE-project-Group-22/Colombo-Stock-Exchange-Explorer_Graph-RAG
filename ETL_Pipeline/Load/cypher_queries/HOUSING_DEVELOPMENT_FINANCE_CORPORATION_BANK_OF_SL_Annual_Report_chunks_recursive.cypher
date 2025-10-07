// Query 1
// Step 1: Main Company;

// Query 2
MERGE (c:Company {name: 'Housing Finance Corporation'}) ON CREATE SET c.id = 'housing_finance_corporation', c.region = 'United Kingdom';

// Query 3
MERGE (c:Company {name: 'Affordable Housing Finance'}) ON CREATE SET c.id = 'affordable_housing_finance', c.region = 'United Kingdom';

// Query 4
MERGE (c:Company {name: 'Blend Funding'}) ON CREATE SET c.id = 'blend_funding', c.region = 'United Kingdom';

// Query 5
MERGE (c:Company {name: 'Housing Finance Trustee'}) ON CREATE SET c.id = 'housing_finance_trustee', c.region = 'United Kingdom';

// Query 6
MERGE (c:Company {name: 'THFC Capital'}) ON CREATE SET c.id = 'thfc_capital', c.region = 'United Kingdom';

// Query 7
MERGE (c:Company {name: 'UK Rents Holdings'}) ON CREATE SET c.id = 'uk_rents_holdings', c.region = 'United Kingdom';

// Query 8
MERGE (c:Company {name: 'UK Rents Trustee'}) ON CREATE SET c.id = 'uk_rents_trustee', c.region = 'United Kingdom';

// Query 9
MERGE (c:Company {name: 'UK Rents No 1'}) ON CREATE SET c.id = 'uk_rents_no_1', c.region = 'United Kingdom';

// Query 10
MERGE (c:Company {name: 'THFC Sustainable Finance'}) ON CREATE SET c.id = 'thfc_sustainable_finance', c.region = 'United Kingdom';

// Query 11
MERGE (c:Company {name: 'THFC Services'}) ON CREATE SET c.id = 'thfc_services', c.region = 'United Kingdom';

// Query 12
MERGE (c:Company {name: 'THFC Indexed 2'}) ON CREATE SET c.id = 'thfc_indexed_2', c.region = 'United Kingdom';

// Query 13
MERGE (c:Company {name: 'THFC Social Housing Finance'}) ON CREATE SET c.id = 'thfc_social_housing_finance', c.region = 'United Kingdom';

// Query 14
MERGE (c:Company {name: 'THFC Funding No 1'}) ON CREATE SET c.id = 'thfc_funding_no_1', c.region = 'United Kingdom';

// Query 15
MERGE (c:Company {name: 'THFC Funding No 2'}) ON CREATE SET c.id = 'thfc_funding_no_2', c.region = 'United Kingdom';

// Query 16
MERGE (c:Company {name: 'THFC Funding No 3'}) ON CREATE SET c.id = 'thfc_funding_no_3', c.region = 'United Kingdom';

// Query 17
// Step 2: Auditor - Skipped as auditor is not a Sri Lankan firm.;

// Query 18
// Step 3: People - Directors and Executives;

// Query 19
MERGE (p:Person {name: 'George Blunden'}) ON CREATE SET p.id = 'george_blunden';

// Query 20
MERGE (p:Person {name: 'Scott Bottles'}) ON CREATE SET p.id = 'scott_bottles';

// Query 21
MERGE (p:Person {name: 'Julie Coetzee'}) ON CREATE SET p.id = 'julie_coetzee';

// Query 22
MERGE (p:Person {name: 'Anthony King'}) ON CREATE SET p.id = 'anthony_king';

// Query 23
MERGE (p:Person {name: 'David Montague'}) ON CREATE SET p.id = 'david_montague';

// Query 24
MERGE (p:Person {name: 'Fiona MacGregor'}) ON CREATE SET p.id = 'fiona_macgregor';

// Query 25
MERGE (p:Person {name: 'Priyanka Nair'}) ON CREATE SET p.id = 'priyanka_nair';

// Query 26
MERGE (p:Person {name: 'Arun Poobalasingam'}) ON CREATE SET p.id = 'arun_poobalasingam';

// Query 27
MERGE (p:Person {name: 'Shirley Smith'}) ON CREATE SET p.id = 'shirley_smith';

// Query 28
MERGE (p:Person {name: 'David Stokes'}) ON CREATE SET p.id = 'david_stokes';

// Query 29
MERGE (p:Person {name: 'Gail Teasdale'}) ON CREATE SET p.id = 'gail_teasdale';

// Query 30
MERGE (p:Person {name: 'Guy Thomas'}) ON CREATE SET p.id = 'guy_thomas';

// Query 31
// Step 4: HOLDS_POSITION Relationships;

// Query 32
MATCH (p:Person {name: 'George Blunden'}), (c:Company {name: 'Housing Finance Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31');

// Query 33
MATCH (p:Person {name: 'Scott Bottles'}), (c:Company {name: 'Housing Finance Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 34
MATCH (p:Person {name: 'Julie Coetzee'}), (c:Company {name: 'Housing Finance Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Financial Officer', r.as_of = date('2024-03-31');

// Query 35
MATCH (p:Person {name: 'Anthony King'}), (c:Company {name: 'Housing Finance Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 36
MATCH (p:Person {name: 'David Montague'}), (c:Company {name: 'Housing Finance Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 37
MATCH (p:Person {name: 'Fiona MacGregor'}), (c:Company {name: 'Housing Finance Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2023-07-28');

// Query 38
MATCH (p:Person {name: 'Priyanka Nair'}), (c:Company {name: 'Housing Finance Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chief Executive Officer', r.as_of = date('2024-04-01');

// Query 39
MATCH (p:Person {name: 'Arun Poobalasingam'}), (c:Company {name: 'Housing Finance Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2023-07-28');

// Query 40
MATCH (p:Person {name: 'Shirley Smith'}), (c:Company {name: 'Housing Finance Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31');

// Query 41
MATCH (p:Person {name: 'David Stokes'}), (c:Company {name: 'Housing Finance Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Executive Director', r.as_of = date('2023-07-28');

// Query 42
MATCH (p:Person {name: 'Gail Teasdale'}), (c:Company {name: 'Housing Finance Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 43
MATCH (p:Person {name: 'Guy Thomas'}), (c:Company {name: 'Housing Finance Corporation'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Non-Executive Director', r.as_of = date('2024-03-31');

// Query 44
// Step 5: Metrics;

// Query 45
MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = '£';

// Query 46
MERGE (m:Metric {name: 'Profit Before Tax'}) ON CREATE SET m.id = 'profit_before_tax', m.unit = '£';

// Query 47
MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = '£';

// Query 48
MERGE (m:Metric {name: 'Total Equity'}) ON CREATE SET m.id = 'total_equity', m.unit = '£';

// Query 49
MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = '£';

// Query 50
// Step 6: HAS_METRIC Relationships;

// Query 51
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 15206000.0, r.year = 2024;

// Query 52
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12266000.0, r.year = 2023;

// Query 53
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12486000.0, r.year = 2022;

// Query 54
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 12427000.0, r.year = 2021;

// Query 55
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8565000.0, r.year = 2020;

// Query 56
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7992000.0, r.year = 2024;

// Query 57
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5770000.0, r.year = 2023;

// Query 58
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6510000.0, r.year = 2022;

// Query 59
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 7198000.0, r.year = 2021;

// Query 60
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Profit Before Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3387000.0, r.year = 2020;

// Query 61
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5760000.0, r.year = 2024;

// Query 62
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 4614000.0, r.year = 2023;

// Query 63
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5725000.0, r.year = 2022;

// Query 64
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 5886000.0, r.year = 2021;

// Query 65
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 3604000.0, r.year = 2020;

// Query 66
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 62681000.0, r.year = 2024;

// Query 67
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 56921000.0, r.year = 2023;

// Query 68
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 52307000.0, r.year = 2022;

// Query 69
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 46582000.0, r.year = 2021;

// Query 70
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Total Equity'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 41703000.0, r.year = 2020;

// Query 71
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8147366000.0, r.year = 2024;

// Query 72
MATCH (c:Company {name: 'Housing Finance Corporation'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 8359826000.0, r.year = 2023;

// Query 73
// Step 7: Sectors;

// Query 74
MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials';

// Query 75
// Step 8: IN_SECTOR Relationships;

// Query 76
MATCH (c:Company {name: 'Housing Finance Corporation'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s);

// Query 77
// Step 9: Product nodes creation;

// Query 78
MERGE (p:Product {name: 'Long-term funding'}) ON CREATE SET p.id = 'long_term_funding';

// Query 79
MERGE (p:Product {name: 'Secured loans'}) ON CREATE SET p.id = 'secured_loans';

// Query 80
MERGE (p:Product {name: 'Sterling denominated bonds'}) ON CREATE SET p.id = 'sterling_denominated_bonds';

// Query 81
// Step 10: OFFERS relationships;

// Query 82
MATCH (c:Company {name: 'Housing Finance Corporation'}), (p:Product {name: 'Long-term funding'}) MERGE (c)-[:OFFERS]->(p);

// Query 83
MATCH (c:Company {name: 'Housing Finance Corporation'}), (p:Product {name: 'Secured loans'}) MERGE (c)-[:OFFERS]->(p);

// Query 84
MATCH (c:Company {name: 'Housing Finance Corporation'}), (p:Product {name: 'Sterling denominated bonds'}) MERGE (c)-[:OFFERS]->(p);

// Query 85
// Step 11: Company-Company Relationships (OWNS);

// Query 86
MATCH (parent:Company {name: 'Housing Finance Corporation'}), (child:Company {name: 'Affordable Housing Finance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 87
MATCH (parent:Company {name: 'Housing Finance Corporation'}), (child:Company {name: 'Blend Funding'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 88
MATCH (parent:Company {name: 'Housing Finance Corporation'}), (child:Company {name: 'Housing Finance Trustee'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 89
MATCH (parent:Company {name: 'Housing Finance Corporation'}), (child:Company {name: 'THFC Capital'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 90
MATCH (parent:Company {name: 'Housing Finance Corporation'}), (child:Company {name: 'UK Rents Holdings'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 91
MATCH (parent:Company {name: 'Housing Finance Corporation'}), (child:Company {name: 'UK Rents Trustee'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 92
MATCH (parent:Company {name: 'Housing Finance Corporation'}), (child:Company {name: 'UK Rents No 1'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 93
MATCH (parent:Company {name: 'Housing Finance Corporation'}), (child:Company {name: 'THFC Sustainable Finance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 94
MATCH (parent:Company {name: 'Housing Finance Corporation'}), (child:Company {name: 'THFC Services'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 95
MATCH (parent:Company {name: 'Housing Finance Corporation'}), (child:Company {name: 'THFC Indexed 2'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 96
MATCH (parent:Company {name: 'Housing Finance Corporation'}), (child:Company {name: 'THFC Social Housing Finance'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 97
MATCH (parent:Company {name: 'Housing Finance Corporation'}), (child:Company {name: 'THFC Funding No 1'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Query 98
MATCH (parent:Company {name: 'Housing Finance Corporation'}), (child:Company {name: 'THFC Funding No 2'}) MERGE (parent)-[r:OWNS]->(child) ON CREATE SET r.pct = 100.0, r.as_of = date('2024-03-31');

// Total queries: 98
// Generated on: 2025-10-03T01:17:21.666655
