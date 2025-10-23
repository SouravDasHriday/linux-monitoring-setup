#!/bin/bash
echo "🔥 STARTING MONITORING STRESS TESTS 🔥"
echo "This will test CPU, Memory, and Disk monitoring"
echo "================================================"

# Install stress-ng if not present
if ! command -v stress-ng &> /dev/null; then
    echo "Installing stress-ng..."
    sudo apt update && sudo apt install -y stress-ng
fi

echo ""
echo "🚀 TEST 1: CPU Monitoring (30 seconds)"
echo "Watching CPU load increase..."
stress-ng --cpu 2 --timeout 30s
echo "✅ CPU test completed - Check Grafana dashboard!"

echo ""
echo "💾 TEST 2: Memory Monitoring (30 seconds)" 
echo "Watching RAM usage increase..."
stress-ng --vm 1 --vm-bytes 1G --timeout 30s
echo "✅ Memory test completed - Check Grafana dashboard!"

echo ""
echo "💽 TEST 3: Disk I/O Monitoring (20 seconds)"
echo "Watching disk activity increase..."
stress-ng --hdd 1 --timeout 20s
echo "✅ Disk test completed - Check Grafana dashboard!"

echo ""
echo "================================================"
echo "🎉 ALL STRESS TESTS COMPLETED!"
echo "📊 Open your Grafana dashboard to see the results:"
echo "   http://192.168.122.10:3000"
echo ""
echo "You should see:"
echo "• CPU load spikes"
echo "• Memory usage increases" 
echo "• Disk activity peaks"
echo "================================================"