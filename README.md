# forge-model-serve-probe

`forge-model-serve-probe` explores ml utilities with a small Haskell codebase and local fixtures. The technical goal is to create a Haskell reference implementation for serve workflows, centered on incremental indexing, append-only fixtures, and checkpoint recovery checks.

## Reason For The Project

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Forge Model Serve Probe Review Notes

The first comparison I would make is `explainability` against `feature drift` because it shows where the rule is most opinionated.

## What It Does

- `fixtures/domain_review.csv` adds cases for feature drift and window width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/forge-model-serve-walkthrough.md` walks through the case spread.
- The Haskell code includes a review path for `explainability` and `feature drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## How It Is Put Together

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `feature drift`, `window width`, `metric stability`, and `explainability`.

The Haskell code keeps the review rule close to the tests.

## Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Check It

The check exercises the source code and the review fixture. `recovery` is the high score at 258; `baseline` is the low score at 103.

## Boundaries

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
