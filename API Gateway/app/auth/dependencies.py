from fastapi import Depends, HTTPException, status
from fastapi.security import HTTPBearer, HTTPAuthenticationCredentials
from sqlalchemy.orm import Session
from app.database.connection import get_db
from app.models.user import User
from app.auth.security import verify_token
from app.config import settings
from typing import Optional

security = HTTPBearer(auto_error=False)


def get_current_user(
    credentials: Optional[HTTPAuthenticationCredentials] = Depends(security),
    db: Session = Depends(get_db)
) -> User:
    
    # Development mode bypass
    if settings.development_mode:
        # Return a mock user for development
        mock_user = User(
            id=1,
            username="dev_user",
            email="dev@example.com",
            password_hash="mock_hash",
            is_active=True
        )
        return mock_user
    
    # Production authentication
    if not credentials:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Authentication credentials required",
            headers={"WWW-Authenticate": "Bearer"},
        )
    
    token_data = verify_token(credentials.credentials)
    if token_data is None:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Could not validate credentials",
            headers={"WWW-Authenticate": "Bearer"},
        )
    
    user = db.query(User).filter(User.id == token_data["user_id"]).first()
    if user is None:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="User not found",
            headers={"WWW-Authenticate": "Bearer"},
        )
    
    if not user.is_active:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="Inactive user"
        )
    
    return user


def get_current_active_user(current_user: User = Depends(get_current_user)) -> User:
    if not current_user.is_active:
        raise HTTPException(status_code=400, detail="Inactive user")
    return current_user