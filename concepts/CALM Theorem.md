# CALM Theorem

**Consistency As Logical Monotonicity** (Hellerstein 2010 conjecture; Ameloot, Neven, Van den Bussche 2013 proof). A distributed program has a consistent, coordination-free implementation **if and only if** it is expressible in monotonic logic.

Monotonic programs produce a set of outputs that only grows as inputs arrive (`S ⊆ T ⟹ P(S) ⊆ P(T)`). Such programs are **safe under missing information**: any conclusion reached on a subset of inputs remains valid when more arrive. Non-monotonic programs may *retract* earlier conclusions, so they must wait for "all the news" — which is what distributed coordination enforces.

CALM is the *positive* counterpart to the **[[CAP Theorem]]**: it names the exact class of programs that can satisfy Consistency, Availability, and Partition-tolerance simultaneously.

## Why it matters
- Moves consistency from a property of storage (linearizability, serializability) to a property of *programs* — **[[Confluence]]**.
- Tells programmers *what kinds of features are free* (monotonic: set union, counting up, set-containment) and *what must be paid for* (non-monotonic: set difference, strict aggregation, count-exact, deletions without tombstones).
- Gives a design rule for coordination-free systems: build from monotonic primitives — [[CRDTs]], [[Immutable Data Structures]], [[Tombstones]], monotonic accumulators — and only add coordination at non-monotonic boundaries.

## Formal statement
Using **[[Relational Transducer]]** networks as the execution model and **[[Confluence]]** as the consistency criterion, Ameloot et al. prove: a query *Q* has a coordination-free distributed evaluation plan iff *Q* is monotone.

## In this vault
- [[Keeping CALM - When Distributed Consistency is Easy]] — the definitive survey
- [[CAP Theorem]]
- [[Confluence]]
- [[Monotonic Logic]]
- [[Coordination Avoidance]]
- [[Relational Transducer]]
- [[Bloom Language]]
- [[Dedalus]]
- [[CRDTs]]
- [[Non-monotonic Reasoning]]
