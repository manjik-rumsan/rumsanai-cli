# rumsanai

CLI to configure [Claude Code](https://claude.com/claude-code) to use Rumsan's AI gateway.

## Install

Via npx (no install needed):

```bash
npx @rumsan/ai
```

Via curl:

```bash
curl -fsSL https://raw.githubusercontent.com/rumsan/rumsanai-cli/main/install.sh | bash
```

The curl installer places `rumsanai` in `~/.local/bin`. Make sure that directory is on your `PATH`.

## Usage

```bash
rumsanai                     # interactive menu
rumsanai --claude enable     # write ~/.claude/settings.json with Rumsan gateway config
rumsanai --claude disable    # remove ~/.claude/settings.json
rumsanai --claude config     # show current config, then re-prompt and rewrite
```

`enable` prompts for:

- `ANTHROPIC_BASE_URL` (default `https://ai.rumsan.net/v1`)
- `ANTHROPIC_AUTH_TOKEN`
- `ANTHROPIC_MODEL` (default `rs`)

and writes them to `~/.claude/settings.json`.
