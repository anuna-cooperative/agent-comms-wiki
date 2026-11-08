# The Semantics of a Simple Language for Parallel Programming

**Reference:** Gilles Kahn (1974). *Information Processing 74*, Proceedings of IFIP Congress 74, pp. 471–475. [PDF](https://perso.ensta.fr/~chapoutot/various/kahn_networks.pdf).

## Summary

Kahn models parallel programs as networks of sequential processes communicating through FIFO channels. Reads block on a specified input; sends do not block. Processes denote continuous functions from input histories to output histories, ordered by stream-prefix information.

Network feedback becomes a system of equations whose meaning is its least fixed point. This provides compositional [[Denotational Semantics]] and a foundation for deterministic process networks: scheduling affects progress rather than the values produced.

## Key Ideas

- Finite and infinite streams form complete partial orders under prefix extension.
- Continuity ensures finite output observations do not require infinite input.
- Least fixed points arise by iteration from empty histories.
- Fair scheduling is needed to realize all expected output; unfair execution may produce less.
- The restrictions exclude choosing an input based on whichever channel becomes ready first.
- Unbounded channel capacity is an idealization; [[Determinism]] does not imply deadlock freedom or bounded memory.

## Connections

- [[Concurrency]]
- [[Determinism]]
- [[Denotational Semantics]]
- [[A Monad for Deterministic Parallelism]] — compare IVar-based dataflow.
- [[Freeze After Writing - Quasi-Deterministic Parallel Programming with LVars]] — compares lattice-valued communication with FIFO streams.
- [[Lasp - A Language for Distributed, Coordination-Free Programming]] — compare distributed deterministic dataflow.

## Conceptual Contribution

- **Claim:** Restricted asynchronous communication admits compositional mathematical reasoning.
- **Mechanism:** Continuous stream functions and least-fixed-point network equations.
- **Concepts introduced/used:** Kahn process networks, stream domains, [[Determinism]].
- **Stance:** foundational / denotational semantics.
- **Relates to:** Supplies a historical foundation for the vault's deterministic-dataflow literature.

## Tags

#concurrency #dataflow #determinism #denotational-semantics #fixed-points #foundational
