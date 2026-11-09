# Local Reasoning about Programs that Alter Data Structures

**Reference:** Peter W. O’Hearn, John C. Reynolds & Hongseok Yang. Computer Science Logic (CSL), 2001, LNCS 2142, pp. 1–19. [DOI](https://doi.org/10.1007/3-540-44802-0_1). [Paper PDF](https://users.dimi.uniud.it/~marina.lenisa/csl01.pdf).

## Summary

The paper develops local reasoning for mutable heaps using spatial assertions and small specifications. Separating conjunction, `P * R`, splits a heap into disjoint portions satisfying its operands. The [[Frame Rule]] extends a command's specification with an untouched portion, subject to a variable-modification condition. Examples include allocation, deallocation, pointer arithmetic and linked structures. This is foundational [[Separation Logic]]; the paper treats sequential heap programs, not distributed transaction causality.

## Key Ideas

- **Small axioms:** specify only the cells an atomic command accesses.
- **Spatial assertions:** `emp` describes an empty heap; points-to assertions describe cells; `*` expresses disjoint composition.
- **Framing:** infer preservation outside a command's footprint.
- **Safety:** fault avoidance matters; describing a footprint is insufficient without suitable command semantics.

## Frame Rule

```text
             {P} C {Q}
    ---------------------------
        {P * R} C {Q * R}

    Modifies(C) ∩ Free(R) = ∅
```

The side condition protects variables mentioned by the framed assertion. Disjoint heap ownership is expressed through `*`.

## Connections

- [[Hoare Logic]] and [[Hoare Triple]] — preconditions and postconditions extended with spatial assertions.
- [[Program Verification]] — proofs restricted to accessed state.
- [[A First-Order Logic with Frames]] — a later approach using explicit formula supports.
- [[Inductive Diagrams for Causal Reasoning]] — causal histories address a different notion of dependency.
- [[Concurrency]] — disjoint footprints motivate compositional reasoning, but this paper does not establish a concurrent separation rule or distributed merge theorem.

## Architectural Interpretation

For a multiwriter accounting design, ask which resources an operation owns and which invariants it preserves outside that footprint. Disjoint owner allocations are a possible application to formalise. Causally independent transactions may still compete for one invoice or budget; separate messages do not establish resource separation. This application requires a new model and proof.

## Conceptual Contribution

- **Claim:** Heap programs admit specifications confined to accessed state.
- **Mechanism:** Spatial assertions, small axioms and framing.
- **Concepts introduced/used:** [[Separation Logic]], [[Frame Rule]], footprints, [[Hoare Logic]].
- **Stance:** Formal program logic.
- **Relates to:** Locality of mutation rather than delivery order or replication.

## Tags

#program-verification #separation-logic #local-reasoning #heap-verification #formal-methods
