"""
Simple load testing for CSE Explorer API using Locust.
Focuses on testing authentication flow and basic endpoints without incurring API costs.
"""
from locust import HttpUser, task, between
import random
import string


class QuickUser(HttpUser):
    """
    Simulates a user who primarily hits public endpoints.
    Good for testing basic API availability and response times.
    """
    wait_time = between(1, 3)  # Wait 1-3 seconds between requests
    
    @task
    def check_health(self):
        """Hit the health endpoint (no auth required)."""
        with self.client.get("/api/health", catch_response=True) as response:
            if response.status_code == 200:
                response.success()
            else:
                response.failure(f"Health check failed with status {response.status_code}")


class AuthenticatedUser(HttpUser):
    """
    Simulates a real user who registers, logs in, and accesses protected endpoints.
    Tests the full authentication flow and JWT token usage.
    """
    wait_time = between(2, 5)  # Wait 2-5 seconds between requests
    
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.username = None
        self.email = None
        self.password = None
        self.access_token = None
        self.refresh_token = None
    
    def generate_user_data(self):
        """Generate random user data for registration."""
        random_string = ''.join(random.choices(string.ascii_lowercase + string.digits, k=8))
        self.username = f"loadtest_{random_string}"
        self.email = f"{self.username}@loadtest.com"
        self.password = f"Test@{random_string}123"
    
    def on_start(self):
        """
        Called when a user starts. Register and login to get tokens.
        This happens once per user at the beginning.
        """
        self.generate_user_data()
        
        # Register new user
        register_data = {
            "username": self.username,
            "email": self.email,
            "password": self.password
        }
        
        with self.client.post("/auth/register", 
                             json=register_data,
                             catch_response=True) as response:
            if response.status_code == 200:
                response.success()
            elif response.status_code == 400:
                # User might already exist, try to login
                response.success()
            else:
                response.failure(f"Registration failed: {response.text}")
        
        # Login to get tokens
        login_data = {
            "username": self.username,
            "password": self.password
        }
        
        with self.client.post("/auth/login", 
                             json=login_data,
                             catch_response=True) as response:
            if response.status_code == 200:
                data = response.json()
                self.access_token = data.get("access_token")
                self.refresh_token = data.get("refresh_token")
                response.success()
            else:
                response.failure(f"Login failed: {response.text}")
    
    @task(5)
    def get_user_info(self):
        """Access the /auth/me endpoint with JWT token."""
        if not self.access_token:
            return
        
        headers = {"Authorization": f"Bearer {self.access_token}"}
        with self.client.get("/auth/me", 
                            headers=headers,
                            catch_response=True) as response:
            if response.status_code == 200:
                response.success()
            elif response.status_code == 401:
                # Token might be expired, try to refresh
                self.refresh_tokens()
                response.failure("Token expired, attempting refresh")
            else:
                response.failure(f"Failed to get user info: {response.status_code}")
    
    @task(5)
    def query_api(self):
        """Access the protected /api/query endpoint."""
        if not self.access_token:
            return
        
        headers = {"Authorization": f"Bearer {self.access_token}"}
        with self.client.get("/api/query", 
                            headers=headers,
                            catch_response=True) as response:
            if response.status_code == 200:
                response.success()
            elif response.status_code == 401:
                self.refresh_tokens()
                response.failure("Token expired, attempting refresh")
            else:
                response.failure(f"Query failed: {response.status_code}")
    
    @task(2)
    def check_health(self):
        """Even authenticated users check health sometimes."""
        self.client.get("/api/health")
    
    @task(1)
    def refresh_tokens(self):
        """Refresh the access token using refresh token."""
        if not self.refresh_token:
            return
        
        refresh_data = {"refresh_token": self.refresh_token}
        
        with self.client.post("/auth/refresh", 
                             json=refresh_data,
                             catch_response=True) as response:
            if response.status_code == 200:
                data = response.json()
                self.access_token = data.get("access_token")
                self.refresh_token = data.get("refresh_token")
                response.success()
            else:
                # If refresh fails, try to login again
                self.on_start()
                response.failure(f"Token refresh failed: {response.status_code}")


class DatabaseStressUser(HttpUser):
    """
    Stress tests database operations by performing many writes and queries.
    Focuses on registration, login, and user lookups to stress the database.
    """
    wait_time = between(0.5, 1)  # Shorter wait times for more stress
    
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.user_counter = 0
        self.created_users = []  # Track users we create for re-login tests
    
    @task(10)
    def register_new_user(self):
        """
        Continuously register new users - heaviest DB operation.
        Tests INSERT operations and unique constraint checks.
        """
        self.user_counter += 1
        random_string = ''.join(random.choices(string.ascii_lowercase + string.digits, k=12))
        
        register_data = {
            "username": f"stress_test_{random_string}_{self.user_counter}",
            "email": f"stress_{random_string}_{self.user_counter}@loadtest.com",
            "password": f"StressTest@{random_string}123"
        }
        
        with self.client.post("/auth/register", 
                             json=register_data,
                             catch_response=True) as response:
            if response.status_code == 200:
                response.success()
                # Save successful registration for re-login tests
                self.created_users.append({
                    "username": register_data["username"],
                    "password": register_data["password"]
                })
                # Keep list manageable
                if len(self.created_users) > 20:
                    self.created_users.pop(0)
            elif response.status_code == 400:
                # Duplicate user - this is expected sometimes
                response.success()
            else:
                response.failure(f"Registration failed: {response.text}")
    
    @task(8)
    def login_existing_user(self):
        """
        Login with previously created users.
        Tests SELECT queries with WHERE clause and password verification.
        """
        if not self.created_users:
            # No users created yet, create one first
            self.register_new_user()
            return
        
        user = random.choice(self.created_users)
        login_data = {
            "username": user["username"],
            "password": user["password"]
        }
        
        with self.client.post("/auth/login", 
                             json=login_data,
                             catch_response=True) as response:
            if response.status_code == 200:
                response.success()
                # Use the token for authenticated requests
                data = response.json()
                self.access_token = data.get("access_token")
            else:
                response.failure(f"Login failed: {response.status_code}")
    
    @task(5)
    def check_duplicate_username(self):
        """
        Try to register with an existing username.
        Tests database unique constraint and lookup performance.
        """
        if not self.created_users:
            return
        
        existing_user = random.choice(self.created_users)
        register_data = {
            "username": existing_user["username"],  # Duplicate username
            "email": f"new_email_{random.randint(1000, 9999)}@test.com",
            "password": "NewPassword123!"
        }
        
        with self.client.post("/auth/register", 
                             json=register_data,
                             catch_response=True) as response:
            if response.status_code == 400:
                # Expected - duplicate username
                response.success()
            else:
                response.failure(f"Expected 400 for duplicate, got {response.status_code}")
    
    @task(5)
    def check_duplicate_email(self):
        """
        Try to register with an existing email.
        Tests database unique constraint on email field.
        """
        if not self.created_users:
            return
        
        # Use email from a previously created user
        random_string = ''.join(random.choices(string.ascii_lowercase, k=8))
        register_data = {
            "username": f"new_user_{random_string}",
            "email": f"stress_{random_string}_1@loadtest.com",  # Likely duplicate
            "password": "NewPassword123!"
        }
        
        with self.client.post("/auth/register", 
                             json=register_data,
                             catch_response=True) as response:
            if response.status_code == 400:
                # Expected - duplicate email
                response.success()
            elif response.status_code == 200:
                # New email, registration succeeded
                response.success()
            else:
                response.failure(f"Unexpected response: {response.status_code}")
    
    @task(3)
    def rapid_login_attempts(self):
        """
        Perform rapid login attempts with wrong passwords.
        Tests bcrypt verification under load (CPU intensive).
        """
        random_string = ''.join(random.choices(string.ascii_lowercase, k=8))
        login_data = {
            "username": f"stress_test_{random_string}",
            "password": "WrongPassword123!"
        }
        
        with self.client.post("/auth/login", 
                             json=login_data,
                             catch_response=True) as response:
            if response.status_code == 401:
                # Expected - wrong credentials
                response.success()
            else:
                response.failure(f"Expected 401, got {response.status_code}")
    
    @task(2)
    def query_user_me(self):
        """
        Query user info if we have a token.
        Tests SELECT with JOIN operations if there are related tables.
        """
        if hasattr(self, 'access_token') and self.access_token:
            headers = {"Authorization": f"Bearer {self.access_token}"}
            with self.client.get("/auth/me", 
                                headers=headers,
                                catch_response=True) as response:
                if response.status_code == 200:
                    response.success()
                elif response.status_code == 401:
                    # Token expired, need to login again
                    del self.access_token
                    response.success()
                else:
                    response.failure(f"Failed to get user info: {response.status_code}")