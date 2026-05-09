# Structured Communication-Centred Programming for Web Services

**Reference:** Carbone, M., Honda, K. & Yoshida, N. (2007/2012). Conference: *European Symposium on Programming (ESOP 2007)*, LNCS 4421: 2–17. Journal: *ACM Transactions on Programming Languages and Systems* 34(2): 8:1–8:78, June 2012. DOI: [10.1145/2220365.2220367](https://doi.org/10.1145/2220365.2220367). Source file: `carbone-honda-yoshida-toplas12.pdf`. [URL](https://dl.acm.org/doi/10.1145/2220365.2220367)

## Summary
Carbone, Honda and Yoshida introduce the formal foundation of what is now called **[[Choreographic Programming]]**: a programming paradigm in which one writes a *global description* of how a set of communicating agents interact — who sends what to whom, in what order, under which choices — and a mechanical *endpoint projection* derives the local program for each participant. The paper presents two formal calculi side by side: a *global calculus* whose terms describe interaction patterns from an Olympian, single-program perspective (e.g. `A → B : op⟨v⟩.G`, "A sends `op` carrying `v` to B, then continue with G"), and an *end-point calculus* — a session-typed asynchronous π-calculus — that describes the same interactions from each participant's local perspective. The bridge between them is a *projection function* that, given a well-formed global description, produces a tuple of end-point processes, one per participant. The central technical result is a **soundness and completeness correspondence** (the *Theorem of End-Point Projection*): the global calculus and the projected end-point system are bisimilar, and the projection produces deadlock-free, communication-safe processes whenever the source global description satisfies a small set of well-formedness conditions (notably *connectedness* — every participant of a continuation must have been informed of the choice — and *thread linearity*).

The paper's intellectual move is to elevate the *interaction* itself to the status of programmable artefact, replacing the dominant view in which communication patterns are inferred *post hoc* from local code. The motivation is the W3C Web Services Choreography Description Language (WS-CDL), but the calculus is independent of that context and has since become the foundation of an entire research line: subsequent work generalises the binary session-type substrate to multiparty ([[Multiparty Asynchronous Session Types]], Honda-Yoshida-Carbone POPL 2008), embeds choreographies in production languages (Choral, HasChor, ChoRus), and extends the framework toward adversarial settings via cryptographic primitives. Every contemporary choreographic-programming paper — including [[Pact - A Choreographic Language for Agentic Ecosystems|Pact]] — descends from this work.

## Key Ideas
- *Global calculus*: a process calculus whose terms describe interactions from a vantage point above all participants. Primitives include sending (`A → B : op⟨v⟩.G`), branching (`A → B : {labelᵢ : Gᵢ}`), parallel composition, recursion, and assignment.
- *End-point calculus*: an asynchronous, session-typed π-calculus describing each participant's local view; communication occurs over named *sessions* with structured types.
- *Endpoint projection (EPP)*: a syntactic transformation `⟦G⟧_A` mapping a global description `G` and a participant `A` to an end-point process. Type-driven and compositional.
- *Theorem of End-Point Projection*: for every well-formed global description `G`, the parallel composition of its end-point projections is operationally equivalent (bisimilar) to `G` itself, and is deadlock-free and communication-safe.
- *Connectedness condition*: a syntactic well-formedness check ensuring every participant in a continuation has been informed of the branch taken — this is what rules out projections in which one participant chooses a branch the others cannot observe.
- *Thread linearity*: each session channel is owned by exactly one thread, making projection unambiguous.
- *Session types as the substrate*: the global calculus is typed by *global types*, projected to *local types* per participant; well-typedness of the source guarantees well-typedness of all projections.
- *Operational correspondence at the core*: global reductions are matched step-for-step by end-point system reductions, and vice versa, modulo τ-transitions for internal sequencing.

## Connections
- [[Choreographic Programming]]
- [[Endpoint Projection]]
- [[Session Types]]
- [[Multiparty Asynchronous Session Types]]
- [[Introduction to Choreographies]]
- [[On the Monitorability of Session Types]]
- [[Conversation Protocols]]
- [[Commitment Machines - Yolum and Singh]]
- [[Flexible Protocol Specification and Execution]]
- [[Pact - A Choreographic Language for Agentic Ecosystems]]
- [[CBCL - Safe Self-Extending Agent Communication]]
- [[Communicating Sequential Processes]]

## Conceptual Contribution
- **Claim:** Distributed communication should be programmed *globally* — as a single artefact describing the joint interaction of all participants — rather than locally as per-process send/receive code, because the global view exposes the protocol's structure to type-checking and admits a sound-and-complete mechanical projection to per-role implementations that are deadlock-free and communication-safe by construction.
- **Mechanism:** Two parallel calculi (a global calculus describing interactions and an end-point asynchronous π-calculus describing local processes); a session-type discipline at both levels with a *projection theorem* showing global types project to local types role-by-role; a syntactic *endpoint projection function* `⟦G⟧_A` mapping global descriptions to local processes; well-formedness conditions (connectedness, thread linearity) sufficient to guarantee that projection preserves operational behaviour and yields communication safety; the central *Theorem of End-Point Projection* establishing bisimulation between the global system and its projected end-point composition.
- **Concepts introduced/used:** [[Choreographic Programming]], [[Endpoint Projection]], [[Session Types]], global type, local type, π-calculus, well-formedness (connectedness, thread linearity)
- **Stance:** foundational / formal-semantic
- **Relates to:** The taproot of the choreographic-programming literature. Sister paper to [[Multiparty Asynchronous Session Types]] (Honda-Yoshida-Carbone POPL 2008), which generalises the binary session-type substrate here to N-party interactions; together the two papers establish the modern global-types / local-types / endpoint-projection triangle. Underwrites the contemporary canonical reference [[Introduction to Choreographies]] (Montesi 2023). The runtime-monitoring story for the projected end-points is given by [[On the Monitorability of Session Types]] (Bartolo Burlò et al. ECOOP 2021). Structurally the *exact* analogue of [[Commitment Machines - Yolum and Singh]] (Yolum-Singh ATAL-01) and [[Flexible Protocol Specification and Execution]] (Yolum-Singh AAMAS-02) in the agent-communication tradition: both pairs (Carbone-Honda-Yoshida ↔ Yolum-Singh) take a globally-specified protocol, define a mechanical projection to per-role behaviour, and prove the projection preserves the relevant correctness property — communication safety on the choreography side, commitment discharge on the commitment-protocol side. Direct ancestor of [[Pact - A Choreographic Language for Agentic Ecosystems]] (Gopinathan et al. CP 2026), which adds game-theoretic operators on top of this substrate. The π-calculus dependency goes back to [[Communicating Sequential Processes]] (Hoare 1978) for the synchronous-communication root.

## Tags
#choreographic-programming #session-types #endpoint-projection #foundational #pi-calculus #protocols
