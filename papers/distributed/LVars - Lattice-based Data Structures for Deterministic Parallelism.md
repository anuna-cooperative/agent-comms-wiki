# LVars: Lattice-based Data Structures for Deterministic Parallelism

**Reference:** Lindsey Kuper & Ryan R. Newton (2013). *Proceedings of the 2nd ACM SIGPLAN Workshop on Functional High-Performance Computing* (FHPC ’13), pp. 71–84. [DOI](https://doi.org/10.1145/2502323.2502326). [Author-hosted PDF](https://users.soe.ucsc.edu/~lkuper/papers/lvars-fhpc13.pdf).

## Summary

**LVars** generalize single-assignment variables to shared locations that accumulate information according to a user-specified lattice. Writes combine old and new information through join; restricted reads observe stable lower bounds rather than timing-dependent snapshots.

This permits multiple concurrent writes while retaining [[Determinism]]. The paper presents a calculus, a determinism proof, a prototype implementation, and a proposed extension admitting failures without differing successful answers.

## Key Ideas

- Monotonic writes alone are insufficient: unrestricted reads can expose scheduling.
- Threshold reads block until a lower bound is reached, then return the threshold observation.
- Threshold alternatives must be pairwise incompatible, preventing ambiguous observations.
- IVars are a special case; lattices support richer shared data structures.
- Deterministic results do not guarantee termination or freedom from blocked reads.

## Connections

- [[Determinism]]
- [[Concurrency]]
- [[Monotonic Logic]]
- [[A Monad for Deterministic Parallelism]] — the IVar-based comparison.
- [[Freeze After Writing - Quasi-Deterministic Parallel Programming with LVars]] — subsequent extension with handlers and freezing.
- [[Lasp - A Language for Distributed, Coordination-Free Programming]] — compare distributed lattice-based dataflow.
- [[The Semantics of a Simple Language for Parallel Programming]] — compare deterministic FIFO process networks.
- [[CRDTs]] — compare join-based state accumulation with replication guarantees.

## Conceptual Contribution

- **Claim:** Rich shared state can support deterministic parallel execution.
- **Mechanism:** Lattice joins and stable threshold observations.
- **Concepts introduced/used:** LVars, threshold reads, [[Determinism]].
- **Stance:** parallel programming / formal semantics.
- **Relates to:** Provides the foundational LVars account behind the vault's LVish note.

## Tags

#lvars #lattices #determinism #parallelism #shared-state #fhpc
