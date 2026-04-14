# Immutable Data Structures

Data whose values never change after construction — state updates create *new* values rather than mutating existing ones. Immutability is a monotonic discipline: the set of values in existence only grows. It is one of the practical design patterns the **[[CALM Theorem]]** motivates for coordination-free distributed systems, alongside [[Tombstones]] and [[CRDTs]].

Functional-programming heritage (persistent trees, zippers, deforestation) carries directly into the distributed setting: immutable logs, append-only storage, event-sourced architectures, deforested pipelines.

## In this vault
- [[Keeping CALM - When Distributed Consistency is Easy]]
- [[CALM Theorem]]
- [[Coordination Avoidance]]
- [[CRDTs]]
- [[Tombstones]]
- [[Programming Erlang Second Edition]]
