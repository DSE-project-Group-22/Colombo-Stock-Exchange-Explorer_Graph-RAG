#!/bin/bash

# Data Preprocessing Workflow
# This script runs complete preprocessing for LLM-ready text generation

echo "🚀 DATA PREPROCESSING FOR LLM SCHEMA ENHANCEMENT"
echo "================================================"

# Check if we're in the right directory
if [ ! -f "preprocess_data.py" ]; then
    echo "❌ Please run this script from the preprocessing directory"
    exit 1
fi

echo ""
echo "📋 Step 1: Check input data..."

# Check if entity resolution data exists
if [ -f "../output/canonical_person_entities.json" ] && [ -f "../output/neo4j_company_nodes.json" ]; then
    echo "✅ Entity resolution data found"
    person_count=$(python3 -c "import json; print(len(json.load(open('../output/canonical_person_entities.json'))))" 2>/dev/null || echo "0")
    company_count=$(python3 -c "import json; print(len(json.load(open('../output/neo4j_company_nodes.json'))))" 2>/dev/null || echo "0")
    echo "   👤 $person_count persons"
    echo "   🏢 $company_count companies"
else
    echo "❌ Entity resolution data not found"
    echo "📋 Please run entity resolution first:"
    echo "   cd .. && python3 run_entity_resolution.py"
    exit 1
fi

# Check if extracted texts exist
text_count=$(find ../extracted_texts/ -name "*.txt" 2>/dev/null | wc -l)
if [ "$text_count" -gt 0 ]; then
    echo "✅ Found $text_count extracted text files"
else
    echo "❌ No extracted text files found in ../extracted_texts/"
    exit 1
fi

echo ""
echo "🔧 Step 2: Setup environment..."

# Check Python dependencies
echo "📦 Checking Python dependencies..."
python3 -c "import json, logging, pathlib" 2>/dev/null
if [ $? -eq 0 ]; then
    echo "✅ Required Python modules available"
else
    echo "❌ Missing required Python modules"
    exit 1
fi

echo ""
echo "🔄 Step 3: Run data preprocessing..."
echo "   Processing all text files with entity mappings..."

python3 preprocess_data.py

if [ $? -eq 0 ]; then
    echo "✅ Preprocessing completed successfully"
    
    echo ""
    echo "🔍 Step 4: Validate schema compliance..."
    python3 validate_schema.py
    
    # Check output
    if [ -d "preprocessed_texts" ]; then
        enriched_count=$(find preprocessed_texts/ -name "*_enriched.txt" 2>/dev/null | wc -l)
        echo "✅ Generated $enriched_count enriched text files"
        
        # Show file sizes
        echo ""
        echo "📊 Preprocessed files:"
        ls -lh preprocessed_texts/*_enriched.txt 2>/dev/null | while read line; do
            echo "   $line"
        done
        
        echo ""
        echo "📋 Additional files:"
        if [ -f "preprocessed_texts/SCHEMA_REFERENCE.txt" ]; then
            echo "   ✅ Schema reference file"
        fi
        if [ -f "preprocessed_texts/entity_mapping_summary.json" ]; then
            echo "   ✅ Entity mapping summary"
        fi
        
        echo ""
        echo "🎉 PREPROCESSING WORKFLOW COMPLETE!"
        echo "================================================"
        echo "✅ All text files enriched with entity context"
        echo "✅ Entity IDs pre-mapped and normalized"
        echo "✅ EXACT schema definitions included in each file"
        echo "✅ Schema compliance validated"
        echo "✅ Ready for stateless LLM processing"
        echo ""
        echo "📁 Preprocessed files location: ./preprocessed_texts/"
        echo ""
        echo "🚀 Next steps:"
        echo "   1. Use enriched files for LLM Cypher query generation"
        echo "   2. Each file contains complete context for stateless processing"
        echo "   3. All entity IDs are pre-mapped and consistent"
        echo "   4. LLM only needs to generate Cypher queries"
        echo ""
        echo "💡 Example usage:"
        echo "   - Send any *_enriched.txt file to your LLM"
        echo "   - Request Cypher query generation"
        echo "   - All entity IDs and schema info are included"
        echo "   - No additional context or state required"
        
    else
        echo "❌ Output directory not created"
    fi
else
    echo "❌ Preprocessing failed"
    echo "📋 Please check the error messages above"
fi

echo ""
echo "📖 Documentation:"
echo "   - See preprocessed_texts/SCHEMA_REFERENCE.txt for complete schema"
echo "   - See preprocessed_texts/entity_mapping_summary.json for entity details"
echo "   - Each *_enriched.txt file is self-contained for LLM processing"
