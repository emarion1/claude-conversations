# Claude Conversations Repository

A repository for saving and organizing conversations with Claude AI.

## Structure

```
conversations/
├── 2025/           # Conversations by year
├── templates/      # Templates for different conversation types
└── drafts/         # Work-in-progress conversations
```

## Usage

### Saving a Conversation

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

## Tips

- Save conversations immediately after important sessions
- Include relevant context and outcomes
- Tag conversations with keywords for easy searching
- Use git history to track conversation evolution
- Browse conversations by listing files first, then reading specific ones