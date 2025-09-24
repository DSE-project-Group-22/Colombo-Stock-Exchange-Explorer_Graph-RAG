"""
Graph database schema definition for the Colombo Stock Exchange.
"""

GRAPH_SCHEMA = """
Node Labels & Properties:
- Company: id (string, unique), name (string),
- Person: id (string, unique), name (string)
- Sector: id (string, unique), name (string)
- Product: id (string, unique), name (string)
- Metric: id (string, unique), name (string), unit (string)

Relationship Types & Properties:
Ownership & Shareholdings:
- (Company)-[:OWNS]->(Company): pct (float - percent ownership), as_of (date)
- (Person)-[:OWNS_SHARES]->(Company): count (int) or pct (float), as_of (date)

Governance & Roles:
- (Person)-[:DIRECTOR_OF]->(Company): role (string), as_of (date)
- (Person)-[:HOLDS_POSITION]->(Company): title (string), as_of (date)

Business Classification:
- (Company)-[:IN_SECTOR]->(Sector): no properties
- (Company)-[:OFFERS]->(Product): status (string, optional)

Financial Metrics:
- (Company)-[:HAS_METRIC]->(Metric): year (int, optional), as_of (date, optional), value (float/int)

Auditing & Management:
- (Company)-[:AUDITED_BY]->(Company): year (int)
- (Company)-[:MANAGES]->(Company): description (string)
"""