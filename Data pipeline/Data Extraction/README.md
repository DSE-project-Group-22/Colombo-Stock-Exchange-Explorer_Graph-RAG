# PDF Text Extraction Service

This service extracts text from PDF annual reports using the Docling library and saves the extracted text to individual files for further processing with the Gemini API.

## Overview

The text extraction service processes PDF files from the `Data Collection/reports` folder and outputs clean, structured text files that can be used as input for the Gemini API or other downstream processing.

## Features

- **Advanced PDF Text Extraction**: Uses Docling's state-of-the-art PDF understanding capabilities
- **Structure Preservation**: Maintains document structure including headers, tables, and formatting
- **Batch Processing**: Processes all PDF files in the reports folder automatically
- **Individual Text Files**: Creates separate text files for each processed PDF
- **Comprehensive Logging**: Detailed progress reporting and extraction statistics
- **Error Handling**: Robust error handling for various PDF formats

## Installation

1. Install the required dependencies:
```bash
pip install -r requirements.txt
```

## Usage

### Process All PDF Files

Run the main extraction script to process all PDF files in the reports folder:

```bash
python extract_texts.py
```

### Programmatic Usage

You can also use the `PDFTextExtractor` class directly in your code:

```python
from pdf_text_extractor import PDFTextExtractor

# Initialize extractor
extractor = PDFTextExtractor(
    reports_folder="../Data Collection/reports",
    output_folder="./extracted_texts"
)

# Process all PDFs
results = extractor.process_all_pdfs()

# Process a single PDF
output_path = extractor.process_single_pdf("annual_report.pdf")
```

## Output Structure

```
Data Extraction/
├── extracted_texts/           # Output folder for extracted text files
│   ├── Company_A_Annual_Report_extracted.txt
│   ├── Company_B_Annual_Report_extracted.txt
│   └── ...
├── pdf_text_extractor.py     # Main extraction class
├── extract_texts.py          # CLI script
├── requirements.txt          # Dependencies
└── README.md                 # This file
```

## Text File Format

Each extracted text file contains:
- Clean, structured text extracted from the PDF
- Preserved formatting with Markdown syntax
- Headers, tables, and document structure maintained
- UTF-8 encoding for broad compatibility

## Why Docling?

Docling offers several advantages for PDF text extraction:

- **Advanced PDF Understanding**: Superior layout detection and reading order
- **Table Structure Extraction**: Preserves table structures accurately
- **Multiple Format Support**: Handles various document formats beyond PDF
- **OCR Support**: Handles scanned documents and images
- **Structure Preservation**: Maintains document hierarchy and formatting

## Dependencies

- **docling**: Advanced document processing and PDF text extraction library

## Error Handling

The service includes robust error handling for:
- Missing PDF files
- Corrupted or unreadable PDFs
- Permission issues
- Disk space problems
- Network connectivity (if required by Docling)

## Logging

All operations are logged with appropriate levels:
- **INFO**: Normal processing information
- **WARNING**: Non-critical issues
- **ERROR**: Failed operations with details

## Next Steps

After text extraction, the extracted text files can be:
1. Used as input for the Gemini API
2. Processed for information extraction
3. Analyzed for key financial metrics
4. Integrated into the graph database

## Performance

- Processing time depends on PDF size and complexity
- Typical processing: 30-60 seconds per document (first run may be slower for model downloads)
- Memory usage scales with document size
- GPU acceleration available for supported systems

## Troubleshooting

### Common Issues

1. **No PDF files found**: Ensure PDF files exist in the `../Data Collection/reports` folder
2. **Permission denied**: Check write permissions for the output folder
3. **Docling installation issues**: Ensure all system dependencies are properly installed
4. **Memory issues**: For very large PDFs, consider processing them individually

### Debug Mode

For detailed debugging, modify the logging level in the script:
```python
logging.basicConfig(level=logging.DEBUG)
```

## Configuration

The extractor can be configured through the `PDFTextExtractor` class parameters:
- `reports_folder`: Source folder for PDF files
- `output_folder`: Destination for extracted text files

For advanced Docling configuration, modify the `DocumentConverter` initialization in the code.