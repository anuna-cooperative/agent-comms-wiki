# Kademlia: A Peer-to-peer Information System Based on the XOR Metric

**Reference:** Maymounkov, P. & Mazières, D. (2002). *Kademlia: A Peer-to-peer Information System Based on the XOR Metric*. In *Proceedings of the 1st International Workshop on Peer-to-Peer Systems (IPTPS '02)*, LNCS 2429, pp. 53–65, Springer. [Springer DOI](https://doi.org/10.1007/3-540-45748-8_5) · [Open access PDF (Stanford SCS, Mazières)](https://www.scs.stanford.edu/~dm/home/papers/kpos.pdf)

## Summary
Maymounkov and Mazières introduce **Kademlia**, a [[Distributed Hash Table]] organised around an **XOR metric** on `k`-bit node and key identifiers: the distance between two IDs `x` and `y` is `d(x, y) = x ⊕ y` interpreted as an unsigned integer. The XOR metric is symmetric, satisfies the triangle inequality, and — crucially — is *unidirectional*: for any point `x` and any distance `d`, there is exactly one point `y` at distance `d` from `x`. This unidirectionality eliminates the asymmetry of [[Chord]]'s clockwise routing and makes routing-table maintenance opportunistic. Each Kademlia node maintains `k` *k-buckets* — for `0 ≤ i < bits`, the `i`-th bucket holds up to `k` known nodes whose distance from this node has its highest bit at position `i`. Lookup proceeds by iterative parallel queries: the lookup originator sends `α` (typically 3) parallel `FIND_NODE` queries to the closest known nodes; each respondent returns the `k` closest nodes it knows; the originator picks the closest unqueried nodes and continues until convergence. Routing tables are populated as a *side effect* of any traffic — every received message provides information about its sender's location, which the receiver uses to update its k-buckets. This yields a self-healing protocol with no separate stabilisation phase. Kademlia is the DHT underlying *every* significant production P2P system since: BitTorrent's Mainline DHT (the largest deployed DHT in the world), [[IPFS Content-Addressed Versioned P2P File System|IPFS]], Ethereum's discovery protocol (Discv4 and Discv5), I2P, Tor's hidden-services directory, GNUnet, eMule's Kad. The combination of XOR symmetry, opportunistic routing-table maintenance, and parallel iterative lookup made Kademlia the practical winner among the early-2000s structured-overlay designs.

## Key Ideas
- *XOR metric as the routing distance*: `d(x, y) = x ⊕ y` (unsigned-integer interpretation). Symmetric (`d(x,y) = d(y,x)`), satisfies triangle inequality (`d(x,y) ≤ d(x,z) + d(z,y)`), and **unidirectional** (for any `x` and `d`, exactly one `y` satisfies `d(x,y) = d`).
- *k-buckets*: each node maintains `bits` (typically 160) buckets; the `i`-th bucket holds up to `k` (typically 20) known nodes whose XOR-distance has its highest bit at position `i` — i.e. nodes that share an `i`-bit common prefix with the local node and differ at bit `i+1`.
- *Iterative parallel lookup*: `FIND_NODE(target)` proceeds by sending `α` (typically 3) parallel queries to the `α` closest known nodes; each respondent returns the `k` closest nodes it knows to `target`; the originator picks new closest unqueried nodes and continues until no closer nodes are returned.
- *Opportunistic table maintenance*: every received message from a node provides location information; the receiver evicts the *least-recently-seen* k-bucket entry only if it fails a probe, otherwise the new node is inserted at the *most-recently-seen* end. This biases toward long-lived nodes — a critical property for resilience against churn-based attacks.
- *No periodic stabilisation*: routing tables are kept fresh as a side effect of normal traffic; only inactive buckets need explicit refresh (every hour or so via a random `FIND_NODE`).
- *Concurrent lookups for latency*: parallel queries reduce lookup latency (the bottleneck is the slowest response among `α` rather than the cumulative serial latency); easily tunable by adjusting `α`.
- *Unidirectionality eliminates Chord's asymmetry*: in Chord, `successor(x)` and `predecessor(x)` are different; Kademlia's symmetric XOR metric makes routing tables symmetric, so nodes that route through us also know us, and vice versa.

## Connections
- [[Kademlia]]
- [[XOR Metric]]
- [[k-Buckets]]
- [[Distributed Hash Table]]
- [[Chord]]
- [[Consistent Hashing]]
- [[Structured Overlay]]
- [[IPFS Content-Addressed Versioned P2P File System]]
- [[Gossiping in Distributed Systems]]

## Conceptual Contribution
- **Claim:** A practical, churn-resilient distributed hash table can be built around the XOR metric on identifier space, k-buckets that bias toward long-lived nodes for routing-table membership, iterative parallel lookups for latency, and opportunistic table maintenance as a side effect of normal traffic — eliminating the need for a separate stabilisation protocol.
- **Mechanism:** XOR-metric distance; `bits`-many `k`-sized buckets per node organised by shared-prefix length; iterative parallel `FIND_NODE` lookups with concurrency `α`; least-recently-seen eviction policy biasing toward long-lived nodes; opportunistic bucket updates from incoming traffic.
- **Concepts introduced/used:** [[Kademlia]], [[XOR Metric]], [[k-Buckets]], Iterative Parallel Lookup, Opportunistic Routing-Table Maintenance.
- **Stance:** systems-engineering paper; the practical winner among early-2000s DHT designs.
- **Relates to:** Direct successor of [[Chord]] (Stoica et al. 2001) — same `O(log N)` lookup complexity and similar `O(log N)` per-node state, but with the XOR metric replacing the ring, k-buckets replacing the finger table, and opportunistic maintenance replacing periodic stabilisation. The differences are decisive in practice: BitTorrent's Mainline DHT (the largest deployed DHT in the world, with millions of concurrent users), [[IPFS Content-Addressed Versioned P2P File System|IPFS]] (libp2p), Ethereum's Discv4/Discv5 discovery protocol, Tor's directory, eMule's Kad, GNUnet, and I2P all use Kademlia. The least-recently-seen eviction policy is particularly important: it makes Kademlia robust against Sybil-style attacks in which an adversary floods the network with short-lived peers, since long-lived honest nodes cannot be displaced from buckets by short-lived attackers. In the agent-communication setting, Kademlia is the standard substrate for *agent discovery* in any P2P agent system: the [[Agent Network Protocol|ANP]] discovery layer, [[IPFS Content-Addressed Versioned P2P File System|IPFS]]-based agent registries, and most academic P2P MAS testbeds use libp2p (Kademlia under the hood). The synthesis with [[Gossiping in Distributed Systems|gossip-based aggregation]] already in the vault is straightforward and standard: Kademlia for *content lookup* and *peer discovery*, gossip for *aggregation* and *liveness dissemination* — the two protocols complement rather than compete.

## Tags
#p2p #dht #kademlia #xor-metric #distributed-systems #foundations
