# Merkle-CRDTs: Merkle-DAGs meet CRDTs

**Reference:** Héctor Sanjuán, Samuli Pöyhtäri, Pedro Teixeira & Ioannis Psaras (2020). [arXiv:2004.00107v2](https://arxiv.org/abs/2004.00107v2), 27 April 2020. [PDF](https://arxiv.org/pdf/2004.00107).

## Summary

**Merkle-CRDTs** use content-addressed Merkle DAGs as a transport and persistence layer for [[CRDTs]]. The DAG also acts as a logical clock: links encode causal history, while hashes identify immutable nodes and enable deduplication and integrity checks.

Replicas announce roots through a **Broadcaster** and retrieve missing history through a **DAG-Syncer**. Recoverable history reduces reliance on reliable individual update messages and accommodates dynamic replica populations. Convergence still depends on discovering updates and obtaining their referenced data.

## Key Ideas

- Merkle-Clocks encode causality without a fixed-size vector tied to replica membership.
- Traversing dependencies supports causal processing of CRDT payloads.
- Payloads can represent operations, states, or deltas.
- Content addressing verifies bytes; it does not establish authorization or Byzantine-safe application semantics.
- Retaining history creates storage and synchronization costs; compaction needs care.

## Synchronization Mechanism

Each local event creates a new root linking to all current roots. Following links reaches causally earlier events; unrelated branches represent concurrency. The clock's node set is a grow-only set, merged by union.

After a root announcement, a replica fetches unknown nodes, skips known subgraphs, and processes new payloads in causal order. Concurrent roots remain until a later event links them. A missed announcement can be repaired through a later root containing that history, provided the replica learns that root and the nodes remain retrievable. The DAG supplies ordering and recovery; payloads must still satisfy CRDT convergence requirements.

## Limits and Tradeoffs

History grows with events rather than replica count. Deep histories make initial synchronization slow, and divergent histories can be expensive to compare. Full-state payloads duplicate storage; operations and deltas are often a better fit. These are architectural benefits and costs discussed in the paper, rather than a measured scalability guarantee. See [Sections IV–VI](https://arxiv.org/html/2004.00107v2#S4).

## Connections

- [[CRDTs]]
- [[Content-addressed Storage]]
- [[Version Vector]]
- [[Distributed Hash Table]]
- [[Causal Broadcast]] — compare causal delivery implemented over recoverable history.
- [[A Comprehensive Study of Convergent and Commutative Replicated Data Types]] — foundational data-type semantics.
- [[Inductive Diagrams for Causal Reasoning]] — compare path-based representations of causal history.

## Conceptual Contribution

- **Claim:** Content-addressed history can supply causal metadata and dissemination support for CRDTs.
- **Mechanism:** Merkle-Clocks, root announcements, and missing-node retrieval.
- **Concepts introduced/used:** Merkle-CRDTs, Merkle-Clocks, [[CRDTs]], [[Content-addressed Storage]].
- **Stance:** distributed systems / peer-to-peer architecture.
- **Relates to:** Connects the vault's CRDT and peer-to-peer networking literature.

## Tags

#crdts #merkle-dags #content-addressing #causality #peer-to-peer #replication
