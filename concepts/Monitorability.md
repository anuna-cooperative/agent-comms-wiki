# Monitorability

The property of a behavioural specification that admits a sound-and-complete *runtime monitor*: a passive observer that, watching only the externally-visible trace of a system, can flag exactly the executions that violate the specification. Not every property is monitorable from traces alone — generally, only safety properties are fully monitorable, while liveness properties are not — and the precise characterisation depends on what the monitor is allowed to observe. For [[Session Types]], Bartolo Burlò, Francalanza & Scalas ([[On the Monitorability of Session Types]]) give a precise account: the monitorable fragment is a strict sub-class of the statically-decidable fragment, and they exhibit an automatic monitor-synthesis procedure. Structurally adjacent to the conformance theory of [[Commitment-Based Protocol|commitment-based protocols]], where Yolum-Singh's "every base-level commitment is discharged at run end" is the commitment-protocol analogue of session-type monitorability.

## In this vault
- [[On the Monitorability of Session Types]]
- [[Session Types]]
- [[Verifiable Semantics for ACLs]]
- [[Commitment-Based Protocol]]
- [[Public Semantics]]
