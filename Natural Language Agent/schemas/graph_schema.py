"""
Graph database schema definition for the Colombo Stock Exchange.
"""

GRAPH_SCHEMA = """
Graph Schema:

Nodes:
- Company: a business entity.
- Person: an individual.
- Auditor: an auditing entity.
- Sector: an industry or field.
- Product: an item or service a company offers.

Relationships:
- Person → Company: HOLDS_POSITION (person works for or leads the company)
- Person → Company: OWNS_SHARES (person owns shares)
- Company → Auditor: AUDITED_BY (auditor audits the company)
- Company → Sector: IN_SECTOR (company operates in this sector)
- Company → Product: OFFERS (company offers this product)
- Company → Company: OWNS (one company owns another)
"""