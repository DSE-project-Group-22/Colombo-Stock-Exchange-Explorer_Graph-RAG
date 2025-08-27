# Configuration for Person Entity Resolution Pipeline

# Entity Resolution Settings
SIMILARITY_THRESHOLD = 0.85  # Minimum similarity score for matching entities (0.0 to 1.0)

# Feature Weights for Similarity Calculation
FEATURE_WEIGHTS = {
    'name_jaro_winkler': 0.4,      # Jaro-Winkler similarity on full standardized names
    'first_name_jaro_winkler': 0.2, # Jaro-Winkler similarity on first names
    'last_name_jaro_winkler': 0.2,  # Jaro-Winkler similarity on last names
    'same_company': 0.1,            # Exact match on company name
    'role_similarity': 0.1          # Jaccard similarity on roles/titles
}

# Name Standardization Settings
REMOVE_TITLES = [
    'mr', 'mrs', 'ms', 'miss', 'dr', 'prof', 'professor', 
    'sir', 'madam', 'jr', 'sr', 'ii', 'iii', 'iv',
    'ceo', 'cfo', 'coo', 'chairman', 'chairperson', 'chairwoman',
    'director', 'manager', 'executive', 'officer'
]

# Extraction Patterns for Person Names
PERSON_EXTRACTION_PATTERNS = [
    r'(?:Mr\.?|Mrs\.?|Ms\.?|Dr\.?|Prof\.?)\s+([A-Z][a-z]+(?:\s+[A-Z][a-z]*\.?\s*)*[A-Z][a-z]+)',
    r'([A-Z][a-z]+\s+[A-Z][a-z]+(?:\s+[A-Z][a-z]+)*):?\s*(?:Executive|Non-Executive|Independent)?.*?Director',
    r'Chairman:?\s*([A-Z][a-z]+(?:\s+[A-Z][a-z]*\.?\s*)*[A-Z][a-z]+)',
    r'CEO:?\s*([A-Z][a-z]+(?:\s+[A-Z][a-z]*\.?\s*)*[A-Z][a-z]+)',
    r'Chief Executive Officer.*?:?\s*([A-Z][a-z]+(?:\s+[A-Z][a-z]*\.?\s*)*[A-Z][a-z]+)'
]

# Role/Title Extraction Patterns
ROLE_EXTRACTION_PATTERNS = [
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

# Words to Skip When Validating Names
SKIP_WORDS = [
    'company', 'limited', 'ltd', 'plc', 'inc', 'corp', 'corporation',
    'report', 'annual', 'financial', 'statement', 'board', 'directors',
    'march', 'april', 'may', 'june', 'july', 'august', 'september',
    'october', 'november', 'december', 'year', 'ended'
]

# Section Keywords to Identify Person-Relevant Sections
PERSON_SECTION_KEYWORDS = [
    'director', 'board', 'key people', 'management', 'leadership',
    'executives', 'officers', 'governance'
]

# Output Settings
OUTPUT_FORMATS = ['csv', 'json']  # Supported output formats
MAX_CONTEXT_LENGTH = 500  # Maximum length of context to store per person
MAX_CONTEXTS_TO_MERGE = 3  # Maximum number of contexts to merge for canonical entities

# Logging Settings
LOG_LEVEL = 'INFO'  # DEBUG, INFO, WARNING, ERROR
LOG_TO_FILE = True
LOG_FILE = 'entity_resolution.log'
