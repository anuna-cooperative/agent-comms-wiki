# CRDT Emulation, Simulation, and Representation Independence

**Reference:** Nathan Liittschwager, Jonathan Castello, Stelios Tsampas & Lindsey Kuper (2025). [arXiv:2504.05398](https://arxiv.org/abs/2504.05398), v2, 12 August 2025. [PDF](https://arxiv.org/pdf/2504.05398).

## Summary

State-based and operation-based [[CRDTs]] are commonly called equivalent, but convergence alone does not establish emulation: an object returning a constant could converge while implementing the wrong behavior. This paper formalizes emulation using transition systems that include replicas and network behavior.

The constructions admit weak simulations in both directions, yielding equal finite observable update/query traces. A client-language result establishes representation independence for the modeled clients.

## Key Ideas

- Different message granularity and causal-delivery requirements make emulation nontrivial.
- Weak simulations hide internal communication steps; mutual simulation need not establish [[Bisimulation]].
- Weak trace properties transfer automatically; strong convergence requires additional reasoning with histories.
- Finite trace equivalence alone does not establish arbitrary liveness guarantees.

## Connections

- [[Can You Keep a Secret - A New Protocol for Sender-Side Enforcement of Causal Message Delivery]] — a concrete causal-delivery protocol complementing the semantic model.

- [[A Comprehensive Study of Convergent and Commutative Replicated Data Types]] — formalizes its emulation claim.
- [[CRDTs]]
- [[Strong Eventual Consistency]]
- [[Causal Broadcast]]
- [[Time Clocks and the Ordering of Events in a Distributed System]]
- [[Bisimulation]]

## Conceptual Contribution

- **Claim:** Emulation preserves observable behavior under the model's assumptions.
- **Mechanism:** Bidirectional weak simulation and client semantics.
- **Concepts introduced/used:** [[CRDTs]], weak simulation, trace equivalence, representation independence.
- **Stance:** formal semantics / distributed systems.
- **Relates to:** A useful verification companion to the vault's foundational CRDT reference.

## Tags

#distributed-systems #crdts #formal-semantics #replication #verification
