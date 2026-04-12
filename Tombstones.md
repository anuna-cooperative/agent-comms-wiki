# Tombstones

Design pattern for representing deletions monotonically: instead of removing a record, mark it with a tombstone that subsequent operations recognise as "deleted". The effective data becomes "live records minus tombstoned records", and the underlying state only ever grows. This converts a non-monotonic delete into a monotonic insert, enabling coordination-free operation in line with the **[[CALM Theorem]]**.

Standard in log-structured storage (LSM trees), Cassandra, CRDTs like OR-Set, and distributed garbage-collection schemes.

## In this vault
- [[Keeping CALM - When Distributed Consistency is Easy]]
- [[CALM Theorem]]
- [[Coordination Avoidance]]
- [[CRDTs]]
- [[Immutable Data Structures]]
