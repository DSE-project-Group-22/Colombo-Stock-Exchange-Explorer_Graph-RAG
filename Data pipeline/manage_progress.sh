#!/bin/bash

# Pipeline Progress Manager
# Utility script to view and manage incremental processing across all pipelines

set -e

echo "🚀 CSE EXPLORER PIPELINE PROGRESS MANAGER"
echo "=========================================="

# Define base directory
BASE_DIR="/Users/bashithashamila/Web Development/CSE Explorer_Graph RAG/Data pipeline"

# Function to show progress for a pipeline
show_pipeline_progress() {
    local pipeline_name="$1"
    local pipeline_dir="$2"
    local processed_file="$3"
    local total_items="$4"
    
    echo
    echo "📊 $pipeline_name"
    echo "$(printf '%.0s-' {1..50})"
    
    cd "$pipeline_dir"
    
    if [ -f "$processed_file" ]; then
        processed_count=$(grep -v '^#' "$processed_file" | grep -v '^[[:space:]]*$' | wc -l | xargs)
        echo "✅ Already processed: $processed_count"
        echo "🔄 Remaining: $((total_items - processed_count))"
        echo "📈 Progress: $((processed_count * 100 / total_items))%"
        
        if [ $processed_count -gt 0 ]; then
            echo "📋 Recently processed:"
            tail -3 "$processed_file" | grep -v '^#' | while IFS='|' read -r item timestamp output; do
                if [ -n "$item" ]; then
                    echo "   • $item ($timestamp)"
                fi
            done
        fi
    else
        echo "📁 No progress file found - all items will be processed"
        echo "🔄 Remaining: $total_items"
        echo "📈 Progress: 0%"
    fi
}

# Function to reset a pipeline
reset_pipeline() {
    local pipeline_name="$1"
    local pipeline_dir="$2"
    local processed_file="$3"
    
    cd "$pipeline_dir"
    
    if [ -f "$processed_file" ]; then
        echo "🗑️  Resetting $pipeline_name progress..."
        mv "$processed_file" "${processed_file}.backup.$(date +%Y%m%d_%H%M%S)"
        echo "✅ Progress reset! Backup saved."
    else
        echo "❗ No progress file found for $pipeline_name"
    fi
}

# Function to show menu
show_menu() {
    echo
    echo "🎯 ACTIONS:"
    echo "1. Show progress overview"
    echo "2. Reset Data Collection progress"
    echo "3. Reset Data Extraction progress"
    echo "4. Reset Preprocessing progress"
    echo "5. Reset Cypher Generation progress"
    echo "6. Reset ALL progress"
    echo "7. Exit"
    echo
}

# Main execution
main() {
    while true; do
        show_menu
        read -p "Choose an option (1-7): " choice
        
        case $choice in
            1)
                echo
                echo "🔍 PIPELINE PROGRESS OVERVIEW"
                echo "=============================="
                
                # Data Collection (estimate 201 companies)
                show_pipeline_progress "DATA COLLECTION" \
                    "$BASE_DIR/Data Collection" \
                    "processed_companies.txt" \
                    201
                
                # Data Extraction
                cd "$BASE_DIR/Data Extraction"
                if [ -d "extracted_texts" ]; then
                    text_count=$(ls -1 extracted_texts/*.txt 2>/dev/null | wc -l | xargs)
                else
                    text_count=0
                fi
                show_pipeline_progress "DATA EXTRACTION" \
                    "$BASE_DIR/Data Extraction" \
                    "processed_extraction_files.txt" \
                    $text_count
                
                # Preprocessing
                cd "$BASE_DIR/Data Extraction"
                if [ -d "extracted_texts" ]; then
                    preprocess_count=$(ls -1 extracted_texts/*.txt 2>/dev/null | wc -l | xargs)
                else
                    preprocess_count=0
                fi
                show_pipeline_progress "PREPROCESSING" \
                    "$BASE_DIR/Data Extraction/preprocessing" \
                    "processed_preprocessing_files.txt" \
                    $preprocess_count
                
                # Cypher Generation
                cd "$BASE_DIR/Data Extraction/preprocessing"
                if [ -d "preprocessed_texts" ]; then
                    cypher_count=$(ls -1 preprocessed_texts/*_enriched.txt 2>/dev/null | wc -l | xargs)
                else
                    cypher_count=0
                fi
                show_pipeline_progress "CYPHER GENERATION" \
                    "$BASE_DIR/Cypher Generation" \
                    "processed_cypher_files.txt" \
                    $cypher_count
                ;;
            2)
                reset_pipeline "Data Collection" \
                    "$BASE_DIR/Data Collection" \
                    "processed_companies.txt"
                ;;
            3)
                reset_pipeline "Data Extraction" \
                    "$BASE_DIR/Data Extraction" \
                    "processed_extraction_files.txt"
                ;;
            4)
                reset_pipeline "Preprocessing" \
                    "$BASE_DIR/Data Extraction/preprocessing" \
                    "processed_preprocessing_files.txt"
                ;;
            5)
                reset_pipeline "Cypher Generation" \
                    "$BASE_DIR/Cypher Generation" \
                    "processed_cypher_files.txt"
                ;;
            6)
                echo "🗑️  Resetting ALL pipeline progress..."
                reset_pipeline "Data Collection" \
                    "$BASE_DIR/Data Collection" \
                    "processed_companies.txt"
                reset_pipeline "Data Extraction" \
                    "$BASE_DIR/Data Extraction" \
                    "processed_extraction_files.txt"
                reset_pipeline "Preprocessing" \
                    "$BASE_DIR/Data Extraction/preprocessing" \
                    "processed_preprocessing_files.txt"
                reset_pipeline "Cypher Generation" \
                    "$BASE_DIR/Cypher Generation" \
                    "processed_cypher_files.txt"
                echo "✅ All progress reset!"
                ;;
            7)
                echo "👋 Goodbye!"
                exit 0
                ;;
            *)
                echo "❌ Invalid option. Please choose 1-7."
                ;;
        esac
        
        echo
        read -p "Press Enter to continue..."
    done
}

# Run main function
main
