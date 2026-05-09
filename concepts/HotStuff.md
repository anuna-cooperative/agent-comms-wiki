## HotStuff

Yin et al.'s (2019) BFT consensus protocol with **linear** communication complexity (`O(n)` per decision in both the common case and view change) and **responsiveness** (commits at network speed, not max-timeout speed) — both improvements over [[PBFT]]. Achieves linearity via [[Threshold Signature|threshold-signature]] [[Quorum Certificate|quorum certificates]] and uniform three-chain commit; chained variant pipelines three views into one message per leader. The consensus core of Diem, Aptos, Sui's Mysticeti, and many recent BFT-PoS blockchains.

## In this vault
- [[HotStuff]]
- [[Practical Byzantine Fault Tolerance]]
- [[PBFT]]
- [[Byzantine Agreement]]
- [[Threshold Signature]]
- [[Quorum Certificate]]
- [[Pipelined BFT]]
- [[Chained Consensus]]
- [[Distributed Consensus]]
