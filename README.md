# homebrew-tap

Homebrew formulae for my tools.

```bash
brew install guedesdiogo/tap/pleach
```

That one command taps this repository and installs the formula; there is no
separate `brew tap` step.

## Formulae

| Formula | What it is |
|---|---|
| [`pleach`](Formula/pleach.rb) | Parallel, isolated work sessions for multi-repo workspaces — one git worktree per repo, with ports, secrets and lifecycle resolved. [Source](https://github.com/guedesdiogo/pleach) |

Shell completions for bash and zsh are generated at install time from the tool
itself, so they cannot drift from the commands they describe.

## Also available

```bash
npm install -g @diogoaguedes/pleach     # or: bun add -g @diogoaguedes/pleach
curl -fsSL https://raw.githubusercontent.com/guedesdiogo/pleach/main/install.sh | bash
```

## License

The formulae here are MIT, as is each tool they install.
