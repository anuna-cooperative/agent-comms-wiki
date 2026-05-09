## Chained Consensus

A consensus-protocol design in which agreement decisions are arranged in a chain (each block points to its parent via a [[Quorum Certificate]]) rather than as independent rounds. Commitment of a child commits the parent — and in [[HotStuff]]'s three-chain structure, the grandparent. Naturally amenable to [[Pipelined BFT|pipelining]], since the chain provides the dependency information needed to reason about overlapping decisions safely. The basis of essentially every BFT-PoS blockchain consensus protocol shipped after 2019.

## In this vault
- [[HotStuff]]
- [[Pipelined BFT]]
- [[Quorum Certificate]]
