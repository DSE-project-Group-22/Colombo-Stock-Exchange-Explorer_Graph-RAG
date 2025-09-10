"""
Test script for the simplified chat service with Redis
"""
import requests
import json
import uuid
from datetime import datetime

# Base URL for the service
BASE_URL = "http://localhost:8001"

def test_health():
    """Test health endpoint"""
    print("\n=== Testing Health Endpoint ===")
    response = requests.get(f"{BASE_URL}/health")
    print(f"Status Code: {response.status_code}")
    if response.status_code == 200:
        data = response.json()
        print(f"Service: {data['service']}")
        print(f"Redis Connected: {data['redis']['connected']}")
        print(f"Redis Host: {data['redis']['host']}:{data['redis']['port']}")
    else:
        print(f"Health check failed: {response.text}")
    return response.status_code == 200

def test_chat():
    """Test chat endpoint"""
    print("\n=== Testing Chat Endpoint ===")
    thread_id = f"test_thread_{uuid.uuid4().hex[:8]}"
    
    # Send first message
    chat_request = {
        "thread_id": thread_id,
        "message": "Hello, this is a test message!",
        "user_id": "test_user_123"
    }
    
    print(f"Thread ID: {thread_id}")
    print(f"Sending message: {chat_request['message']}")
    
    response = requests.post(f"{BASE_URL}/chat", json=chat_request)
    print(f"Status Code: {response.status_code}")
    
    if response.status_code == 200:
        data = response.json()
        print(f"Success: {data['success']}")
        print(f"Message Count: {data['message_count']}")
        print(f"User Message Role: {data['user_message']['role']}")
        print(f"Agent Response: {data['agent_message']['content']}")
        print(f"Agent Role: {data['agent_message']['role']}")
        
        # Send second message to same thread
        chat_request['message'] = "This is a follow-up message"
        response = requests.post(f"{BASE_URL}/chat", json=chat_request)
        if response.status_code == 200:
            data = response.json()
            print(f"\nSecond message sent. Total messages: {data['message_count']}")
    else:
        print(f"Chat failed: {response.text}")
    
    return thread_id if response.status_code == 200 else None

def test_history(thread_id):
    """Test history retrieval"""
    print(f"\n=== Testing History Retrieval for Thread {thread_id} ===")
    
    response = requests.get(f"{BASE_URL}/chat/history/{thread_id}")
    print(f"Status Code: {response.status_code}")
    
    if response.status_code == 200:
        data = response.json()
        print(f"Thread ID: {data['thread_id']}")
        print(f"Total Messages: {data['message_count']}")
        print("\nMessage History:")
        for i, msg in enumerate(data['messages'], 1):
            print(f"  {i}. [{msg['role']}]: {msg['content'][:50]}...")
            print(f"     Timestamp: {msg['timestamp']}")
    else:
        print(f"History retrieval failed: {response.text}")
    
    return response.status_code == 200

def test_threads_list():
    """Test threads listing"""
    print("\n=== Testing Threads List ===")
    
    response = requests.get(f"{BASE_URL}/chat/threads")
    print(f"Status Code: {response.status_code}")
    
    if response.status_code == 200:
        threads = response.json()
        print(f"Active Threads: {len(threads)}")
        for thread in threads[:3]:  # Show first 3 threads
            print(f"  - Thread: {thread['thread_id']}")
            print(f"    Messages: {thread['message_count']}")
            print(f"    Last Activity: {thread['last_activity']}")
    else:
        print(f"Threads listing failed: {response.text}")
    
    return response.status_code == 200

def test_delete_thread(thread_id):
    """Test thread deletion"""
    print(f"\n=== Testing Thread Deletion for {thread_id} ===")
    
    response = requests.delete(f"{BASE_URL}/chat/thread/{thread_id}")
    print(f"Status Code: {response.status_code}")
    
    if response.status_code == 200:
        data = response.json()
        print(f"Success: {data['success']}")
        print(f"Message: {data['message']}")
        print(f"Keys Deleted: {data['keys_deleted']}")
    else:
        print(f"Thread deletion failed: {response.text}")
    
    return response.status_code == 200

def main():
    """Run all tests"""
    print("=" * 60)
    print("Testing Chat Service with Redis Backend")
    print("=" * 60)
    
    # Check if service is running
    try:
        response = requests.get(f"{BASE_URL}/")
        print(f"Service Info: {response.json()['service']}")
        print(f"Version: {response.json()['version']}")
    except requests.exceptions.ConnectionError:
        print("ERROR: Service is not running!")
        print("Please start the service with: python server.py")
        return
    
    # Run tests
    tests_passed = []
    
    # Test health
    tests_passed.append(("Health Check", test_health()))
    
    # Test chat and get thread_id
    thread_id = test_chat()
    tests_passed.append(("Chat", thread_id is not None))
    
    if thread_id:
        # Test history retrieval
        tests_passed.append(("History", test_history(thread_id)))
        
        # Test threads listing
        tests_passed.append(("Threads List", test_threads_list()))
        
        # Test thread deletion
        tests_passed.append(("Delete Thread", test_delete_thread(thread_id)))
    
    # Summary
    print("\n" + "=" * 60)
    print("TEST SUMMARY")
    print("=" * 60)
    for test_name, passed in tests_passed:
        status = "✅ PASSED" if passed else "❌ FAILED"
        print(f"{test_name}: {status}")
    
    total_passed = sum(1 for _, passed in tests_passed if passed)
    print(f"\nTotal: {total_passed}/{len(tests_passed)} tests passed")

if __name__ == "__main__":
    main()