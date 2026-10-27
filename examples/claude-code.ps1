# Adds the Beyond Average MCP server to Claude Code for every session on this PC.
# Uses the default install location; the Hub's AI assistants page shows yours.
$launcher = Join-Path $env:LOCALAPPDATA 'Programs\Beyond Average\Beyond Average Hub\BeyondAverageMCP.exe'
if (-not (Test-Path $launcher)) { throw "BeyondAverageMCP.exe not found at $launcher. Install Beyond Average Hub first, or set `$launcher to your install path." }
claude mcp add beyond-average --scope user -- "$launcher"
