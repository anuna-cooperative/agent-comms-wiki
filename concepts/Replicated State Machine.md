## Replicated State Machine

The architectural pattern in which a fault-tolerant service is built by running identical deterministic state machines on multiple nodes and using a consensus protocol ([[Raft]], [[The Part-Time Parliament|Paxos]], [[Practical Byzantine Fault Tolerance|PBFT]], [[HotStuff]]) to agree on the order of inputs (commands) applied to the machine. Given identical initial state and identical input sequences, deterministic replicas reach identical states. The pattern underlies essentially every modern fault-tolerant database, configuration store, and blockchain.

## In this vault
- [[In Search of an Understandable Consensus Algorithm]]
- [[The Part-Time Parliament]]
- [[Raft]]
- [[Distributed Consensus]]
- [[Log Replication]]
- [[Practical Byzantine Fault Tolerance]]
