#!/usr/bin/env python3
"""
Kafka Topic Creation Script
Creates the necessary Kafka topics for the application.
Run this after starting Kafka and Zookeeper services.

Usage:
    python create_kafka_topics.py
"""

import subprocess
import sys
import time


def run_command(command, check=True):
    """Run a shell command and return the output."""
    try:
        result = subprocess.run(
            command,
            shell=True,
            capture_output=True,
            text=True,
            check=check
        )
        return result.stdout.strip(), result.returncode
    except subprocess.CalledProcessError as e:
        return e.stderr.strip(), e.returncode


def check_docker_container(container_name):
    """Check if a Docker container is running."""
    output, returncode = run_command(f"docker ps --filter name={container_name} --format '{{{{.Names}}}}'")
    return container_name in output


def create_topic(container_name, topic_name, partitions, retention_ms):
    """Create a Kafka topic."""
    bootstrap_server = "localhost:29092"
    
    # Check if topic exists
    list_cmd = f"docker exec {container_name} kafka-topics --list --bootstrap-server {bootstrap_server}"
    topics, _ = run_command(list_cmd)
    
    if topic_name in topics.split('\n'):
        print(f"  ✓ Topic '{topic_name}' already exists")
        return True
    
    # Create the topic
    create_cmd = (
        f"docker exec {container_name} kafka-topics "
        f"--create "
        f"--topic {topic_name} "
        f"--bootstrap-server {bootstrap_server} "
        f"--partitions {partitions} "
        f"--replication-factor 1 "
        f"--config retention.ms={retention_ms} "
        f"--config compression.type=gzip "
        f"--config min.insync.replicas=1"
    )
    
    _, returncode = run_command(create_cmd)
    
    if returncode == 0:
        print(f"  ✓ Topic '{topic_name}' created successfully")
        return True
    else:
        print(f"  ❌ Failed to create topic '{topic_name}'")
        return False


def main():
    """Main function to create Kafka topics."""
    print("=" * 41)
    print("Kafka Topic Creation Script")
    print("=" * 41)
    
    kafka_container = "cse-explorer-kafka"
    
    # Check if Kafka container is running
    if not check_docker_container(kafka_container):
        print(f"❌ Error: Kafka container '{kafka_container}' is not running.")
        print("Please run: docker compose up -d zookeeper kafka")
        sys.exit(1)
    
    print("✓ Kafka container is running")
    
    # Wait for Kafka to be ready
    print("Waiting for Kafka to be ready...")
    time.sleep(5)
    
    # Create topics
    print("\nCreating Kafka topics...")
    print("-" * 24)
    
    topics = [
        {
            "name": "chat.requests",
            "partitions": 3,
            "retention_ms": 604800000,  # 7 days
            "description": "For job distribution to NL Agent"
        },
        {
            "name": "chat.responses",
            "partitions": 3,
            "retention_ms": 2592000000,  # 30 days
            "description": "For audit/analytics (optional)"
        }
    ]
    
    all_success = True
    for topic in topics:
        print(f"\nCreating topic: {topic['name']}")
        print(f"  Description: {topic['description']}")
        print(f"  Partitions: {topic['partitions']}")
        print(f"  Retention: {topic['retention_ms'] // 86400000} days")
        
        success = create_topic(
            kafka_container,
            topic['name'],
            topic['partitions'],
            topic['retention_ms']
        )
        
        if not success:
            all_success = False
    
    # List all topics
    print("\nListing all topics:")
    print("-" * 19)
    list_cmd = f"docker exec {kafka_container} kafka-topics --list --bootstrap-server localhost:29092"
    topics, _ = run_command(list_cmd)
    for topic in topics.split('\n'):
        if topic:
            print(f"  • {topic}")
    
    print("\n" + "=" * 41)
    if all_success:
        print("✅ Kafka topics setup complete!")
        print("=" * 41)
        print("\nYou can now:")
        print("1. Monitor topics at http://localhost:8090 (Kafka UI)")
        print("2. Run the test script: python utils/test_messaging.py")
        print("3. Start the NL Agent consumer: python 'Natural Language Agent/kafka_runner.py'")
    else:
        print("⚠️  Some topics failed to create")
        print("=" * 41)
        sys.exit(1)


if __name__ == "__main__":
    main()