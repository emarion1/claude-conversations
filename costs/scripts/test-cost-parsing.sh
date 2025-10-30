#!/bin/bash

# Test script for cost parsing logic
echo "Testing Claude CLI cost parsing..."

# Simulate cost output (based on your actual output format)
cat > /tmp/test_cost_output << 'EOF'
Total cost:            $5.61
Total duration (API):  23m 12.6s
Total duration (wall): 22h 2m 34.3s
Total code changes:    1800 lines added, 8 lines removed
Usage by model:
    claude-3-5-haiku:  150.6k input, 3.8k output, 0 cache read, 0 cache write ($0.1357)
       claude-sonnet:  413 input, 47.1k output, 7.1m cache read, 705.8k cache write ($5.48)
EOF

echo "Simulated cost output:"
cat /tmp/test_cost_output
echo ""

# Test parsing logic
cost_output=$(cat /tmp/test_cost_output)
total_cost=$(echo "$cost_output" | grep "Total cost:" | sed 's/.*\$\([0-9.]*\).*/\1/')
haiku_cost=$(echo "$cost_output" | grep "claude-3-5-haiku:" | sed 's/.*(\$\([0-9.]*\)).*/\1/')
sonnet_cost=$(echo "$cost_output" | grep "claude-sonnet:" | sed 's/.*(\$\([0-9.]*\)).*/\1/')

echo "Parsed values:"
echo "  Total cost: '$total_cost'"
echo "  Haiku cost: '$haiku_cost'"
echo "  Sonnet cost: '$sonnet_cost'"

# Clean up
rm /tmp/test_cost_output

if [[ -n "$total_cost" && -n "$haiku_cost" && -n "$sonnet_cost" ]]; then
    echo "✅ Cost parsing test PASSED"
    exit 0
else
    echo "❌ Cost parsing test FAILED"
    exit 1
fi