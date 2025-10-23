# Linux Server Monitoring with Prometheus + Grafana

A complete guide to setting up enterprise-grade monitoring for Linux servers using Prometheus and Grafana.

## 🚀 Features
- Real-time CPU, memory, disk, and network monitoring
- Beautiful Grafana dashboards with historical data
- Automated alerting ready for production
- Stress testing scripts to validate monitoring

## 📊 Demo Results
- **CPU Monitoring**: Detected load spikes from 7% to 45%
- **Memory Tracking**: Captured usage increases from 27% to 56%
- **Real-time Updates**: Dashboard refreshes every 15 seconds
- **Historical Analysis**: Complete timeline of system performance

## 🛠️ Quick Setup

### 1. Install Prometheus
```bash
wget https://github.com/prometheus/prometheus/releases/download/v2.47.0/prometheus-2.47.0.linux-amd64.tar.gz
tar xvf prometheus-2.47.0.linux-amd64.tar.gz
sudo cp prometheus /usr/local/bin/
```

### 2. Install Node Exporter
```bash
wget https://github.com/prometheus/node_exporter/releases/download/v1.6.1/node_exporter-1.6.1.linux-amd64.tar.gz
tar xvf node_exporter-1.6.1.linux-amd64.tar.gz  
sudo cp node_exporter /usr/local/bin/
```
### 3. Install Grafana
```bash
# Ubuntu/Debian
sudo apt-get install -y grafana
# CentOS/RHEL
sudo yum install grafana
```

### 4. Import Dashboard
Grafana URL: http://your-server:3000

Import Dashboard ID: 1860 (Node Exporter Full)


### 🔥 Stress Testing
### Validate your monitoring with:

```bash
# CPU Stress Test
stress-ng --cpu 4 --timeout 60s

# Memory Stress Test  
stress-ng --vm 1 --vm-bytes 1G --timeout 30s

# Disk I/O Test
stress-ng --hdd 1 --timeout 30s
```


### 🎯 Skills Demonstrated
### Linux System Administration
### Prometheus Configuration & Query Language
### Grafana Dashboard Creation
### System Performance Analysis
### Real-time Monitoring Setup