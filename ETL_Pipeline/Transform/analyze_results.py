#!/usr/bin/env python3
"""
Analysis utility for Name Normalization ETL Pipeline results
"""

import json
import os
from pathlib import Path
from collections import defaultdict
from typing import Dict, List, Tuple

def load_config():
    """Load configuration"""
    # Get the base directory (workspace root)
    base_dir = Path(__file__).parent.parent.parent  # Goes up to CSE Explorer_Graph RAG
    
    return {
        "SOURCE_DIR": str(base_dir / "ETL Pipeline" / "Extract" / "batch_output"),
        "OUTPUT_DIR": str(base_dir / "ETL Pipeline" / "Transform" / "cleaned_output"),
        "CANONICAL_MAP_FILE": str(base_dir / "ETL Pipeline" / "Transform" / "canonical_name_map.json")
    }

def analyze_canonical_map() -> Dict:
    """Analyze the canonical name mapping"""
    config = load_config()
    map_file = Path(config['CANONICAL_MAP_FILE'])
    
    if not map_file.exists():
        return {"error": "Canonical map file not found"}
    
    with open(map_file, 'r') as f:
        name_map = json.load(f)
    
    # Count variations vs canonical names
    canonical_counts = defaultdict(list)
    for original, canonical in name_map.items():
        canonical_counts[canonical].append(original)
    
    # Find clusters (canonical names with multiple variations)
    clusters = {k: v for k, v in canonical_counts.items() if len(v) > 1}
    
    # Statistics
    stats = {
        "total_names": len(name_map),
        "unique_canonical_names": len(canonical_counts),
        "clustered_names": len(clusters),
        "total_variations_clustered": sum(len(v) for v in clusters.values()),
        "clustering_efficiency": len(clusters) / len(canonical_counts) if canonical_counts else 0
    }
    
    return {
        "stats": stats,
        "clusters": dict(list(clusters.items())[:10]),  # Show top 10 clusters
        "all_clusters": clusters
    }

def analyze_transformations() -> Dict:
    """Analyze the transformation results"""
    config = load_config()
    source_dir = Path(config['SOURCE_DIR'])
    output_dir = Path(config['OUTPUT_DIR'])
    
    if not output_dir.exists():
        return {"error": "Output directory not found"}
    
    results = {
        "files_processed": 0,
        "files_with_changes": 0,
        "transformation_details": []
    }
    
    for output_file in output_dir.glob("*.json"):
        if output_file.name == "batch_processing_summary.json":
            continue
            
        source_file = source_dir / output_file.name
        if not source_file.exists():
            continue
        
        # Compare source and output
        with open(source_file, 'r') as f:
            source_data = json.load(f)
        with open(output_file, 'r') as f:
            output_data = json.load(f)
        
        # Check if changes were made
        source_chunks = source_data.get('retrieved_chunks', {}).get('directors_and_executives', [])
        output_chunks = output_data.get('retrieved_chunks', {}).get('directors_and_executives', [])
        
        changes_made = source_chunks != output_chunks
        metadata_added = output_data.get('metadata', {}).get('name_normalization_applied', False)
        
        file_info = {
            "filename": output_file.name,
            "changes_made": changes_made,
            "metadata_added": metadata_added,
            "chunks_count": len(output_chunks)
        }
        
        results["files_processed"] += 1
        if changes_made:
            results["files_with_changes"] += 1
        
        results["transformation_details"].append(file_info)
    
    return results

def compare_before_after(filename: str) -> Dict:
    """Compare a specific file before and after transformation"""
    config = load_config()
    source_file = Path(config['SOURCE_DIR']) / filename
    output_file = Path(config['OUTPUT_DIR']) / filename
    
    if not source_file.exists() or not output_file.exists():
        return {"error": f"Files not found: {filename}"}
    
    with open(source_file, 'r') as f:
        source_data = json.load(f)
    with open(output_file, 'r') as f:
        output_data = json.load(f)
    
    source_chunks = source_data.get('retrieved_chunks', {}).get('directors_and_executives', [])
    output_chunks = output_data.get('retrieved_chunks', {}).get('directors_and_executives', [])
    
    differences = []
    for i, (source_chunk, output_chunk) in enumerate(zip(source_chunks, output_chunks)):
        if source_chunk != output_chunk:
            differences.append({
                "chunk_index": i,
                "before": source_chunk[:200] + "..." if len(source_chunk) > 200 else source_chunk,
                "after": output_chunk[:200] + "..." if len(output_chunk) > 200 else output_chunk
            })
    
    return {
        "filename": filename,
        "total_chunks": len(source_chunks),
        "changed_chunks": len(differences),
        "differences": differences[:3]  # Show first 3 differences
    }

def generate_report() -> str:
    """Generate a comprehensive analysis report"""
    print("📊 Generating Name Normalization Analysis Report...")
    
    # Canonical map analysis
    map_analysis = analyze_canonical_map()
    
    # Transformation analysis
    transform_analysis = analyze_transformations()
    
    # Generate report
    report = []
    report.append("=" * 80)
    report.append("NAME NORMALIZATION ETL PIPELINE - ANALYSIS REPORT")
    report.append("=" * 80)
    report.append("")
    
    # Canonical Map Section
    report.append("📝 CANONICAL NAME MAPPING ANALYSIS")
    report.append("-" * 40)
    if "error" not in map_analysis:
        stats = map_analysis["stats"]
        report.append(f"Total names discovered: {stats['total_names']}")
        report.append(f"Unique canonical names: {stats['unique_canonical_names']}")
        report.append(f"Names with variations: {stats['clustered_names']}")
        report.append(f"Total variations clustered: {stats['total_variations_clustered']}")
        report.append(f"Clustering efficiency: {stats['clustering_efficiency']:.2%}")
        report.append("")
        
        if map_analysis["clusters"]:
            report.append("🔗 TOP NAME CLUSTERS:")
            for canonical, variations in list(map_analysis["clusters"].items())[:5]:
                report.append(f"  '{canonical}' ← {variations}")
        report.append("")
    else:
        report.append(f"❌ {map_analysis['error']}")
        report.append("")
    
    # Transformation Section
    report.append("🔄 TRANSFORMATION ANALYSIS")
    report.append("-" * 40)
    if "error" not in transform_analysis:
        report.append(f"Files processed: {transform_analysis['files_processed']}")
        report.append(f"Files with changes: {transform_analysis['files_with_changes']}")
        
        if transform_analysis['files_with_changes'] > 0:
            success_rate = transform_analysis['files_with_changes'] / transform_analysis['files_processed']
            report.append(f"Success rate: {success_rate:.2%}")
        report.append("")
        
        report.append("📄 FILE DETAILS:")
        for detail in transform_analysis["transformation_details"]:
            status = "✅" if detail["changes_made"] else "⏭️"
            report.append(f"  {status} {detail['filename']} ({detail['chunks_count']} chunks)")
    else:
        report.append(f"❌ {transform_analysis['error']}")
    
    report.append("")
    report.append("=" * 80)
    
    return "\n".join(report)

def main():
    """Main analysis function"""
    try:
        report = generate_report()
        print(report)
        
        # Save report to file
        report_file = Path(__file__).parent / "analysis_report.txt"
        with open(report_file, 'w') as f:
            f.write(report)
        print(f"\n📋 Report saved to: {report_file}")
        
        # Interactive options
        print("\n🔍 Additional Analysis Options:")
        print("1. View detailed canonical mapping")
        print("2. Compare specific file before/after")
        print("3. Exit")
        
        choice = input("\nEnter your choice (1-3): ").strip()
        
        if choice == "1":
            map_analysis = analyze_canonical_map()
            if "all_clusters" in map_analysis:
                print("\n🔗 ALL NAME CLUSTERS:")
                for canonical, variations in map_analysis["all_clusters"].items():
                    if len(variations) > 1:
                        print(f"'{canonical}' ← {variations}")
        
        elif choice == "2":
            config = load_config()
            output_dir = Path(config['OUTPUT_DIR'])
            files = [f.name for f in output_dir.glob("*.json") if f.name != "batch_processing_summary.json"]
            
            print("\nAvailable files:")
            for i, filename in enumerate(files, 1):
                print(f"{i}. {filename}")
            
            try:
                file_choice = int(input("\nEnter file number: ")) - 1
                if 0 <= file_choice < len(files):
                    comparison = compare_before_after(files[file_choice])
                    if "error" not in comparison:
                        print(f"\n📄 COMPARISON: {comparison['filename']}")
                        print(f"Total chunks: {comparison['total_chunks']}")
                        print(f"Changed chunks: {comparison['changed_chunks']}")
                        
                        for diff in comparison['differences']:
                            print(f"\nChunk {diff['chunk_index']}:")
                            print(f"BEFORE: {diff['before']}")
                            print(f"AFTER:  {diff['after']}")
                    else:
                        print(f"❌ {comparison['error']}")
                else:
                    print("❌ Invalid file selection")
            except ValueError:
                print("❌ Invalid input")
        
    except Exception as e:
        print(f"❌ Analysis failed: {e}")

if __name__ == "__main__":
    main()
