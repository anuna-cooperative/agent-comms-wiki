# Frame Rule

In [[Separation Logic]], extend `{P} C {Q}` to `{P * R} C {Q * R}` when the command does not modify variables free in `R`. The separating conjunction expresses the disjoint heap portion preserved by the command. Validity depends on the underlying local command semantics.

This program-verification rule is distinct from F-Logic's object and ontology frames; see [[Frame Logic]].

## In this vault

- [[Local Reasoning about Programs that Alter Data Structures]] — the rule and its variable side condition, Section 3.
- [[A First-Order Logic with Frames]] — a later support-based frame theorem.
- [[Hoare Triple]]
