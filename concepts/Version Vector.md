# Version Vector

A data structure for tracking causal history in distributed systems: a map from replica IDs to monotonically-increasing per-replica counters. Two version vectors are comparable iff one dominates the other componentwise; otherwise the corresponding events are concurrent. Version vectors are the standard mechanism behind op-based [[CRDTs]] (witnessing that a particular operation has been observed everywhere it should be), [[Causal Broadcast]] (tagging messages with their causal context), and conflict detection in optimistic replication systems (Bayou, Dynamo, Riak). Generalises the per-process timestamp logic of [[Time Clocks and the Ordering of Events in a Distributed System|Lamport clocks]] to multi-replica settings where each replica needs to distinguish its own progress from peers'.

## In this vault
- [[CRDTs]]
- [[A Comprehensive Study of Convergent and Commutative Replicated Data Types]]
- [[Causal Broadcast]]
- [[Time Clocks and the Ordering of Events in a Distributed System]]
