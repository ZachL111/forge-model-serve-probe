# Forge Model Serve Probe Walkthrough

I use this file as a small checklist before changing the Haskell implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | feature drift | 103 | hold |
| stress | window width | 181 | ship |
| edge | metric stability | 256 | ship |
| recovery | explainability | 258 | ship |
| stale | feature drift | 138 | watch |

Start with `recovery` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `explainability` against `feature drift`, not the raw score alone.
