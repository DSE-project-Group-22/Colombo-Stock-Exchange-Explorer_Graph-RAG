"""
Entity Mapper Module

This module handles all entity mappings and ID resolutions for preprocessing.
It loads canonical entities from the entity resolution output and provides
mapping functionality for text enrichment.
"""

import json
import logging
from typing import Dict, List, Optional, Tuple
from dataclasses import dataclass
from pathlib import Path
import uuid
import hashlib

@dataclass
class EntityMapping:
    """Represents an entity mapping with normalized ID."""
    original_name: str
    canonical_id: str
    canonical_name: str
    entity_type: str  # 'person', 'company', 'sector', 'product', 'metric'
    
@dataclass
class CompanyEntity:
    """Company entity with full details."""
    id: str
    name: str
    founded_on: Optional[str] = None
    listed_on: Optional[str] = None
    region: Optional[str] = None

@dataclass
class PersonEntity:
    """Person entity with full details."""
    id: str
    name: str
    
class EntityMapper:
    """
    Handles entity mapping and ID resolution for preprocessing.
    Loads canonical entities and provides mapping services.
    """
    
    def __init__(self, 
                 entity_mapping_path: str = "../output/entity_mapping.json",
                 persons_path: str = "../output/canonical_person_entities.json",
                 companies_path: str = "../output/neo4j_company_nodes.json"):
        
        self.entity_mapping_path = entity_mapping_path
        self.persons_path = persons_path
        self.companies_path = companies_path
        
        # Initialize logging
        self.logger = logging.getLogger(__name__)
        
        # Entity storage
        self.persons: Dict[str, PersonEntity] = {}
        self.companies: Dict[str, CompanyEntity] = {}
        self.entity_mappings: Dict[str, EntityMapping] = {}
        
        # Additional entities (will be created during preprocessing)
        self.sectors: Dict[str, str] = {}  # name -> id
        self.products: Dict[str, str] = {}  # name -> id
        self.metrics: Dict[str, str] = {}  # name -> id
        
        # Load existing entities
        self._load_entities()
    
    def _load_entities(self):
        """Load canonical entities from entity resolution output."""
        try:
            # Load persons
            if Path(self.persons_path).exists():
                with open(self.persons_path, 'r') as f:
                    persons_data = json.load(f)
                    for person in persons_data:
                        self.persons[person['id']] = PersonEntity(
                            id=person['id'],
                            name=person['canonical_name']
                        )
                        
                        # Add to entity mappings
                        self.entity_mappings[person['canonical_name'].lower()] = EntityMapping(
                            original_name=person['canonical_name'],
                            canonical_id=person['id'],
                            canonical_name=person['canonical_name'],
                            entity_type='person'
                        )
                
                self.logger.info(f"Loaded {len(self.persons)} persons")
            
            # Load companies
            if Path(self.companies_path).exists():
                with open(self.companies_path, 'r') as f:
                    companies_data = json.load(f)
                    for company in companies_data:
                        self.companies[company['id']] = CompanyEntity(
                            id=company['id'],
                            name=company['name']
                        )
                        
                        # Add to entity mappings
                        self.entity_mappings[company['name'].lower()] = EntityMapping(
                            original_name=company['name'],
                            canonical_id=company['id'],
                            canonical_name=company['name'],
                            entity_type='company'
                        )
                
                self.logger.info(f"Loaded {len(self.companies)} companies")
            
            # Load entity mappings if available
            if Path(self.entity_mapping_path).exists():
                with open(self.entity_mapping_path, 'r') as f:
                    mapping_data = json.load(f)
                    self.logger.info(f"Loaded entity mapping data: {len(mapping_data)} mappings")
                    
        except Exception as e:
            self.logger.error(f"Error loading entities: {e}")
    
    def find_entity(self, name: str) -> Optional[EntityMapping]:
        """Find entity by name (case-insensitive)."""
        return self.entity_mappings.get(name.lower())
    
    def find_or_create_company(self, name: str) -> str:
        """Find existing company or create new one."""
        # Try to find existing
        mapping = self.find_entity(name)
        if mapping and mapping.entity_type == 'company':
            return mapping.canonical_id
        
        # Create new company
        company_id = self._generate_id('company', name)
        self.companies[company_id] = CompanyEntity(id=company_id, name=name)
        
        # Add to mappings
        self.entity_mappings[name.lower()] = EntityMapping(
            original_name=name,
            canonical_id=company_id,
            canonical_name=name,
            entity_type='company'
        )
        
        self.logger.info(f"Created new company: {name} -> {company_id}")
        return company_id
    
    def find_or_create_person(self, name: str) -> str:
        """Find existing person or create new one."""
        # Try to find existing
        mapping = self.find_entity(name)
        if mapping and mapping.entity_type == 'person':
            return mapping.canonical_id
        
        # Create new person
        person_id = self._generate_id('person', name)
        self.persons[person_id] = PersonEntity(id=person_id, name=name)
        
        # Add to mappings
        self.entity_mappings[name.lower()] = EntityMapping(
            original_name=name,
            canonical_id=person_id,
            canonical_name=name,
            entity_type='person'
        )
        
        self.logger.info(f"Created new person: {name} -> {person_id}")
        return person_id
    
    def find_or_create_sector(self, name: str) -> str:
        """Find existing sector or create new one."""
        if name.lower() in self.sectors:
            return self.sectors[name.lower()]
        
        sector_id = self._generate_id('sector', name)
        self.sectors[name.lower()] = sector_id
        
        self.logger.info(f"Created new sector: {name} -> {sector_id}")
        return sector_id
    
    def find_or_create_product(self, name: str) -> str:
        """Find existing product or create new one."""
        if name.lower() in self.products:
            return self.products[name.lower()]
        
        product_id = self._generate_id('product', name)
        self.products[name.lower()] = product_id
        
        self.logger.info(f"Created new product: {name} -> {product_id}")
        return product_id
    
    def find_or_create_metric(self, name: str) -> str:
        """Find existing metric or create new one."""
        if name.lower() in self.metrics:
            return self.metrics[name.lower()]
        
        metric_id = self._generate_id('metric', name)
        self.metrics[name.lower()] = metric_id
        
        self.logger.info(f"Created new metric: {name} -> {metric_id}")
        return metric_id
    
    def _generate_id(self, entity_type: str, name: str) -> str:
        """Generate a consistent ID for an entity."""
        # Create a consistent hash-based ID
        normalized_name = name.lower().replace(' ', '_').replace('-', '_').replace('.', '')
        hash_input = f"{entity_type}_{normalized_name}"
        hash_object = hashlib.sha256(hash_input.encode())
        hash_hex = hash_object.hexdigest()[:32]
        
        # Format as UUID-like string
        uuid_str = f"{hash_hex[:8]}-{hash_hex[8:12]}-{hash_hex[12:16]}-{hash_hex[16:20]}-{hash_hex[20:32]}"
        return f"{entity_type}_{uuid_str}"
    
    def get_company_by_id(self, company_id: str) -> Optional[CompanyEntity]:
        """Get company entity by ID."""
        return self.companies.get(company_id)
    
    def get_person_by_id(self, person_id: str) -> Optional[PersonEntity]:
        """Get person entity by ID."""
        return self.persons.get(person_id)
    
    def get_all_companies(self) -> Dict[str, CompanyEntity]:
        """Get all company entities."""
        return self.companies.copy()
    
    def get_all_persons(self) -> Dict[str, PersonEntity]:
        """Get all person entities."""
        return self.persons.copy()
    
    def get_entity_summary(self) -> Dict[str, int]:
        """Get summary of all entities."""
        return {
            'persons': len(self.persons),
            'companies': len(self.companies),
            'sectors': len(self.sectors),
            'products': len(self.products),
            'metrics': len(self.metrics),
            'total_mappings': len(self.entity_mappings)
        }
    
    def export_new_entities(self) -> Dict[str, List[Dict]]:
        """Export newly created entities for use in Cypher generation."""
        return {
            'sectors': [
                {'id': sector_id, 'name': name}
                for name, sector_id in self.sectors.items()
            ],
            'products': [
                {'id': product_id, 'name': name}
                for name, product_id in self.products.items()
            ],
            'metrics': [
                {'id': metric_id, 'name': name, 'unit': ''}
                for name, metric_id in self.metrics.items()
            ]
        }
