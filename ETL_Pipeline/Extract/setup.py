#!/usr/bin/env python3
"""
Setup script for PDF Chunk Retrieval System

This script helps users set up the environment and dependencies
for the PDF chunk retrieval system.
"""

import os
import sys
import subprocess
import shutil
from pathlib import Path


def check_python_version():
    """Check if Python version is compatible."""
    print("🐍 Checking Python version...")
    
    version = sys.version_info
    if version.major < 3 or (version.major == 3 and version.minor < 8):
        print(f"❌ Python {version.major}.{version.minor} detected")
        print("   This system requires Python 3.8 or higher")
        return False
    
    print(f"✅ Python {version.major}.{version.minor}.{version.micro} detected")
    return True


def check_pip():
    """Check if pip is available."""
    print("\n📦 Checking pip availability...")
    
    try:
        subprocess.run([sys.executable, "-m", "pip", "--version"], 
                      check=True, capture_output=True)
        print("✅ pip is available")
        return True
    except subprocess.CalledProcessError:
        print("❌ pip is not available")
        print("   Please install pip first")
        return False


def install_dependencies():
    """Install required dependencies."""
    print("\n📥 Installing dependencies...")
    
    try:
        # Upgrade pip first
        print("   Upgrading pip...")
        subprocess.run([sys.executable, "-m", "pip", "install", "--upgrade", "pip"], 
                      check=True, capture_output=True)
        
        # Install requirements
        print("   Installing required packages...")
        subprocess.run([sys.executable, "-m", "pip", "install", "-r", "requirements.txt"], 
                      check=True)
        
        print("✅ Dependencies installed successfully")
        return True
        
    except subprocess.CalledProcessError as e:
        print(f"❌ Failed to install dependencies: {e}")
        return False


def setup_environment():
    """Set up environment configuration."""
    print("\n🔧 Setting up environment...")
    
    # Check if .env file exists
    env_file = ".env"
    env_example = ".env.example"
    
    if os.path.exists(env_file):
        print(f"✅ {env_file} already exists")
        return True
    
    if os.path.exists(env_example):
        try:
            shutil.copy(env_example, env_file)
            print(f"✅ Created {env_file} from {env_example}")
            print(f"⚠️  Please edit {env_file} and set your GOOGLE_API_KEY")
            return True
        except Exception as e:
            print(f"❌ Failed to create {env_file}: {e}")
            return False
    
    # Create basic .env file
    try:
        with open(env_file, 'w') as f:
            f.write("# PDF Chunk Retrieval System Environment\n")
            f.write("GOOGLE_API_KEY=your-google-ai-api-key-here\n")
        
        print(f"✅ Created basic {env_file}")
        print(f"⚠️  Please edit {env_file} and set your GOOGLE_API_KEY")
        return True
        
    except Exception as e:
        print(f"❌ Failed to create {env_file}: {e}")
        return False


def create_directories():
    """Create necessary directories."""
    print("\n📁 Creating directories...")
    
    directories = ["output", "batch_output"]
    
    for directory in directories:
        try:
            os.makedirs(directory, exist_ok=True)
            print(f"✅ Directory created/verified: {directory}")
        except Exception as e:
            print(f"❌ Failed to create directory {directory}: {e}")
            return False
    
    return True


def test_installation():
    """Test the installation."""
    print("\n🧪 Testing installation...")
    
    try:
        # Run the test script
        result = subprocess.run([sys.executable, "test_setup.py"], 
                              capture_output=True, text=True)
        
        if result.returncode == 0:
            print("✅ Installation test passed")
            return True
        else:
            print("❌ Installation test failed")
            print("Test output:")
            print(result.stdout)
            if result.stderr:
                print("Errors:")
                print(result.stderr)
            return False
            
    except Exception as e:
        print(f"❌ Failed to run installation test: {e}")
        return False


def print_next_steps():
    """Print next steps for the user."""
    print("\n🚀 Next Steps:")
    print("1. Get your Google AI API key from: https://aistudio.google.com/app/apikey")
    print("2. Edit the .env file and set your GOOGLE_API_KEY")
    print("3. Test the setup: python test_setup.py")
    print("4. Run chunk retrieval: python chunk_retriever.py")
    print("5. For batch processing: python batch_process.py")
    print("\n📖 See README.md for detailed instructions")


def main():
    """Main setup function."""
    print("🔧 PDF Chunk Retrieval System Setup")
    print("=" * 45)
    
    success = True
    
    # Check Python version
    if not check_python_version():
        success = False
    
    # Check pip
    if success and not check_pip():
        success = False
    
    # Install dependencies
    if success and not install_dependencies():
        success = False
    
    # Setup environment
    if success and not setup_environment():
        success = False
    
    # Create directories
    if success and not create_directories():
        success = False
    
    # Test installation (optional, might fail if API key not set)
    if success:
        print("\n📝 Note: Installation test may fail if GOOGLE_API_KEY is not set")
        test_installation()
    
    # Print results
    print("\n" + "=" * 45)
    if success:
        print("✅ Setup completed successfully!")
        print_next_steps()
    else:
        print("❌ Setup failed. Please resolve the issues above.")
    
    print("=" * 45)
    
    return 0 if success else 1


if __name__ == "__main__":
    sys.exit(main())
