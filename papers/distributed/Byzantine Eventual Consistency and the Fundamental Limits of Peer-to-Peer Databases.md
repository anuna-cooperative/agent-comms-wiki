# Byzantine Eventual Consistency and the Fundamental Limits of Peer-to-Peer Databases

**Reference:** Martin Kleppmann & Heidi Howard (2020). *Byzantine Eventual Consistency and the Fundamental Limits of Peer-to-Peer Databases*. arXiv:2012.00472. [Open access](https://arxiv.org/abs/2012.00472)

## Summary

Kleppmann and Howard define **Byzantine Eventual Consistency (BEC)** for peer-to-peer applications that can tolerate any number of faulty or Sybil identities. The key restriction is semantic: a faulty replica may create operations that are permitted by the application's authorization policy, omit messages, or equivocate, but it must not make correct replicas accept unauthorized operations or prevent them from converging once communication succeeds.

Their construction combines Byzantine causal broadcast with a replicated application whose operations are deterministic, commutative when concurrent, and locally checkable against causal history. Hash-linked, signed messages make dependencies and equivocation observable; replicas process messages only after dependencies arrive and discard operations that fail authorization. A prototype demonstrates performance near non-Byzantine causal replication.

The fundamental limit is equally important: no protocol can stop an authorized user from issuing a harmful but authorized operation, ensure availability of data held only by faulty peers, or enforce invariants that require global coordination. Sybil resistance is therefore achieved not by counting identities but by making additional identities confer no additional authority.

## Key Ideas

- **BEC:** correct replicas eventually converge despite arbitrary Byzantine and Sybil participants.
- **Byzantine causal broadcast:** signed hash-linked messages bind operations to their causal dependencies.
- **Invariant-confluence boundary:** locally checkable, coordination-free operations fit; global invariants generally do not.
- **Authority, not identity count:** Sybils are harmless only when creating identities does not create permissions.
- **No suppression guarantee:** faulty nodes may withhold data, and protocols cannot recover unavailable sole copies.
- **Application-level limits:** cryptography cannot prevent misuse that policy itself authorizes.

## Connections

- [[The Blocklace - A Byzantine-repelling and Universal CRDT]]
- [[GUARDTs - Decentralized Access Control for Replicated Data Types]]
- [[Analysis of the Matrix Event Graph Replicated Data Type]]
- [[Keeping CALM - When Distributed Consistency is Easy]]
- [[Merkle-CRDTs - Merkle-DAGs meet CRDTs]]
- [[SPKI-SDSI]]

## Conceptual Contribution

- **Claim:** Some peer-to-peer databases can tolerate unbounded Byzantine/Sybil nodes, precisely when correctness depends on authority and causal validity rather than participant majorities.
- **Mechanism:** Byzantine causal broadcast plus deterministic, concurrent-commutative, causally authorized operations.
- **Concepts introduced/used:** [[Byzantine Eventual Consistency]], [[Byzantine Causal Broadcast]], [[Sybil Attack]], [[Causal Stability]], [[Invariant Confluence]]
- **Stance:** consistency model, impossibility boundary, algorithm, and prototype
- **Relates to:** Supplies the semantic fault model for the more concrete event-DAG designs in Matrix, blocklace, and GUARDTs.

## Tags

#byzantine-faults #eventual-consistency #p2p #sybil #causal-broadcast #crdt
