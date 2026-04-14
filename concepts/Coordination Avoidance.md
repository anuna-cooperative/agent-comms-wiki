# Coordination Avoidance

The design discipline of eliminating synchronisation (locks, quorums, consensus rounds) wherever a computation can be proved correct without it. The **[[CALM Theorem]]** makes this precise: coordination is avoidable exactly for monotonic programs.

Practical techniques:
- Build from monotonic primitives ([[CRDTs]], set unions, counters-up-only)
- Use [[Immutable Data Structures]] and [[Tombstones]] to convert mutation into monotonic history
- Isolate the non-monotonic boundary (e.g. a shopping-cart *checkout*) and coordinate there only
- Program in a language like [[Bloom Language]] that makes monotonicity syntactically checkable

Contrasts with storage-consistency work (linearizability, serializability) which enforces coordination *inside* the storage layer regardless of program shape.

## In this vault
- [[CALM Theorem]]
- [[Keeping CALM - When Distributed Consistency is Easy]]
- [[Monotonic Logic]]
- [[Confluence]]
- [[CRDTs]]
- [[CAP Theorem]]
- [[Bloom Language]]
- [[Gossip-Based Computation of Aggregate Information]]
