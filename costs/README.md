# Claude CLI Cost Tracking

This directory contains automated cost tracking for Claude CLI sessions.

## Structure
```
costs/
├── claude-cli-costs.md          # Main log with recent sessions and summaries
├── monthly/                     # Monthly breakdowns
│   ├── 2025-10.md              # October 2025 detailed analysis
│   └── 2025-11.md              # November 2025 (auto-created)
├── scripts/                     # Analysis and utility scripts
└── README.md                    # This file
```

## How It Works

### Automatic Logging
- Shell wrapper function intercepts `claude` command
- Runs `/cost --all` after each session ends
- Parses cost data and updates markdown files
- Auto-commits and pushes to GitHub

### Data Captured
- **Session costs**: Individual session expenses
- **Model usage**: Haiku vs Sonnet token usage
- **Time tracking**: Session duration and timestamps
- **Trends**: Monthly summaries and analysis

### Files Updated
1. **Main log** (`claude-cli-costs.md`): Recent sessions and overall summary
2. **Monthly files** (`monthly/YYYY-MM.md`): Detailed monthly analysis
3. **Git commits**: Automatic version control with cost updates

## Usage

### View Current Costs
```bash
# Read main log
Read /Users/emarion/claude-conversations/costs/claude-cli-costs.md

# View this month's details
Read /Users/emarion/claude-conversations/costs/monthly/2025-10.md
```

### Manual Cost Check
```bash
# In Claude CLI session
/cost --all
```

### Search Cost History
```bash
# Search for expensive sessions
grep "\$[5-9]\." costs/claude-cli-costs.md

# Find Sonnet usage
grep -i sonnet costs/monthly/*.md
```

## Cost Analysis Features

### Summary Metrics
- Total lifetime costs
- Monthly spending trends
- Average cost per session
- Model usage patterns

### Detailed Tracking
- Per-session breakdowns
- Token usage analysis
- Time-based patterns
- Activity categorization

## Automation Features

### Git Integration
- Auto-commit after each session
- Descriptive commit messages with cost deltas
- Automatic push to private GitHub repo
- Version history of all cost changes

### File Management
- Auto-creates monthly files
- Updates summaries across files
- Maintains consistent formatting
- Links sessions to conversations

---
*Part of the claude-conversations repository ecosystem*