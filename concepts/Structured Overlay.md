## Structured Overlay

A peer-to-peer network whose topology is *imposed* by an algorithm (typically the [[Distributed Hash Table|DHT]] routing rule) rather than by ad-hoc peer-discovery — each node maintains a small, deterministic set of neighbour pointers chosen so that lookups can be routed in `O(log N)` hops. Examples: [[Chord]] (ring + finger table), [[Kademlia]] (XOR metric + k-buckets), Pastry, Tapestry, CAN. Contrast with *unstructured* gossip overlays in which neighbour selection is random or epidemic and lookup is by flooding.

## In this vault
- [[Chord]]
- [[Kademlia]]
- [[Distributed Hash Table]]
- [[Gossiping in Distributed Systems]]
- [[Peer Sampling Service]]
