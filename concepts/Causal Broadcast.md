# Causal Broadcast

A delivery discipline for distributed message-passing systems in which, if message *m₁* causally precedes message *m₂* (in the [[Time Clocks and the Ordering of Events in a Distributed System|Lamport]] happened-before sense), then every recipient delivers *m₁* before *m₂*. Birman and Joseph (1987) introduced the formalism in the ISIS toolkit; it is the standard prerequisite for op-based [[CRDTs]] (commutative operations need only commute pairwise *given* causal ordering) and the runtime correctness condition that makes a Merkle DAG of `:caused-by` references soundly executable. Causal broadcast is *strictly weaker* than total-order broadcast (it permits concurrent messages to be delivered in different orders at different recipients) and *strictly stronger* than FIFO (it respects cross-channel causality, not just per-channel sequence).

## In this vault
- [[CRDTs]]
- [[A Comprehensive Study of Convergent and Commutative Replicated Data Types]]
- [[Time Clocks and the Ordering of Events in a Distributed System]]
- [[Version Vector]]
- [[CBCL - Safe Self-Extending Agent Communication]]
