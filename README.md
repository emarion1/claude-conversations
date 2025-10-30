# Claude Conversations Repository

A repository for saving and organizing conversations with Claude AI.

## Structure

```
conversations/
├── 2025/           # Conversations by year
├── templates/      # Templates for different conversation types
├── drafts/         # Work-in-progress conversations
└── costs/          # Automated Claude CLI cost tracking
    ├── claude-cli-costs.md      # Main cost log
    ├── monthly/                 # Monthly breakdowns
    │   └── 2025-10.md          # October 2025 costs
    └── scripts/                 # Analysis utilities
```

## Usage

### Saving a Conversation

**Simple 3-command sequence for each Claude session:**
1. `summarize this conversation using the template you provided`
2. `commit it`
3. `git push`

**Manual approach (if needed):**
1. Copy the conversation content from Claude
2. Create a new markdown file with a descriptive name:
   ```
   conversations/2025/YYYY-MM-DD-topic-name.md
   ```
3. Use the template format (see templates folder)
4. Commit and push:
   ```bash
   git add .
   git commit -m "Add conversation: [topic]"
   git push
   ```

### File Naming Convention

Use this format for conversation files:
- `YYYY-MM-DD-short-description.md`
- Example: `2025-01-15-ai-adoption-planning.md`

### Template Usage

- Copy from `templates/conversation-template.md`
- Fill in the conversation details
- Include context, key insights, and action items

### Reading/Browsing Conversations

1. **List available conversations:**
   ```bash
   ls conversations/2025/
   ```

2. **Read a specific conversation:**
   ```bash
   Read /Users/emarion/claude-conversations/conversations/2025/YYYY-MM-DD-topic.md
   ```

3. **Search conversations:**
   ```bash
   grep "keyword" conversations/**/*.md
   ```

4. **View on GitHub:**
   Browse at https://github.com/emarion1/claude-conversations

## Cost Tracking

### Automatic Cost Logging
Claude CLI sessions are automatically tracked and logged:
- **Shell wrapper**: Intercepts `claude` command and logs costs after each session
- **Auto-commit**: Updates are automatically committed and pushed to GitHub
- **Structured data**: Costs are organized in markdown files for easy analysis

### Viewing Cost Data
1. **Current costs summary:**
   ```bash
   Read /Users/emarion/claude-conversations/costs/claude-cli-costs.md
   ```

2. **Monthly breakdown:**
   ```bash
   Read /Users/emarion/claude-conversations/costs/monthly/2025-10.md
   ```

3. **Manual cost check:**
   ```bash
   /cost --all
   ```

### Cost Analysis Features
- **Session tracking**: Individual session costs and model usage
- **Monthly summaries**: Detailed monthly cost analysis
- **Model breakdown**: Haiku vs Sonnet usage patterns
- **Trend analysis**: Cost patterns over time
- **Git history**: Full version control of cost changes

### Cost Files
- `costs/claude-cli-costs.md`: Main log with recent sessions
- `costs/monthly/YYYY-MM.md`: Monthly detailed analysis
- `costs/README.md`: Full documentation of cost tracking system

## Tips

- Save conversations immediately after important sessions
- Include relevant context and outcomes
- Tag conversations with keywords for easy searching
- Use git history to track conversation evolution
- Browse conversations by listing files first, then reading specific ones
- Cost tracking happens automatically - no manual intervention needed
- View cost trends to optimize Claude CLI usage patterns