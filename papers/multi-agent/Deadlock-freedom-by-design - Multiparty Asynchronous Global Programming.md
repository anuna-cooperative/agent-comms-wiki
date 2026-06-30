# Deadlock-freedom-by-design: Multiparty Asynchronous Global Programming

**Reference:** Carbone, M. & Montesi, F. (2013). *Proceedings of the 40th Annual ACM SIGPLAN-SIGACT Symposium on Principles of Programming Languages (POPL '13)*, Rome, Italy. ACM. DOI: [10.1145/2480359.2429101](https://doi.org/10.1145/2480359.2429101). [URL](https://dl.acm.org/doi/abs/10.1145/2480359.2429101) · [PDF](https://dl.acm.org/doi/pdf/10.1145/2480359.2429101)

## Summary
Carbone and Montesi present a **global programming** (choreographic) language for **asynchronous multiparty sessions** whose defining property is that well-typed programs are **deadlock-free by construction** — even when they interleave *several sessions at once*. The starting observation is a gap in the multiparty session-types pipeline established by [[Multiparty Asynchronous Session Types]]: that discipline guarantees progress *within a single session*, but a participant engaged in *multiple* concurrent sessions can still deadlock, because cyclic wait-for dependencies can form *across* sessions (A waits on B in session s while B waits on A in session s′). Local, per-session typing cannot see those cross-session cycles. The paper's move is to lift programming back to the **global** viewpoint of [[Structured Communication-Centred Programming for Web Services]]: one writes a single choreography describing who communicates with whom, in what order, across all the sessions involved, and a mechanical **[[Endpoint Projection]]** derives the local process for each role.

Because a choreography sequences interactions from an Olympian, single-program perspective, it cannot express a global cyclic wait — the global description is intrinsically free of the mismatched send/receive orderings that produce deadlock. The technical contribution is to *carry that guarantee through projection*: the authors define a choreography calculus over an asynchronous, session-typed process model (with message queues), give a typing discipline for choreographies that use and interleave multiple sessions, and prove an **endpoint-projection theorem** establishing operational correspondence between a choreography and the parallel composition of its projected endpoints. As a corollary, the distributed endpoint system inherits the choreography's deadlock-freedom and communication safety — including across interleaved sessions — so deadlock-freedom is obtained *by design* rather than checked or repaired after the fact. The work is a direct precursor of the choreographic-programming languages that follow ([[Choral - Object-Oriented Choreographic Programming|Choral]], [[HasChor - Functional Choreographic Programming|HasChor]], [[ChoRus - Library-Level Choreographic Programming in Rust|ChoRus]]) and is consolidated in [[Introduction to Choreographies]].

## Key Ideas
- *Global programming over multiparty sessions*: programs are choreographies — global descriptions of the joint interaction of all participants — rather than per-role send/receive code, extending the global-calculus idea of [[Structured Communication-Centred Programming for Web Services]] to a full programming language.
- *Cross-session deadlock is the target*: single-session progress (à la [[Multiparty Asynchronous Session Types]]) does **not** imply global deadlock-freedom once a participant interleaves multiple sessions; cyclic dependencies can span sessions where no single session's type can detect them.
- *Deadlock-freedom by construction*: a choreography cannot express a global cyclic wait, so well-typed global programs are deadlock-free by their very structure — the guarantee is intrinsic, not an external check.
- *Asynchronous session model*: communication is non-blocking with message buffers/queues; the type discipline tracks the resulting ordering obligations across the interleaved sessions.
- *Endpoint Projection (EPP)*: a mechanical, type-driven transformation mapping a global program to one local process per role, in a session-typed asynchronous process calculus.
- *Operational correspondence*: the projected endpoint system is proven to match the choreography step-for-step, so the endpoints inherit the choreography's deadlock-freedom and communication safety — the guarantee survives distribution.

## Connections
- [[Structured Communication-Centred Programming for Web Services]]
- [[Multiparty Asynchronous Session Types]]
- [[Choreographic Programming]]
- [[Endpoint Projection]]
- [[Session Types]]
- [[Deadlock Freedom]]
- [[Introduction to Choreographies]]
- [[Choral - Object-Oriented Choreographic Programming]]
- [[HasChor - Functional Choreographic Programming]]
- [[ChoRus - Library-Level Choreographic Programming in Rust]]
- [[Pact - A Choreographic Language for Agentic Ecosystems]]
- [[On the Monitorability of Session Types]]
- [[Communicating Sequential Processes]]
- [[Pi-Calculus]]

## Conceptual Contribution
- **Claim:** Deadlock-freedom for distributed, multiparty, *multi-session* programs should be obtained **by design** — by programming the protocol globally as a choreography and projecting to endpoints — rather than by per-session typing, because local session types guarantee only intra-session progress and cannot see the cyclic wait-for dependencies that form when one participant interleaves several sessions; a global program is structurally incapable of expressing such a cycle, and a sound endpoint projection transports that guarantee to the distributed implementation.
- **Mechanism:** A global programming (choreography) language over an asynchronous, session-typed process model with message queues; a typing discipline for choreographies that open and interleave multiple multiparty sessions; an endpoint-projection function from global programs to per-role local processes; and an endpoint-projection theorem proving operational correspondence between a well-typed choreography and the parallel composition of its projections, from which the endpoint system's deadlock-freedom and communication safety follow as corollaries.
- **Concepts introduced/used:** [[Choreographic Programming]], [[Endpoint Projection]], [[Session Types]], global program, session interleaving, [[Deadlock Freedom]], asynchronous π-calculus, communication safety
- **Stance:** foundational / formal-semantic
- **Relates to:** Sequel in the choreography lineage to [[Structured Communication-Centred Programming for Web Services]] (Carbone-Honda-Yoshida ESOP 2007 / TOPLAS 2012) and [[Multiparty Asynchronous Session Types]] (Honda-Yoshida-Carbone POPL 2008): where those works establish the global-types / local-types / endpoint-projection triangle and guarantee *intra-session* progress, this paper closes the *cross-session* deadlock gap by making global programming itself the deadlock-freedom mechanism. Direct ancestor of the production choreographic languages [[Choral - Object-Oriented Choreographic Programming|Choral]], [[HasChor - Functional Choreographic Programming|HasChor]] and [[ChoRus - Library-Level Choreographic Programming in Rust|ChoRus]], and of the agentic revival in [[Pact - A Choreographic Language for Agentic Ecosystems]]; consolidated pedagogically in [[Introduction to Choreographies]] (Montesi 2023). The runtime-verification counterpart for the projected endpoints is [[On the Monitorability of Session Types]] (Bartolo Burlò et al. ECOOP 2021). The asynchronous π-calculus / [[Communicating Sequential Processes]] substrate underlies the endpoint process model.

## Tags
#choreographic-programming #session-types #endpoint-projection #deadlock-freedom #multiparty #pi-calculus #foundational
