# CSE Explorer API Gateway

FastAPI-based API Gateway for the Colombo Stock Exchange Explorer with Graph RAG architecture.

## Features

- **JWT Authentication**: Secure authentication with configurable development mode
- **PostgreSQL Integration**: User management and authentication data
- **Microservice Architecture**: Gateway pattern for service coordination
- **Development Mode**: Easy auth bypass for development
- **Health Monitoring**: Built-in health checks and monitoring endpoints

## Environment Setup

### Local Development

1. **Create Virtual Environment**:
   ```bash
   python3 -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

2. **Install Dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

3. **Configure Environment**:
   ```bash
   cp .env.example .env
   # Edit .env with your configuration
   ```

4. **Run Locally**:
   ```bash
   python main.py
   ```

### Docker Development

1. **Using the activation script**:
   ```bash
   ./activate_env.sh
   ```

2. **Build and run with Docker Compose**:
   ```bash
   docker-compose up --build api-gateway postgres
   ```

## Configuration

### Development Mode

Set `DEVELOPMENT_MODE=true` in your `.env` file to bypass authentication during development. This allows you to test endpoints without setting up users or tokens.

### Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `DATABASE_URL` | PostgreSQL connection string | Required |
| `JWT_SECRET_KEY` | Secret key for JWT tokens | Required |
| `DEVELOPMENT_MODE` | Bypass auth for development | `false` |
| `JWT_ACCESS_TOKEN_EXPIRE_MINUTES` | Access token expiry | `30` |
| `API_PORT` | Server port | `8080` |

## API Endpoints

### Authentication
- `POST /auth/register` - Register new user
- `POST /auth/login` - Login and get tokens
- `POST /auth/refresh` - Refresh access token
- `GET /auth/me` - Get current user info
- `GET /auth/validate` - Validate current token

### API
- `GET /api/query` - Dummy protected endpoint
- `GET /api/health` - Health check endpoint
- `GET /` - API information

### Documentation
- `GET /docs` - Interactive API documentation (Swagger UI)
- `GET /redoc` - Alternative API documentation

## Database Migration

Initialize the database:

```bash
# Activate virtual environment first
source venv/bin/activate

# Initialize Alembic (first time only)
alembic revision --autogenerate -m "Initial migration"

# Apply migrations
alembic upgrade head
```

## Testing the API

### Development Mode (Authentication Bypassed)
```bash
# Set DEVELOPMENT_MODE=true in .env
curl http://localhost:8080/api/query
```

### Production Mode (Authentication Required)
```bash
# Register a user
curl -X POST "http://localhost:8080/auth/register" \
  -H "Content-Type: application/json" \
  -d '{"username": "testuser", "email": "test@example.com", "password": "testpass123"}'

# Login to get tokens
curl -X POST "http://localhost:8080/auth/login" \
  -H "Content-Type: application/json" \
  -d '{"username": "testuser", "password": "testpass123"}'

# Use the access token to access protected endpoints
curl -H "Authorization: Bearer YOUR_ACCESS_TOKEN" \
  http://localhost:8080/api/query
```

## Architecture

The API Gateway serves as the single entry point for all client requests and routes them to appropriate microservices:

- **Authentication Service**: Handles user registration, login, and JWT token management
- **Natural Language Agent**: Processes natural language queries
- **RAG Service**: Retrieval-Augmented Generation for context-aware responses
- **Data Pipeline**: Handles data ingestion and processing
- **Graph Database**: Neo4j for storing and querying graph data

## Security

- Passwords are hashed using bcrypt
- JWT tokens with configurable expiration
- CORS middleware configured (update for production)
- Non-root user in Docker container
- Input validation with Pydantic models

## Monitoring

Health check endpoint at `/api/health` provides:
- Service status
- Database connectivity
- Connected service URLs
- Development mode indicator