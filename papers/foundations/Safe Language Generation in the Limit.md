# Safe Language Generation in the Limit

**Reference:** Antonios Anastasopoulos, Giuseppe Ateniese & Evgenios M. Kornaropoulos (2026). arXiv:2601.08648v2, 26 June 2026. [Abstract](https://arxiv.org/abs/2601.08648) · [PDF](https://arxiv.org/pdf/2601.08648v2).

## Summary

A learner observes labeled enumerations of target language `K` and harmful language `H`. Safe generation requires eventually producing strings in `K \ H` absent from the observed stream; if that difference is finite or empty, outputs must eventually stabilize on abstention (`⊥`).

The authors prove general safe-identification impossibility and reduce ordinary identification to safe generation (§§3–5). Unlike ordinary [[Language Generation in the Limit]], this stronger task has no universal solution. These are worst-case asymptotic results, not empirical LLM safety measurements.

## Key Ideas

- Target membership does not establish safety: harmful membership may appear later.
- Abstention for finite safe differences is part of the specification.
- Generation becomes possible when every target/harmful candidate pair has an infinite enumerable difference (§6.3).

## Connections

- [[Language Generation in the Limit - Kleinberg and Mullainathan]]
- [[Learning Indexed Families of Recursive Languages from Positive Data - A Survey]]
- [[Identification in the Limit]]

## Conceptual Contribution

- **Claim:** Safety exclusions can destroy universal generatability.
- **Mechanism:** Adversarial enumerations and reductions.
- **Concepts introduced/used:** Safe generation, safe identification.
- **Stance:** learning theory.
- **Relates to:** Limits of learning allowed outputs from examples.

## Tags

#learning-theory #formal-languages #generation #safety #foundations
