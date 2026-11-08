# A First-Order Logic with Frames

**Reference:** Adithya Murali, Lucas Peña, Christof Löding & P. Madhusudan. [arXiv:1901.09089v4](https://arxiv.org/abs/1901.09089v4), 26 September 2022; first submitted January 2019. [Full text](https://arxiv.org/html/1901.09089v4). Extended and revised manuscript.

## Summary

**Frame Logic (FL)** extends [[First-Order Logic]] with recursive definitions and a support operator, `Sp(φ)`, describing the heap locations on which a formula depends. Its frame theorem preserves a formula's truth when mutable functions change outside its support.

The paper develops a heap-manipulating program logic with local proof rules and weakest tightest preconditions. It translates a precise fragment of separation logic into FL, and FL into first-order logic with recursive definitions.

## Key Ideas

- Supports track dependencies of truth values, including false formulas; negation preserves support.
- Disjointness is expressed using intersections of supports, while ordinary conjunction permits overlap.
- Examples cover lists, trees, and their structural measures.
- Automation is discussed as future work, rather than demonstrated by a completed verifier.

## Connections

- [[First-Order Logic]]
- [[Program Verification]]
- [[Hoare Logic]]
- [[Hoare Triple]]
- [[Verification Condition]]
- [[An Axiomatic Basis for Computer Programming - Hoare]] — foundational pre/postcondition reasoning.
- [[Frame Logic]] — disambiguation: the existing hub describes F-Logic for knowledge representation, a different formalism.

## Conceptual Contribution

- **Claim:** First-order reasoning can support localized heap specifications and framing.
- **Mechanism:** Explicit formula supports and reductions to recursive first-order logic.
- **Concepts introduced/used:** FL, support, frame theorem, [[Program Verification]].
- **Stance:** formal logic / heap verification.
- **Relates to:** Extends the vault's Hoare-logic lineage with dependency-sensitive local reasoning.

## Tags

#program-verification #first-order-logic #heap-verification #frame-reasoning #formal-methods
