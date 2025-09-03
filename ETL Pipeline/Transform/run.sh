#!/bin/bash

# Quick run script for Name Normalization ETL Pipeline
# This script provides an easy interface to run the pipeline

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}🚀 Name Normalization ETL Pipeline${NC}"
echo "=================================="

# Check if virtual environment exists
if [ ! -d "transform_env" ]; then
    echo -e "${RED}❌ Virtual environment not found!${NC}"
    echo "Please run setup.sh first:"
    echo "  ./setup.sh"
    exit 1
fi

# Activate virtual environment
echo -e "${YELLOW}🔌 Activating virtual environment...${NC}"
source transform_env/bin/activate

# Check command line arguments
case "${1:-run}" in
    "setup"|"install")
        echo -e "${BLUE}📦 Running setup...${NC}"
        ./setup.sh
        ;;
    "test")
        echo -e "${BLUE}🧪 Running tests...${NC}"
        python test_pipeline.py
        ;;
    "analyze")
        echo -e "${BLUE}📊 Running analysis...${NC}"
        python analyze_results.py
        ;;
    "clean")
        echo -e "${YELLOW}🧹 Cleaning output files...${NC}"
        rm -rf cleaned_output/
        rm -f canonical_name_map.json
        rm -f analysis_report.txt
        echo "✅ Cleaned output files"
        ;;
    "run"|"")
        echo -e "${BLUE}🏃 Running ETL pipeline...${NC}"
        python normalize_names.py
        
        if [ $? -eq 0 ]; then
            echo ""
            echo -e "${GREEN}✅ Pipeline completed successfully!${NC}"
            echo ""
            echo "📂 Results:"
            echo "  • Cleaned files: cleaned_output/"
            echo "  • Name mappings: canonical_name_map.json"
            echo ""
            echo "🔍 Next steps:"
            echo "  • Review mappings: cat canonical_name_map.json"
            echo "  • Run analysis: ./run.sh analyze"
            echo "  • Run tests: ./run.sh test"
        else
            echo -e "${RED}❌ Pipeline failed!${NC}"
            exit 1
        fi
        ;;
    "help"|"-h"|"--help")
        echo "Usage: ./run.sh [command]"
        echo ""
        echo "Commands:"
        echo "  run      Run the ETL pipeline (default)"
        echo "  setup    Set up the environment"
        echo "  test     Run test suite"
        echo "  analyze  Run result analysis"
        echo "  clean    Clean output files"
        echo "  help     Show this help message"
        echo ""
        echo "Examples:"
        echo "  ./run.sh              # Run the pipeline"
        echo "  ./run.sh test         # Run tests"
        echo "  ./run.sh analyze      # Analyze results"
        ;;
    *)
        echo -e "${RED}❌ Unknown command: $1${NC}"
        echo "Use './run.sh help' for usage information"
        exit 1
        ;;
esac
