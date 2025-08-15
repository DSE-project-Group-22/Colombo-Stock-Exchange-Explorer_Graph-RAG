#!/usr/bin/env python3
"""
Test script for Annual Report Finder
Tests basic functionality without running the full scraping process
"""

import sys
import os
import requests
from bs4 import BeautifulSoup

def test_dependencies():
    """Test if all required dependencies are available"""
    print("🧪 Testing dependencies...")
    
    try:
        import requests
        print("   ✅ requests")
    except ImportError:
        print("   ❌ requests - run: pip install requests")
        return False
    
    try:
        import bs4
        print("   ✅ beautifulsoup4")
    except ImportError:
        print("   ❌ beautifulsoup4 - run: pip install beautifulsoup4")
        return False
    
    try:
        import selenium
        print("   ✅ selenium")
    except ImportError:
        print("   ❌ selenium - run: pip install selenium")
        return False
    
    return True

def test_network():
    """Test network connectivity"""
    print("\n🌐 Testing network connectivity...")
    
    test_urls = [
        "https://duckduckgo.com",
        "https://bing.com",
        "https://yandex.com"
    ]
    
    for url in test_urls:
        try:
            response = requests.get(url, timeout=10)
            if response.status_code == 200:
                print(f"   ✅ {url}")
            else:
                print(f"   ⚠️  {url} - Status: {response.status_code}")
        except Exception as e:
            print(f"   ❌ {url} - Error: {e}")

def test_chrome_setup():
    """Test Chrome/Chromium setup"""
    print("\n🌐 Testing Chrome/Chromium setup...")
    
    try:
        from selenium import webdriver
        from selenium.webdriver.chrome.options import Options
        
        options = Options()
        options.add_argument("--headless")
        options.add_argument("--no-sandbox")
        options.add_argument("--disable-dev-shm-usage")
        
        # Try different Chrome binary locations
        chrome_binaries = [
            "/usr/bin/chromium",           # Docker/Linux
            "/usr/bin/google-chrome",      # Linux
            "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome",  # macOS
            "C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe"     # Windows
        ]
        
        for binary in chrome_binaries:
            if os.path.exists(binary):
                print(f"   ✅ Found Chrome at: {binary}")
                options.binary_location = binary
                break
        else:
            print("   ⚠️  Chrome binary not found in common locations")
        
        # Try to create driver
        try:
            driver = webdriver.Chrome(options=options)
            driver.quit()
            print("   ✅ Chrome WebDriver works!")
            return True
        except Exception as e:
            print(f"   ❌ Chrome WebDriver failed: {e}")
            return False
            
    except Exception as e:
        print(f"   ❌ Chrome setup failed: {e}")
        return False

def test_reports_folder():
    """Test reports folder creation"""
    print("\n📁 Testing reports folder...")
    
    reports_dir = "reports"
    try:
        if not os.path.exists(reports_dir):
            os.makedirs(reports_dir)
            print(f"   ✅ Created {reports_dir} folder")
        else:
            print(f"   ✅ {reports_dir} folder exists")
        
        # Test write permissions
        test_file = os.path.join(reports_dir, "test.txt")
        with open(test_file, 'w') as f:
            f.write("test")
        os.remove(test_file)
        print("   ✅ Write permissions OK")
        return True
        
    except Exception as e:
        print(f"   ❌ Reports folder test failed: {e}")
        return False

def main():
    """Run all tests"""
    print("🧪 Annual Report Finder - System Test")
    print("=" * 50)
    
    tests = [
        ("Dependencies", test_dependencies),
        ("Network", test_network),
        ("Chrome Setup", test_chrome_setup),
        ("Reports Folder", test_reports_folder)
    ]
    
    results = []
    for test_name, test_func in tests:
        try:
            result = test_func()
            results.append((test_name, result))
        except Exception as e:
            print(f"\n❌ {test_name} test crashed: {e}")
            results.append((test_name, False))
    
    print("\n" + "=" * 50)
    print("🎯 Test Summary:")
    
    all_passed = True
    for test_name, passed in results:
        status = "✅ PASS" if passed else "❌ FAIL"
        print(f"   {status} - {test_name}")
        if not passed:
            all_passed = False
    
    if all_passed:
        print("\n🎉 All tests passed! Ready to run annual_report_finder.py")
        return 0
    else:
        print("\n⚠️  Some tests failed. Check the issues above before running.")
        return 1

if __name__ == "__main__":
    sys.exit(main())
