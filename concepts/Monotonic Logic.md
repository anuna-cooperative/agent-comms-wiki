# Monotonic Logic

A logic in which the conclusion set grows monotonically with the premise set: adding information never retracts a conclusion. Formally, a program *P* is monotone if `S ⊆ T ⟹ P(S) ⊆ P(T)`.

Monotone relational operations: selection, projection, intersection, join, transitive closure. Non-monotone: universal quantification, set difference, aggregates with totality assumption, **[[Negation as Failure]]**.

In distributed systems, monotonicity is the load-bearing property behind the **[[CALM Theorem]]**: monotone programs are safe under arbitrary message reordering and partial delivery, because no conclusion ever has to be taken back.

## In this vault
- [[CALM Theorem]]
- [[Keeping CALM - When Distributed Consistency is Easy]]
- [[Foundations of Logic Programming - Lloyd]]
- [[Non-monotonic Reasoning]]
- [[Confluence]]
- [[Coordination Avoidance]]
