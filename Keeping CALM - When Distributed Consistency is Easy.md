# Keeping CALM: When Distributed Consistency is Easy

**Reference:** Joseph M. Hellerstein & Peter Alvaro (2019). *arXiv:1901.01930v2*. Source file: `../1901.01930v2.pdf` (in parent directory). [URL](https://arxiv.org/abs/1901.01930)

## Summary
An accessible, updated statement of the **CALM Theorem** — *Consistency As Logical Monotonicity*: a program has a consistent, coordination-free distributed implementation **if and only if** it is *monotonic* in a formal logical sense. Monotonic programs are "safe" under missing information and can proceed without waiting: once something has been concluded, it stays concluded. Non-monotonic programs ("change their mind" in the face of new inputs) are necessarily *order-sensitive* and therefore require coordination to produce a single deterministic outcome.

CALM is a *positive* counterpart to the negative results of the **[[CAP Theorem]]** and the FLP impossibility. Where CAP says "you can't always have it all", CALM *delineates the class of programs that can in fact satisfy all of C, A, and P simultaneously*: exactly the monotonic ones. The theorem shifts attention away from storage consistency (linearizability, serializability) toward **program consistency** — **[[Confluence]]**: deterministic outcomes despite non-deterministic message delivery and ordering.

The paper traces the theorem's implications for **[[Bloom Language]]**, **[[Dedalus]]**, **[[CRDTs]]**, coordination-free design patterns (monotonic accumulation, tombstones, immutable data), distributed garbage collection, and Amazon's shopping-cart example. It closes with open questions: expressiveness of monotonic languages, program synthesis targeting monotonicity, repair of non-monotonic code, and a possible **[[Stochastic CALM]]** for near-optimum stochastic algorithms.

## Key Ideas
- **Monotonicity ⇔ coordination-freeness ⇔ consistency** (CALM)
- Program consistency = **confluence**: same outputs regardless of message order / batching
- Non-monotonic operations *retract* earlier conclusions, hence must wait for "all the news" — requiring **[[Coordination Avoidance]]** logic to know when
- Formalisation via **[[Relational Transducer]]** networks (Ameloot, Neven, Van den Bussche)
- CAP is a special case: linearizable storage is one non-monotonic operation; CALM asks the question across *all* programs
- Practical playbook: immutable data structures, tombstones, set-monotonic accumulation, CRDTs as object-oriented monotonic types
- Bloom gives syntactic monotonicity checking — a programmer writing monotonic Bloom is guaranteed coordination-free correctness

## Connections
- [[CALM Theorem]]
- [[CAP Theorem]]
- [[Confluence]]
- [[Monotonic Logic]]
- [[Coordination Avoidance]]
- [[Bloom Language]]
- [[Dedalus]]
- [[CRDTs]]
- [[Relational Transducer]]
- [[Non-monotonic Reasoning]]
- [[Gossip-Based Computation of Aggregate Information]]
- [[Gossip-based Aggregation in Large Dynamic Networks]]
- [[Extensible Distributed Coordination]]
- [[Are Multiagent Systems Resilient to Communication Failures]]
- [[Foundations of Logic Programming - Lloyd]]

## Conceptual Contribution
- **Claim:** A distributed program is consistent and coordination-free iff it is expressible in monotonic logic — a tight, provable characterisation that converts "distributed consistency is hard" into a precise question about a program's logical shape.
- **Mechanism:** Formalise programs as networks of **[[Relational Transducer]]s** (Ameloot et al.); define **[[Confluence]]** as program-level determinism under non-deterministic delivery; prove biconditional between confluence and monotonic-logic expressibility.
- **Concepts introduced/used:** [[Monotonic Logic]], [[Confluence]], [[Coordination Avoidance]], [[Relational Transducer]], [[Bloom Language]], [[Dedalus]], [[CRDTs]], [[CAP Theorem]], [[Immutable Data Structures]], [[Tombstones]], [[Stochastic CALM]]
- **Stance:** foundational / survey
- **Relates to:** Provides the theoretical companion to the [[Gossip Protocols]] cluster ([[Gossip-Based Computation of Aggregate Information]], [[Gossip-based Aggregation in Large Dynamic Networks]]) — gossip aggregation with mass conservation is exactly a monotonic accumulation, hence coordination-free. Frames why [[Extensible Distributed Coordination]] must reach for stored-procedure coordination precisely where programs are non-monotonic. Contrasts with [[Are Multiagent Systems Resilient to Communication Failures]]: that paper shows *game-theoretic* MAS are brittle under message loss — CALM identifies the *logical* class of programs immune to such loss. The monotonic/non-monotonic split echoes [[Foundations of Logic Programming - Lloyd]]'s distinction between Horn-clause logic and [[Negation as Failure]].

## Tags
#distributed-systems #consistency #monotonic-logic #coordination-avoidance #foundations #bloom #crdts
