## k-Buckets

[[Kademlia]]'s routing table structure: each node maintains `bits` (typically 160) k-buckets, where the `i`-th bucket holds up to `k` (typically 20) known peers whose [[XOR Metric|XOR-distance]] from this node has its highest bit at position `i`. A peer for the `i`-th bucket shares an `i`-bit common prefix with the local node and differs at bit `i+1`. The least-recently-seen eviction policy biases bucket membership toward long-lived nodes, providing resilience against churn-based and Sybil-style attacks.

## In this vault
- [[Kademlia]]
- [[XOR Metric]]
- [[Distributed Hash Table]]
