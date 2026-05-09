## Distributed Hash Table

A class of decentralised key-value stores in which data is partitioned across a self-organising network of nodes via [[Consistent Hashing]] and a structured overlay routes lookups in `O(log N)` (or thereabouts) hops. Canonical members: [[Chord]], [[Kademlia]], Pastry, Tapestry. The structured-overlay counterpart of [[Gossiping in Distributed Systems|unstructured gossip]] — DHTs win for *lookup* with predictable cost; gossip wins for *aggregation* and *dissemination* under high churn. DHTs underlie IPFS, Ethereum discovery, BitTorrent's Mainline DHT, and most P2P content-addressing infrastructure.

## In this vault
- [[Chord]]
- [[Kademlia]]
- [[Consistent Hashing]]
- [[Structured Overlay]]
- [[IPFS Content-Addressed Versioned P2P File System]]
- [[Gossiping in Distributed Systems]]
