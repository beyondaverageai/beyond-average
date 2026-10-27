# MCP setup

Connect the Beyond Average MCP server to your AI assistant. The server gives the assistant the suite's Roblox tools: VFX, skies, icons, Blender assets, uploads, sounds, market research and live game stats ([full list](tools.md)).

## Before you start

1. Install **Beyond Average Hub** for Windows from [beyondaverage.io/downloads](https://beyondaverage.io/downloads) and sign in. The tools act as the account signed in on this PC.
2. Install the apps you want from the Hub (or ask your assistant to do it later with `hub_install`).

## The easy way: the Hub does it

Open the Hub and go to **AI assistants**. Every supported client gets a card that shows whether it's installed and connected. Click **Connect** and the Hub writes the config for you:

- it keeps a backup of the file (`<file>.bak`),
- it leaves everything else in the file as it is,
- it refuses to touch a file it can't parse,
- if the launcher ever moves, it fixes the path on the next start.

Then restart the client (or start a new session) and the tools appear.

## The launcher path

Every client starts the server through `BeyondAverageMCP.exe`, a small launcher the Hub installs next to itself. The launcher always runs the current Hub version, so your config keeps working after updates.

With the default install location the path is:

```
C:\Users\<you>\AppData\Local\Programs\Beyond Average\Beyond Average Hub\BeyondAverageMCP.exe
```

Replace `<you>` with your Windows user folder name. If you installed the suite somewhere else, the Hub's **AI assistants** page shows the exact path with a copy button. In JSON files, write each `\` as `\\`.

The server name is always `beyond-average`.

## Clients

| Client | Maker | Where the config goes |
|---|---|---|
| [Claude Code](#claude-code) | Anthropic | `claude mcp add` (user scope) |
| [Claude Desktop](#claude-desktop) | Anthropic | `claude_desktop_config.json` |
| [Codex & ChatGPT desktop](#codex-cli-codex-ide-extension-chatgpt-desktop) | OpenAI | `~/.codex/config.toml` |
| [Cursor](#cursor) | Anysphere | `~/.cursor/mcp.json` |
| [VS Code (Copilot agent mode)](#vs-code-copilot-agent-mode) | Microsoft | user `mcp.json` |
| [Gemini CLI](#gemini-cli) | Google | `~/.gemini/settings.json` |
| [Windsurf](#windsurf-kiro-cline-lm-studio) | Windsurf | `~/.codeium/windsurf/mcp_config.json` |
| [Kiro](#windsurf-kiro-cline-lm-studio) | AWS | `~/.kiro/settings/mcp.json` |
| [Cline](#windsurf-kiro-cline-lm-studio) | Cline | `cline_mcp_settings.json` |
| [LM Studio](#windsurf-kiro-cline-lm-studio) | Element Labs | `~/.lmstudio/mcp.json` |
| [Any other MCP client](#any-other-mcp-client) | | its `mcpServers` config |
| [ChatGPT on the web](#chatgpt-on-the-web) | OpenAI | not supported (needs a remote server) |

### Claude Code

Run once in any terminal. `--scope user` makes the server available in every Claude Code session on this PC.

```powershell
claude mcp add beyond-average --scope user -- "C:\Users\<you>\AppData\Local\Programs\Beyond Average\Beyond Average Hub\BeyondAverageMCP.exe"
```

New Claude Code sessions pick it up. Check with `claude mcp get beyond-average`, or `/mcp` inside a session.

### Claude Desktop

Open **Settings → Developer → Edit Config**, or edit the file directly:

- standard install: `%APPDATA%\Claude\claude_desktop_config.json`
- Microsoft Store install: `%LOCALAPPDATA%\Packages\Claude_<id>\LocalCache\Roaming\Claude\claude_desktop_config.json`

```json
{
  "mcpServers": {
    "beyond-average": {
      "command": "C:\\Users\\<you>\\AppData\\Local\\Programs\\Beyond Average\\Beyond Average Hub\\BeyondAverageMCP.exe",
      "args": []
    }
  }
}
```

If the file already has other servers, add the `beyond-average` entry inside the existing `mcpServers` object. Quit and reopen Claude Desktop to load it.

Example file: [`examples/claude_desktop_config.json`](../examples/claude_desktop_config.json)

### Codex CLI, Codex IDE extension, ChatGPT desktop

The Codex CLI, the Codex IDE extension and the ChatGPT (Codex) desktop app share one file: `~/.codex/config.toml` (or `$CODEX_HOME\config.toml`). Add this table at the end:

```toml
[mcp_servers.beyond-average]
command = 'C:\Users\<you>\AppData\Local\Programs\Beyond Average\Beyond Average Hub\BeyondAverageMCP.exe'
args = []
startup_timeout_sec = 30
tool_timeout_sec = 600
```

The single quotes make it a literal TOML string, so the backslashes stay as they are. `tool_timeout_sec = 600` gives long jobs (Blender builds, app installs) time to finish.

Restart the desktop app (**Settings → MCP servers → Restart**) or start a new Codex session. Type `/mcp` to see it.

Example file: [`examples/codex-config.toml`](../examples/codex-config.toml)

### Cursor

Global config for every project: `~/.cursor/mcp.json` (`C:\Users\<you>\.cursor\mcp.json`).

```json
{
  "mcpServers": {
    "beyond-average": {
      "type": "stdio",
      "command": "C:\\Users\\<you>\\AppData\\Local\\Programs\\Beyond Average\\Beyond Average Hub\\BeyondAverageMCP.exe",
      "args": []
    }
  }
}
```

Turn it on in **Cursor Settings → MCP** if Cursor asks, or restart Cursor.

Example file: [`examples/cursor-mcp.json`](../examples/cursor-mcp.json)

### VS Code (Copilot agent mode)

Run **MCP: Open User Configuration** from the Command Palette (the file is `%APPDATA%\Code\User\mcp.json`). Note the root key is `servers`, not `mcpServers`:

```json
{
  "servers": {
    "beyond-average": {
      "type": "stdio",
      "command": "C:\\Users\\<you>\\AppData\\Local\\Programs\\Beyond Average\\Beyond Average Hub\\BeyondAverageMCP.exe",
      "args": []
    }
  }
}
```

Start the server from the MCP view or the Copilot chat tools menu.

Example file: [`examples/vscode-mcp.json`](../examples/vscode-mcp.json)

### Gemini CLI

User settings: `~/.gemini/settings.json` (`C:\Users\<you>\.gemini\settings.json`).

```json
{
  "mcpServers": {
    "beyond-average": {
      "command": "C:\\Users\\<you>\\AppData\\Local\\Programs\\Beyond Average\\Beyond Average Hub\\BeyondAverageMCP.exe",
      "args": []
    }
  }
}
```

Start a new Gemini CLI session; `/mcp` lists it.

Example file: [`examples/gemini-settings.json`](../examples/gemini-settings.json)

### Windsurf, Kiro, Cline, LM Studio

The Hub connects these too. By hand, add the standard `mcpServers` entry (below) to:

- **Windsurf:** `~/.codeium/windsurf/mcp_config.json`, then press Refresh under MCPs in Cascade.
- **Kiro:** `~/.kiro/settings/mcp.json` for every workspace (a workspace `.kiro/settings/mcp.json` still wins).
- **Cline:** `cline_mcp_settings.json`, the file **Configure MCP Servers** opens in Cline.
- **LM Studio:** `~/.lmstudio/mcp.json` (Program tab → Install → Edit mcp.json); it loads on save.

### Any other MCP client

Beyond Average is a standard **stdio** MCP server with no arguments and no environment variables. Most clients (Zed, JetBrains AI Assistant and others) accept the same `mcpServers` shape:

```json
{
  "mcpServers": {
    "beyond-average": {
      "command": "C:\\Users\\<you>\\AppData\\Local\\Programs\\Beyond Average\\Beyond Average Hub\\BeyondAverageMCP.exe",
      "args": []
    }
  }
}
```

We test the clients listed above; for others, check the client's own MCP docs for the file location.

### ChatGPT on the web

ChatGPT in the browser only connects to remote MCP servers over public HTTPS. Beyond Average runs on your PC, signed in as you, and doesn't put your data on the internet, so it can't be added there. Use the ChatGPT (Codex) desktop app instead (see [Codex](#codex-cli-codex-ide-extension-chatgpt-desktop)).

## After connecting: set up the suite

The server ships a prompt called **Set up Beyond Average** (`setup_suite`). Pick it from your client's prompt menu (in Claude Code: `/mcp__beyond-average__setup_suite`), or just say:

> Set up my Beyond Average suite.

The assistant runs `suite_setup_status`, shows a checklist, and walks you through the rest one step at a time: installing apps, signing in, adding your Roblox API key in an app (you type it there, never in chat), and pointing each app at your folders, Blender and games.

## Troubleshooting

| Problem | Fix |
|---|---|
| No `beyond-average` tools after connecting | Restart the client or start a new session. Most clients only read MCP config at start. |
| "Not signed in" errors | Open any Beyond Average app and sign in with **Keep me signed in** ticked. |
| Only some tools show up | Tools appear per installed app. Install the rest from the Hub, or ask the assistant to run `hub_install`. |
| The server fails to start | Check the path: the Hub's **AI assistants** page has the exact one. In JSON, every `\` must be `\\`. |
| A sandboxed client can't start it | Restart the AI app so the launcher can start the server outside the sandbox. |
| Kiln or install calls time out | Raise the client's tool timeout (Codex: `tool_timeout_sec = 600`). Blender builds can take several minutes. |
| Codex doesn't list it | Make sure the table is `[mcp_servers.beyond-average]` (with an underscore) and the path uses single quotes. |

Still stuck? [Open an issue](../../../issues) with your client, its version and the error text. Leave out paths with your user name, and never post keys or tokens.
