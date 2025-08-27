# Adaptive Query System with LangGraph

A domain-agnostic, schema-aware adaptive query system that uses LangGraph's state machine architecture to dynamically process natural language queries against ANY graph database. The system intelligently identifies information gaps, generates contextual queries, and builds knowledge iteratively without any hardcoded assumptions about your data structure.

## 🌟 Key Features

- **Domain-Agnostic**: Works with any graph database schema (social networks, knowledge graphs, financial data, etc.)
- **Schema-Aware Planning**: Uses your graph schema to generate intelligent, contextual queries
- **Smart Gap Identification**: LLM-powered structured analysis identifies exactly what information is needed
- **Adaptive Query Generation**: All queries are dynamically generated based on schema and discovered facts
- **Progressive Knowledge Building**: Each query result informs the next, creating true adaptive learning
- **Confidence-Based Termination**: Knows when it has gathered sufficient information to answer
- **LangGraph Architecture**: Robust state machine with clear node separation and routing logic

## 📁 Project Structure

```
adaptive_langgraph/
├── graph_state.py          # State schema for LangGraph
├── nodes.py                # Individual node implementations
├── adaptive_graph.py       # Main workflow and routing logic
├── test_adaptive_graph.py  # Comprehensive test suite
└── README.md              # This file
```

## 🏗️ Architecture

### Graph Flow

```
START 
  ↓
PLANNER (Plans next query based on state)
  ↓
EXECUTOR (Executes query via nl_to_cypher)
  ↓
INTERPRETER (Extracts facts from results)
  ↓
EVALUATOR (Assesses progress)
  ↓
[Loop back to PLANNER if more info needed]
  ↓
SYNTHESIZER (Creates final answer)
  ↓
END
```

### Node Descriptions

1. **Planner Node**: 
   - Discovers or uses provided schema
   - Identifies specific information gaps using structured LLM output
   - Generates contextual queries based on schema and discovered facts
   - No hardcoded logic - fully dynamic

2. **Executor Node**: 
   - Executes natural language queries via nl_to_cypher
   - Handles failures with automatic alternative query generation
   - Maintains query history for learning

3. **Interpreter Node**: 
   - Generic fact extraction based on data structure (not content)
   - Automatically categorizes entities, relationships, and metrics
   - Schema-agnostic processing

4. **Evaluator Node**: 
   - Domain-independent confidence calculation
   - Based on facts discovered, entities found, and query success rate
   - Smart termination conditions

5. **Synthesizer Node**: 
   - Creates coherent answers from any graph structure
   - Adapts output format to query type dynamically

## 🚀 Quick Start

### Basic Usage

```python
from adaptive_graph import process_adaptive_query

# Process a simple query
result = process_adaptive_query(
    "How many companies are in the database?",
    verbose=True
)

print(f"Answer: {result['answer']}")
print(f"Confidence: {result['confidence']:.1%}")
```

### Interactive Mode

```bash
# Run interactive mode
python adaptive_graph.py --interactive

# Commands available:
# - 'quit' to exit
# - 'help' for examples
# - 'debug' to toggle verbose mode
```

### Demo Mode

```bash
# Run demo with sample queries
python adaptive_graph.py --demo
```

## 🧪 Testing

### Run Full Test Suite

```bash
python test_adaptive_graph.py --all
```

### Test Options

```bash
# Quick single query test
python test_adaptive_graph.py --quick

# Performance benchmark
python test_adaptive_graph.py --benchmark

# Graph structure validation
python test_adaptive_graph.py --structure

# Verbose testing
python test_adaptive_graph.py --verbose
```

## 🔧 Configuration with Your Schema

### Providing Your Graph Schema

The system can work with ANY graph database schema. Simply provide it at initialization:

```python
from adaptive_langgraph.nodes import set_graph_schema

# Example: Financial/Stock Market Graph
financial_schema = """
Node Labels:
- Company (id, name, founded_on, listed_on, region)
- Person (id, name)
- Sector (id, name)
- Metric (id, name, unit)

Relationships:
- (Company)-[:OWNS {pct, as_of}]->(Company)
- (Person)-[:DIRECTOR_OF {role, as_of}]->(Company)
- (Company)-[:IN_SECTOR]->(Sector)
- (Company)-[:HAS_METRIC {value, year}]->(Metric)
"""

# Example: Social Network Graph
social_schema = """
Node Labels:
- User (id, username, created_at)
- Post (id, content, timestamp)
- Comment (id, text, timestamp)

Relationships:
- (User)-[:FOLLOWS {since}]->(User)
- (User)-[:POSTED]->(Post)
- (User)-[:LIKED {timestamp}]->(Post)
- (Comment)-[:REPLIES_TO]->(Post)
"""

# Example: Knowledge Graph
knowledge_schema = """
Node Labels:
- Concept (id, name, definition)
- Article (id, title, content)
- Author (id, name, expertise)

Relationships:
- (Concept)-[:RELATED_TO {strength}]->(Concept)
- (Article)-[:MENTIONS]->(Concept)
- (Author)-[:WROTE]->(Article)
"""

# Set your schema
set_graph_schema(financial_schema)
```

## 💡 How It Works

### Intelligent Gap Identification

The system uses structured LLM output to identify specific information gaps:

```python
# For query: "Show me technology companies and their CEOs"
# System identifies:
gaps = [
    {
        "gap_type": "nodes_Company",
        "description": "Need companies in technology sector",
        "priority": 1,
        "suggested_query": "What technology companies exist?"
    },
    {
        "gap_type": "relationship_DIRECTOR_OF",
        "description": "Need CEO/director relationships",
        "priority": 1,
        "suggested_query": "Who are the CEOs of these companies?"
    }
]
```

### Adaptive Query Process

1. **Schema Discovery/Loading**: System either uses provided schema or discovers it
2. **Gap Analysis**: LLM analyzes query against schema to identify specific information needs
3. **Dynamic Query Generation**: Each query is generated based on:
   - Graph schema structure
   - Previously discovered facts
   - Identified information gaps
   - Current confidence level
4. **Generic Fact Extraction**: Results processed based on structure, not assumptions
5. **Intelligent Progress Evaluation**: Domain-agnostic confidence calculation
6. **Contextual Answer Synthesis**: Builds answer from any graph structure

### Example Flow

Query: "What companies does John Keells Holdings own?"

```
Iteration 1: Schema Analysis
→ Identifies gaps: Need Company nodes, OWNS relationships
→ Generates: "Is John Keells Holdings in the database?"

Iteration 2: Relationship Discovery  
→ Found: John Keells Holdings exists
→ Generates: "What companies does John Keells Holdings own and what are the ownership percentages?"

Iteration 3: Complete Information
→ Found: Ownership relationships with percentages
→ Confidence: 95% - ready to synthesize answer
```

## 🔧 Configuration

### State Configuration

```python
# In graph_state.py
class AdaptiveQueryState:
    max_iterations: int = 15        # Maximum query iterations
    time_limit: float = 30.0        # Maximum seconds
    confidence_threshold = 0.75     # When to stop querying
```

### Query Planning Rules

The planner uses both rule-based and LLM-based planning:

1. **Rule-based**: Common patterns like "sectors first, then companies"
2. **LLM-based**: Complex queries that need dynamic planning

## 🎯 Key Improvements

### What's New

1. **No Hardcoded Logic**: All queries dynamically generated from schema
2. **Structured Gap Analysis**: LLM identifies specific schema-based gaps
3. **Generic Fact Extraction**: Works with any data structure
4. **Schema-First Approach**: Uses your actual graph structure
5. **Domain Independence**: Same code works for finance, social, knowledge graphs, etc.

### Performance Characteristics

- **Simple queries**: 1-2 iterations, <5 seconds
- **Medium complexity**: 3-5 iterations, 5-10 seconds  
- **Complex queries**: 5-10 iterations, 10-20 seconds
- **Confidence scores**: Domain-agnostic calculation (70-95% typical)

## 🔍 Debugging

### Verbose Mode

Enable verbose mode to see decision-making:

```python
result = process_adaptive_query(query, verbose=True)
```

Shows:
- Each node's decision
- Queries being executed
- Facts being extracted
- Confidence calculations
- Routing decisions

### State Inspection

```python
result = process_adaptive_query(query)
state = result['state']

# Inspect discovered facts
print(state.discovered_facts)

# Check entities found
print(state.entity_mentions)

# Review query history
for q in state.completed_queries:
    print(f"{q.query_text}: {q.facts_extracted}")
```

## 🎯 Universal Use Cases

Works with ANY graph database:

### Financial Graphs
- "Show companies with high market cap and their board members"
- "What is the ownership structure of conglomerates?"
- "Find companies audited by the same firm"

### Social Networks  
- "Find influencers who follow each other"
- "What posts have the most engagement from verified users?"
- "Show me conversation threads about specific topics"

### Knowledge Graphs
- "What concepts are related to machine learning?"
- "Find articles by authors with expertise in AI"
- "Show me the citation network for this paper"

### E-Commerce Graphs
- "What products are frequently bought together?"
- "Find customers with similar purchase patterns"
- "Show me the supply chain for this product"

### Any Custom Graph
The system adapts to YOUR schema and data structure!

## 🚦 LangGraph Studio Support

The graph is exported for LangGraph Studio visualization:

```python
# In adaptive_graph.py
graph = build_adaptive_graph().compile()  # Export for Studio
```

You can visualize the graph execution in LangGraph Studio for debugging and optimization.

## 📈 Future Enhancements

- [ ] Parallel query execution for independent facts
- [ ] Query result caching across sessions
- [ ] Learning from successful query patterns
- [ ] More sophisticated confidence scoring
- [ ] Natural language feedback on why queries failed

## 🤝 Contributing

To extend the system:

1. **Add new node types**: Create in `nodes.py`
2. **Modify routing logic**: Update in `adaptive_graph.py`
3. **Enhance state**: Extend `AdaptiveQueryState` in `graph_state.py`
4. **Add tests**: Extend `test_adaptive_graph.py`

## 📝 License

Part of the Colombo Stock Exchange Explorer project.