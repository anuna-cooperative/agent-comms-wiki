## Leader Election

The distributed-systems primitive of choosing one (and only one) coordinator among a set of replicas. Crash-fault-tolerant variants (Bully, ZAB, [[Raft]]'s timeout-driven elections) tolerate node failures; Byzantine variants ([[Practical Byzantine Fault Tolerance|PBFT]]'s view-change, [[HotStuff]]'s rotation) tolerate adversarial nodes. Election is the simplifying organising principle of strong-leader consensus protocols: clients direct all writes to the current leader, which serialises and replicates them.

## In this vault
- [[In Search of an Understandable Consensus Algorithm]]
- [[Raft]]
- [[The Part-Time Parliament]]
- [[Distributed Consensus]]
