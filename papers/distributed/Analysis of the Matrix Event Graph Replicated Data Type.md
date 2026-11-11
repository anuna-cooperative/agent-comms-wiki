# Analysis of the Matrix Event Graph Replicated Data Type

**Reference:** Florian Jacob, Carolin Beer, Norbert Henze & Hannes Hartenstein (2020). *Analysis of the Matrix Event Graph Replicated Data Type*. arXiv:2011.06488. [Open access](https://arxiv.org/pdf/2011.06488)

## Summary

The paper extracts the replicated structure implicit in the Matrix federation protocol and names it the **Matrix Event Graph (MEG)**. Matrix rooms are topic-based publish/subscribe logs whose signed events refer to predecessors, yielding a causal DAG replicated across homeservers. The authors separate that datatype from the larger protocol and analyze it as a reusable structure for decentralized applications.

They show that the MEG is a CRDT for causal histories: it is available during partitions and provides strong eventual consistency when correct replicas eventually exchange events. Because it seeks convergence rather than consensus, it does not inherit the usual `n > 3f` Byzantine-consensus threshold; it can operate whenever at least one participant is correct (`n > f`), although Byzantine actors can still withhold events or create divergent histories visible to different peers. Event references, hashes, and signatures make received history tamper-evident.

## Key Ideas

- **Causal event DAG:** each event names predecessor events, making happened-before structure explicit.
- **MEG as CRDT:** graph growth is monotonic and concurrent branches merge by set union.
- **Strong eventual consistency:** replicas that receive the same valid events converge.
- **No consensus threshold:** convergence of known events does not require agreement on one total order.
- **Tamper evidence:** hashes and signatures protect the integrity and authorship of received events.
- **Scalable partial replication:** rooms partition the global communication history by topic.

## Connections

- [[Matrix Room Version 11 Specification]]
- [[ruma-state-res event_auth.rs]]
- [[The Blocklace - A Byzantine-repelling and Universal CRDT]]
- [[Byzantine Eventual Consistency and the Fundamental Limits of Peer-to-Peer Databases]]
- [[Merkle-CRDTs - Merkle-DAGs meet CRDTs]]
- [[Time Clocks and the Ordering of Events in a Distributed System]]

## Conceptual Contribution

- **Claim:** Matrix federation contains a general-purpose, Byzantine-tolerant CRDT for replicated causal histories.
- **Mechanism:** An append-only signed event DAG merged by union, with predecessor links encoding causality.
- **Concepts introduced/used:** [[Matrix Event Graph]], [[Causal History]], [[Strong Eventual Consistency]], [[Hash-DAG]], [[Partial Replication]]
- **Stance:** protocol extraction and formal analysis
- **Relates to:** Provides the analytic model behind the concrete authorization and state-resolution machinery in Matrix room specifications and Ruma.

## Tags

#matrix #crdt #event-graph #causality #byzantine-faults #federation
