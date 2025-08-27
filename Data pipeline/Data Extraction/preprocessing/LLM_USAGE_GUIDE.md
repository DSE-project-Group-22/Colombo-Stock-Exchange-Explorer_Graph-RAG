# LLM Processing Guide for Complex Corporate Network Schema

## Overview
This guide explains how to use the preprocessed enriched text files to generate comprehensive Cypher queries for your complex corporate network schema using LLMs.

## ✅ Preprocessing Complete
- **13 enriched text files** generated successfully
- **100% schema completeness** - all files contain your exact schema specification
- **17 companies** and **100 persons** pre-mapped with consistent IDs
- All files are **stateless** and ready for LLM processing

## 🎯 Key Benefits
1. **Stateless Processing**: Each enriched file contains everything the LLM needs
2. **Exact Schema Compliance**: Your 9.1 Database Schema specification is embedded in every file
3. **Pre-mapped Entity IDs**: No entity resolution needed during LLM processing
4. **Comprehensive Instructions**: Detailed Cypher generation guidance included

## 📋 Your Schema Coverage
The enriched files include instructions for all **9 relationship types**:

### Ownership & Shareholdings
- `OWNS` (parent company → child company)
- `OWNS_SHARES` (person → company)

### Governance & Roles  
- `DIRECTOR_OF` (person → company)
- `HOLDS_POSITION` (person → company)

### Business Classification
- `IN_SECTOR` (company → sector)
- `OFFERS` (company → product)

### Financial Metrics
- `HAS_METRIC` (company → metric)

### Auditing & Management
- `AUDITED_BY` (company → auditor company)
- `MANAGES` (management company → managed company)

## 🚀 How to Use with LLM

### Step 1: Choose an Enriched File
```bash
# Files are located in:
./preprocessed_texts/

# Examples:
AITKEN_SPENCE_PLC_enriched.txt
ABANS_FINANCE_PLC_enriched.txt
ACCESS_ENGINEERING_PLC_enriched.txt
# ... (13 total files)
```

### Step 2: Send to LLM
Copy the **ENTIRE content** of any `*_enriched.txt` file and send it to your LLM with this prompt:

```
Please analyze this enriched annual report data and generate comprehensive Cypher queries following the exact schema specification provided. Focus on extracting all types of relationships mentioned in the schema, including ownership, governance, business classification, financial metrics, and auditing relationships. Use the exact entity IDs provided in the mappings.
```

### Step 3: Expected LLM Output
The LLM should generate:

```cypher
// Node creation for new entities
CREATE (:Sector {id: 'sector_plantation', name: 'Plantation'});
CREATE (:Product {id: 'product_tea', name: 'Tea'});
CREATE (:Metric {id: 'metric_revenue', name: 'Revenue', unit: 'LKR'});

// Relationships using pre-mapped IDs
MATCH (p:Person {id: 'person_[exact_id_from_mapping]'})
MATCH (c:Company {id: 'company_[exact_id_from_mapping]'})
CREATE (p)-[:DIRECTOR_OF {role: 'Chairman', as_of: date('2024-01-01')}]->(c);

MATCH (c:Company {id: 'company_[exact_id_from_mapping]'})
MATCH (s:Sector {id: 'sector_plantation'})
CREATE (c)-[:IN_SECTOR]->(s);

// ... more relationships
```

## 📊 File Structure
Each enriched file contains:

1. **Company Information**: Target company name and pre-mapped ID
2. **Exact Schema Definition**: Your complete 9.1 Database Schema
3. **Entity Mappings**: All 100 persons and 17 companies with exact IDs
4. **Cypher Instructions**: Detailed generation guidelines
5. **Original Text**: Full annual report content for extraction
6. **Examples**: Cypher patterns and property specifications

## 🔧 Advanced Usage

### Batch Processing
Process multiple companies by sending multiple enriched files to your LLM sequentially.

### Schema Validation
The generated Cypher should follow these rules:
- Use exact entity IDs from mappings
- Follow property names exactly as specified in schema
- Include proper data types (string, int, float, date)
- Create new entities with consistent naming: `sector_[name]`, `product_[name]`, `metric_[name]`

### Error Prevention
- ✅ Entity IDs are pre-validated and consistent
- ✅ Schema specification is embedded in each file
- ✅ Property names and types are clearly specified
- ✅ Relationship directions are explicitly defined

## 📈 Next Steps
1. Choose any enriched file from `./preprocessed_texts/`
2. Send complete file content to your preferred LLM
3. Request Cypher generation following the embedded schema
4. Import generated Cypher to Neo4j for complex corporate network analysis

## 🎉 Result
You'll have a comprehensive corporate network with:
- **Complex relationships** beyond basic director/position links
- **Financial metrics** connected to companies
- **Business sectors** and **products/services** classifications  
- **Ownership structures** and **shareholding details**
- **Auditing relationships** and **management connections**

This transforms your simple graph into a rich, multi-dimensional corporate intelligence network suitable for advanced analysis and insights.
