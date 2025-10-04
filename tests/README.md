# Test Suite for Colombo Stock Exchange Explorer

This directory contains comprehensive test suites for the microservices-based Colombo Stock Exchange Explorer application.

## Quick Start

```bash
# Navigate to tests directory
cd tests

# Create Python 3.11 virtual environment
python3.11 -m venv venv
# OR if using pyenv:
~/.pyenv/versions/3.11.9/bin/python3 -m venv venv

# Activate virtual environment
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Run all tests
python -m pytest -v

# Run with coverage
python -m pytest --cov=. --cov-report=term-missing

# Run specific test categories
python -m pytest test_api_gateway* -v  # API Gateway tests only
python -m pytest test_nl_agent* -v     # NL Agent tests only
python -m pytest test_integration* -v  # Integration tests only
```

## Test Categories

### 1. Mock Tests (`test_*_mock.py`)
- **Purpose**: Test business logic patterns without external dependencies
- **Dependencies**: Minimal (pytest, faker, mocks)
- **Speed**: Fast execution
- **Coverage**: Core functionality validation

### 2. Real Tests (`test_*_real.py`)
- **Purpose**: Test actual code imports and integration
- **Dependencies**: Full application dependencies
- **Speed**: Moderate execution
- **Coverage**: Real implementation verification

### 3. Integration Tests (`test_integration.py`)
- **Purpose**: Test inter-service communication patterns
- **Dependencies**: Kafka, Redis mocking
- **Speed**: Moderate execution
- **Coverage**: Message flow validation

## Test Files Overview

| File | Purpose | Tests | Coverage |
|------|---------|-------|----------|
| `test_api_gateway.py` | Mock API Gateway tests | 3 | JWT patterns, password hashing, request validation |
| `test_api_gateway_real.py` | Real API Gateway tests | 5 | Actual JWT creation, bcrypt hashing, Pydantic schemas, SQLAlchemy models, chat handler |
| `test_nl_agent.py` | Mock NL Agent tests | 3 | Singleton patterns, initialization, message storage |
| `test_integration.py` | Integration tests | 1 | Kafka-Redis message flow |

## Test Environment

### Configuration
- **Python Version**: 3.11.9 (required for dependency compatibility)
- **Test Framework**: pytest with asyncio support
- **Environment**: Test-specific `.env.test` file
- **Warnings**: Suppressed via `pytest.ini` configuration

### Dependencies
- **Core Testing**: pytest, pytest-asyncio, pytest-cov, faker
- **API Gateway**: FastAPI, SQLAlchemy, bcrypt, python-jose, pydantic
- **Messaging**: kafka-python, redis, aiokafka
- **Optional**: OpenAI, Neo4j, LangChain (for advanced tests)

## Test Results Summary

✅ **12 tests passing** (100% success rate)

### API Gateway Tests (8 tests)
- ✅ JWT token creation and verification
- ✅ Password hashing with bcrypt
- ✅ Pydantic schema validation
- ✅ SQLAlchemy model testing
- ✅ Chat handler async operations
- ✅ Request validation patterns

### Natural Language Agent Tests (3 tests)
- ✅ Singleton pattern implementation
- ✅ Message processor initialization
- ✅ Chat message storage patterns

### Integration Tests (1 test)
- ✅ Kafka to Redis message flow

## Development Workflow

### Adding New Tests

1. **Create test file** following naming convention:
   ```
   test_[component]_[type].py
   ```

2. **Import test dependencies**:
   ```python
   import pytest
   from unittest.mock import Mock, patch, AsyncMock
   from faker import Faker
   ```

3. **Follow test patterns**:
   ```python
   class TestComponentName:
       def test_feature_name(self):
           # Arrange
           # Act  
           # Assert
   ```

4. **Use appropriate mocking**:
   ```python
   # For external services
   with patch('external.service') as mock_service:
       # Test code
   
   # For async operations
   @pytest.mark.asyncio
   async def test_async_feature(self):
       # Async test code
   ```

### Test Categorization
- **Unit Tests**: Test individual functions/classes
- **Integration Tests**: Test component interactions  
- **Mock Tests**: Test logic without dependencies
- **Real Tests**: Test with actual code imports

### Best Practices
1. **Use faker** for generating test data
2. **Mock external dependencies** (databases, APIs, services)
3. **Test both success and failure scenarios**
4. **Keep tests focused and independent**
5. **Use descriptive test names**
6. **Include error handling tests**

## CI/CD Integration

The test suite is integrated with GitHub Actions:

```yaml
# .github/workflows/tests.yml
- name: Install test dependencies
  run: pip install -r tests/requirements.txt

- name: Run tests
  run: python -m pytest tests/ -v --tb=short
```

### GitHub Actions Features
- **Python 3.11** environment
- **Dependency caching** for faster runs
- **Test output reporting**
- **Automated execution** on push/PR to main branch

## Troubleshooting

### Common Issues

1. **Python Version Compatibility**
   ```bash
   # Use Python 3.11 specifically
   python3.11 -m venv venv
   ```

2. **Import Errors**
   ```bash
   # Ensure paths are added in test files
   sys.path.insert(0, os.path.join(os.path.dirname(__file__), '..', 'API Gateway'))
   ```

3. **Dependency Issues**
   ```bash
   # Recreate virtual environment
   rm -rf venv
   python3.11 -m venv venv
   source venv/bin/activate
   pip install -r requirements.txt
   ```

4. **Async Test Issues**
   ```python
   # Use proper async decorators
   @pytest.mark.asyncio
   async def test_async_function():
       result = await async_function()
   ```

### Performance Tips
- Use `pytest -x` to stop on first failure
- Use `pytest -k pattern` to run specific tests
- Use `pytest --tb=short` for concise output
- Use `pytest -v` for verbose output

## Test Coverage Areas

### Implemented ✅
- Authentication & Security (JWT, password hashing)
- Data Models (Pydantic, SQLAlchemy)
- Message Processing (Kafka, Redis)
- Async Operations
- Error Handling
- Schema Validation

### Future Enhancements 🔄
- Neo4j integration tests
- OpenAI API mocking
- End-to-end API testing
- Performance benchmarking
- Load testing scenarios

## Contributing

When adding new tests:
1. Follow existing patterns and conventions
2. Add appropriate documentation
3. Test both happy path and error cases
4. Update this README if adding new test categories
5. Ensure all tests pass before committing

## Support

For test-related issues:
- Check the test output for specific error messages
- Verify Python version and dependencies
- Review the troubleshooting section above
- Ensure environment variables are properly set