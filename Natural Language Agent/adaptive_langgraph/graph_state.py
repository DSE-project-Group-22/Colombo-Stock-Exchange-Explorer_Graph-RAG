#!/usr/bin/env python3
"""
LangGraph State Schema for Adaptive Query System
Defines the state that flows through the graph nodes
"""

from typing import Dict, Any, List, Optional, Literal
from pydantic import BaseModel, Field
from langgraph.graph import add_messages
from typing_extensions import Annotated
import time


class QueryInfo(BaseModel):
    """Information about an executed query"""
    query_text: str
    cypher_query: Optional[str] = None
    result: Optional[Any] = None
    success: bool = False
    error_message: Optional[str] = None
    facts_extracted: List[str] = Field(default_factory=list)


class InformationGap(BaseModel):
    """Represents missing information needed to answer the query"""
    gap_type: str
    description: str
    suggested_query: Optional[str] = None  # Natural language query suggestion
    
    # Tracking fields
    attempt_count: int = 0  # How many times we've tried
    is_fulfilled: bool = False  # Whether gap has been successfully filled
    
    # Results storage
    discovered_data: Optional[Dict[str, Any]] = None  # Actual data found when filling this gap
    discovered_summary: Optional[str] = None  # Human-readable summary of what was found
    
    # Failure tracking
    failure_reason: Optional[str] = None  # Why it failed if not fulfilled
    
    def mark_fulfilled(self, data: Dict[str, Any], summary: str):
        """Mark gap as fulfilled with the discovered data"""
        self.is_fulfilled = True
        self.discovered_data = data
        self.discovered_summary = summary
    
    def mark_failed(self, reason: str):
        """Mark gap as failed with reason"""
        self.attempt_count += 1
        self.failure_reason = reason


class PlannedQuery(BaseModel):
    """A query planned by the planner node"""
    query_text: str
    reasoning: str
    expected_facts: List[str]
    priority: int = 1


class AdaptiveQueryState(BaseModel):
    """
    LangGraph state for adaptive query processing.
    This state flows through all nodes in the graph.
    """
    
    # Core query information
    original_query: str
    query_intent: Optional[str] = None
    
    # Current processing
    current_query: Optional[PlannedQuery] = None
    current_result: Optional[Dict[str, Any]] = None
    
    # Discovered facts
    discovered_facts: Dict[str, Any] = Field(default_factory=dict)
    entity_mentions: Dict[str, List[str]] = Field(default_factory=dict)
    
    # Query history
    completed_queries: List[QueryInfo] = Field(default_factory=list)
    failed_queries: List[QueryInfo] = Field(default_factory=list)
    
    # Information gaps and planning
    identified_gaps: List[InformationGap] = Field(default_factory=list)
    next_queries: List[PlannedQuery] = Field(default_factory=list)
    current_gap_index: int = 0  # Track which gap we're working on
    
    # Control flow
    current_phase: Literal["exploring", "refining", "completing", "ready"] = "exploring"
    iteration_count: int = 0
    max_iterations: int = 15
    
    # Routing decisions
    should_continue: bool = True
    needs_replanning: bool = False
    ready_to_synthesize: bool = False
    
    # Final output
    final_answer: Optional[str] = None
    
    # Timing (for metrics only, not for termination)
    start_time: float = Field(default_factory=time.time)
    
    # Error handling
    last_error: Optional[str] = None
    consecutive_failures: int = 0
    
    def add_discovered_fact(self, key: str, value: Any) -> None:
        """Add a discovered fact to the state"""
        self.discovered_facts[key] = value
    
    def add_entity(self, entity_type: str, entity_name: str) -> None:
        """Track an entity discovered during queries"""
        if entity_type not in self.entity_mentions:
            self.entity_mentions[entity_type] = []
        if entity_name not in self.entity_mentions[entity_type]:
            self.entity_mentions[entity_type].append(entity_name)
    
    def record_query_result(self, query_info: QueryInfo) -> None:
        """Record a query execution result"""
        if query_info.success:
            self.completed_queries.append(query_info)
            self.consecutive_failures = 0
        else:
            self.failed_queries.append(query_info)
            self.consecutive_failures += 1
        self.iteration_count += 1
    
    def has_fact(self, key: str) -> bool:
        """Check if a fact has been discovered"""
        return key in self.discovered_facts
    
    def get_fact(self, key: str, default: Any = None) -> Any:
        """Get a discovered fact with optional default"""
        return self.discovered_facts.get(key, default)
    
    def get_entities_of_type(self, entity_type: str) -> List[str]:
        """Get all discovered entities of a specific type"""
        return self.entity_mentions.get(entity_type, [])
    
    def get_current_gap(self) -> Optional[InformationGap]:
        """Get the current gap to work on based on index"""
        while self.current_gap_index < len(self.identified_gaps):
            gap = self.identified_gaps[self.current_gap_index]
            if not gap.is_fulfilled and gap.attempt_count < 2:
                return gap
            self.current_gap_index += 1
        return None
    
    def get_fulfilled_gaps_context(self) -> str:
        """Get context from all previously fulfilled gaps"""
        context_parts = []
        for i, gap in enumerate(self.identified_gaps[:self.current_gap_index]):
            if gap.is_fulfilled and gap.discovered_summary:
                context_parts.append(f"Gap {i} ({gap.gap_type}): {gap.discovered_summary}")
        return "\n".join(context_parts) if context_parts else "No previous gaps fulfilled yet"
    
    def mark_gap_fulfilled(self, gap_index: int, data: Dict[str, Any], summary: str):
        """Mark a specific gap as fulfilled with its discovered data"""
        if gap_index < len(self.identified_gaps):
            self.identified_gaps[gap_index].mark_fulfilled(data, summary)
    
    def get_all_discovered_gap_data(self) -> Dict[str, Any]:
        """Aggregate all discovered data from fulfilled gaps"""
        all_data = {}
        for i, gap in enumerate(self.identified_gaps):
            if gap.is_fulfilled and gap.discovered_data:
                # Store with gap type as key
                all_data[f"gap_{i}_{gap.gap_type}"] = gap.discovered_data
        return all_data
    
    def has_unfulfilled_prerequisite_gaps(self) -> List[InformationGap]:
        """Check if any gaps before current index are unfulfilled"""
        unfulfilled = []
        for i in range(min(self.current_gap_index, len(self.identified_gaps))):
            gap = self.identified_gaps[i]
            if not gap.is_fulfilled and gap.attempt_count >= 2:
                unfulfilled.append(gap)
        return unfulfilled
    
    def update_phase(self, new_phase: str) -> None:
        """Update the current phase based on LLM evaluation"""
        self.current_phase = new_phase
    
    def check_termination_conditions(self) -> bool:
        """Check termination conditions"""
        # Stop conditions
        if self.iteration_count >= self.max_iterations:
            return True
        if self.ready_to_synthesize:
            return True
        
        return False
    
    def get_summary(self) -> Dict[str, Any]:
        """Get a summary of the current state"""
        return {
            "phase": self.current_phase,
            "iterations": self.iteration_count,
            "facts_discovered": len(self.discovered_facts),
            "entities_found": sum(len(entities) for entities in self.entity_mentions.values()),
            "queries_executed": len(self.completed_queries),
            "queries_failed": len(self.failed_queries),
            "gaps_remaining": len(self.identified_gaps),
            "time_elapsed": time.time() - self.start_time
        }