# Multiparty Session Types Meet Communicating Automata

**Reference:** Pierre-Malo Deniélou & Nobuko Yoshida (2012). *Programming Languages and Systems — ESOP 2012*, LNCS 7211, pp. 194–213. Springer. DOI: [10.1007/978-3-642-28869-2_10](https://doi.org/10.1007/978-3-642-28869-2_10). [Author-hosted PDF, including appendix](https://www.doc.ic.ac.uk/~yoshida/paper/msa.pdf). [Authors' publication record](https://mrg.cs.ox.ac.uk/publications/multiparty-session-types-meet-communicating-automata/).

## Summary

Deniélou and Yoshida connect [[Session Types|multiparty session types]] with communicating finite-state machines (CFSMs): participants exchanging messages asynchronously through FIFO queues. General CFSM verification is often undecidable. The paper identifies **multiparty session automata (MSA)**, a disciplined subclass generated from generalised global types through local-type projection and translation.

The global-type language separates exclusive choice and merge from concurrent fork and join. This supports protocols beyond earlier session frameworks while retaining polynomial-time well-formedness checking, projection, and process type-checking. The automata interpretation gives a shared account of communication safety and progress across the two formalisms.

## Key Ideas

- **Pipeline:** global protocol → projected local types → communicating automata; processes are checked against local types.
- **Structured concurrency:** fork/join and choice/merge represent different interaction structures explicitly.
- **MSA:** a safe subclass for arbitrarily many participants, extending earlier two-machine results.
- **Guarantees have a scope:** the safety, boundedness, and liveness results concern the paper's well-formed protocols and typed calculus, rather than unrestricted CFSMs.
- **Examples and tooling:** the Trade protocol combines negotiation with concurrent notifications; the paper also discusses the Alternating Bit Protocol and a prototype connected to Scribble.

## Connections

- [[On Communicating Finite-State Machines]] — Brand–Zafiropulo's foundational protocol model.
- [[Communicating Finite State Machines]]
- [[Multiparty Asynchronous Session Types]] — earlier global/local type foundation.
- [[Multiparty Compatibility in Communicating Automata]] — the authors' subsequent characterisation and synthesis work.
- [[Session Types]]
- [[Endpoint Projection]]
- [[Choreographic Programming]]
- [[Safety Property]]
- [[Liveness Property]]

## Conceptual Contribution

- **Claim:** Generalised session types identify tractable, well-behaved communicating automata.
- **Mechanism:** Projection and automata semantics connect protocol structure to typed process guarantees.
- **Concepts introduced/used:** multiparty session automata, [[Session Types]], [[Endpoint Projection]].
- **Stance:** formal semantics / protocol verification.
- **Relates to:** For agent systems, this offers a model for checking conversation implementations against a shared protocol. Applying it requires matching the model's channel and participant assumptions; this is a wiki application, not an agent-specific result.

## Tags
#session-types #communicating-automata #multiparty #endpoint-projection #formal-methods #protocol-verification
