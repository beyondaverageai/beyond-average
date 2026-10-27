# Security

## Reporting a vulnerability

Please report security issues privately, not in a public issue.

- **Email:** support@beyondaverage.io with "Security" in the subject
- **Or:** use GitHub's **Report a vulnerability** button on this repo's Security tab (private advisory)

Tell us what you found, how to reproduce it, and what an attacker could do with it. We'll confirm we got your report within 3 business days and keep you posted until it's fixed. Please give us a reasonable time to fix it before you talk about it publicly. We're happy to credit you once the fix ships.

## In scope

- The Beyond Average desktop apps and Hub, the MCP server and its launcher, and the `ba` CLI
- beyondaverage.io and its sign-in, account and chat pages
- The update and installer pipeline

Out of scope: denial of service, spam or rate-limit reports without a real impact, social engineering, and findings in third-party services we don't run.

## Keeping your setup safe

- **Never paste API keys, tokens or passwords into an AI chat or an issue.** Add your Roblox API key in an app under Settings → API keys; it's stored in the suite's encrypted vault, and no tool can read or print it.
- **Only install the Hub from [beyondaverage.io](https://beyondaverage.io/downloads).** Our installers and apps are code-signed by Beyond Average; updates install only if their signed manifest checks out.
- **Watch for fake "setup prompts".** Ours is in [docs/setup-prompt.md](docs/setup-prompt.md). It never asks for a key or a password, and never runs a downloaded script.
- **Remove paths with your user name** and anything private before you post logs or configs in an issue.
