
MATCH (c:Company)
WHERE NOT (c)--() AND (c.listed_on IS NULL OR c.listed_on = "")
DELETE c;


MATCH (c:Company)-[r:IN_SECTOR]->()
WHERE COUNT { (c)--() } = COUNT { (c)-[:IN_SECTOR]->() }
DELETE r;


MATCH (c:Company)
WHERE c.listed_on IS NOT NULL AND NOT (c)--()
DELETE c;


MATCH (c:Company)-[r:AUDITED_BY]->()
WHERE COUNT { (c)--() } = COUNT { (c)-[:AUDITED_BY]->() }
DELETE r;


MATCH (c:Company)-[r:HAS_METRIC]->()
WHERE COUNT { (c)--() } = COUNT { (c)-[:HAS_METRIC]->() }
DELETE r;


MATCH (c:Company)-[r:OFFERS]->()
WHERE COUNT { (c)--() } = COUNT { (c)-[:OFFERS]->() }
DELETE r;

MATCH (c:Company)
WHERE NOT (c)--() AND c.listed_on IS NULL
DELETE c;


MATCH (c:Company)
WHERE NOT (c)--() AND c.listed_on IS NOT NULL
DELETE c;


MATCH (c:Company)
WHERE COUNT { (c)-[r]-() WHERE type(r) IN ['HAS_METRIC','OFFERS','IN_SECTOR'] } 
      = COUNT { (c)-[r]-() }
DETACH DELETE c;


MATCH (c:Company)-[r:HOLDS_POSITION]->(p:Person)
WITH c, COLLECT(p) AS persons, COLLECT(type(r)) AS relTypes
WHERE size(persons) = 1 AND ALL(relType IN relTypes WHERE relType = 'HOLDS_POSITION')
DETACH DELETE c;


// Delete the outlier Cargills (Ceylon) node with internal id 1085
MATCH (c)
WHERE id(c) = 1085
DETACH DELETE c;

// Delete CT Land Development outlier with id 1087
MATCH (c)
WHERE id(c) = 1087
DETACH DELETE c;

// Delete Swisstek Aluminium outlier with id 3907
MATCH (c)
WHERE id(c) = 3907
DETACH DELETE c;

// Delete PricewaterhouseCoopers outlier with id 1937
MATCH (c)
WHERE id(c) = 1937
DETACH DELETE c;


// Total queries: 258
// Generated on: 2025-10-03T01:11:02.717742
