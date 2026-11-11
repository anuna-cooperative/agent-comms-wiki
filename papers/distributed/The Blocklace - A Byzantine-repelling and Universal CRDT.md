# The Blocklace: A Byzantine-repelling and Universal Conflict-free Replicated Data Type

**Reference:** Paulo Sérgio Almeida & Ehud Shapiro (2025). *The Blocklace: A Byzantine-repelling and Universal Conflict-free Replicated Data Type*. arXiv:2402.08068v4. [Open access](https://arxiv.org/abs/2402.08068v4)

## Summary

A blocklace is a partially ordered generalization of a blockchain: each signed, content-addressed block can point to any finite set of preceding blocks rather than to one predecessor. The resulting hash-DAG records causal order without imposing a total order. Adding one block is enough to define both a pure operation-based CRDT with self-tagging operations and, under a small generalization of the delta framework, a delta-state CRDT.

Because blocks can carry arbitrary payloads, the blocklace acts as a universal Byzantine-tolerant transport for operation-based CRDTs. Its stronger contribution is *Byzantine repelling*: rather than merely tolerating equivocation while allowing unbounded state pollution, replicas can detect equivocation and other protocol faults, disseminate evidence, and eventually exclude faulty identities. This remains possible in the presence of colluding nodes whose individual misbehavior is not directly detectable.

## Key Ideas

- **Partial-order ledger:** signed hash pointers form a DAG rather than a single chain.
- **Dual CRDT reading:** the same structure is a pure op-based CRDT and a generalized delta-state CRDT.
- **Self-tagging:** a block's cryptographic identity supplies the unique operation tag.
- **Universality:** arbitrary CRDT operations can be carried as block payloads.
- **Byzantine repelling:** detectable faults yield durable evidence and eventual exclusion, bounding pollution.
- **Equivocation is explicit:** conflicting blocks by one creator are visible in the causal structure.

## Connections

- [[Merkle-CRDTs - Merkle-DAGs meet CRDTs]]
- [[A Comprehensive Study of Convergent and Commutative Replicated Data Types]]
- [[Byzantine Eventual Consistency and the Fundamental Limits of Peer-to-Peer Databases]]
- [[Analysis of the Matrix Event Graph Replicated Data Type]]
- [[GUARDTs - Decentralized Access Control for Replicated Data Types]]
- [[Practical Byzantine Fault Tolerance]]

## Conceptual Contribution

- **Claim:** A content-addressed causal DAG can be both a universal CRDT substrate and an active defense that eventually removes detectably Byzantine participants.
- **Mechanism:** Signed blocks with multiple hash pointers, local union/validation, equivocation evidence, and exclusion rules.
- **Concepts introduced/used:** [[Blocklace]], [[Hash-DAG]], [[Equivocation]], [[Byzantine Repelling]], [[Pure Operation-Based CRDT]], [[Delta-State CRDT]]
- **Stance:** datatype construction and Byzantine-fault analysis
- **Relates to:** Strengthens the transport pattern in [[Merkle-CRDTs - Merkle-DAGs meet CRDTs]] from content-addressed convergence to accountable Byzantine participation.

## Tags

#crdt #byzantine-faults #hash-dag #equivocation #p2p #replication
