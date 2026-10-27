# Setup prompt

Copy this into Claude Code, Cursor, Codex or any other assistant that can edit files and run commands on your PC. It connects the Beyond Average MCP server to that assistant, then walks you through setting up the suite.

The same text is in [`setup-prompt.txt`](setup-prompt.txt) (plain text, for copy buttons).

Before you paste it, install **Beyond Average Hub** from [beyondaverage.io/downloads](https://beyondaverage.io/downloads) and sign in. Faster still: in the Hub, open **AI assistants** and click **Connect**.

```text
Connect the Beyond Average MCP server to this assistant, then help me set up the suite. Beyond Average is a free toolkit of Roblox game-dev apps for Windows; its MCP server gives you Roblox tools (VFX, skies, icons, Blender assets, uploads, sounds, market research, live game stats). Setup guide: https://github.com/beyondaverageai/beyond-average/blob/main/docs/mcp-setup.md

1. Check that Beyond Average Hub is installed. The MCP launcher is BeyondAverageMCP.exe in the Hub's install folder, by default %LOCALAPPDATA%\Programs\Beyond Average\Beyond Average Hub\BeyondAverageMCP.exe (expand %LOCALAPPDATA% to the real path). If it isn't there, ask me where I installed the suite. If the Hub isn't installed at all, tell me to download it from https://beyondaverage.io/downloads, sign in, and run this again.
2. Add it as a stdio MCP server named "beyond-average" with that exe as the command and no arguments, using this assistant's own way of adding MCP servers (Claude Code: claude mcp add beyond-average --scope user -- "<path>"; Codex: a [mcp_servers.beyond-average] table in ~/.codex/config.toml with tool_timeout_sec = 600; Cursor: ~/.cursor/mcp.json). Keep everything else in the config file as it is, and back the file up first.
3. Tell me if I need to restart you or start a new session to load it.
4. Once the beyond-average tools are loaded, run suite_setup_status and walk me through what's missing, one step at a time: install the apps I want with hub_install (ask me which), then configure each installed app with the values I give you (Forge upload creator, Soundstage sound folders, Glyph icon pack folders, Outpost project folders, Kiln's Blender, Vitals games). Don't guess paths or ids.

Rules: never ask for my password or any API key. If my Roblox API key is missing, tell me to add it myself in any Beyond Average app under Settings → API keys. Don't upload, publish or change anything on Roblox during setup.
```

## After setup

Try one of these:

- *Make a golden holy-strike VFX and send it to my open Studio place.*
- *Give my game a stormy sunset sky.*
- *Find a coin, a gem and a shop icon in my packs and export them gold at 256 px.*
- *What's breaking out on Roblox this week, and is the name "Sky Bakery" taken?*
- *How did my game do since yesterday's update?*
