# lib-query

`query` — Handl query: user-space query registration and invocation
algebra.

## Layout

| path | role |
| --- | --- |
| `handl-packages/query/index.hnl` | the .hnl package (entry named explicitly in `pkg.hnl`) |
| `pkg.hnl` | manifest — `modules: ["query"]`, `entry: "handl-packages/query/index.hnl"` |
| `scripts/hnl-gate.sh`, `ci.sh` | the gate / bupha entry |

## Contract

- No `src/` tree — the package lives entirely under
  `handl-packages/`; `pkg.hnl`'s `entry` override names the file.

## Verification

```bash
HNL=../host-cli/target/debug/hnl scripts/hnl-gate.sh
```

## License

MIT.

<!-- myco:agent-awareness -->

## Agent awareness

- Session start / any work discussion: run `myco status --prompt`
  before proposing next steps — know the board first.
- User describes new work → offer to capture it (`myco todo add`,
  `issue new`, `proposal new`). Don't wait to be asked.
- Picking up a task: `myco resume <ID>` is the briefing.
- Wrapping up: `myco handoff <ID>` anything resumable; keep statuses
  honest (claimed → in-progress → blocked/done).

<!-- /myco:agent-awareness -->
