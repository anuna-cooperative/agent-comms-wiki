# IPFS - Content Addressed, Versioned, P2P File System

**Reference:** Juan Benet (2014). *arXiv:1407.3561 (DRAFT 3)*. Source file: `downloads/ipfs_benet.pdf`. [URL](https://arxiv.org/abs/1407.3561)

## Summary
Original whitepaper introducing the InterPlanetary File System (IPFS), a peer-to-peer hypermedia protocol that synthesises ideas from Git (Merkle-DAG object model), BitTorrent (incentivised block exchange via BitSwap), DHTs (Kademlia-based routing), and self-certifying file systems (SFS) into a single content-addressed distributed file system. Objects are referenced by the cryptographic hash of their contents, giving intrinsic integrity, deduplication, and location independence.

The design stack layers an identity/peer-routing layer (S/Kademlia DHT), a block exchange layer (BitSwap with tit-for-tat credit), an object graph layer (Merkle-DAG with links), a naming layer (IPNS for mutable pointers signed by keys), and application-level filesystem semantics. The paper positions IPFS as the substrate for a "permanent web" where content survives independent of any particular host.

## Key Ideas
- Content addressing: name = hash(content) -> intrinsic integrity, dedup, cacheability
- Merkle-DAG as universal object model spanning files, directories, commits
- BitSwap: BitTorrent-like block trading generalised beyond single swarms
- Kademlia DHT for peer and content routing
- IPNS: mutable pointer namespace via signed records keyed to public keys
- Self-certifying paths and location-independent fetching

## Connections
- [[Content-addressed Storage]]
- [[A Scalable Communication Protocol for Networks of LLMs]]
- [[Protocol Documents]]
- [[Decentralized Identifiers]]
- [[Hypermedia]]
- [[Semantic Web]]
- [[Gossip Protocols]]
- [[Peer Sampling Service]]

## Conceptual Contribution
- **Claim:** A single peer-to-peer protocol layered over Merkle-DAG content addressing can unify the roles played today by HTTP, Git, BitTorrent, and CDNs, yielding a permanent, decentralised, versioned web.
- **Mechanism:** Five-layer stack — S/Kademlia DHT for identity/routing, BitSwap for incentive-compatible block exchange, Merkle-DAG for the object graph, IPNS for mutable naming via signed records, and filesystem-level conventions above that. All objects are referenced by their SHA-2 multihash, so any peer can serve any object and clients can verify it independently.
- **Concepts introduced/used:** [[Content-addressed Storage]], Merkle-DAG, [[Gossip Protocols]], BitSwap, IPNS, Self-certifying paths, [[Peer Sampling Service]], [[Hypermedia]]
- **Stance:** engineering / systems
- **Relates to:** Directly underpins the distribution story for [[Protocol Documents]] in [[A Scalable Communication Protocol for Networks of LLMs]] — Agora PDs are hash-identified and can be served over any content-addressed store, of which IPFS is the canonical example. Shares the decentralised-naming motivation with [[Decentralized Identifiers]] and the self-organising-overlay motivation with [[Myconet Fungi Inspired Superpeer Overlay]].

## Tags
#content-addressing #p2p #distributed-systems #protocols #merkle-dag
