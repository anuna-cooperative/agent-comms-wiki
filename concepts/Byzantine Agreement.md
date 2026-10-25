## Byzantine Agreement

The classical problem ([[Reaching Agreement in the Presence of Faults|Pease, Shostak & Lamport 1980]]; Lamport, Shostak & Pease 1982, *The Byzantine Generals Problem*): get `n` processes to agree despite up to `f` Byzantine processes (arbitrarily faulty, including coordinating malicious behaviour). Without unforgeable origin authentication, deterministic agreement requires `n ≥ 3f+1`; signed messages prevent faulty relays from forging another process's statement and permit stronger resilience. Partially synchronous state-machine-replication protocols such as [[PBFT]] and [[HotStuff]] retain `3f+1` replicas because they use quorum intersection to preserve safety while making progress.

## In this vault
- [[Reaching Agreement in the Presence of Faults]]
- [[Practical Byzantine Fault Tolerance]]
- [[PBFT]]
- [[HotStuff]]
- [[Byzantine Fault Tolerance]]
- [[Distributed Consensus]]
