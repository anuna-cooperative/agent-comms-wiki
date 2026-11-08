# A Monad for Deterministic Parallelism

**Reference:** Simon Marlow, Ryan Newton & Simon Peyton Jones (2011). *Proceedings of the 4th ACM SIGPLAN Symposium on Haskell*, pp. 71–82, Tokyo, 22 September 2011. [DOI](https://dl.acm.org/doi/10.1145/2034675.2034685). [Author-hosted PDF](https://simon.peytonjones.org/assets/pdfs/monad-par.pdf).

## Summary

The **Par monad** expresses deterministic parallel computation in Haskell through explicit task creation and communication. Tasks dynamically construct dataflow networks using single-assignment **IVars**, while `runPar` exposes a pure result. This targets irregular parallelism without requiring programmers to manage lazy evaluation's operational subtleties through `par` and `pseq`.

The paper supplies operational semantics, a determinism argument, and a library implementation with a work-stealing scheduler. Benchmarks compare it with Evaluation Strategies.

## Key Ideas

- `fork` creates tasks; `new`, `put`, and blocking `get` connect them through IVars.
- Repeated writes are errors; communication is not ordinary mutable shared state.
- Explicit dependencies and task granularity separate algorithm structure from scheduling policy.
- [[Determinism]] does not guarantee termination or deadlock freedom.

## Connections

- [[Determinism]]
- [[Concurrency]]
- [[Confluence]] — related reasoning about independence from execution order.
- [[Exploring the Theory and Practice of Concurrency in the Entity-Component-System Pattern]] — compare a different route to deterministic concurrency.
- [[Logic and Lattices for Distributed Programming]] — compare restrictions on shared information updates.

## Conceptual Contribution

- **Claim:** Explicit parallel tasks can retain a pure deterministic interface.
- **Mechanism:** Restricted IVar communication, monadic sequencing, and library-level scheduling.
- **Concepts introduced/used:** Par, IVars, work stealing, [[Determinism]].
- **Stance:** functional programming / parallel runtime design.
- **Relates to:** Adds a functional-dataflow perspective to the vault's concurrency literature.

## Tags

#parallelism #determinism #haskell #dataflow #concurrency
