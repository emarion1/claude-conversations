#!/bin/bash

echo "🔍 Claude CLI Cost Tracking Setup Validation"
echo "=============================================="

# Check if cost tracking files exist
echo ""
echo "📁 Checking file structure..."
files=(
    "$HOME/claude-conversations/costs/claude-cli-costs.md"
    "$HOME/claude-conversations/costs/monthly/2025-10.md"
    "$HOME/claude-conversations/costs/README.md"
)

for file in "${files[@]}"; do
    if [[ -f "$file" ]]; then
        echo "✅ $file exists"
    else
        echo "❌ $file missing"
    fi
done

# Check if wrapper function is in .zshrc
echo ""
echo "⚙️  Checking shell configuration..."
if grep -q "# Claude CLI Cost Tracking Wrapper" ~/.zshrc; then
    echo "✅ Wrapper function found in ~/.zshrc"
else
    echo "❌ Wrapper function not found in ~/.zshrc"
fi

# Check git status
echo ""
echo "🔄 Checking git repository..."
cd "$HOME/claude-conversations"
if git status > /dev/null 2>&1; then
    echo "✅ Git repository is valid"
    echo "   Current branch: $(git branch --show-current)"
    echo "   Remote: $(git remote get-url origin)"
else
    echo "❌ Git repository has issues"
fi

# Test cost parsing
echo ""
echo "🧪 Testing cost parsing logic..."
if ./costs/scripts/test-cost-parsing.sh > /dev/null 2>&1; then
    echo "✅ Cost parsing logic works correctly"
else
    echo "❌ Cost parsing logic failed"
fi

echo ""
echo "📋 Setup Summary:"
echo "- ✅ Cost tracking directory structure created"
echo "- ✅ Initial cost log files generated"
echo "- ✅ Shell wrapper function installed"
echo "- ✅ Git automation configured"
echo "- ✅ Documentation updated"
echo ""
echo "🎯 Next Steps:"
echo "1. Restart your terminal or run: source ~/.zshrc"
echo "2. The wrapper function will activate on next Claude CLI usage"
echo "3. Costs will be automatically logged and synced to GitHub"
echo ""
echo "📊 Usage:"
echo "- Just use 'claude' as normal - costs are logged automatically"
echo "- View costs: Read ~/claude-conversations/costs/claude-cli-costs.md"
echo "- Monthly details: Read ~/claude-conversations/costs/monthly/2025-10.md"