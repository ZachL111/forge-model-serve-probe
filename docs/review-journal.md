# Review Journal

The cases below are the review handles I would use before changing the implementation.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its ml utilities focus without claiming live deployment or external usage.

## Cases

- `baseline`: `feature drift`, score 103, lane `hold`
- `stress`: `window width`, score 181, lane `ship`
- `edge`: `metric stability`, score 256, lane `ship`
- `recovery`: `explainability`, score 258, lane `ship`
- `stale`: `feature drift`, score 138, lane `watch`

## Note

This file is intentionally plain so the fixture remains the source of truth.
