# rumsanai

CLI to configure [Claude Code](https://claude.com/claude-code) to use Rumsan's AI gateway.

## Install

Via npx (no install needed):

```bash
npx @rumsan/ai
```

Via curl:

```bash
curl -fsSL https://raw.githubusercontent.com/manjik-rumsan/rumsanai-cli/main/install.sh | bash
```

The curl installer places `rumsanai` in `~/.local/bin`. Make sure that directory is on your `PATH`.

## Usage

```bash
rumsanai                        # interactive menu
rumsanai --claude enable        # write ~/.claude/settings.json with Rumsan gateway config
rumsanai --claude disable       # remove ~/.claude/settings.json
rumsanai --claude config        # show current config, then re-prompt and rewrite

rumsanai --opencode enable      # write ~/.config/opencode/opencode.json
rumsanai --opencode disable
rumsanai --opencode config

rumsanai --vscode-copilot enable   # add a "Rumsan AI" custom endpoint entry to
                                    # VS Code's chatLanguageModels.json (Copilot
                                    # Chat model picker), requires jq
rumsanai --vscode-copilot disable  # remove only the "Rumsan AI" entry
rumsanai --vscode-copilot config

rumsanai --copilot              # print manual instructions for routing GitHub
                                 # Copilot (CLI / other non-VS Code clients)
                                 # through 9router's MITM proxy
```

`enable` prompts for:

- `ANTHROPIC_BASE_URL` (default `https://ai.rumsan.net/v1`)
- `ANTHROPIC_AUTH_TOKEN`
- `ANTHROPIC_MODEL` (default `rs`)

and writes them to `~/.claude/settings.json`.
