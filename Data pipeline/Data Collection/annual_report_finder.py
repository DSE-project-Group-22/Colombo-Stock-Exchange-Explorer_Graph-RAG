#
# Multi-Search Engine Annual Report Finder
# Uses DuckDuckGo, Bing, and CSE instead of Google
#

import requests
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service
import time
import os
import re
from urllib.parse import unquote, quote
import json

# --- Configuration ---
SAVE_FOLDER = "reports"
REPORT_YEAR = "2024"
FALLBACK_YEAR = "2023"
PROCESSED_COMPANIES_FILE = "processed_companies.txt"

# --- Incremental Processing Functions ---
def load_processed_companies():
    """Load list of already processed companies"""
    processed = set()
    try:
        if os.path.exists(PROCESSED_COMPANIES_FILE):
            with open(PROCESSED_COMPANIES_FILE, 'r', encoding='utf-8') as f:
                for line in f:
                    line = line.strip()
                    if line and not line.startswith('#'):
                        # Parse format: COMPANY_NAME|DATE_PROCESSED|PDF_FILENAME
                        parts = line.split('|')
                        if len(parts) >= 1:
                            processed.add(parts[0])
    except Exception as e:
        print(f"   ⚠️ Warning: Could not load processed companies file: {e}")
    return processed

def save_processed_company(company_name, pdf_filename):
    """Save company as processed"""
    try:
        from datetime import datetime
        timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
        with open(PROCESSED_COMPANIES_FILE, 'a', encoding='utf-8') as f:
            f.write(f"{company_name}|{timestamp}|{pdf_filename}\n")
    except Exception as e:
        print(f"   ⚠️ Warning: Could not save processed company: {e}")

def get_companies_to_process():
    """Get list of companies that haven't been processed yet"""
    processed = load_processed_companies()
    to_process = [company for company in company_names if company not in processed]
    return to_process, processed

# Your company list
company_names = [
    "ABANS ELECTRICALS PLC", "ABANS FINANCE PLC", "ACCESS ENGINEERING PLC", "ACL CABLES PLC", "ACL PLASTICS PLC", 
    "ACME PRINTING & PACKAGING PLC", "AGALAWATTE PLANTATIONS PLC", "AGSTAR PLC", "AITKEN SPENCE HOTEL HOLDINGS PLC", 
    "AITKEN SPENCE PLANTATION MANAGEMENTS PLC", "AITKEN SPENCE PLC", "ALLIANCE FINANCE COMPANY PLC", 
    "ALPHA FIRE SERVICES PLC", "ALUMEX PLC", "AMANA BANK PLC", "AMANA TAKAFUL PLC", "AMANA TAKAFUL LIFE PLC", 
    "AMBEON CAPITAL PLC", "AMBEON HOLDINGS PLC", "AMW CAPITAL LEASING AND FINANCE PLC", "ANILANA HOTELS AND PROPERTIES PLC", 
    "ARPICO INSURANCE PLC", "ASIA ASSET FINANCE PLC", "ASIA CAPITAL PLC", "ASIA SIYAKA COMMODITIES LIMITED", 
    "ASIAN HOTELS AND PROPERTIES PLC", "ASIRI SURGICAL HOSPITAL PLC", "ASIRI HOSPITAL HOLDINGS PLC", 
    "ASSOCIATED MOTOR FINANCE COMPANY PLC", "Agarapatana Plantations PLC", "B P P L HOLDINGS PLC", "BAIRAHA FARMS PLC", 
    "BALANGODA PLANTATIONS PLC", "BANSEI ROYAL RESORTS HIKKADUWA PLC", "BERUWALA RESORTS PLC", 
    "BIMPUTH LANKA INVESTMENTS PLC", "BLUE DIAMONDS JEWELLERY WORLDWIDE PLC", "BOGALA GRAPHITE LANKA PLC", 
    "BOGAWANTALAWA TEA ESTATES PLC", "BROWN & COMPANY PLC", "BROWNS BEACH HOTELS PLC", "BROWNS INVESTMENTS PLC", 
    "BUKIT DARAH PLC", "C M HOLDINGS PLC", "C T HOLDINGS PLC", "C T LAND DEVELOPMENT PLC", "C. W. MACKIE PLC", 
    "CABLE SOLUTIONS PLC", "CAL FIVE YEAR CLOSED END FUND", "CAL FIVE YEAR OPTIMUM FUND", "CAPITAL ALLIANCE HOLDINGS LIMITED", 
    "CAPITAL ALLIANCE PLC", "CARGILLS (CEYLON) PLC", "CARGILLS BANK PLC", "CARGO BOAT DEVELOPMENT COMPANY PLC", 
    "CARSON CUMBERBATCH PLC", "CENTRAL FINANCE COMPANY PLC", "CENTRAL INDUSTRIES PLC", "CEYLINCO HOLDINGS PLC", 
    "CEYLON BEVERAGE HOLDINGS PLC", "CEYLON COLD STORES PLC", "CEYLON GRAIN ELEVATORS PLC", 
    "CEYLON GUARDIAN INVESTMENT TRUST PLC", "CEYLON HOSPITALS PLC", "CEYLON HOTELS CORPORATION PLC", 
    "CEYLON INVESTMENT PLC", "CEYLON LAND & EQUITY PLC", "CEYLON PRINTERS PLC", "CEYLON TEA BROKERS PLC", 
    "CEYLON TOBACCO COMPANY PLC", "CHEMANEX PLC", "CHEVRON LUBRICANTS LANKA PLC", "CHRISSWORLD PLC", 
    "CIC HOLDINGS PLC", "CITIZENS DEVELOPMENT BUSINESS FINANCE PLC", "CITRUS LEISURE PLC", 
    "CITY HOUSING & REAL ESTATE CO. PLC", "Co-operative Insurance Company PLC", "COLOMBO CITY HOLDINGS PLC", 
    "COLOMBO DOCKYARD PLC", "COLOMBO FORT INVESTMENTS PLC", "COLOMBO INVESTMENT TRUST PLC", 
    "COLOMBO LAND AND DEVELOPMENT COMPANY PLC", "COMMERCIAL BANK OF CEYLON PLC", "COMMERCIAL CREDIT AND FINANCE PLC", 
    "COMMERCIAL DEVELOPMENT COMPANY PLC", "CONVENIENCE FOODS LANKA PLC", "DANKOTUWA PORCELAIN PLC", 
    "DFCC BANK PLC", "DIALOG AXIATA PLC", "DIALOG FINANCE PLC", "DIESEL & MOTOR ENGINEERING PLC", 
    "DIGITAL MOBILITY SOLUTIONS LANKA PLC", "DILMAH CEYLON TEA COMPANY PLC", "DIPPED PRODUCTS PLC", 
    "DISTILLERIES COMPANY OF SRI LANKA PLC", "DOLPHIN HOTELS PLC", "E B CREASY & COMPANY PLC", 
    "E M L CONSULTANTS PLC", "E - CHANNELLING PLC", "EAST WEST PROPERTIES PLC", "EASTERN MERCHANTS PLC", 
    "EDEN HOTEL LANKA PLC", "ELPITIYA PLANTATIONS PLC", "EQUITY TWO PLC", "Ex-pack Corrugated Cartons PLC", 
    "EXTERMINATORS PLC", "FIRST CAPITAL HOLDINGS PLC", "First Capital Treasuries PLC", "GALADARI HOTELS (LANKA) PLC", 
    "GALLE FACE CAPITAL PARTNERS PLC", "GESTETNER OF CEYLON PLC", "GREENTECH ENERGY PLC", "HAPUGASTENNE PLANTATIONS PLC", 
    "HARISCHANDRA MILLS PLC", "HATTON NATIONAL BANK PLC", "HATTON PLANTATIONS PLC", "HAYCARB PLC", "HAYLEYS FABRIC PLC", 
    "HAYLEYS FIBRE PLC", "HAYLEYS LEISURE PLC", "HAYLEYS PLC", "HELA APPAREL HOLDINGS PLC", "HEMAS HOLDINGS PLC", 
    "HIKKADUWA BEACH RESORT PLC", "HNB ASSURANCE PLC", "HNB FINANCE PLC", "HORANA PLANTATIONS PLC", "HOTEL SIGIRIYA PLC", 
    "HOUSING DEVELOPMENT FINANCE CORPORATION BANK OF SL", "hSenid Business Solutions PLC", "HUNAS HOLDINGS PLC", 
    "HUNTER & COMPANY PLC", "HVA FOODS PLC", "INDUSTRIAL ASPHALTS (CEYLON) PLC", "JANASHAKTHI FINANCE PLC", 
    "JANASHAKTHI INSURANCE PLC", "JAT HOLDINGS PLC", "JETWING SYMPHONY PLC", "JOHN KEELLS HOLDINGS PLC", 
    "JOHN KEELLS HOTELS PLC", "JOHN KEELLS PLC", "KAHAWATTE PLANTATIONS PLC", "KAPRUKA HOLDINGS PLC", 
    "KEELLS FOOD PRODUCTS PLC", "KEGALLE PLANTATIONS PLC", "KELANI CABLES PLC", "KELANI TYRES PLC", 
    "KELANI VALLEY PLANTATIONS PLC", "KELSEY DEVELOPMENTS PLC", "KOTAGALA PLANTATIONS PLC", "KOTMALE HOLDINGS PLC", 
    "LB FINANCE PLC", "LAKE HOUSE PRINTERS & PUBLISHERS PLC", "LANKA ALUMINIUM INDUSTRIES PLC", 
    "LANKA ASHOK LEYLAND PLC", "LANKA CERAMIC PLC", "LANKA CREDIT AND BUSINESS FINANCE PLC", "LANKA IOC PLC", 
    "LANKA MILK FOODS (CWE) PLC", "LANKA REALTY INVESTMENTS PLC", "LANKA TILES PLC", "LANKA VENTURES PLC", 
    "LANKA WALLTILE PLC", "LANKEM CEYLON PLC", "LANKEM DEVELOPMENTS PLC", "LAUGFS GAS PLC", "LAUGFS POWER PLC", 
    "LAXAPANA PLC", "LEE HEDGES PLC", "LION BREWERY (CEYLON) PLC", "LOLC FINANCE PLC", "LOLC GENERAL INSURANCE PLC", 
    "LOLC HOLDINGS PLC", "LOTUS HYDRO POWER PLC", "LUMINEX PLC", "LVL ENERGY FUND PLC", "MADULSIMA PLANTATIONS PLC", 
    "MAHARAJA FOODS PLC", "MAHAWELI COCONUT PLANTATIONS PLC", "MAHAWELI REACH HOTELS PLC", 
    "MALWATTE VALLEY PLANTATION PLC", "MARAWILA RESORTS PLC", "MASKELIYA PLANTATIONS PLC", "MELSTACORP PLC", 
    "MERCANTILE INVESTMENTS AND FINANCE PLC", "MERCANTILE SHIPPING COMPANY PLC", "MERCHANT BANK OF SRI LANKA & FINANCE PLC", 
    "MILLENNIUM HOUSING DEVELOPERS PLC", "MULLER & PHIPPS (CEYLON) PLC", "MYLAND DEVELOPMENTS PLC", 
    "NAMAL ACUITY VALUE FUND", "NAMUNUKULA PLANTATIONS PLC", "NATION LANKA FINANCE PLC", "NATIONAL DEVELOPMENT BANK PLC", 
    "NATIONS TRUST BANK PLC", "NAWALOKA HOSPITALS PLC", "ODEL PLC", "OFFICE EQUIPMENT PLC", "ON'ALLY HOLDINGS PLC", 
    "OVERSEAS REALTY (CEYLON) PLC", "PALM GARDEN HOTELS PLC", "PAN ASIA BANKING CORPORATION PLC", "PANASIAN POWER PLC", 
    "PARAGON CEYLON PLC", "PEGASUS HOTELS OF CEYLON PLC", "PEOPLE'S INSURANCE PLC", "PEOPLE'S LEASING & FINANCE PLC", 
    "PGP GLASS CEYLON PLC", "PMF FINANCE PLC", "PRIME LANDS RESIDENCIES PLC", "PRINTCARE PLC", "RIL PROPERTY PLC", 
    "RADIANT GEMS INTERNATIONAL PLC", "RAIGAM WAYAMBA SALTERNS PLC", "RAMBODA FALLS PLC", "RENUKA AGRI FOODS PLC", 
    "RENUKA CITY HOTELS PLC", "RENUKA FOODS PLC", "RENUKA HOLDINGS PLC", "RENUKA HOTELS PLC", "RESUS ENERGY PLC", 
    "RICHARD PIERIS AND COMPANY PLC", "RICHARD PIERIS EXPORTS PLC", "ROYAL CERAMICS LANKA PLC", 
    "ROYAL PALMS BEACH HOTELS PLC", "SAMPATH BANK PLC", "SAMSON INTERNATIONAL PLC", "SANASA DEVELOPMENT BANK PLC", 
    "SARVODAYA DEVELOPMENT FINANCE PLC", "SATHOSA MOTORS PLC", "SENFIN SECURITIES LIMITED", "SENKADAGALA FINANCE COMPANY PLC", 
    "SERENDIB ENGINEERING GROUP PLC", "SERENDIB HOTELS PLC", "SERENDIB LAND PLC", "SEYLAN BANK PLC", 
    "SEYLAN DEVELOPMENTS PLC", "SIERRA CABLES PLC", "SIGIRIYA VILLAGE HOTELS PLC", "SINGER (SRI LANKA) PLC", 
    "SINGER FINANCE LANKA PLC", "SINGHE HOSPITALS PLC", "SMB FINANCE PLC", "SOFTLOGIC CAPITAL PLC", 
    "SOFTLOGIC FINANCE PLC", "SOFTLOGIC HOLDINGS PLC", "SOFTLOGIC LIFE INSURANCE PLC", "SRI LANKA TELECOM PLC", 
    "STANDARD CAPITAL PLC", "SUNSHINE HOLDINGS PLC", "SWADESHI INDUSTRIAL WORKS PLC", "SWISSTEK (CEYLON) PLC", 
    "TAL LANKA HOTELS PLC", "TALAWAKELLE TEA ESTATES PLC", "TANGERINE BEACH HOTELS PLC", "TEA SMALLHOLDER FACTORIES PLC", 
    "TEEJAY LANKA PLC", "TESS AGRO PLC", "THE AUTODROME PLC", "THE COLOMBO FORT LAND AND BUILDING PLC", 
    "THE FORTRESS RESORTS PLC", "THE KANDY HOTELS COMPANY (1938) PLC", "THE KINGSBURY PLC", 
    "THE LANKA HOSPITALS CORPORATION PLC", "THE LIGHTHOUSE HOTEL PLC", "THE NUWARA ELIYA HOTELS COMPANY PLC", 
    "THREE ACRE FARMS PLC", "TOKYO CEMENT COMPANY (LANKA) PLC", "TRANS ASIA HOTELS PLC", "UB FINANCE PLC", 
    "UDAPUSSELLAWA PLANTATIONS PLC", "UNION ASSURANCE PLC", "UNION BANK OF COLOMBO PLC", "UNION CHEMICALS LANKA PLC", 
    "UNITED MOTORS LANKA PLC", "VALLIBEL FINANCE PLC", "VALLIBEL ONE PLC", "VALLIBEL POWER ERATHNA PLC", 
    "VIDULLANKA PLC", "WASKADUWA BEACH RESORT PLC", "WATAWALA PLANTATIONS PLC", "WINDFORCE PLC"
]

def setup_driver():
    """Setup Chrome driver with anti-detection"""
    options = Options()
    options.add_argument("--headless")
    options.add_argument("--no-sandbox")
    options.add_argument("--disable-dev-shm-usage")
    options.add_argument("--disable-gpu")
    options.add_argument("--remote-debugging-port=9222")
    options.add_argument("--disable-extensions")
    options.add_argument("--disable-setuid-sandbox")
    options.add_argument("--user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36")
    options.add_argument("--disable-blink-features=AutomationControlled")
    options.add_experimental_option("excludeSwitches", ["enable-automation"])
    
    # Set binary location for Chromium in Docker
    options.binary_location = "/usr/bin/chromium"
    
    try:
        # Use the system chromedriver
        from selenium.webdriver.chrome.service import Service
        service = Service(executable_path="/usr/bin/chromedriver")
        driver = webdriver.Chrome(service=service, options=options)
        driver.execute_script("Object.defineProperty(navigator, 'webdriver', {get: () => undefined})")
        return driver
    except Exception as e:
        print(f"Error setting up Chrome driver: {e}")
        return None

def search_duckduckgo(company_name, year):
    """Search DuckDuckGo - much more scraping-friendly than Google"""
    print(f"   🦆 Searching DuckDuckGo...")
    
    driver = setup_driver()
    try:
        search_queries = [
            f'"{company_name}" annual report {year} filetype:pdf',
            f'{company_name} annual report {year} PDF',
            f'{company_name} financial statements {year}'
        ]
        
        for query in search_queries:
            search_url = f"https://duckduckgo.com/?q={quote(query)}"
            driver.get(search_url)
            time.sleep(3)
            
            # Parse results
            soup = BeautifulSoup(driver.page_source, 'html.parser')
            
            # DuckDuckGo result links
            for result in soup.find_all('a', {'data-testid': 'result-title-a'}):
                href = result.get('href', '')
                if '.pdf' in href.lower():
                    print(f"   ✅ Found PDF: {href}")
                    return href
            
            # Also check snippet links
            for link in soup.find_all('a', href=True):
                href = link['href']
                if '.pdf' in href.lower() and any(word in href.lower() for word in ['annual', 'report', year]):
                    print(f"   ✅ Found PDF: {href}")
                    return href
            
            time.sleep(2)
        
        return None
        
    finally:
        driver.quit()

def search_bing(company_name, year):
    """Search Bing - also more scraping-friendly"""
    print(f"   🔍 Searching Bing...")
    
    driver = setup_driver()
    try:
        query = f'"{company_name}" annual report {year} filetype:pdf'
        search_url = f"https://www.bing.com/search?q={quote(query)}"
        
        driver.get(search_url)
        time.sleep(3)
        
        soup = BeautifulSoup(driver.page_source, 'html.parser')
        
        # Bing result links
        for result in soup.find_all('a', href=True):
            href = result['href']
            if '.pdf' in href.lower() and href.startswith('http'):
                # Check if it's likely an annual report
                if any(word in href.lower() for word in ['annual', 'report', year, 'financial']):
                    print(f"   ✅ Found PDF: {href}")
                    return href
        
        return None
        
    finally:
        driver.quit()

def search_yandex(company_name, year):
    """Search Yandex - Russian search engine, very scraping-friendly"""
    print(f"   🔍 Searching Yandex...")
    
    try:
        query = f'"{company_name}" annual report {year} filetype:pdf'
        search_url = f"https://yandex.com/search/?text={quote(query)}"
        
        headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
        }
        
        response = requests.get(search_url, headers=headers, timeout=10)
        soup = BeautifulSoup(response.content, 'html.parser')
        
        # Yandex results
        for link in soup.find_all('a', href=True):
            href = link['href']
            if '.pdf' in href.lower() and href.startswith('http'):
                if any(word in href.lower() for word in ['annual', 'report', year]):
                    print(f"   ✅ Found PDF: {href}")
                    return href
        
        return None
        
    except Exception as e:
        print(f"   ❌ Yandex search failed: {e}")
        return None

def search_startpage(company_name, year):
    """Search Startpage - Google results without tracking"""
    print(f"   🔍 Searching Startpage...")
    
    driver = setup_driver()
    try:
        query = f'"{company_name}" annual report {year} filetype:pdf'
        search_url = f"https://www.startpage.com/sp/search?query={quote(query)}"
        
        driver.get(search_url)
        time.sleep(4)
        
        soup = BeautifulSoup(driver.page_source, 'html.parser')
        
        for link in soup.find_all('a', href=True):
            href = link['href']
            if '.pdf' in href.lower() and href.startswith('http'):
                if any(word in href.lower() for word in ['annual', 'report', year]):
                    print(f"   ✅ Found PDF: {href}")
                    return href
        
        return None
        
    finally:
        driver.quit()

def search_cse_direct(company_name):
    """Search CSE website directly"""
    print(f"   🏛️ Searching CSE website...")
    
    try:
        # CSE has a specific structure for company information
        headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
        }
        
        # Search CSE listed companies
        cse_search_url = "https://www.cse.lk/pages/company-information/company-profile.component.html"
        
        # This would need actual CSE API integration
        # For now, return None but this is where you'd implement CSE-specific logic
        return None
        
    except Exception as e:
        print(f"   ❌ CSE search failed: {e}")
        return None

def multi_engine_search(company_name, year, fallback_year=None):
    """Try multiple search engines until one works"""
    print(f"\n🔍 Multi-engine search for {company_name} Annual Report {year}...")
    
    search_engines = [
        ('DuckDuckGo', search_duckduckgo),
        ('Bing', search_bing),
        ('Yandex', search_yandex),
        ('Startpage', search_startpage),
        ('CSE', search_cse_direct)
    ]
    
    # Try each search engine for current year
    for engine_name, search_func in search_engines:
        try:
            if engine_name == 'CSE':
                result = search_func(company_name)
            else:
                result = search_func(company_name, year)
            
            if result:
                return result
                
        except Exception as e:
            print(f"   ❌ {engine_name} failed: {e}")
            continue
    
    # If no luck with current year, try fallback year
    if fallback_year:
        print(f"   🔄 Trying fallback year {fallback_year}...")
        for engine_name, search_func in search_engines[:4]:  # Skip CSE for fallback
            try:
                result = search_func(company_name, fallback_year)
                if result:
                    return result
            except Exception as e:
                continue
    
    return None

def download_pdf(url, company_name, folder):
    """Download PDF with verification"""
    try:
        print(f"   📥 Downloading: {url}")
        
        headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
            'Accept': 'application/pdf,*/*'
        }
        
        response = requests.get(url, headers=headers, timeout=30)
        response.raise_for_status()
        
        # Verify it's a PDF
        content_type = response.headers.get('content-type', '').lower()
        if 'pdf' not in content_type and not url.lower().endswith('.pdf'):
            print(f"   ❌ Not a PDF: {content_type}")
            return False
        
        # Create filename
        safe_name = re.sub(r'[^\w\s-]', '', company_name).strip()
        safe_name = re.sub(r'[-\s]+', '_', safe_name)
        filename = f"{safe_name}_Annual_Report.pdf"
        filepath = os.path.join(folder, filename)
        
        with open(filepath, 'wb') as f:
            f.write(response.content)
        
        file_size = os.path.getsize(filepath)
        if file_size < 1000:  # Too small to be a real report
            os.remove(filepath)
            print(f"   ❌ File too small: {file_size} bytes")
            return False
        
        print(f"   ✅ Downloaded: {filename} ({file_size:,} bytes)")
        return True
        
    except Exception as e:
        print(f"   ❌ Download failed: {e}")
        return False

def main():
    """Main execution"""
    print("=" * 60)
    print("🏢 MULTI-ENGINE ANNUAL REPORT FINDER")
    print("🦆 DuckDuckGo | 🔍 Bing | 🇷🇺 Yandex | 🔍 Startpage | 🏛️ CSE")
    print("=" * 60)
    
    if not os.path.exists(SAVE_FOLDER):
        os.makedirs(SAVE_FOLDER)
    
    # Load companies to process (incremental processing)
    companies_to_process, already_processed = get_companies_to_process()
    
    print(f"📊 Total companies: {len(company_names)}")
    print(f"✅ Already processed: {len(already_processed)}")
    print(f"🔄 To process: {len(companies_to_process)}")
    
    if len(already_processed) > 0:
        print(f"📋 Previously processed companies:")
        for company in sorted(already_processed):
            print(f"   • {company}")
        print()
    
    if len(companies_to_process) == 0:
        print("🎉 All companies have been processed!")
        print("💡 To reprocess all companies, delete or rename processed_companies.txt")
        return
    
    successful = 0
    failed = 0
    
    for i, company in enumerate(companies_to_process, 1):
        print(f"\n📊 ({i}/{len(companies_to_process)}) {company}")
        
        try:
            pdf_url = multi_engine_search(company, REPORT_YEAR, FALLBACK_YEAR)
            
            if pdf_url and download_pdf(pdf_url, company, SAVE_FOLDER):
                successful += 1
                # Save as processed
                pdf_filename = f"{company.replace(' ', '_').replace('&', 'AND')}_Annual_Report.pdf"
                save_processed_company(company, pdf_filename)
                print(f"   ✅ Added to processed list: {company}")
            else:
                print(f"   ❌ No annual report found")
                failed += 1
                
        except Exception as e:
            print(f"   ❌ Error: {e}")
            failed += 1
        
        # Progress update
        if i % 10 == 0:
            print(f"\n📈 Progress: {successful} downloaded, {failed} failed")
        
        time.sleep(5)  # Be respectful
    
    print(f"\n🎯 Final Results: {successful} successful, {failed} failed")
    print(f"📁 Total processed so far: {len(already_processed) + successful}")
    
    if successful > 0:
        print(f"💡 Incremental processing enabled - processed companies saved to {PROCESSED_COMPANIES_FILE}")
    
    if failed > 0:
        print(f"💡 To retry failed companies, delete their entries from {PROCESSED_COMPANIES_FILE}")

if __name__ == "__main__":
    main()
