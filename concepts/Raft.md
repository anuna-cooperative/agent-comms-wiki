## Raft

Ongaro & Ousterhout's (2014) crash-fault-tolerant consensus algorithm equivalent in capability to multi-Paxos but designed primarily for understandability. Decomposes consensus into [[Leader Election]] / [[Log Replication]] / safety; enforces a strong-leader discipline (logs flow only leader→follower); uses randomised election timeouts and term-numbered logical clocks. The dominant CP-style consensus algorithm in modern systems: etcd, Kubernetes, CockroachDB, TiKV, Consul.

## In this vault
- [[In Search of an Understandable Consensus Algorithm]]
- [[The Part-Time Parliament]]
- [[Distributed Consensus]]
- [[Leader Election]]
- [[Log Replication]]
- [[Practical Byzantine Fault Tolerance]]
- [[HotStuff]]
