# Load Testing Guide for CSE Explorer API

This guide will help you run your first load test and understand the results.

## Prerequisites

1. Install dependencies:
```bash
cd tests
pip install -r requirements.txt
```

2. Make sure your API is running:
```bash
# Either with Docker
docker compose up api-gateway postgres redis kafka zookeeper

# Or locally
cd "API Gateway"
python main.py
```

## Running Your First Load Test

### Quick Start (Web UI)

1. Start Locust with the web interface:
```bash
cd tests
# For testing public endpoints only (no authentication)
locust -f load_testing/locustfile.py --host=http://localhost:8080 -u 10 -r 2 --class QuickUser

# For testing authenticated flow (registration, login, JWT tokens)
locust -f load_testing/locustfile.py --host=http://localhost:8080 -u 10 -r 2 --class AuthenticatedUser

# For testing both types of users (default - runs both)
locust -f load_testing/locustfile.py --host=http://localhost:8080
```

2. Open your browser at: http://localhost:8089

3. You'll see a simple form:
   - **Number of users**: Start with 10
   - **Spawn rate**: Try 2 (users per second)
   - **User class** (if not specified in command): Choose QuickUser or AuthenticatedUser
   - Click "Start swarming"

4. Watch the real-time charts showing:
   - Requests per second
   - Response times
   - Number of failures

### Command Line (No UI)

For automated testing without the web UI:
```bash
# Test with 10 QuickUser instances for 60 seconds
locust -f load_testing/locustfile.py \
  --host=http://localhost:8080 \
  --users 10 \
  --spawn-rate 2 \
  --run-time 60s \
  --headless \
  --class QuickUser

# Test with mixed users (both types)
locust -f load_testing/locustfile.py \
  --host=http://localhost:8080 \
  --users 10 \
  --spawn-rate 2 \
  --run-time 60s \
  --headless
```

## Understanding the Test Scenarios

### 1. QuickUser
- Hits public endpoints that don't require authentication
- Tests basic API availability
- Only tests `/api/health` endpoint

### 2. AuthenticatedUser
- Simulates real user behavior:
  1. Registers a new account
  2. Logs in to get JWT tokens
  3. Accesses protected endpoints with tokens
  4. Refreshes tokens when needed
- Endpoints tested:
  - `/auth/register` - User registration
  - `/auth/login` - Get access/refresh tokens
  - `/auth/me` - Get user profile (protected)
  - `/api/query` - Query endpoint (protected)
  - `/auth/refresh` - Refresh expired tokens

### 3. DatabaseStressUser (NEW - For Database Testing)
- **Purpose**: Stress test database operations and find connection limits
- **Behavior**: Aggressive database operations with minimal wait time
- **Operations** (by weight):
  - **Register new users (10)**: Continuous INSERT operations
  - **Login existing users (8)**: SELECT + bcrypt verification
  - **Check duplicate username (5)**: Tests unique constraints
  - **Check duplicate email (5)**: Tests email uniqueness
  - **Failed login attempts (3)**: CPU-intensive bcrypt checks
  - **Query user info (2)**: SELECT with potential JOINs

**Use this to find:**
- Maximum registrations per second
- Database connection pool limits
- Performance degradation point
- Deadlock or timeout issues

## Understanding the Results

### Key Metrics in Web UI

1. **RPS (Requests Per Second)**
   - Shows how many requests your API handles per second
   - Higher is better
   - Watch for drops which indicate problems

2. **Response Time**
   - **Median (50th percentile)**: Half of requests are faster than this
   - **95th percentile**: 95% of requests are faster than this
   - Lower is better
   - Aim for <500ms median, <2000ms for 95th percentile

3. **Failures**
   - Shows percentage of failed requests
   - Should be 0% under normal load
   - Failures indicate issues to investigate

### Charts Explained

- **Total Requests per Second**: Green line shows successful requests
- **Response Times**: Shows median and 95th percentile over time
- **Number of Users**: Shows how many simulated users are active

## Load Testing Scenarios

### Scenario 1: Baseline Test
Find out normal performance:
```bash
# 5 users, sustained for 5 minutes
locust -f load_testing/locustfile.py --host=http://localhost:8080 \
  --users 5 --spawn-rate 1 --run-time 5m --headless
```

### Scenario 2: Gradual Ramp-Up
Find the breaking point:
```bash
# Start with 1 user, add 1 every 10 seconds, up to 50 users
locust -f load_testing/locustfile.py --host=http://localhost:8080 \
  --users 50 --spawn-rate 0.1 --run-time 10m --headless
```

### Scenario 3: Spike Test
Test sudden traffic increase:
```bash
# Quickly spawn 25 users
locust -f load_testing/locustfile.py --host=http://localhost:8080 \
  --users 25 --spawn-rate 5 --run-time 3m --headless
```

### Scenario 4: Database Stress Test
Find database limits and connection pool issues:
```bash
# Test database with aggressive operations
locust -f load_testing/locustfile.py --host=http://localhost:8080 \
  --class DatabaseStressUser \
  --users 30 --spawn-rate 3 --run-time 5m --headless

# Monitor database connections during test (in another terminal)
docker exec -it cse-explorer-postgres psql -U cse_user -d cse_explorer_auth -c \
  "SELECT count(*), state FROM pg_stat_activity GROUP BY state;"

# Watch for slow queries
docker exec -it cse-explorer-postgres psql -U cse_user -d cse_explorer_auth -c \
  "SELECT query, state, wait_event_type, wait_event FROM pg_stat_activity WHERE state != 'idle';"
```

## Interpreting Results

### Good Performance Indicators
- ✅ 0% failure rate
- ✅ Median response time < 500ms
- ✅ 95th percentile < 2000ms
- ✅ RPS remains steady as users increase

### Warning Signs
- ⚠️ Failure rate > 1%
- ⚠️ Median response time > 1000ms
- ⚠️ 95th percentile > 5000ms
- ⚠️ RPS plateaus or drops as users increase

### Critical Issues
- ❌ Failure rate > 5%
- ❌ Response times increasing exponentially
- ❌ RPS dropping significantly
- ❌ Server returns 5xx errors

## What to Test Next

Once comfortable with basic load testing:

1. **Database Performance**: Monitor PostgreSQL during tests
   ```bash
   docker exec -it cse-explorer-postgres psql -U cse_user -d cse_explorer_auth
   \c cse_explorer_auth
   SELECT count(*) FROM users;  # Check user registrations
   ```

2. **Redis Performance**: Check Redis during tests
   ```bash
   docker exec -it cse-explorer-redis redis-cli
   > INFO stats
   > INFO memory
   ```

3. **API Gateway Logs**: Watch for errors
   ```bash
   docker logs -f cse-explorer-api-gateway
   ```

## Customizing Tests

Edit `locustfile.py` to:
- Change wait times between requests
- Add new endpoints to test
- Adjust user behavior patterns
- Create custom scenarios

Example: Test only health endpoint
```python
class HealthOnlyUser(HttpUser):
    wait_time = between(0.5, 1)
    
    @task
    def health_check(self):
        self.client.get("/api/health")
```

## Tips for Beginners

1. **Start Small**: Begin with 5-10 users
2. **Watch Patterns**: Look for trends, not individual spikes
3. **Test Consistently**: Run tests at the same time of day
4. **Monitor Resources**: Keep an eye on CPU and memory
5. **Document Results**: Save screenshots of interesting patterns

## Common Issues

### "Connection refused"
- Make sure API Gateway is running on port 8080
- Check Docker containers are up: `docker ps`

### "401 Unauthorized" errors
- This is normal for some tests when tokens expire
- The test automatically refreshes tokens

### High failure rate immediately
- Your API might need warm-up time
- Start with fewer users and ramp up slowly

## Next Steps

After running basic tests:
1. Identify your API's maximum capacity
2. Find performance bottlenecks
3. Test with production-like data volumes
4. Create automated performance tests in CI/CD