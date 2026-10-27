# Config examples

Ready-to-copy MCP configs for each client. Replace `<you>` with your Windows user folder name, or copy the exact path from the Hub's **AI assistants** page. Setup steps for each client: [docs/mcp-setup.md](../docs/mcp-setup.md).

| File | Client | Goes in |
|---|---|---|
| [`claude-code.ps1`](claude-code.ps1) | Claude Code | run it in PowerShell |
| [`claude_desktop_config.json`](claude_desktop_config.json) | Claude Desktop | `%APPDATA%\Claude\claude_desktop_config.json` |
| [`codex-config.toml`](codex-config.toml) | Codex CLI, IDE extension, ChatGPT desktop | `~/.codex/config.toml` |
| [`cursor-mcp.json`](cursor-mcp.json) | Cursor | `~/.cursor/mcp.json` |
| [`vscode-mcp.json`](vscode-mcp.json) | VS Code (Copilot agent mode) | `%APPDATA%\Code\User\mcp.json` |
| [`gemini-settings.json`](gemini-settings.json) | Gemini CLI | `~/.gemini/settings.json` |

If the file already exists, merge the `beyond-average` entry into it instead of replacing the file.
