# Neo4j Performance Monitoring

This directory contains monitoring infrastructure for tracking Neo4j database performance statistics, including query execution times, resource utilization, and cache hit ratios during load tests.

## Overview

The monitoring stack includes:
- **Prometheus**: Metrics collection and storage
- **Grafana**: Visualization dashboards
- **Node Exporter**: System metrics
- **Custom monitoring scripts**: Neo4j-specific performance metrics
- **Load testing tools**: Generate load and measure performance

## Quick Start

### 1. Setup Monitoring Stack

```bash
# Run the setup script
cd monitoring
./setup.sh
```

This will:
- Install required dependencies
- Start Prometheus, Grafana, and Node Exporter
- Verify service health
- Display access URLs

### 2. Start Your Main Application

```bash
# In the root directory
docker-compose up -d
```

### 3. Access Monitoring Dashboards

- **Grafana**: http://localhost:3000 (admin/admin)
- **Prometheus**: http://localhost:9090
- **Neo4j Browser**: http://localhost:7474

### 4. Run Performance Monitoring

```bash
# Continuous monitoring
python3 monitoring/neo4j_monitor.py

# Load testing
python3 monitoring/load_test_neo4j.py --duration 300 --rate 10
```

## Files Structure

```
monitoring/
├── setup.sh                    # Setup script
├── requirements.txt             # Python dependencies
├── neo4j_monitor.py            # Continuous monitoring script
├── load_test_neo4j.py          # Load testing script
├── prometheus.yml              # Prometheus configuration
├── docker-compose.monitoring.yml # Monitoring services
├── grafana/
│   ├── datasources/
│   │   └── prometheus.yml      # Grafana data source config
│   └── dashboards/
│       ├── dashboard.yml       # Dashboard provider config
│       └── neo4j-performance.json # Neo4j dashboard
└── neo4j-metrics/              # Metrics storage
```

## Monitoring Features

### Real-time Metrics

The monitoring system tracks:

1. **Query Performance**
   - Execution times
   - Query success/failure rates
   - Concurrent query counts

2. **Database Operations**
   - Transaction statistics
   - Node and relationship counts
   - Cache hit ratios

3. **Resource Utilization**
   - Memory usage (heap, page cache)
   - CPU utilization
   - Storage metrics

4. **System Health**
   - Connection counts
   - Error rates
   - Service availability

### Grafana Dashboard

The included dashboard provides:
- Query execution time trends
- Cache performance metrics
- Transaction statistics
- Memory utilization graphs
- Database operation rates

### Load Testing

The load tester provides:
- Configurable test duration and query rates
- Multiple concurrent workers
- Comprehensive performance reports
- Real-time progress monitoring

## Usage Examples

### Basic Monitoring

```bash
# Start monitoring with default settings
python3 monitoring/neo4j_monitor.py
```

### Custom Load Testing

```bash
# 5-minute load test with 15 queries/second using 20 workers
python3 monitoring/load_test_neo4j.py \
  --duration 300 \
  --rate 15 \
  --workers 20 \
  --uri bolt://localhost:7687
```

### Monitoring Different Environment

```bash
# Monitor a different Neo4j instance
python3 monitoring/neo4j_monitor.py \
  --uri bolt://production-server:7687 \
  --user neo4j \
  --password production-password
```

## Configuration

### Prometheus Configuration

Edit `prometheus.yml` to add more targets:

```yaml
scrape_configs:
  - job_name: 'neo4j'
    static_configs:
      - targets: ['graph-db:2004']
    scrape_interval: 30s
```

### Grafana Dashboards

- Access Grafana at http://localhost:3000
- Import additional dashboards from the Grafana community
- Customize the included Neo4j dashboard

### Neo4j Metrics

To enable additional Neo4j metrics, update the Neo4j configuration:

```bash
# Enable query logging
NEO4J_dbms_logs_query_enabled=INFO
NEO4J_dbms_logs_query_threshold=100ms

# Enable Prometheus metrics
NEO4J_server_metrics_prometheus_enabled=true
NEO4J_server_metrics_prometheus_endpoint=0.0.0.0:2004
```

## Performance Baseline

Use the monitoring tools to establish performance baselines:

1. **Normal Operation**: Run monitoring for 24 hours under typical load
2. **Peak Load**: Use load tester to simulate maximum expected traffic
3. **Stress Testing**: Push beyond normal limits to find breaking points

## Troubleshooting

### Common Issues

1. **Neo4j Connection Refused**
   ```bash
   # Check if Neo4j is running
   docker ps | grep neo4j
   
   # Check Neo4j logs
   docker logs cse-explorer-graph-db
   ```

2. **Metrics Not Appearing in Grafana**
   ```bash
   # Check Prometheus targets
   curl http://localhost:9090/api/v1/targets
   
   # Verify Neo4j metrics endpoint
   curl http://localhost:2004/metrics
   ```

3. **Load Test Timeouts**
   ```bash
   # Reduce concurrent workers
   python3 monitoring/load_test_neo4j.py --workers 5
   
   # Reduce query rate
   python3 monitoring/load_test_neo4j.py --rate 2
   ```

### Log Locations

- **Prometheus**: Docker logs
- **Grafana**: Docker logs
- **Neo4j**: `/var/log/neo4j/` in container
- **Load Test Reports**: `neo4j_load_test_report_*.json`

## Stopping Monitoring

```bash
# Stop monitoring services
docker-compose -f docker-compose.monitoring.yml down

# Remove monitoring data (optional)
docker volume rm $(docker volume ls -q | grep prometheus)
docker volume rm $(docker volume ls -q | grep grafana)
```

## Advanced Usage

### Custom Queries for Load Testing

Edit `load_test_neo4j.py` to add domain-specific queries:

```python
# Add your custom queries
custom_queries = [
    ("Find companies by sector", "MATCH (c:Company {sector: $sector}) RETURN c.name", {"sector": "Technology"}),
    ("Stock price analysis", "MATCH (s:Stock) WHERE s.price > $min_price RETURN avg(s.price)", {"min_price": 100}),
]
```

### Alerting

Configure Prometheus alerts in `alert_rules.yml`:

```yaml
groups:
  - name: neo4j_alerts
    rules:
      - alert: HighQueryLatency
        expr: neo4j_cypher_query_execution_latency_millis > 5000
        labels:
          severity: warning
        annotations:
          summary: "High query latency detected"
```

This monitoring setup provides comprehensive insights into your Neo4j database performance and helps identify bottlenecks during load testing.
