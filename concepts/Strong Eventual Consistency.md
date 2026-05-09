# Strong Eventual Consistency

A consistency property strictly stronger than classical eventual consistency: any two replicas that have observed the same set of updates are *immediately* byte-identical, with no need to wait for the system to "calm down" or quiesce. SEC is the precise correctness target for [[CRDTs]] formalised by Shapiro et al. ([[A Comprehensive Study of Convergent and Commutative Replicated Data Types]]) — it falls out automatically from join-associativity / -commutativity / -idempotence on the lattice of replica states with monotone updates. Distinguishing SEC from eventual consistency matters in practice: a CRDT with SEC needs no anti-entropy gossip after delivery is complete; an eventually-consistent system without SEC may need to converge over time as conflicts are resolved.

## In this vault
- [[A Comprehensive Study of Convergent and Commutative Replicated Data Types]]
- [[CRDTs]]
- [[Eventual Consistency]]
- [[Confluence]]
