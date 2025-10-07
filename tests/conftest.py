"""
Shared fixtures for all tests.
"""
import pytest
from unittest.mock import AsyncMock, MagicMock, Mock
import sys
import os

# Add project directories to path
sys.path.insert(0, os.path.join(os.path.dirname(__file__), '..', 'API Gateway'))
sys.path.insert(0, os.path.join(os.path.dirname(__file__), '..', 'Natural Language Agent'))
sys.path.insert(0, os.path.join(os.path.dirname(__file__), '..', 'utils'))


@pytest.fixture
def mock_kafka_producer():
    """Mock Kafka producer for testing."""
    mock = AsyncMock()
    mock.start = AsyncMock()
    mock.stop = AsyncMock()
    mock.send_message = AsyncMock(return_value="test-correlation-id")
    return mock


@pytest.fixture
def mock_redis_client():
    """Mock Redis client for testing."""
    mock = AsyncMock()
    mock.connect = AsyncMock()
    mock.disconnect = AsyncMock()
    mock.publish = AsyncMock()
    mock.subscribe = AsyncMock()
    mock.get = AsyncMock(return_value=None)
    mock.set = AsyncMock()
    mock.hset = AsyncMock()
    mock.hget = AsyncMock()
    mock.lpush = AsyncMock()
    mock.lrange = AsyncMock(return_value=[])
    return mock


@pytest.fixture
def mock_neo4j_driver():
    """Mock Neo4j driver for testing."""
    mock = MagicMock()
    mock.verify_connectivity = MagicMock()
    mock.close = MagicMock()
    return mock


@pytest.fixture
def sample_user():
    """Sample user data for testing."""
    return {
        "id": 1,
        "username": "testuser",
        "email": "test@example.com",
        "is_active": True
    }


@pytest.fixture
def sample_chat_message():
    """Sample chat message for testing."""
    return {
        "correlation_id": "test-correlation-123",
        "thread_id": "thread-456",
        "user_id": "user-789",
        "message": "What companies have the highest revenue?",
        "timestamp": "2024-01-01T10:00:00Z"
    }