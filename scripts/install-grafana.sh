#!/bin/bash
echo "📈 Installing Grafana..."

# Install Grafana
if [ -f /etc/debian_version ]; then
    # Ubuntu/Debian
    wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
    echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee /etc/apt/sources.list.d/grafana.list
    sudo apt update
    sudo apt install -y grafana
elif [ -f /etc/redhat-release ]; then
    # CentOS/RHEL
    sudo tee /etc/yum.repos.d/grafana.repo > /dev/null <<'EOF'
[grafana]
name=grafana
baseurl=https://packages.grafana.com/oss/rpm
repo_gpgcheck=1
enabled=1
gpgcheck=1
gpgkey=https://packages.grafana.com/gpg.key
EOF
    sudo yum install -y grafana
fi

# Start Grafana
sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl enable grafana-server

echo "✅ Grafana installed and running on port 3000"
echo "📝 Access at: http://your-server-ip:3000"
echo "🔑 Default login: admin / admin"