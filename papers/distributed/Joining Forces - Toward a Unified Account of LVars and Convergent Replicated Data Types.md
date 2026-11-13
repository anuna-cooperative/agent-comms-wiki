# Joining Forces: Toward a Unified Account of LVars and Convergent Replicated Data Types

**Reference:** Lindsey Kuper & Ryan R. Newton (2014). *Proceedings of the 5th Workshop on Determinism and Correctness in Parallel Programming* (WoDet 2014), Salt Lake City, Utah. [Author-hosted PDF](https://users.soe.ucsc.edu/~lkuper/papers/joining-wodet14.pdf).

## Summary

Kuper and Newton identify a common lattice-theoretic core beneath two independently developed models. [[LVars - Lattice-based Data Structures for Deterministic Parallelism|LVars]] use join-based writes and restricted threshold reads to make shared-memory parallel programs deterministic despite nondeterministic scheduling. State-based [[CRDTs]] (CvRDTs) use inflationary updates and least-upper-bound merges to make distributed replicas strongly eventually consistent despite delayed and reordered communication. The guarantees differ, but both arise by allowing information to move only upward through a join-semilattice.

The paper then transfers one feature in each direction. For CvRDTs it adds blocking LVar-style threshold queries. Unlike ordinary replica-local queries, these cannot reveal which of several incompatible thresholds was reached first; if they return, replicas with comparable causal histories cannot return conflicting answers. The resulting **threshold consistency** trades read availability for a stronger, order-insensitive observation discipline while retaining strong eventual consistency.

For LVars it proposes **bump** operations: inflationary updates that need not themselves compute a join. A family of bumps is safe when every operation is inflationary and the operations commute pairwise. Atomic increments are the motivating example. Different bump families, and bumps mixed with ordinary `put` operations, are not automatically compatible; an LVar data type must expose only one mutually commuting family, with the type/API boundary ruling out unsafe combinations. These extensions are proposals rather than completed metatheory: the paper leaves proofs of threshold consistency and determinism with bumps to future work.

## Key Ideas

- **A shared algebraic core:** LVars obtain schedule-independent outcomes and CvRDTs obtain replica convergence from monotone movement through join-semilattices.
- **Different observation models:** an ordinary CvRDT query may expose a replica's intermediate state, whereas an LVar threshold read blocks until it can return a stable, uniquely determined observation.
- **Threshold CvRDTs:** extend a state-based object `(S, s₀, q, u, m)` with a threshold query `g`; its threshold alternatives must be pairwise incompatible, so no execution can cross two distinct alternatives without reaching the lattice's top element.
- **Threshold consistency:** when one replica's causal history is a subset of another's, the less-informed replica may block, but it cannot return a value different from one already returned by the more-informed replica.
- **Consistency–availability trade-off:** threshold queries suppress observations of update order and intermediate replica state, but may block indefinitely.
- **Inflationary non-join updates:** LVar bumps need only move state upward and commute pairwise; this admits efficient operations such as atomic increment that cannot be represented directly as joins.
- **API-scoped commutativity:** safety applies to a chosen family of operations, not to arbitrary inflationary functions. Types and encapsulation prevent incompatible updates from being mixed on one LVar.
- **Position-paper status:** the construction and desired properties are stated, but the two central new proof obligations are explicitly deferred.

## Connections

- [[LVars - Lattice-based Data Structures for Deterministic Parallelism]] — the deterministic shared-memory model being generalized.
- [[Freeze After Writing - Quasi-Deterministic Parallel Programming with LVars]] — the contemporary LVish calculus and implementation context.
- [[A Comprehensive Study of Convergent and Commutative Replicated Data Types]] — the state-based CRDT framework extended with threshold queries.
- [[Logic and Lattices for Distributed Programming]] — BloomL's related use of lattice-typed monotonicity for distributed confluence.
- [[Keeping CALM - When Distributed Consistency is Easy]] — the wider connection between monotonicity and coordination avoidance.
- [[Brewers Conjecture and the Feasibility of Consistent Available Partition-Tolerant Web Services]] — threshold reads deliberately exchange availability for stronger observations.
- [[Strong Eventual Consistency]]
- [[Determinism]]
- [[CRDTs]]
- [[Concurrency]]

## Conceptual Contribution

- **Claim:** LVars and CvRDTs are two instances of a common lattice-based design space, and each model can gain expressiveness by importing the other's distinctive operation: threshold observations for replicated data and inflationary non-join updates for deterministic shared state.
- **Mechanism:** Add pairwise-incompatible blocking threshold queries to CvRDTs, yielding order-insensitive observations; add pairwise-commuting, inflationary `bump` families to LVars, with the data-type API excluding incompatible operations.
- **Concepts introduced/used:** [[LVars]], [[CvRDTs]], [[Threshold Read]], [[Threshold Consistency]], [[Inflationary Update]], [[Join-Semilattice]], [[Strong Eventual Consistency]], [[Determinism]], [[Causal History]]
- **Stance:** synthesis / position paper / formal-semantics proposal
- **Relates to:** Bridges deterministic parallel programming and eventually consistent distributed programming by showing that their different correctness goals are obtained from closely related monotonicity disciplines. It complements [[Logic and Lattices for Distributed Programming|BloomL]]: BloomL uses lattice monotonicity to obtain distributed confluence at language scale, while this paper compares the read and update interfaces of two lattice-valued data abstractions. Its blocking threshold reads also make the CAP trade-off explicit at the operation level.

## Tags

#lvars #crdts #lattices #determinism #eventual-consistency #threshold-reads #parallelism #distributed-systems #wodet
