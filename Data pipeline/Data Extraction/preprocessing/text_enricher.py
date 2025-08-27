"""
Text Enricher Module

This module enriches the original text files with structured context,
entity mappings, and all necessary information for stateless LLM processing.
"""

import json
import logging
from typing import Dict, List, Optional
from pathlib import Path
from entity_mapper import EntityMapper, CompanyEntity, PersonEntity

class TextEnricher:
    """
    Enriches text files with entity context and structured information
    for stateless LLM Cypher query generation.
    """
    
    def __init__(self, entity_mapper: EntityMapper):
        self.entity_mapper = entity_mapper
        self.logger = logging.getLogger(__name__)
    
    def enrich_text_file(self, text_file_path: str, company_name: str) -> str:
        """
        Enrich a text file with all necessary context for LLM processing.
        
        Returns enriched text with:
        - Original text content
        - Entity mapping tables
        - Schema definitions
        - Relationship templates
        - All IDs pre-mapped
        """
        try:
            # Read original text
            with open(text_file_path, 'r', encoding='utf-8') as f:
                original_text = f.read()
            
            # Find or create company entity
            company_id = self.entity_mapper.find_or_create_company(company_name)
            company_entity = self.entity_mapper.get_company_by_id(company_id)
            
            # Build enriched content
            enriched_content = self._build_enriched_content(
                original_text, company_entity, company_name
            )
            
            return enriched_content
            
        except Exception as e:
            self.logger.error(f"Error enriching text file {text_file_path}: {e}")
            return ""
    
    def _build_enriched_content(self, original_text: str, company_entity: CompanyEntity, company_name: str) -> str:
        """Build the complete enriched content for LLM processing."""
        
        # Get all entities for reference
        all_companies = self.entity_mapper.get_all_companies()
        all_persons = self.entity_mapper.get_all_persons()
        
        enriched_content = f"""===== ENRICHED ANNUAL REPORT DATA FOR LLM PROCESSING =====

COMPANY INFORMATION:
- Target Company: {company_name}
- Company ID: {company_entity.id}
- Canonical Name: {company_entity.name}

TASK:
Generate comprehensive Cypher queries for the complex corporate network schema.
All entity IDs are pre-mapped and provided below. Use EXACT IDs provided.

===== EXACT SCHEMA DEFINITION (MUST FOLLOW) =====

9.1 Database Schema
Node Labels & Properties

Label Key Properties
Company 
• id (string, unique)
• name (string)
• founded_on (date, optional)
• listed_on (string, optional)
• region (string, optional)

Person 
• id (string, unique)
• name (string)

Sector 
• id (string, unique)
• name (string)

Product 
• id (string, unique)
• name (string)

Metric 
• id (string, unique)
• name (string)
• unit (string)

Relationship Types & Properties

Ownership & Shareholdings
● (parent:Company)-[:OWNS]->(child:Company)
• pct (float) — percent ownership
• as_of (date)

● (person:Person)-[:OWNS_SHARES]->(company:Company)
• count (int) or pct (float)
• as_of (date)

Governance & Roles
● (person:Person)-[:DIRECTOR_OF]->(company:Company)
• role (string)
• as_of (date)

● (person:Person)-[:HOLDS_POSITION]->(company:Company)
• title (string)
• as_of (date)

Business Classification
● (company:Company)-[:IN_SECTOR]->(sector:Sector)
(no properties)

● (company:Company)-[:OFFERS]->(product:Product)
• status (string, optional; e.g. "planned")

Financial Metrics
● (company:Company)-[:HAS_METRIC]->(metric:Metric)
• year (int, optional)
• as_of (date, optional)
• value (float/int)

Auditing & Management Services
● (company:Company)-[:AUDITED_BY]->(auditor:Company)
• year (int)

● (manager:Company)-[:MANAGES]->(plantation:Company)
• description (string)

===== ENTITY MAPPINGS =====

EXISTING COMPANIES:
{self._format_company_mappings(all_companies)}

EXISTING PERSONS:
{self._format_person_mappings(all_persons)}

===== CYPHER GENERATION INSTRUCTIONS =====

CRITICAL: You MUST follow the exact schema definition above (9.1 Database Schema).
Do NOT deviate from the specified node labels, properties, or relationship types.

1. EXTRACT INFORMATION from the annual report text below
2. USE EXACT IDs provided in the entity mappings above
3. CREATE new entities (Sector, Product, Metric) with consistent naming: sector_[normalized_name], product_[normalized_name], metric_[normalized_name]
4. GENERATE comprehensive Cypher queries covering ALL relationship types found in the text
5. INCLUDE node creation statements for new entities (Sector, Product, Metric)
6. USE proper date formats (YYYY-MM-DD) and appropriate data types
7. ENSURE all relationships have proper source and target IDs
8. FOLLOW EXACT relationship property names and types as specified in schema

MANDATORY RELATIONSHIP TYPES TO LOOK FOR:
- OWNS (parent company owns child company with pct and as_of)
- OWNS_SHARES (person owns shares in company with count/pct and as_of)
- DIRECTOR_OF (person is director of company with role and as_of)
- HOLDS_POSITION (person holds executive position with title and as_of)
- IN_SECTOR (company operates in sector - no properties)
- OFFERS (company offers product/service with optional status)
- HAS_METRIC (company has financial metric with year, as_of, value)
- AUDITED_BY (company audited by auditor company with year)
- MANAGES (management company manages other company with description)

EXPECTED OUTPUT FORMAT:
```cypher
// Node creation for new entities (use exact property names from schema)
CREATE (:Sector {{id: 'sector_financial_services', name: 'Financial Services'}});
CREATE (:Product {{id: 'product_banking_services', name: 'Banking Services'}});
CREATE (:Metric {{id: 'metric_revenue', name: 'Revenue', unit: 'LKR'}});

// Relationship creation with exact IDs and property names from schema
MATCH (p:Person {{id: 'person_[exact_id]'}})
MATCH (c:Company {{id: 'company_[exact_id]'}})
CREATE (p)-[:DIRECTOR_OF {{role: 'Chairman', as_of: date('2024-01-01')}}]->(c);

MATCH (c:Company {{id: 'company_[exact_id]'}})
MATCH (m:Metric {{id: 'metric_revenue'}})
CREATE (c)-[:HAS_METRIC {{year: 2024, as_of: date('2024-12-31'), value: 1000000000}}]->(m);
```

===== ANNUAL REPORT TEXT =====

{original_text}

===== END OF ENRICHED DATA =====

Generate comprehensive Cypher queries based on the above information and schema requirements.
"""
        return enriched_content
    
    def _format_company_mappings(self, companies: Dict[str, CompanyEntity]) -> str:
        """Format company mappings for the enriched text."""
        if not companies:
            return "No existing companies found."
        
        mappings = []
        for company in companies.values():
            mappings.append(f"  - {company.name} -> ID: {company.id}")
        
        return "\n".join(mappings)
    
    def _format_person_mappings(self, persons: Dict[str, PersonEntity]) -> str:
        """Format person mappings for the enriched text."""
        if not persons:
            return "No existing persons found."
        
        mappings = []
        for person in persons.values():
            mappings.append(f"  - {person.name} -> ID: {person.id}")
        
        return "\n".join(mappings)
    
    def create_schema_reference(self) -> str:
        """Create a standalone schema reference file."""
        return """===== COMPLEX CORPORATE NETWORK SCHEMA REFERENCE =====

9.1 Database Schema
Node Labels & Properties

Label Key Properties
Company 
• id (string, unique)
• name (string)
• founded_on (date, optional)
• listed_on (string, optional)
• region (string, optional)

Person 
• id (string, unique)
• name (string)

Sector 
• id (string, unique)
• name (string)

Product 
• id (string, unique)
• name (string)

Metric 
• id (string, unique)
• name (string)
• unit (string)

Relationship Types & Properties

Ownership & Shareholdings
● (parent:Company)-[:OWNS]->(child:Company)
• pct (float) — percent ownership
• as_of (date)

● (person:Person)-[:OWNS_SHARES]->(company:Company)
• count (int) or pct (float)
• as_of (date)

Governance & Roles
● (person:Person)-[:DIRECTOR_OF]->(company:Company)
• role (string)
• as_of (date)

● (person:Person)-[:HOLDS_POSITION]->(company:Company)
• title (string)
• as_of (date)

Business Classification
● (company:Company)-[:IN_SECTOR]->(sector:Sector)
(no properties)

● (company:Company)-[:OFFERS]->(product:Product)
• status (string, optional; e.g. "planned")

Financial Metrics
● (company:Company)-[:HAS_METRIC]->(metric:Metric)
• year (int, optional)
• as_of (date, optional)
• value (float/int)

Auditing & Management Services
● (company:Company)-[:AUDITED_BY]->(auditor:Company)
• year (int)

● (manager:Company)-[:MANAGES]->(plantation:Company)
• description (string)

NAMING CONVENTIONS:

Entity IDs:
- Companies: company_[uuid] (from entity resolution)
- Persons: person_[uuid] (from entity resolution)
- Sectors: sector_[normalized_name]
- Products: product_[normalized_name]
- Metrics: metric_[normalized_name]

Date Format: YYYY-MM-DD (ISO format)
Normalized Names: lowercase, underscores instead of spaces/hyphens

MANDATORY CYPHER PATTERNS:

Node Creation:
```cypher
CREATE (:Company {id: 'company_abc123', name: 'ABC Company PLC', listed_on: 'CSE'});
CREATE (:Person {id: 'person_xyz789', name: 'John Doe'});
CREATE (:Sector {id: 'sector_financial_services', name: 'Financial Services'});
CREATE (:Product {id: 'product_banking_services', name: 'Banking Services'});
CREATE (:Metric {id: 'metric_revenue', name: 'Revenue', unit: 'LKR'});
```

Relationship Creation (MUST use exact property names):
```cypher
// Ownership
MATCH (parent:Company {id: 'company_parent'})
MATCH (child:Company {id: 'company_child'})
CREATE (parent)-[:OWNS {pct: 75.5, as_of: date('2024-01-01')}]->(child);

// Shareholding
MATCH (p:Person {id: 'person_xyz789'})
MATCH (c:Company {id: 'company_abc123'})
CREATE (p)-[:OWNS_SHARES {count: 1000000, as_of: date('2024-01-01')}]->(c);

// Governance
MATCH (p:Person {id: 'person_xyz789'})
MATCH (c:Company {id: 'company_abc123'})
CREATE (p)-[:DIRECTOR_OF {role: 'Chairman', as_of: date('2024-01-01')}]->(c);

// Positions
MATCH (p:Person {id: 'person_xyz789'})
MATCH (c:Company {id: 'company_abc123'})
CREATE (p)-[:HOLDS_POSITION {title: 'CEO', as_of: date('2024-01-01')}]->(c);

// Business Classification
MATCH (c:Company {id: 'company_abc123'})
MATCH (s:Sector {id: 'sector_financial_services'})
CREATE (c)-[:IN_SECTOR]->(s);

// Products/Services
MATCH (c:Company {id: 'company_abc123'})
MATCH (p:Product {id: 'product_banking_services'})
CREATE (c)-[:OFFERS {status: 'active'}]->(p);

// Financial Metrics
MATCH (c:Company {id: 'company_abc123'})
MATCH (m:Metric {id: 'metric_revenue'})
CREATE (c)-[:HAS_METRIC {year: 2024, as_of: date('2024-12-31'), value: 1000000000}]->(m);

// Auditing
MATCH (c:Company {id: 'company_abc123'})
MATCH (auditor:Company {id: 'company_auditor'})
CREATE (c)-[:AUDITED_BY {year: 2024}]->(auditor);

// Management
MATCH (manager:Company {id: 'company_manager'})
MATCH (managed:Company {id: 'company_plantation'})
CREATE (manager)-[:MANAGES {description: 'Plantation management services'}]->(managed);
```

CRITICAL REQUIREMENTS:
1. Use EXACT property names as specified in schema
2. Use correct data types (string, int, float, date)
3. Include all mandatory properties for each relationship type
4. Use proper date() function for date properties
5. Follow exact relationship direction as shown in schema

===== END OF SCHEMA REFERENCE =====
"""
