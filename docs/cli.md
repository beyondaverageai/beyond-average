# `ba`: BA Agent in your terminal

`ba` is BA Agent, the Beyond Average agent, in a terminal. It works in the folder it starts in, like a coding agent: it reads and edits files, runs commands, and with Beyond Average Hub installed it also drives the suite's apps and Roblox Studio. Its chats show up in BA Agent's history in the Hub and every app.

## Install

**With the Hub (Windows, no Node needed).** Hub → **Settings → Updates → Command line (ba)** is on by default. It puts `ba` on your PATH and updates it with the Hub. Open a new terminal and run `ba`.

**With npm (Windows, macOS, Linux).** Needs Node 18 or newer.

```bash
npm i -g @beyondaverage/cli
```

Without the Hub, `ba` has the file and command tools only. Install the Hub on Windows for the app and Studio tools.

## Sign in

```bash
ba login     # opens the browser; approve "Sign in to ba?"
ba whoami    # account, plan, credits
ba logout
```

If the Hub is installed and signed in, `ba` is already signed in.

## Use

```bash
cd MyGame
ba                          # chat in this folder
ba "why does my sword do 0 damage?"   # one answer, then exit
ba -c                       # continue the last chat in this folder
ba --resume                 # pick an earlier chat
```

The first time you run `ba` in a folder it asks whether to work there. System folders, drive roots and your home folder always ask, with No as the default.

## Options

```
-p, --print                one-shot: print the answer and exit
--json                     one-shot: print one JSON object (text, credits, tools used…)
-y, --yes                  approve everything that isn't dangerous
--allow "<pattern>"        run matching commands without asking ("git *", "npm test"); repeatable
--readonly                 no file changes, no commands that write, no app or Studio changes
-m, --model <name>         agent (default) or a model name
--effort low|medium|high   thinking (Quick / Balanced / Deep)
--no-web                   no web search
-C, --cwd <folder>         work in another folder
--show-thinking            print the thinking instead of a collapsed line
--version                  version and where ba came from (npm or Hub)
```

Exit codes: `0` done, `1` error, `2` bad usage, `130` stopped.

## Approvals

| What | Asks? |
|---|---|
| Reading files in the folder | No. Outside the folder, or sensitive files (`.ssh`, `.env`…), it asks. |
| Editing files | Yes, with the diff. `a` (always) covers file edits for the session. |
| Running commands | Read-only commands run. Dangerous ones always ask, in red. Others ask unless `--yes` or an `--allow` rule matches. |
| App and Studio changes | Yes. Saving or publishing your place is refused. |

At a prompt: `y` yes, `a` always, `n` or Esc no.

## In the chat

- **Keys:** Enter sends (or queues while a reply runs) · Ctrl+J or Alt+Enter new line · Esc stop · Ctrl+C twice to leave · ↑↓ history · `/` command menu.
- **Commands:** `/new`, `/model`, `/effort`, `/web`, `/context`, `/cost`, `/compact`, `/rewind`, `/skill`, `/export`, `/copy`, `/retry`, `/cd <folder>`, `/init`, `/help`, `/exit`.
- **`/init`** asks the agent to look around and write `BA.md`, the folder's project memory. `ba` reads `BA.md` at the start of every chat.

## Skills

Saved one-click workflows from your account run in the terminal too:

```bash
ba skills                                   # list them
ba run <skill> --var game_name="My Game"  # run one, filling its blanks
```

## Plans and credits

`ba` is free to use. AI replies use your account's credits, the same as the in-app chat; the Free plan includes the free models.
