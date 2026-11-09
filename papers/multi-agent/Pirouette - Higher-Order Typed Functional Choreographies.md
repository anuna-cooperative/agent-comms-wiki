# Pirouette: Higher-Order Typed Functional Choreographies

**Reference:** Andrew K. Hirsch & Deepak Garg (2021). Technical Report MPI-SWS-2021-004. [arXiv:2111.03484v2](https://arxiv.org/abs/2111.03484v2), 9 November 2021. [Full text](https://arxiv.org/html/2111.03484v2). [PDF](https://arxiv.org/pdf/2111.03484v2).

## Summary

**Pirouette** combines typed higher-order functional programming with [[Choreographic Programming]]. A global program describes distributed interactions, and [[Endpoint Projection]] derives programs for individual locations. Choreographic functions can themselves be arguments, supporting reusable interaction patterns.

The language is parameterized by a local expression language and lifts its type-soundness guarantees to choreographies. The development includes projection correctness and deadlock-freedom results, mechanized in Coq.

## Key Ideas

- Located types track where values reside; function types describe reusable distributed computations.
- Block-set operational semantics permits independent actions to execute out of order while respecting causality.
- Projection is partial: conditional branches must merge appropriately at each endpoint.
- The results concern the modeled synchronous communication system and projectable choreographies; deadlock freedom does not imply termination.

## Connections

- [[Choreographic Programming]]
- [[Endpoint Projection]]
- [[Knowledge of Choice]] — relevant to projecting conditionals.
- [[HasChor - Functional Choreographic Programming]] — compare a library-based functional approach.
- [[Efficient, Portable, Census-Polymorphic Choreographic Programming]] — compare later library-level abstraction and projection techniques.
- [[Concurrency]]

## Conceptual Contribution

- **Claim:** Higher-order functional abstraction can coexist with choreographic communication guarantees.
- **Mechanism:** Located types, generic local languages, block-set semantics, and verified projection.
- **Concepts introduced/used:** Pirouette, [[Choreographic Programming]], [[Endpoint Projection]].
- **Stance:** programming-language theory / mechanized semantics.
- **Relates to:** Adds a formal functional-language foundation alongside the vault's practical choreography libraries.

## Tags

#choreographic-programming #functional-programming #endpoint-projection #type-systems #coq
