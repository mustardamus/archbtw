---
description: commit the changes
---

- commit the code changes by obeying the following rules
  - Use imperative mood ("Add feature" not "Added feature")
  - Be extremely concise while remaining informative
  - Focus on what changed and why, not how
  - Group related changes into single bullet points when logical
  - Prioritize the most significant changes first
  - Format as, but only there are multiple changes - if you can sum up the
    changes in one line, do it:
    - First line: Concise summary of the overall theme (50 characters or less)
    - Blank line
    - Bullet points: Specific changes, each starting with a dash and space
  - Never use emojis or special characters
  - Never mention Claude, claude-code, AI assistance, or co-authoring
  - Avoid redundant or obvious statements
  - Don't include implementation details unless critical
  - The commit message should never include something like:
    ```
    │   🤖 Generated with [Claude Code](https://claude.ai/code)                   │
    │                                                                             │
    │   Co-Authored-By: Claude <noreply@anthropic.com>"
    ```
  - you will run the `git add` and `git commit` in one command with `&&`
  - After the use approved the commit command, just output "Committed :)"
