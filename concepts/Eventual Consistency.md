# Eventual Consistency

A consistency property of replicated systems: if no new updates are made, all replicas eventually return the same value. Originating with Terry et al.'s Bayou and codified by Vogels (Amazon Dynamo era) as the relaxation that makes large-scale distributed availability practical. Eventual consistency is *liveness*-flavoured ("the system catches up given enough time") and gives no bound on how long divergence persists; [[Strong Eventual Consistency]] tightens this by requiring that replicas with the same observed updates are immediately identical. The [[CALM Theorem]] gives a precise characterisation of which programs admit coordination-free eventually-consistent implementation — exactly the monotone ones (Ameloot et al., [[Relational Transducers for Declarative Networking]]).

## In this vault
- [[Strong Eventual Consistency]]
- [[CRDTs]]
- [[CAP Theorem]]
- [[CALM Theorem]]
- [[Coordination Avoidance]]
- [[A Comprehensive Study of Convergent and Commutative Replicated Data Types]]
- [[Relational Transducers for Declarative Networking]]
