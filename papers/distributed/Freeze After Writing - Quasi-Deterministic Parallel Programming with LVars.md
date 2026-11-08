# Freeze After Writing: Quasi-Deterministic Parallel Programming with LVars

**Reference:** Lindsey Kuper, Aaron Turon, Neelakantan R. Krishnaswami & Ryan R. Newton (2014). POPL ’14, pp. 257–270. [DOI](https://doi.org/10.1145/2535838.2535842). [Author-hosted PDF](https://www.cl.cam.ac.uk/~nk480/lvish-popl.pdf).

## Summary

**LVish** extends LVars, lattice-valued shared variables with join-based writes and threshold reads, with event handlers and freezing. These features support computations such as graph traversal that need both growing information and an eventual exact result.

Freezing permits exact reads but rejects subsequent writes that would change the value. The resulting guarantee is **quasi-determinism**: all executions producing a final value agree, although scheduling can cause an exception. The paper proves this property for a calculus and presents a Haskell library.

## Key Ideas

- Commuting writes alone do not ensure [[Determinism]]; unrestricted reads can reveal scheduling.
- Handlers react asynchronously to accumulated information, including events preceding registration.
- Handler quiescence and freezing support fixed-point computations.
- Freezing after all writes finish restores full determinism; the library tracks determinism levels in types.
- Evaluation parallelizes control-flow analysis, rather than establishing universal speedups.

## Connections

- [[LVars - Lattice-based Data Structures for Deterministic Parallelism]] — the underlying deterministic model extended here.
- [[Determinism]]
- [[Concurrency]]
- [[Monotonic Logic]]
- [[A Monad for Deterministic Parallelism]] — compare single-assignment IVars with lattice-valued shared state.
- [[Lasp - A Language for Distributed, Coordination-Free Programming]] — compare lattice-based distributed dataflow.
- [[Logic and Lattices for Distributed Programming]] — related lattice-oriented programming model.

## Conceptual Contribution

- **Claim:** Controlled exceptions enable useful negative observations without divergent successful results.
- **Mechanism:** Lattice writes, restricted reads, handlers, and freezing.
- **Concepts introduced/used:** LVish, LVars, quasi-determinism, [[Determinism]].
- **Stance:** parallel programming / formal semantics.
- **Relates to:** Connects the vault's deterministic-parallelism and monotonic-computation literature.

## Tags

#parallelism #lvars #lvish #quasi-determinism #lattices #haskell #popl
