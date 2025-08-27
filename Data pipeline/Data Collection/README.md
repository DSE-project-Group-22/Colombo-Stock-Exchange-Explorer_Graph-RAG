# Data Collection Pipeline

This module automatically discovers and downloads annual reports from CSE (Colombo Stock Exchange) listed companies using intelligent web scraping and PDF extraction.

## Overview

The **Data Collection Pipeline** is the **first stage** of the CSE Explorer data processing workflow. It automatically discovers, downloads, and validates annual reports from publicly listed companies on the Colombo Stock Exchange.

🔄 **Pipeline Flow**: Data Collection → Data Extraction → Cypher Generation

## Features

- **Multi-search Engine Support**: Uses DuckDuckGo, Bing, Yandex, and Startpage
- **Automated Discovery**: Finds annual report PDFs from company websites
- **Smart Processing**: Handles different website structures and PDF hosting patterns  
- **Fallback Year Search**: If 2025 reports aren't found, automatically searches for 2024
- **Rate Limiting**: Respectful crawling with delays to avoid overwhelming servers
- **Quality Validation**: Validates downloaded PDFs and file sizes
- **Progress Tracking**: Real-time progress indicators and detailed logging
- **Docker Support**: Containerized deployment for consistent environments
- **macOS Optimized**: Tested and optimized for macOS environments with zsh shell

## Prerequisites

- **macOS** (tested on macOS 10.15+)
- **Python 3.8+** 
- **Chrome browser** (for Selenium WebDriver)
- **Internet connection** for web scraping
- **Sufficient disk space** for PDF storage (~100MB per company)
- **zsh shell** (default on macOS)

## macOS Installation & Setup

### Option 1: Native macOS Setup (Recommended for Development)

```bash
# Navigate to Data Collection directory
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Data Collection"

# Install Python dependencies
pip3 install -r requirements.txt

# Install Chrome browser if not already installed (using Homebrew)
brew install --cask google-chrome

# Install ChromeDriver for Selenium
brew install chromedriver

# Fix macOS security for ChromeDriver (if needed)
xattr -d com.apple.quarantine $(which chromedriver)

# Verify installation
chromedriver --version
google-chrome --version

# Test the setup
python3 test_setup.py
```

### Option 2: Docker Setup (Recommended for Production)

```bash
# Navigate to Data Collection directory
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Data Collection"

# Make script executable
chmod +x run_docker.sh

# Build and run with Docker Compose
docker-compose up --build

# Or use the convenience script
./run_docker.sh

# Check results
docker-compose logs data-collection
```

### Option 3: Manual Docker Commands

```bash
# Navigate to Data Collection directory
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Data Collection"

# Build the Docker image
docker build -t annual-report-finder .

# Run the container with volume mounting
docker run -it --rm \
  --name annual-report-finder \
  -v "$(pwd)/reports:/app/reports" \
  --shm-size=2g \
  annual-report-finder

# View downloaded reports
ls -la reports/
```

## Running the Pipeline (macOS Commands)

### Basic Execution
```bash
# Navigate to the directory
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Data Collection"

# Run the collection pipeline
python3 annual_report_finder.py
```

### With Custom Configuration
```bash
# Edit configuration (optional)
nano annual_report_finder.py

# Run with verbose output
python3 annual_report_finder.py --verbose
```

### Monitor Progress and Results
```bash
# Monitor downloaded files in real-time
watch -n 5 'ls -la reports/ | tail -10'

# Check file sizes
du -h reports/*

# Count successful downloads
ls reports/*.pdf | wc -l

# Check total storage used
du -sh reports/
```

## Configuration Options

Edit `annual_report_finder.py` to modify:

- `REPORT_YEAR`: Primary year to search for (default: "2025")
- `FALLBACK_YEAR`: Fallback year if primary not found (default: "2024")
- `SAVE_FOLDER`: Where to save downloaded reports (default: "reports")
- `company_names`: List of companies to search for

## Output Structure

Reports are saved in the `reports/` folder with naming convention:
```
reports/
├── Company_Name_Annual_Report.pdf
├── Another_Company_Annual_Report.pdf
└── ...
```

## Search Engines Used

1. **🦆 DuckDuckGo** - Privacy-focused, scraping-friendly
2. **🔍 Bing** - Microsoft's search engine, good PDF indexing  
3. **🇷🇺 Yandex** - Russian search engine, very scraping-friendly
4. **🔍 Startpage** - Google results without tracking
5. **🏛️ CSE Direct** - Direct search of CSE website (planned)

## Performance Expectations

- **Processing Time**: 2-5 minutes per company
- **Success Rate**: 60-80% (depends on website availability)
- **Resource Usage**: ~500MB RAM, minimal CPU
- **Storage**: ~5-50MB per PDF

## Troubleshooting (macOS)

### Chrome/ChromeDriver Issues
```bash
# Check if ChromeDriver is installed
which chromedriver

# Check Chrome version
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --version

# Reinstall ChromeDriver if needed
brew uninstall chromedriver
brew install chromedriver

# Fix macOS security quarantine (common issue)
xattr -d com.apple.quarantine $(which chromedriver)

# Test ChromeDriver directly
chromedriver --port=9515
```

### Permission Issues
```bash
# Fix ChromeDriver permissions (macOS security)
sudo xattr -d com.apple.quarantine $(which chromedriver)

# Make scripts executable
chmod +x run_docker.sh
chmod +x annual_report_finder.py

# Check and fix directory permissions
sudo chown -R $(whoami) reports/
chmod 755 reports/
```

### Python Dependencies
```bash
# Update pip
pip3 install --upgrade pip

# Reinstall requirements with force
pip3 install -r requirements.txt --force-reinstall

# Check Python version
python3 --version

# Test specific packages
python3 -c "import selenium, requests, beautifulsoup4; print('✅ Core packages installed')"
```

### Docker Issues
```bash
# Check Docker Desktop is running
docker --version
docker info

# View container logs
docker logs annual-report-finder

# Clean up containers and images
docker container prune -f
docker image prune -f

# Restart Docker Desktop if needed
killall Docker && open /Applications/Docker.app
```

### Network and Download Issues
```bash
# Test internet connectivity
ping -c 3 google.com

# Check available disk space
df -h

# Clear browser cache (may help with detection)
rm -rf ~/Library/Caches/Google/Chrome/

# Test with specific search engine
python3 -c "
from selenium import webdriver
options = webdriver.ChromeOptions()
options.add_argument('--headless')
driver = webdriver.Chrome(options=options)
driver.get('https://duckduckgo.com')
print('✅ Browser automation working')
driver.quit()
"
```
## Integration with Next Pipeline

Once collection is complete, the downloaded PDFs can be processed by the Data Extraction pipeline:

```bash
# Navigate to Data Extraction (next pipeline step)
cd "../Data Extraction"

# Process the collected PDFs with entity resolution
python3 run_entity_resolution.py

# Continue with preprocessing for LLM
cd preprocessing && ./run_preprocessing.sh

# Optional: Continue to Cypher Generation
cd "../../Cypher Generation"
python3 generate_cypher.py
```

## Complete Pipeline Integration (macOS)

### Sequential Pipeline Execution
```bash
# Run complete pipeline from Data Collection through Cypher Generation

# 1. Data Collection (Current Module)
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Data Collection"
echo "🔄 Starting Data Collection..."
python3 annual_report_finder.py

# 2. Data Extraction
echo "🔄 Starting Data Extraction..."
cd "../Data Extraction"
python3 run_entity_resolution.py
cd preprocessing && ./run_preprocessing.sh && cd ..

# 3. Cypher Generation
echo "🔄 Starting Cypher Generation..."
cd "../Cypher Generation"
python3 generate_cypher.py

# 4. Pipeline Summary
echo "✅ Complete pipeline finished!"
echo "📊 Downloaded PDFs: $(ls '../Data Collection/reports'/*.pdf 2>/dev/null | wc -l)"
echo "📊 Extracted files: $(ls '../Data Extraction/extracted_texts'/*.txt 2>/dev/null | wc -l)"
echo "📊 Generated Cypher: $(ls 'generated_cypher'/*.cypher 2>/dev/null | wc -l)"
```

### Individual Module Execution
```bash
# Run ONLY Data Collection (this module)
cd "/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline/Data Collection"
python3 annual_report_finder.py

# Check results
echo "Downloaded reports: $(ls reports/*.pdf 2>/dev/null | wc -l)"
ls -la reports/
```

## Company List

The script searches for annual reports from 200+ Sri Lankan companies including:
- **Banks**: Commercial Bank, Hatton National Bank, People's Bank, etc.
- **Plantations**: Talawakelle Tea Estates, Dilmah Ceylon Tea, etc.
- **Hotels**: John Keells Hotels, Aitken Spence Hotels, etc.
- **Manufacturing**: Hayleys, CIC Holdings, Royal Ceramics, etc.
- **Financial Services**: LOLC Holdings, LB Finance, etc.
- **Diversified**: John Keells Holdings, Aitken Spence, etc.

## Technical Details

- **Headless Chrome**: Uses Chromium in headless mode for scraping
- **Anti-detection**: Implements various techniques to avoid bot detection
- **Respectful scraping**: 5-second delays between requests
- **Error handling**: Graceful handling of network errors and timeouts
- **File validation**: Checks file size and content type to ensure valid PDFs
- **Search strategies**: Multiple search patterns and fallback mechanisms
- **Year flexibility**: Searches current year (2025) with 2024 fallback

## Legal Notice

This tool is for educational and research purposes. Please respect:
- Website terms of service
- Rate limiting and robots.txt
- Copyright laws regarding downloaded content
- Fair use guidelines

## Future Enhancements

- [ ] CSE website direct integration
- [ ] Proxy rotation for better reliability
- [ ] Multi-threading for faster processing
- [ ] Advanced PDF content validation
- [ ] Resume functionality for interrupted runs
- [ ] Email notifications on completion
- [ ] Machine learning for better PDF detection
- [ ] Company website structure learning
