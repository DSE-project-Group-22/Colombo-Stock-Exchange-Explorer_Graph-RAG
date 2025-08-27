"""
Person Entity Resolution Pipeline for Neo4j Integration
Extracts, standardizes, and resolves person entities from annual reports.
Generates Neo4j-compatible output with stable UUIDs for graph database integration.
"""

import os
import re
import json
import pandas as pd
import numpy as np
from pathlib import Path
from typing import List, Dict, Tuple, Set
import logging
from datetime import datetime
import uuid
import hashlib

# Import libraries for entity resolution
from thefuzz import fuzz, process
import recordlinkage as rl
import networkx as nx
import spacy

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler('entity_resolution.log'),
        logging.StreamHandler()
    ]
)
logger = logging.getLogger(__name__)


class PersonExtractor:
    """Extracts person entities from structured annual report texts."""
    
    def __init__(self):
        # Load spaCy model for NER
        try:
            self.nlp = spacy.load("en_core_web_sm")
        except OSError:
            logger.warning("spaCy model not found. Some features may be limited.")
            self.nlp = None
            
        # Common titles and honorifics to remove
        self.titles = {
            'mr', 'mrs', 'ms', 'miss', 'dr', 'prof', 'professor', 
            'sir', 'madam', 'jr', 'sr', 'ii', 'iii', 'iv',
            'ceo', 'cfo', 'coo', 'chairman', 'chairperson', 'chairwoman',
            'director', 'manager', 'executive', 'officer'
        }
        
        # Pattern for extracting person information from text
        self.person_patterns = [
            r'(?:Mr\.?|Mrs\.?|Ms\.?|Dr\.?|Prof\.?)\s+([A-Z][a-z]+(?:\s+[A-Z][a-z]*\.?\s*)*[A-Z][a-z]+)',
            r'([A-Z][a-z]+\s+[A-Z][a-z]+(?:\s+[A-Z][a-z]+)*):?\s*(?:Executive|Non-Executive|Independent)?.*?Director',
            r'Chairman:?\s*([A-Z][a-z]+(?:\s+[A-Z][a-z]*\.?\s*)*[A-Z][a-z]+)',
            r'CEO:?\s*([A-Z][a-z]+(?:\s+[A-Z][a-z]*\.?\s*)*[A-Z][a-z]+)',
            r'Chief Executive Officer.*?:?\s*([A-Z][a-z]+(?:\s+[A-Z][a-z]*\.?\s*)*[A-Z][a-z]+)'
        ]
    
    def extract_persons_from_text(self, text: str, company_name: str, report_year: str) -> List[Dict]:
        """Extract person entities from annual report text."""
        persons = []
        
        # Split text into sections
        sections = self._split_into_sections(text)
        
        for section_name, section_text in sections.items():
            if any(keyword in section_name.lower() for keyword in ['director', 'board', 'key people', 'management']):
                section_persons = self._extract_from_section(section_text, section_name, company_name, report_year)
                persons.extend(section_persons)
        
        # Use spaCy NER as fallback if available
        if self.nlp:
            ner_persons = self._extract_with_ner(text, company_name, report_year)
            persons.extend(ner_persons)
        
        # Remove duplicates and return
        return self._deduplicate_persons(persons)
    
    def _split_into_sections(self, text: str) -> Dict[str, str]:
        """Split text into logical sections."""
        sections = {}
        current_section = "General"
        current_content = []
        
        lines = text.split('\n')
        for line in lines:
            line = line.strip()
            if not line:
                continue
                
            # Check if line is a section header
            if line.startswith('**') and line.endswith('**'):
                # Save previous section
                if current_content:
                    sections[current_section] = '\n'.join(current_content)
                
                # Start new section
                current_section = line.strip('*')
                current_content = []
            else:
                current_content.append(line)
        
        # Save last section
        if current_content:
            sections[current_section] = '\n'.join(current_content)
        
        return sections
    
    def _extract_from_section(self, section_text: str, section_name: str, company_name: str, report_year: str) -> List[Dict]:
        """Extract persons from a specific section using regex patterns."""
        persons = []
        
        # Extract using predefined patterns
        for pattern in self.person_patterns:
            matches = re.finditer(pattern, section_text, re.IGNORECASE | re.MULTILINE)
            for match in matches:
                name = match.group(1).strip()
                if self._is_valid_name(name):
                    person = self._create_person_record(name, section_text, section_name, company_name, report_year)
                    persons.append(person)
        
        # Extract from director listings (line by line)
        lines = section_text.split('\n')
        for line in lines:
            line = line.strip()
            if ':' in line and any(keyword in line.lower() for keyword in ['director', 'chairman', 'ceo', 'cfo', 'officer']):
                # Extract name before colon or after title
                name_match = re.search(r'(?:Mr\.?|Mrs\.?|Ms\.?|Dr\.?)?\s*([A-Z][a-z]+(?:\s+[A-Z][a-z]*\.?\s*)*[A-Z][a-z]+)', line)
                if name_match:
                    name = name_match.group(1).strip()
                    if self._is_valid_name(name):
                        person = self._create_person_record(name, line, section_name, company_name, report_year)
                        persons.append(person)
        
        return persons
    
    def _extract_with_ner(self, text: str, company_name: str, report_year: str) -> List[Dict]:
        """Extract persons using spaCy NER."""
        persons = []
        
        if not self.nlp:
            return persons
        
        doc = self.nlp(text)
        for ent in doc.ents:
            if ent.label_ == "PERSON":
                name = ent.text.strip()
                if self._is_valid_name(name):
                    # Get context around the entity
                    start = max(0, ent.start - 10)
                    end = min(len(doc), ent.end + 10)
                    context = doc[start:end].text
                    
                    person = self._create_person_record(name, context, "NER_Extraction", company_name, report_year)
                    persons.append(person)
        
        return persons
    
    def _is_valid_name(self, name: str) -> bool:
        """Check if extracted text is a valid person name."""
        if not name or len(name.strip()) < 3:
            return False
        
        name_lower = name.lower().strip()
        
        # Skip common non-names
        skip_words = {
            'company', 'limited', 'ltd', 'plc', 'inc', 'corp', 'corporation',
            'report', 'annual', 'financial', 'statement', 'board', 'directors',
            'march', 'april', 'may', 'june', 'july', 'august', 'september',
            'october', 'november', 'december', 'year', 'ended'
        }
        
        if any(word in name_lower for word in skip_words):
            return False
        
        # Must contain at least first and last name
        name_parts = name.strip().split()
        if len(name_parts) < 2:
            return False
        
        # Check if all parts start with capital letter
        for part in name_parts:
            if part and not part[0].isupper():
                return False
        
        return True
    
    def _create_person_record(self, name: str, context: str, section: str, company: str, year: str) -> Dict:
        """Create a structured person record."""
        return {
            'original_name': name,
            'standardized_name': self._standardize_name(name),
            'first_name': self._extract_first_name(name),
            'last_name': self._extract_last_name(name),
            'context': context[:500],  # Limit context length
            'section': section,
            'company': company,
            'year': year,
            'roles': self._extract_roles(context),
            'extracted_at': datetime.now().isoformat()
        }
    
    def _standardize_name(self, name: str) -> str:
        """Standardize name format for comparison."""
        # Remove titles and normalize
        name_clean = name.lower().strip()
        
        # Remove common titles
        for title in self.titles:
            name_clean = re.sub(rf'\b{title}\.?\b', '', name_clean).strip()
        
        # Remove extra whitespace and punctuation
        name_clean = re.sub(r'[^\w\s]', '', name_clean)
        name_clean = re.sub(r'\s+', ' ', name_clean).strip()
        
        return name_clean
    
    def _extract_first_name(self, name: str) -> str:
        """Extract first name."""
        standardized = self._standardize_name(name)
        parts = standardized.split()
        return parts[0] if parts else ""
    
    def _extract_last_name(self, name: str) -> str:
        """Extract last name."""
        standardized = self._standardize_name(name)
        parts = standardized.split()
        return parts[-1] if len(parts) > 1 else ""
    
    def _extract_roles(self, context: str) -> List[str]:
        """Extract roles/titles from context."""
        roles = []
        context_lower = context.lower()
        
        role_patterns = [
            r'(chairman|chairperson|chairwoman)',
            r'(chief executive officer|ceo)',
            r'(chief financial officer|cfo)',
            r'(chief operating officer|coo)',
            r'(managing director)',
            r'(executive director)',
            r'(non-executive.*?director)',
            r'(independent.*?director)',
            r'(director)',
            r'(auditor)',
            r'(secretary)'
        ]
        
        for pattern in role_patterns:
            matches = re.findall(pattern, context_lower)
            roles.extend(matches)
        
        return list(set(roles))  # Remove duplicates
    
    def _deduplicate_persons(self, persons: List[Dict]) -> List[Dict]:
        """Remove obvious duplicates from extracted persons."""
        seen = set()
        unique_persons = []
        
        for person in persons:
            # Create a key based on standardized name and company
            key = (person['standardized_name'], person['company'])
            if key not in seen:
                seen.add(key)
                unique_persons.append(person)
        
        return unique_persons


class EntityResolver:
    """Resolves person entities across multiple documents with Neo4j integration."""
    
    def __init__(self, similarity_threshold: float = 0.85):
        self.similarity_threshold = similarity_threshold
        self.indexer = rl.Index()
        self.compare = rl.Compare()
        
    def generate_stable_uuid(self, canonical_name: str, companies: List[str]) -> str:
        """Generate a stable UUID based on canonical name and companies."""
        # Create a deterministic string for UUID generation
        name_clean = re.sub(r'[^\w\s]', '', canonical_name.lower()).strip()
        companies_clean = sorted([re.sub(r'[^\w\s]', '', c.lower()).strip() for c in companies])
        
        # Create a deterministic seed
        seed_string = f"{name_clean}|{','.join(companies_clean)}"
        
        # Generate deterministic UUID using SHA-256 hash
        hash_object = hashlib.sha256(seed_string.encode())
        hex_dig = hash_object.hexdigest()
        
        # Convert to UUID format
        uuid_string = f"{hex_dig[:8]}-{hex_dig[8:12]}-{hex_dig[12:16]}-{hex_dig[16:20]}-{hex_dig[20:32]}"
        
        return f"person_{uuid_string}"
        
    def resolve_entities(self, persons_df: pd.DataFrame) -> Tuple[pd.DataFrame, Dict]:
        """Main entity resolution process."""
        logger.info(f"Starting entity resolution for {len(persons_df)} person records")
        
        # Step 1: Preprocessing and standardization (already done in extraction)
        
        # Step 2: Blocking - group potential matches
        candidate_pairs = self._create_blocks(persons_df)
        logger.info(f"Generated {len(candidate_pairs)} candidate pairs for comparison")
        
        # Step 3: Matching - compare and score pairs
        features = self._compare_pairs(persons_df, candidate_pairs)
        logger.info(f"Computed features for {len(features)} pairs")
        
        # Step 4: Classification - decide which pairs are matches
        matches = self._classify_matches(features)
        logger.info(f"Identified {len(matches)} matching pairs")
        
        # Step 5: Clustering - group all related matches
        clusters = self._cluster_matches(persons_df, matches)
        logger.info(f"Created {len(clusters)} person clusters")
        
        # Step 6: Canonicalization - create final entities
        canonical_entities, entity_mapping = self._create_canonical_entities(persons_df, clusters)
        
        return canonical_entities, entity_mapping
    
    def _create_blocks(self, df: pd.DataFrame) -> pd.MultiIndex:
        """Create blocks of potential matches using last name."""
        # Block on last name for efficiency
        self.indexer.block('last_name')
        candidate_pairs = self.indexer.index(df)
        
        return candidate_pairs
    
    def _compare_pairs(self, df: pd.DataFrame, candidate_pairs: pd.MultiIndex) -> pd.DataFrame:
        """Compare pairs and compute similarity features."""
        # Compare standardized names using different algorithms
        self.compare.string('standardized_name', 'standardized_name', method='jaro_winkler', label='name_jw')
        self.compare.string('standardized_name', 'standardized_name', method='levenshtein', label='name_lev')
        self.compare.string('first_name', 'first_name', method='jaro_winkler', label='first_name_jw')
        self.compare.string('last_name', 'last_name', method='jaro_winkler', label='last_name_jw')
        
        # Compare companies (exact match)
        self.compare.exact('company', 'company', label='same_company')
        
        # Compare years (exact match since they're strings)
        self.compare.exact('year', 'year', label='same_year')
        
        features = self.compare.compute(candidate_pairs, df)
        
        # Add custom similarity features
        features = self._add_custom_features(df, candidate_pairs, features)
        
        return features
    
    def _add_custom_features(self, df: pd.DataFrame, pairs: pd.MultiIndex, features: pd.DataFrame) -> pd.DataFrame:
        """Add custom similarity features."""
        # Role similarity
        role_similarities = []
        context_similarities = []
        
        for idx1, idx2 in pairs:
            person1 = df.loc[idx1]
            person2 = df.loc[idx2]
            
            # Role similarity
            roles1 = set(person1.get('roles', []))
            roles2 = set(person2.get('roles', []))
            if roles1 and roles2:
                role_sim = len(roles1.intersection(roles2)) / len(roles1.union(roles2))
            else:
                role_sim = 0.0
            role_similarities.append(role_sim)
            
            # Context similarity using fuzzy matching
            context1 = person1.get('context', '')
            context2 = person2.get('context', '')
            context_sim = fuzz.partial_ratio(context1, context2) / 100.0
            context_similarities.append(context_sim)
        
        features['role_similarity'] = role_similarities
        features['context_similarity'] = context_similarities
        
        return features
    
    def _classify_matches(self, features: pd.DataFrame) -> pd.MultiIndex:
        """Classify pairs as matches based on weighted similarity score."""
        # Calculate weighted similarity score
        weights = {
            'name_jw': 0.4,
            'first_name_jw': 0.2,
            'last_name_jw': 0.2,
            'same_company': 0.1,
            'role_similarity': 0.1
        }
        
        features['similarity_score'] = 0
        for feature, weight in weights.items():
            if feature in features.columns:
                features['similarity_score'] += features[feature].fillna(0) * weight
        
        # Filter matches above threshold
        matches = features[features['similarity_score'] >= self.similarity_threshold]
        
        return matches.index
    
    def _cluster_matches(self, df: pd.DataFrame, matches: pd.MultiIndex) -> List[Set[int]]:
        """Cluster matching pairs using connected components."""
        # Create graph
        G = nx.Graph()
        G.add_nodes_from(df.index)
        G.add_edges_from(matches)
        
        # Find connected components
        clusters = list(nx.connected_components(G))
        
        # Filter out single-node clusters (no matches)
        clusters = [cluster for cluster in clusters if len(cluster) > 1]
        
        return clusters
    
    def _create_canonical_entities(self, df: pd.DataFrame, clusters: List[Set[int]]) -> Tuple[pd.DataFrame, Dict]:
        """Create canonical entities for each cluster."""
        canonical_entities = []
        entity_mapping = {}
        
        entity_id = 1
        
        for cluster in clusters:
            # Get all records in cluster
            cluster_records = df.loc[list(cluster)]
            
            # Create canonical entity
            canonical_entity = self._merge_cluster_records(cluster_records, entity_id)
            canonical_entities.append(canonical_entity)
            
            # Map all original records to canonical entity
            for record_id in cluster:
                entity_mapping[record_id] = entity_id
            
            entity_id += 1
        
        # Handle unmatched entities (create canonical entities for singletons)
        unmatched_indices = set(df.index) - set(entity_mapping.keys())
        for idx in unmatched_indices:
            record = df.loc[idx]
            canonical_entity = self._create_singleton_entity(record, entity_id)
            canonical_entities.append(canonical_entity)
            entity_mapping[idx] = entity_id
            entity_id += 1
        
        canonical_df = pd.DataFrame(canonical_entities)
        
        return canonical_df, entity_mapping
    
    def _merge_cluster_records(self, cluster_records: pd.DataFrame, entity_id: int) -> Dict:
        """Merge multiple records into a single canonical entity with stable UUID."""
        # Choose the most complete name
        names = cluster_records['original_name'].tolist()
        canonical_name = max(names, key=len)  # Choose longest name as most complete
        
        # Aggregate companies and years
        companies = cluster_records['company'].unique().tolist()
        years = cluster_records['year'].unique().tolist()
        
        # Generate stable UUID
        stable_uuid = self.generate_stable_uuid(canonical_name, companies)
        
        # Aggregate roles with company context
        roles_with_context = []
        for _, record in cluster_records.iterrows():
            if isinstance(record['roles'], list):
                for role in record['roles']:
                    role_entry = {
                        'title': self._standardize_role_title(role),
                        'company': record['company'],
                        'as_of': record['year'],
                        'original_role': role
                    }
                    roles_with_context.append(role_entry)
        
        # Remove duplicate roles
        unique_roles = []
        seen_combinations = set()
        for role in roles_with_context:
            combo = (role['title'], role['company'], role['as_of'])
            if combo not in seen_combinations:
                unique_roles.append(role)
                seen_combinations.add(combo)
        
        # Aggregate contexts
        contexts = cluster_records['context'].tolist()
        merged_context = ' | '.join(contexts[:3])  # Limit to first 3 contexts
        
        return {
            'id': stable_uuid,  # Neo4j compatible ID
            'entity_id': stable_uuid,  # Keep for backward compatibility
            'canonical_name': canonical_name,
            'name': canonical_name,  # Neo4j name property
            'standardized_name': cluster_records.iloc[0]['standardized_name'],
            'first_name': cluster_records.iloc[0]['first_name'],
            'last_name': cluster_records.iloc[0]['last_name'],
            'companies': companies,
            'years': sorted(years),
            'roles': unique_roles,  # Enhanced role structure for Neo4j
            'contexts': merged_context,
            'source_records': len(cluster_records),
            'alternative_names': list(set(names))
        }
    
    def _create_singleton_entity(self, record: pd.Series, entity_id: int) -> Dict:
        """Create canonical entity for unmatched record with stable UUID."""
        companies = [record['company']]
        stable_uuid = self.generate_stable_uuid(record['original_name'], companies)
        
        # Create roles with context
        roles_with_context = []
        if isinstance(record.get('roles'), list):
            for role in record['roles']:
                role_entry = {
                    'title': self._standardize_role_title(role),
                    'company': record['company'],
                    'as_of': record['year'],
                    'original_role': role
                }
                roles_with_context.append(role_entry)
        
        return {
            'id': stable_uuid,  # Neo4j compatible ID
            'entity_id': stable_uuid,  # Keep for backward compatibility
            'canonical_name': record['original_name'],
            'name': record['original_name'],  # Neo4j name property
            'standardized_name': record['standardized_name'],
            'first_name': record['first_name'],
            'last_name': record['last_name'],
            'companies': companies,
            'years': [record['year']],
            'roles': roles_with_context,  # Enhanced role structure for Neo4j
            'contexts': record['context'],
            'source_records': 1,
            'alternative_names': [record['original_name']]
        }
    
    def _standardize_role_title(self, role: str) -> str:
        """Standardize role titles for consistent Neo4j relationships."""
        role_lower = role.lower().strip()
        
        # Standard role mappings for Neo4j
        role_mappings = {
            'chief executive officer': 'CEO',
            'ceo': 'CEO',
            'chief financial officer': 'CFO',
            'cfo': 'CFO',
            'chief operating officer': 'COO',
            'coo': 'COO',
            'chairman': 'Chairman',
            'chairperson': 'Chairman',
            'chairwoman': 'Chairman',
            'managing director': 'Managing Director',
            'executive director': 'Executive Director',
            'non-executive director': 'Non-Executive Director',
            'independent director': 'Independent Director',
            'non-executive independent director': 'Independent Director',
            'non-executive non-independent director': 'Non-Executive Director',
            'director': 'Director',
            'auditor': 'Auditor',
            'secretary': 'Secretary'
        }
        
        return role_mappings.get(role_lower, role.title())


class EntityResolutionPipeline:
    """Main pipeline for person entity resolution."""
    
    def __init__(self, extracted_texts_dir: str = "extracted_texts", output_dir: str = "output"):
        self.extracted_texts_dir = Path(extracted_texts_dir)
        self.output_dir = Path(output_dir)
        self.output_dir.mkdir(exist_ok=True)
        
        self.extractor = PersonExtractor()
        self.resolver = EntityResolver()
    
    def run(self):
        """Run the complete entity resolution pipeline."""
        logger.info("Starting Person Entity Resolution Pipeline")
        
        # Step 1: Extract persons from all text files
        all_persons = self._extract_all_persons()
        logger.info(f"Extracted {len(all_persons)} person records from all reports")
        
        if not all_persons:
            logger.warning("No person entities found in extracted texts")
            return
        
        # Convert to DataFrame
        persons_df = pd.DataFrame(all_persons)
        persons_df['year'] = persons_df['year'].astype(str)
        
        # Save raw extracted data
        persons_df.to_csv(self.output_dir / "raw_person_entities.csv", index=False)
        persons_df.to_json(self.output_dir / "raw_person_entities.json", orient='records', indent=2)
        
        # Step 2: Resolve entities
        canonical_entities, entity_mapping = self.resolver.resolve_entities(persons_df)
        
        # Step 3: Save results
        self._save_results(canonical_entities, entity_mapping, persons_df)
        
        logger.info("Entity resolution pipeline completed successfully")
    
    def _extract_all_persons(self) -> List[Dict]:
        """Extract persons from all text files in the directory."""
        all_persons = []
        
        for text_file in self.extracted_texts_dir.glob("*.txt"):
            logger.info(f"Processing {text_file.name}")
            
            # Read file content
            with open(text_file, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # Extract company name and year from filename or content
            company_name = self._extract_company_name(text_file.name, content)
            report_year = self._extract_report_year(content)
            
            # Extract persons
            persons = self.extractor.extract_persons_from_text(content, company_name, report_year)
            all_persons.extend(persons)
            
            logger.info(f"Extracted {len(persons)} persons from {text_file.name}")
        
        return all_persons
    
    def _extract_company_name(self, filename: str, content: str) -> str:
        """Extract company name from filename or content."""
        # Try to extract from filename
        company_name = filename.replace('.txt', '').replace('_', ' ')
        
        # Try to extract from content
        company_match = re.search(r'(?:Name|Company):\s*([^:\n]+)', content, re.IGNORECASE)
        if company_match:
            company_name = company_match.group(1).strip()
        
        return company_name
    
    def _extract_report_year(self, content: str) -> str:
        """Extract report year from content."""
        # Look for year patterns
        year_patterns = [
            r'Report Year:\s*(\d{4})',
            r'Year Ended.*?(\d{4})',
            r'March 31,?\s*(\d{4})',
            r'(\d{4})'
        ]
        
        for pattern in year_patterns:
            match = re.search(pattern, content)
            if match:
                year = match.group(1)
                if 2000 <= int(year) <= 2030:  # Reasonable year range
                    return year
        
        return "Unknown"
    
    def _save_results(self, canonical_entities: pd.DataFrame, entity_mapping: Dict, raw_persons: pd.DataFrame):
        """Save all results including Neo4j-compatible formats."""
        # Save canonical entities
        canonical_entities.to_csv(self.output_dir / "canonical_person_entities.csv", index=False)
        canonical_entities.to_json(self.output_dir / "canonical_person_entities.json", orient='records', indent=2)
        
        # Save entity mapping
        with open(self.output_dir / "entity_mapping.json", 'w') as f:
            json.dump({str(k): v for k, v in entity_mapping.items()}, f, indent=2)
        
        # Create enhanced raw data with entity mappings
        raw_persons_enhanced = raw_persons.copy()
        raw_persons_enhanced['canonical_entity_id'] = raw_persons_enhanced.index.map(entity_mapping)
        
        raw_persons_enhanced.to_csv(self.output_dir / "raw_persons_with_entities.csv", index=False)
        raw_persons_enhanced.to_json(self.output_dir / "raw_persons_with_entities.json", orient='records', indent=2)
        
        # Generate Neo4j-specific outputs
        self._generate_neo4j_outputs(canonical_entities, raw_persons_enhanced)
        
        # Generate summary report
        self._generate_summary_report(canonical_entities, entity_mapping, raw_persons)
    
    def _generate_neo4j_outputs(self, canonical_entities: pd.DataFrame, raw_persons: pd.DataFrame):
        """Generate Neo4j-specific output formats for easy graph database integration."""
        
        # 1. Person nodes for Neo4j
        person_nodes = []
        for _, entity in canonical_entities.iterrows():
            person_node = {
                'id': entity['id'],
                'name': entity['name'],
                'first_name': entity['first_name'],
                'last_name': entity['last_name'],
                'alternative_names': entity['alternative_names'],
                'source_records': entity['source_records']
            }
            person_nodes.append(person_node)
        
        # Save person nodes
        with open(self.output_dir / "neo4j_person_nodes.json", 'w') as f:
            json.dump(person_nodes, f, indent=2)
        
        # 2. Company nodes (extract unique companies)
        all_companies = set()
        for _, entity in canonical_entities.iterrows():
            companies = eval(entity['companies']) if isinstance(entity['companies'], str) else entity['companies']
            all_companies.update(companies)
        
        company_nodes = []
        for company in all_companies:
            company_id = self._generate_company_id(company)
            company_node = {
                'id': company_id,
                'name': company,
                'type': 'Company'
            }
            company_nodes.append(company_node)
        
        # Save company nodes
        with open(self.output_dir / "neo4j_company_nodes.json", 'w') as f:
            json.dump(company_nodes, f, indent=2)
        
        # 3. Relationships
        relationships = []
        for _, entity in canonical_entities.iterrows():
            person_id = entity['id']
            
            if isinstance(entity['roles'], list):
                for role in entity['roles']:
                    if isinstance(role, dict):
                        company_id = self._generate_company_id(role['company'])
                        
                        # Determine relationship type based on role
                        if role['title'].upper() in ['CEO', 'CFO', 'COO', 'CHAIRMAN']:
                            rel_type = 'HOLDS_POSITION'
                        elif 'DIRECTOR' in role['title'].upper():
                            rel_type = 'DIRECTOR_OF'
                        else:
                            rel_type = 'WORKS_FOR'
                        
                        relationship = {
                            'person_id': person_id,
                            'company_id': company_id,
                            'relationship_type': rel_type,
                            'title': role['title'],
                            'as_of': role['as_of'],
                            'original_role': role.get('original_role', role['title'])
                        }
                        relationships.append(relationship)
        
        # Save relationships
        with open(self.output_dir / "neo4j_relationships.json", 'w') as f:
            json.dump(relationships, f, indent=2)
        
        # 4. Generate Cypher import script
        self._generate_cypher_import_script(person_nodes, company_nodes, relationships)
    
    def _generate_company_id(self, company_name: str) -> str:
        """Generate a stable company ID."""
        company_clean = re.sub(r'[^\w\s]', '', company_name.lower()).strip().replace(' ', '_')
        hash_object = hashlib.sha256(company_clean.encode())
        hex_dig = hash_object.hexdigest()
        uuid_string = f"{hex_dig[:8]}-{hex_dig[8:12]}-{hex_dig[12:16]}-{hex_dig[16:20]}-{hex_dig[20:32]}"
        return f"company_{uuid_string}"
    
    def _generate_cypher_import_script(self, person_nodes: List[Dict], company_nodes: List[Dict], relationships: List[Dict]):
        """Generate Cypher script for importing data into Neo4j."""
        
        cypher_script = []
        
        # Header
        cypher_script.append("// Neo4j Import Script for Person Entity Resolution")
        cypher_script.append("// Generated automatically from entity resolution pipeline")
        cypher_script.append("// Run this script in Neo4j Browser or via Python driver")
        cypher_script.append("")
        
        # Clear existing data (optional)
        cypher_script.append("// Clear existing Person and Company nodes (optional)")
        cypher_script.append("// MATCH (n:Person) DETACH DELETE n;")
        cypher_script.append("// MATCH (n:Company) DETACH DELETE n;")
        cypher_script.append("")
        
        # Create Person nodes
        cypher_script.append("// Create Person nodes")
        for person in person_nodes:
            alt_names_str = json.dumps(person['alternative_names'])
            cypher = f"""MERGE (p:Person {{id: "{person['id']}"}})
ON CREATE SET 
  p.name = "{person['name']}",
  p.first_name = "{person['first_name']}",
  p.last_name = "{person['last_name']}",
  p.alternative_names = {alt_names_str},
  p.source_records = {person['source_records']};"""
            cypher_script.append(cypher)
            cypher_script.append("")
        
        # Create Company nodes
        cypher_script.append("// Create Company nodes")
        for company in company_nodes:
            cypher = f"""MERGE (c:Company {{id: "{company['id']}"}})
ON CREATE SET 
  c.name = "{company['name']}",
  c.type = "{company['type']}";"""
            cypher_script.append(cypher)
            cypher_script.append("")
        
        # Create relationships
        cypher_script.append("// Create relationships")
        for rel in relationships:
            cypher = f"""MATCH (p:Person {{id: "{rel['person_id']}"}})
MATCH (c:Company {{id: "{rel['company_id']}"}})
MERGE (p)-[r:{rel['relationship_type']} {{as_of: date("{rel['as_of']}-01-01")}}]->(c)
ON CREATE SET 
  r.title = "{rel['title']}",
  r.original_role = "{rel['original_role']}";"""
            cypher_script.append(cypher)
            cypher_script.append("")
        
        # Save script
        with open(self.output_dir / "neo4j_import_script.cypher", 'w') as f:
            f.write('\n'.join(cypher_script))
        
        logger.info(f"Generated Neo4j import script with {len(person_nodes)} persons, {len(company_nodes)} companies, and {len(relationships)} relationships")
    
    def _generate_summary_report(self, canonical_entities: pd.DataFrame, entity_mapping: Dict, raw_persons: pd.DataFrame):
        """Generate a summary report of the entity resolution process."""
        summary = {
            "pipeline_run_time": datetime.now().isoformat(),
            "statistics": {
                "raw_person_records": len(raw_persons),
                "canonical_entities": len(canonical_entities),
                "reduction_rate": 1 - (len(canonical_entities) / len(raw_persons)) if len(raw_persons) > 0 else 0,
                "merged_entities": len([e for e in canonical_entities['source_records'] if e > 1]),
                "singleton_entities": len([e for e in canonical_entities['source_records'] if e == 1])
            },
            "company_coverage": raw_persons['company'].value_counts().to_dict(),
            "year_coverage": raw_persons['year'].value_counts().to_dict(),
            "top_entities_by_companies": canonical_entities.nlargest(10, 'source_records')[
                ['canonical_name', 'companies', 'source_records']
            ].to_dict('records')
        }
        
        with open(self.output_dir / "resolution_summary.json", 'w') as f:
            json.dump(summary, f, indent=2, default=str)
        
        # Create human-readable summary
        with open(self.output_dir / "resolution_summary.txt", 'w') as f:
            f.write("Person Entity Resolution Summary\n")
            f.write("=" * 40 + "\n\n")
            f.write(f"Pipeline completed at: {summary['pipeline_run_time']}\n\n")
            f.write(f"Raw person records processed: {summary['statistics']['raw_person_records']}\n")
            f.write(f"Canonical entities created: {summary['statistics']['canonical_entities']}\n")
            f.write(f"Reduction rate: {summary['statistics']['reduction_rate']:.2%}\n")
            f.write(f"Entities with multiple sources: {summary['statistics']['merged_entities']}\n")
            f.write(f"Singleton entities: {summary['statistics']['singleton_entities']}\n\n")
            
            f.write("Companies processed:\n")
            for company, count in summary['company_coverage'].items():
                f.write(f"  - {company}: {count} persons\n")
            
            f.write("\nTop merged entities:\n")
            for entity in summary['top_entities_by_companies']:
                f.write(f"  - {entity['canonical_name']}: {entity['source_records']} sources, "
                       f"companies: {', '.join(entity['companies'])}\n")


def main():
    """Main function to run the entity resolution pipeline."""
    pipeline = EntityResolutionPipeline()
    pipeline.run()


if __name__ == "__main__":
    main()
