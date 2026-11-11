# GUARDTs: Decentralized Access Control for Replicated Data Types

**Reference:** Christian Kuessner, Ragnar Mogk, Julian Haas, Annette Bieniusa & Mira Mezini (2026). *GUARDTs: Decentralized Access Control for Replicated Data Types*. arXiv:2611.08083v1. [Open access](https://arxiv.org/html/2611.08083)

## Summary

GUARDTs integrate decentralized, dynamically changing access control with algebraic replicated data types (ARDTs). Instead of relying on a trusted authorization server, replicas record application updates, capability delegations, and revocations in a signed replicated event graph. Every replica can therefore derive the authorization state locally and decide which deltas it may send or apply.

Capabilities address paths through an ARDT's structural tree and may use wildcards, allowing policy at the granularity of a whole value, field, collection entry, or subtree. Delegation is bounded by the delegator's authority; revocation invalidates dependent delegations causally and can cascade. Cryptographic commitments support selective read access without exposing plaintext to unauthorized replicas.

The formal results cover event-graph convergence, non-expansion of permissions even under colluding Byzantine replicas, write integrity, read confidentiality, and correspondence with centralized semantics when concurrency is absent. The design preserves availability and convergence while moving authorization checks to replication boundaries.

## Key Ideas

- **Path-based capabilities:** read and write rights target typed paths inside nested algebraic data.
- **Policy as replicated history:** updates, delegations, and revocations share a signed causal event graph.
- **Boundary enforcement:** a replica locally filters outgoing and incoming deltas using its derived knowledge.
- **Bounded delegation:** Byzantine colluders cannot derive more authority than correct replicas delegated to them.
- **Dynamic revocation:** invalidating a delegation also invalidates authority that transitively depends upon it.
- **Selective confidentiality:** cryptographic commitments allow graph convergence without universal plaintext access.

## Connections

- [[A Comprehensive Study of Convergent and Commutative Replicated Data Types]]
- [[The Blocklace - A Byzantine-repelling and Universal CRDT]]
- [[Analysis of the Matrix Event Graph Replicated Data Type]]
- [[Byzantine Eventual Consistency and the Fundamental Limits of Peer-to-Peer Databases]]
- [[SPKI-SDSI]]
- [[Capability Security]]
- [[PolicyMaker Compliance Checking]]
- [[SecPAL - The Role of Abduction in Declarative Authorization Policies]]

## Conceptual Contribution

- **Claim:** Strong eventual consistency and decentralized, mutable access control can coexist without a trusted coordinator.
- **Mechanism:** Path-scoped capabilities plus a signed event graph of updates, delegations, and revocations, enforced when deltas cross replica boundaries.
- **Concepts introduced/used:** [[GUARDTs]], [[ARDTs]], [[Path-Based Capability]], [[Replicated Event Graph]], [[Cascading Revocation]], [[Byzantine Fault]]
- **Stance:** programming model, formalization, and prototype evaluation
- **Relates to:** Combines CRDT convergence with the authority-delegation lineage of [[SPKI-SDSI]] and trust-management policy languages.

## Tags

#crdt #access-control #capabilities #byzantine-faults #replication #ardts
