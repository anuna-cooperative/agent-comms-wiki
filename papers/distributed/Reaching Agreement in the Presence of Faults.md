# Reaching Agreement in the Presence of Faults

## Reference

Pease, M., Shostak, R., & Lamport, L. (1980). "Reaching Agreement in the Presence of Faults." *Journal of the ACM*, 27(2), 228–234. [PDF](https://lamport.azurewebsites.net/pubs/reaching.pdf) · [DOI](https://doi.org/10.1145/322186.322188)

## Summary

Pease, Shostak, and Lamport formalise **interactive consistency**: each of `n` processors begins with a private value, and every nonfaulty processor must compute the same vector of all processors' values; the entry for every nonfaulty processor must equal its actual private value. Faulty processors may behave arbitrarily, including reporting different values to different peers and lying about values they were asked to relay. The paper proves the tight bound for this setting: agreement is achievable exactly when `n ≥ 3m+1`, where at most `m` processors are faulty.

The constructive result uses `m+1` rounds of information exchange. For one fault among four processors, each processor first broadcasts its value, then broadcasts what it heard, and derives each peer's value by majority (or a default value when no majority exists). The general algorithm recursively applies the same idea to nested reports. The matching impossibility proof partitions a system of `n ≤ 3m` processors into three groups of at most `m` processors and constructs indistinguishable scenarios in which two nonfaulty groups are forced to infer different values. No number of extra communication rounds can overcome this indistinguishability.

The paper then changes the fault model by adding **authenticators**: a faulty processor may suppress a value but cannot alter another processor's value and pass it off as genuine. Under this assumption, interactive consistency is possible for arbitrary `n ≥ m` using authenticated chains of reports. This clean separation between unauthenticated equivocation and cryptographically attributable statements established both the classical `3f+1` Byzantine-fault threshold and the power of signatures that later Byzantine agreement and replicated-state-machine protocols build upon.

## Key Ideas

- **Interactive consistency:** all nonfaulty processors compute an identical vector, and every nonfaulty processor's entry is its true input.
- **Arbitrary faults:** a faulty processor may omit messages, invent values, equivocate between recipients, or falsely report what another processor said.
- **Tight `3m+1` bound:** tolerating `m` arbitrary faults without origin-authenticating relayed statements requires at least `3m+1` processors; `m+1` rounds suffice.
- **Indistinguishability proof:** when `n ≤ 3m`, the processors can be partitioned into three groups, allowing faulty behaviour to make incompatible executions locally indistinguishable to different nonfaulty groups.
- **Authenticators change the bound:** if recipients can verify the origin and integrity of relayed values, faulty processors can suppress but not forge them, and the construction works for arbitrary `n ≥ m`.
- **Existence rather than efficiency:** the algorithms establish solvability; efficient agreement algorithms and restricted communication topologies are left as future work.

## Connections

- [[Byzantine Agreement]] — the paper gives the original interactive-consistency formulation and tight resilience bound.
- [[Byzantine Fault Tolerance]] — establishes how many replicas arbitrary faults require and how authentication changes the model.
- [[Practical Byzantine Fault Tolerance]] — PBFT turns the unauthenticated `3f+1` bound into a practical replicated-state-machine protocol.
- [[HotStuff]] — a later linear, responsive BFT protocol that retains the same `3f+1` resilience threshold.
- [[Impossibility of Distributed Consensus with One Faulty Process]] — a complementary impossibility result: FLP concerns liveness under asynchrony and crash faults, while this paper concerns agreement under arbitrary faults in a reliable, negligible-delay communication model.
- [[A Logic of Authentication]] — formal reasoning about the cryptographic attribution that prevents a faulty relay from altering another processor's statement.
- [[Time Clocks and the Ordering of Events in a Distributed System]] — another foundational Lamport result on coordinating processes using only message exchange.

## Conceptual Contribution

- **Claim:** Exact agreement in the presence of up to `m` arbitrarily faulty processors is possible without origin authentication if and only if `n ≥ 3m+1`; cryptographic authenticators remove that numerical restriction by preventing forged relays.
- **Mechanism:** Exchange nested reports for `m+1` rounds and recursively reconcile them; prove necessity by constructing indistinguishable executions across three groups; in the authenticated variant, propagate unforgeable chains and choose the unique non-`NIL` value when one exists.
- **Concepts introduced/used:** [[Interactive Consistency]], [[Byzantine Agreement]], [[Byzantine Fault Tolerance]], equivocation, indistinguishability, authenticator, `3f+1` resilience.
- **Stance:** foundational theorem / constructive algorithm / impossibility result.
- **Relates to:** Precursor to Lamport, Shostak, and Pease's *The Byzantine Generals Problem* (1982). It supplies the resilience boundary inherited by [[Practical Byzantine Fault Tolerance|PBFT]] and [[HotStuff]], while its authenticated construction anticipates signed-message Byzantine agreement. Unlike [[Impossibility of Distributed Consensus with One Faulty Process|FLP]], its lower bound does not arise from unbounded message delay: communication is assumed reliable and negligibly delayed, and the obstacle is equivocation by arbitrary faults.

## Tags

#distributed-systems #byzantine-agreement #interactive-consistency #fault-tolerance #impossibility #authentication #lamport #foundational
