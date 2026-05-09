# Chord: A Scalable Peer-to-peer Lookup Service for Internet Applications

**Reference:** Stoica, I., Morris, R., Karger, D., Kaashoek, M. F. & Balakrishnan, H. (2001). *Chord: A Scalable Peer-to-peer Lookup Service for Internet Applications*. In *ACM SIGCOMM 2001*, pp. 149–160. (Extended journal version: *IEEE/ACM Transactions on Networking* 11(1), pp. 17–32, 2003.) [ACM DOI](https://doi.org/10.1145/383059.383071) · [Open access PDF (MIT CSAIL/PDOS)](https://pdos.csail.mit.edu/papers/chord:sigcomm01/chord_sigcomm.pdf) · [Journal (TON) version](https://pdos.csail.mit.edu/papers/ton:chord/paper-ton.pdf)

## Summary
Stoica, Morris, Karger, Kaashoek and Balakrishnan introduce **Chord**, the first widely-cited *distributed hash table* (DHT) — a structured peer-to-peer overlay that maps a key to the node responsible for it in `O(log N)` hops with `O(log N)` per-node routing state, where `N` is the number of nodes in the system. Chord arranges nodes and keys on a circular identifier space (typically the SHA-1 output, modulo `2^m`); a key `k` is owned by the *successor* of `k` — the first node clockwise of `k`. The structural innovation is the **finger table**: each node `n` maintains `m` pointers, the `i`-th of which targets the successor of `n + 2^(i-1)`. Routing a lookup for key `k` from any node proceeds by forwarding to the closest predecessor of `k` reachable via the finger table; the doubling structure of the fingers guarantees that each hop halves the remaining distance, yielding `O(log N)` lookups. Joins, leaves, and failures are handled by a periodic stabilisation protocol that updates successor and finger entries; the protocol provably converges to correct routing within `O(log² N)` time after the network stabilises. Chord ignited the **structured-overlay** research programme that produced [[Kademlia]], Pastry, Tapestry, and many others; it is the conceptual parent of the routing layers underlying IPFS, BitTorrent's Mainline DHT, Ethereum's discovery protocol, and many enterprise key-value stores. The paper's combination of a simple geometric idea (the ring), a clever data structure (the finger table), and a careful proof of asymptotic complexity made structured P2P routing a tractable engineering target.

## Key Ideas
- *Circular identifier space*: nodes and keys map to `m`-bit identifiers (typically SHA-1, `m=160`); the space is treated as a ring `[0, 2^m)` modulo `2^m`. Geographic and topological location of nodes is irrelevant to routing.
- *Successor mapping*: a key `k` is owned by `successor(k)` — the first node clockwise of `k` on the ring. This single rule defines the consistent-hash assignment of keys to nodes.
- *Finger table for O(log N) lookups*: each node `n` maintains `m` pointers (the *finger table*); finger `i` targets `successor(n + 2^(i-1))`. The doubling structure guarantees each routing hop halves the remaining clockwise distance to the target.
- *Stabilisation protocol*: each node periodically asks its successor for *that* successor's predecessor, updates as needed, and runs `fix_fingers` to refresh finger entries. Provably converges to correct routing.
- *Joins and leaves*: a joining node `n` finds its successor by routing on any existing node, then runs stabilisation; departing nodes leave gracefully if possible, and abrupt failures are healed by stabilisation. Successor lists (the `r` immediate successors, not just one) provide robustness against simultaneous failures.
- *Consistent hashing for load balance*: random hashing of node and key IDs distributes ownership uniformly with high probability; load imbalance is bounded by `O(log N / N)`.
- *Application-agnostic substrate*: Chord provides only a *lookup* primitive (`lookup(k) → node owning k`); higher-level abstractions — DHT storage, multicast, locking — layer on top.

## Connections
- [[Chord]]
- [[Distributed Hash Table]]
- [[Consistent Hashing]]
- [[Kademlia]]
- [[IPFS Content-Addressed Versioned P2P File System]]
- [[Gossiping in Distributed Systems]]
- [[Gossip-Based Computation of Aggregate Information]]
- [[Myconet Fungi Inspired Superpeer Overlay]]
- [[Peer Sampling Service]]
- [[Structured Overlay]]

## Conceptual Contribution
- **Claim:** A scalable peer-to-peer lookup service can be built by mapping nodes and keys onto a circular identifier space, assigning each key to its successor node, and having each node maintain a doubling-distance finger table that guarantees `O(log N)` lookups with `O(log N)` per-node state. The structure tolerates churn through a simple stabilisation protocol that provably converges to correct routing.
- **Mechanism:** SHA-1-keyed circular ring; successor-based key ownership; finger table of `m` doubling-distance pointers per node; periodic stabilisation (`stabilize` + `fix_fingers`); successor lists for failure resilience; consistent-hashing load balance.
- **Concepts introduced/used:** [[Chord]], [[Distributed Hash Table]], [[Consistent Hashing]], Finger Table, Stabilisation Protocol, [[Structured Overlay]].
- **Stance:** systems-engineering paper; foundational for structured P2P research.
- **Relates to:** Direct ancestor of [[Kademlia]] (Maymounkov & Mazières 2002), which replaces the ring with an XOR-metric tree and the finger table with k-buckets — IPFS, Ethereum discovery, BitTorrent's Mainline DHT, and most modern P2P systems use Kademlia rather than Chord, but the conceptual move (structured overlay with `O(log N)` routing) is Chord's. Sibling of Pastry (Rowstron & Druschel 2001) and Tapestry (Zhao et al. 2001), with very similar guarantees and slightly different geometric structures. Conceptually orthogonal to the unstructured *gossip* protocols already in the vault ([[Gossiping in Distributed Systems]], [[Gossip-Based Computation of Aggregate Information]], [[Gossip-based Aggregation in Large Dynamic Networks]]) — gossip is best for *aggregation* and *dissemination* with high churn tolerance and weak guarantees, structured DHTs are best for *lookup* with strong asymptotic guarantees and moderate churn tolerance. The two are typically *combined* in production systems: gossip for membership / liveness, DHT for content lookup. In agent-communication terms, Chord supplies the *transport-layer* answer to "where do I send a message addressed to this agent ID?" — the structured P2P counterpart to KQML/FIPA facilitators or the modern [[Agent Network Protocol|ANP]] / [[Agent-to-Agent Protocol|A2A]] discovery layer. [[IPFS Content-Addressed Versioned P2P File System|IPFS]] is the most-deployed Chord-line system in this vault, although IPFS itself uses Kademlia.

## Tags
#p2p #dht #chord #stoica #structured-overlay #distributed-systems #foundations
