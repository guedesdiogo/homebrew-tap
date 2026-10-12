# homebrew-tap

Homebrew formulae for my tools.

```bash
brew install guedesdiogo/tap/pleach
brew install guedesdiogo/tap/claude-relay
```

That one command taps this repository and installs the formula; there is no
separate `brew tap` step.

## Formulae

| Formula | What it is |
|---|---|
| [`pleach`](Formula/pleach.rb) | Parallel, isolated work sessions for multi-repo workspaces — one git worktree per repo, with ports, secrets and lifecycle resolved. [Source](https://github.com/guedesdiogo/pleach) |
| [`claude-relay`](Formula/claude-relay.rb) | Use several Claude subscriptions as one: automatic account failover for Claude Code, session migration for Claude Desktop. Formerly `claude-session-restorer`. [Source](https://github.com/guedesdiogo/claude-relay) |

Shell completions for bash and zsh are generated at install time from the tool
itself, so they cannot drift from the commands they describe.

## Also available

```bash
npm install -g @diogoaguedes/pleach     # or: bun add -g @diogoaguedes/pleach
curl -fsSL https://raw.githubusercontent.com/guedesdiogo/pleach/main/install.sh | bash
```

## License

The formulae here are MIT, as is each tool they install.
