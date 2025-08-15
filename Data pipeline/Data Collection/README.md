# Annual Report Finder

This service automatically searches for and downloads annual reports from Sri Lankan companies listed on the Colombo Stock Exchange (CSE).

## Features

- **Multi-search engine support**: Uses DuckDuckGo, Bing, Yandex, and Startpage
- **Fallback year search**: If 2024 reports aren't found, automatically searches for 2023
- **Selenium web scraping**: Handles dynamic content and anti-bot measures
- **PDF verification**: Ensures downloaded files are valid PDFs
- **Progress tracking**: Shows real-time progress with success/failure counts
- **Docker containerization**: Runs in isolated container with all dependencies

## Search Engines Used

1. **🦆 DuckDuckGo** - Privacy-focused, scraping-friendly
2. **🔍 Bing** - Microsoft's search engine, good PDF indexing
3. **🇷🇺 Yandex** - Russian search engine, very scraping-friendly
4. **🔍 Startpage** - Google results without tracking
5. **🏛️ CSE Direct** - Direct search of CSE website (planned)

## Quick Start

### Option 1: Docker (Recommended)

```bash
# Build and run with the convenience script
./run_docker.sh
```

### Option 2: Manual Docker

```bash
# Build the image
docker build -t annual-report-finder .

# Run the container
docker run -it --rm \
  --name annual-report-finder \
  -v "$(pwd)/reports:/app/reports" \
  --shm-size=2g \
  annual-report-finder
```

### Option 3: Local Python

```bash
# Install dependencies
pip install -r requirements.txt

# Install Chrome/Chromium and ChromeDriver
# On Ubuntu/Debian:
sudo apt-get install chromium chromium-driver

# On macOS:
brew install --cask google-chrome
brew install chromedriver

# Run the script
python annual_report_finder.py
```

## Configuration

Edit `annual_report_finder.py` to modify:

- `REPORT_YEAR`: Primary year to search for (default: "2024")
- `FALLBACK_YEAR`: Fallback year if primary not found (default: "2023")
- `SAVE_FOLDER`: Where to save downloaded reports (default: "reports")
- `company_names`: List of companies to search for

## Output

Reports are saved in the `reports/` folder with the naming convention:
```
Company_Name_Annual_Report.pdf
```

## Company List

The script searches for annual reports from 200+ Sri Lankan companies including:
- Banks (Commercial Bank, Hatton National Bank, etc.)
- Plantations (Talawakelle Tea Estates, etc.)
- Hotels (John Keells Hotels, etc.)
- Manufacturing (Hayleys, CIC Holdings, etc.)
- And many more...

## Technical Details

- **Headless Chrome**: Uses Chromium in headless mode for scraping
- **Anti-detection**: Implements various techniques to avoid bot detection
- **Respectful scraping**: 5-second delays between requests
- **Error handling**: Graceful handling of network errors and timeouts
- **File validation**: Checks file size and content type to ensure valid PDFs

## Troubleshooting

### Chrome/ChromeDriver Issues
```bash
# Check if ChromeDriver is installed
which chromedriver

# Check Chrome version
google-chrome --version
# or
chromium --version
```

### Docker Issues
```bash
# Check Docker is running
docker --version

# View container logs
docker logs annual-report-finder
```

### Permission Issues
```bash
# Make sure the script is executable
chmod +x run_docker.sh

# Check reports folder permissions
ls -la reports/
```

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
