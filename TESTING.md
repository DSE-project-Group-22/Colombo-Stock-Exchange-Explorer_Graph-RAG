# Testing Guide

## Quick Start

### Setup Test Environment
```bash
# Navigate to tests directory
cd tests

# Create virtual environment
python3 -m venv venv

# Activate virtual environment
source venv/bin/activate  # On macOS/Linux
# OR
venv\Scripts\activate  # On Windows

# Install test dependencies
pip install -r requirements-minimal.txt
```

### Run All Tests
```bash
# From project root with test venv activated
python -m pytest tests/ -v
```

### Run Specific Test File
```bash
python -m pytest tests/test_api_gateway.py -v
```

## Test Structure

```
tests/
├── conftest.py           # Shared fixtures (mocks for Kafka, Redis, Neo4j)
├── test_api_gateway.py   # API Gateway unit tests
├── test_nl_agent.py      # NL Agent unit tests
└── test_integration.py   # Integration test for message flow
```

## What Each Test Does

### API Gateway Tests (`test_api_gateway.py`)
1. **JWT Token Creation** - Verifies authentication tokens are created correctly
2. **Password Hashing** - Tests password encryption and verification
3. **Chat Request Validation** - Ensures messages are properly sent to Kafka

### NL Agent Tests (`test_nl_agent.py`)
1. **LLM Singleton** - Verifies only one LLM instance exists (saves API calls)
2. **Message Processor Init** - Tests service initialization
3. **Chat Storage** - Verifies messages are stored in Redis correctly

### Integration Test (`test_integration.py`)
1. **Kafka→Redis Flow** - Tests complete message journey through the system

## CI/CD Pipeline

Tests automatically run on:
- Push to `main` branch  
- Pull requests to `main` branch

GitHub Actions workflow: `.github/workflows/tests.yml`

The CI/CD pipeline:
1. Sets up Python 3.11
2. Installs minimal test dependencies
3. Runs all tests
4. Reports results

No external services needed - all tests use mocks!

## Adding New Tests

### Simple Unit Test Template
```python
class TestNewFeature:
    def test_something(self):
        # Arrange
        data = {"key": "value"}
        
        # Act
        result = function_to_test(data)
        
        # Assert
        assert result == expected_value
```

### Async Test Template
```python
@pytest.mark.asyncio
async def test_async_feature(mock_redis_client):
    # Use mock from conftest.py
    result = await async_function(mock_redis_client)
    assert result is not None
```

## Test Dependencies

The tests use minimal dependencies:
- `pytest` - Test framework
- `pytest-asyncio` - Async test support
- `pytest-mock` - Mocking utilities
- `faker` - Test data generation
- `redis` - Redis client (for mocking)
- `httpx` - HTTP client (for mocking)

All actual service code is mocked - no need to install full service dependencies!

## Test Coverage

To see what code is covered by tests:
```bash
pytest tests/ --cov=. --cov-report=html
open htmlcov/index.html  # View in browser
```

## Common Issues & Solutions

1. **Import Errors**: Tests use mocks instead of real imports - no service dependencies needed
2. **Venv Not Found**: Create it with `python3 -m venv tests/venv`
3. **Tests Not Found**: Run from project root: `python -m pytest tests/`
4. **Async Warnings**: Normal - tests handle async properly

## Tips

- Tests use mocks - no real services needed
- Each test is independent - can run in any order
- GitHub Actions runs tests on every PR - check before merging
- Keep tests simple and focused on one thing