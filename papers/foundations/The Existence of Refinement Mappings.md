# The Existence of Refinement Mappings

**Reference:** Martín Abadi & Leslie Lamport (1988). *The Existence of Refinement Mappings*. Digital Equipment Corporation, Systems Research Center, Research Report 29, August 14. [PDF](https://lamport.azurewebsites.net/pubs/abadi-existence.pdf). This note covers the linked technical-report version.

## Summary

An implementation is correct when its externally observable behaviours are permitted by the specification, allowing stuttering: internal steps that leave the observed state unchanged. A refinement mapping proves this correspondence by mapping concrete states to abstract states, preserving initial states, transitions, observations, and supplementary liveness requirements.

Such a mapping need not exist on the original state space. **[[History Variable|History variables]]** record past information; **[[Prophecy Variable|prophecy variables]]** represent choices resolved by future behaviour. These auxiliary variables aid proofs without changing observable behaviours.

## Key Ideas

- **Conditional completeness:** Theorem 2 (§7) guarantees a mapping after adding [[History Variable|history]] and [[Prophecy Variable|prophecy variables]] when the implementation is machine-closed and the specification is internally continuous with finite invisible nondeterminism.
- **Machine closure:** every finite machine execution extends to an allowed behaviour.
- **Finite invisible nondeterminism:** bounds hidden alternatives compatible with a finite observation; it does not require a finite-state system.
- **Internal continuity:** an externally permitted behaviour that is a limit of permitted complete behaviours must itself be permitted.
- **Liveness matters:** matching transitions alone does not establish eventual progress.

## Connections

- [[History Variable]]
- [[Prophecy Variable]]
- [[Refinement]]
- [[Formal Verification]]
- [[Safety Property]]
- [[Liveness Property]]
- [[Fairness Assumption]]

## Conceptual Contribution

- **Claim:** Auxiliary state makes refinement mappings complete under stated hypotheses.
- **Mechanism:** History and prophecy variables bridge concrete and abstract states.
- **Concepts introduced/used:** [[Refinement]], [[Safety Property]], [[Liveness Property]].
- **Stance:** verification foundations.
- **Relates to:** For agent protocols, this suggests a proof strategy connecting implementation state to an abstract conversation specification. This is a wiki application, not an agent-specific result of the paper.

## Tags
#formal-methods #verification #refinement #distributed-systems #abadi #lamport
