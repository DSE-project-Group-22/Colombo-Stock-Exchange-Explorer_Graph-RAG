# CLAUDE.md - API Gateway Development Guide

This file contains essential information for Claude to assist with API Gateway development and maintenance.

## Project Overview

**Technology Stack:** FastAPI + PostgreSQL + JWT Authentication
**Architecture:** Microservice API Gateway pattern
**Language:** Python 3.11
**Database:** PostgreSQL for authentication, Neo4j for graph data (via other services)

## Project Structure

```
API Gateway/
├── app/
│   ├── __init__.py
│   ├── config.py              # Settings and environment configuration
│   ├── auth/
│   │   ├── __init__.py
│   │   ├── security.py        # JWT and password utilities
│   │   └── dependencies.py    # Auth dependencies and middleware
│   ├── database/
│   │   ├── __init__.py
│   │   └── connection.py      # SQLAlchemy setup and DB session
│   ├── models/
│   │   ├── __init__.py
│   │   └── user.py           # SQLAlchemy User model
│   ├── schemas/
│   │   ├── __init__.py
│   │   ├── auth.py           # Pydantic schemas for auth
│   │   └── api.py            # Pydantic schemas for API responses
│   ├── crud/
│   │   ├── __init__.py
│   │   └── user.py           # Database operations for users
│   └── routers/
│       ├── __init__.py
│       ├── auth.py           # Authentication endpoints
│       └── api.py            # API endpoints (query, health)
├── alembic/                  # Database migrations
├── venv/                     # Python virtual environment
├── main.py                   # FastAPI application entry point
├── requirements.txt          # Python dependencies
├── .env                      # Environment variables (not in git)
├── .env.example             # Environment template
├── Dockerfile               # Container configuration
└── README.md                # User documentation
```

## Key Commands

### Development Environment
```bash
# Activate virtual environment
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Run development server
python main.py

# Run with auto-reload
uvicorn main:app --reload --host 0.0.0.0 --port 8080
```

### Database Operations
```bash
# Create new migration
alembic revision --autogenerate -m "Description of changes"

# Apply migrations
alembic upgrade head

# Rollback migration
alembic downgrade -1

# Check current migration status
alembic current
```

### Docker Operations
```bash
# Build API Gateway only
docker-compose build api-gateway

# Run API Gateway with PostgreSQL
docker-compose up api-gateway postgres

# View logs
docker-compose logs api-gateway

# Rebuild and restart
docker-compose up --build api-gateway
```

### Testing Commands
```bash
# Test health endpoint
curl http://localhost:8080/api/health

# Test in development mode (auth bypassed)
curl http://localhost:8080/api/query

# Register user (production mode)
curl -X POST "http://localhost:8080/auth/register" \
  -H "Content-Type: application/json" \
  -d '{"username": "testuser", "email": "test@example.com", "password": "testpass123"}'

# Login (production mode)
curl -X POST "http://localhost:8080/auth/login" \
  -H "Content-Type: application/json" \
  -d '{"username": "testuser", "password": "testpass123"}'
```

## Important Configuration

### Environment Variables (.env)
- `DEVELOPMENT_MODE=true` - Bypasses authentication for easy development
- `DATABASE_URL` - PostgreSQL connection string
- `JWT_SECRET_KEY` - Secret for JWT token signing
- Service URLs for other microservices (NL_AGENT_URL, RAG_SERVICE_URL, etc.)

### Development vs Production
- **Development**: Set `DEVELOPMENT_MODE=true` to bypass all authentication
- **Production**: Set `DEVELOPMENT_MODE=false` for full JWT authentication

## Common Development Tasks

### Adding New API Endpoints
1. Create endpoint in `app/routers/api.py`
2. Add schema in `app/schemas/api.py` if needed
3. Use `get_current_active_user` dependency for protected endpoints

### Adding New Authentication Features
1. Modify `app/models/user.py` for database changes
2. Create migration with `alembic revision --autogenerate`
3. Update `app/crud/user.py` for new database operations
4. Add endpoints in `app/routers/auth.py`

### Database Schema Changes
1. Modify models in `app/models/`
2. Generate migration: `alembic revision --autogenerate -m "description"`
3. Review generated migration in `alembic/versions/`
4. Apply migration: `alembic upgrade head`

### Adding New Microservice Integration
1. Add service URL to `app/config.py` settings
2. Add environment variable to docker-compose.yml
3. Create client functions in new module under `app/clients/`
4. Add endpoints in appropriate router

## Security Considerations

- JWT tokens stored in Authorization header: `Bearer <token>`
- Passwords hashed with bcrypt before database storage
- Development mode should NEVER be enabled in production
- Database connection uses connection pooling
- Non-root user in Docker container

## Troubleshooting

### Common Issues
1. **Database connection errors**: Check PostgreSQL is running and DATABASE_URL is correct
2. **JWT token errors**: Verify JWT_SECRET_KEY is set and consistent
3. **Import errors**: Ensure virtual environment is activated
4. **Docker build fails**: Check Dockerfile and requirements.txt

### Debugging
- Enable debug mode: Set `API_RELOAD=true` in environment
- Check logs: `docker-compose logs api-gateway`
- Database issues: Connect directly to PostgreSQL container
- API documentation: Visit `http://localhost:8080/docs`

## Integration Points

### Other Services
- **Natural Language Agent** (port 8001): Processes NL queries
- **RAG Service** (port 8002): Retrieval-augmented generation
- **Data Pipeline** (port 8000): Data ingestion and processing
- **Graph Database** (Neo4j ports 7474, 7687): Graph data storage
- **Frontend** (port 3000): React application

### Service Communication
- All services communicate via HTTP REST APIs
- API Gateway acts as single entry point for external clients
- Internal service URLs configured via environment variables
- Health checks available for monitoring service status

## File Patterns

### Adding New Routes
```python
# In app/routers/new_router.py
from fastapi import APIRouter, Depends
from app.auth.dependencies import get_current_active_user

router = APIRouter(prefix="/new", tags=["new"])

@router.get("/endpoint")
def new_endpoint(current_user = Depends(get_current_active_user)):
    return {"message": "Protected endpoint"}
```

### Adding New Models
```python
# In app/models/new_model.py
from sqlalchemy import Column, Integer, String
from app.database.connection import Base

class NewModel(Base):
    __tablename__ = "new_table"
    id = Column(Integer, primary_key=True, index=True)
    name = Column(String(100), nullable=False)
```

### Adding New Schemas
```python
# In app/schemas/new_schema.py
from pydantic import BaseModel

class NewSchema(BaseModel):
    name: str
    
    class Config:
        from_attributes = True
```

This file should be updated as the project evolves and new patterns emerge.