# Multiparty Asynchronous Session Types

**Reference:** Honda, K., Yoshida, N. & Carbone, M. (2008). *Proceedings of the 35th Annual ACM SIGPLAN-SIGACT Symposium on Principles of Programming Languages (POPL '08)*, San Francisco, CA, pp. 273–284. ACM. DOI: [10.1145/1328438.1328472](https://doi.org/10.1145/1328438.1328472). Journal version: *Journal of the ACM* 63(1):9, 2016, DOI: [10.1145/2827695](https://doi.org/10.1145/2827695). Source file: `honda-yoshida-carbone-popl08.pdf`. [URL](https://dl.acm.org/doi/10.1145/1328438.1328472)

## Summary
Honda, Yoshida and Carbone generalise the binary session-type discipline of Honda (1993) and Honda-Vasconcelos-Kubo (1998) to *multiparty* asynchronous communication: a single **global type** describes the interaction protocol among `N ≥ 2` participants, and per-participant **local types** are derived by a syntactic *projection function* that translates each global statement into the participant's local view of it. A process calculus extending the asynchronous π-calculus is typed against these local types; the central technical result is the **subject reduction and progress theorem**: a system of well-typed processes is deadlock-free, communication-safe (no message-type mismatch), and session-fidelity-preserving (the runtime trace conforms to the global type, projected). This three-tier structure — global types, local types via projection, processes typed against local types — is the formal foundation that the entire contemporary multiparty session-types and choreographic-programming literature inherits.

The paper's intellectual contribution is to make the *global protocol* a typed object whose well-formedness can be checked once, with the well-typedness of every projected role following automatically. Where binary session types describe the obligations of two endpoints separately and rely on duality, multiparty session types describe the joint protocol once and project to as many roles as needed, with a *coherence* condition (each branching point is observed by every relevant participant) ensuring projections are mutually consistent. The treatment is *asynchronous*: send is non-blocking, messages are buffered in per-channel queues, and the type system tracks the resulting message-order obligations. The framework is the direct precursor of contemporary choreographic-programming languages (Choral, HasChor, ChoRus, [[Pact - A Choreographic Language for Agentic Ecosystems|Pact]]) and of the runtime-monitoring theory developed in [[On the Monitorability of Session Types]].

## Key Ideas
- *Global type*: a single typing artefact `G` describing the interaction among `N` participants — primitives include `p → q : ⟨S⟩.G` (participant `p` sends a value of type `S` to `q`, then `G`), branching `p → q : {ℓᵢ : Gᵢ}`, recursion `μt.G`, and parallel composition.
- *Local type / projection*: `G ↾ p` is the projection of `G` to participant `p`, syntactically translating each global statement into the corresponding send/receive/select/branch from `p`'s perspective.
- *Coherence (well-formedness)*: a global type is well-formed iff every choice point is observed by every relevant participant — the multiparty analogue of the *connectedness* condition in [[Structured Communication-Centred Programming for Web Services]].
- *Asynchronous π-calculus substrate*: processes communicate over typed session channels with non-blocking send and FIFO queues; each session is opened with a fresh name and closed structurally.
- *Subject reduction*: well-typedness is preserved under reduction.
- *Communication safety*: no well-typed system ever sends a value whose type the receiver does not expect.
- *Session fidelity / progress*: the runtime trace of a well-typed system is a refinement of the projected local types, and well-typed systems whose buffers are empty cannot deadlock.
- *Type-driven engineering payoff*: type-check the global protocol once, get communication-safety guarantees for every role for free.

## Connections
- [[Structured Communication-Centred Programming for Web Services]]
- [[Choreographic Programming]]
- [[Endpoint Projection]]
- [[Session Types]]
- [[Introduction to Choreographies]]
- [[On the Monitorability of Session Types]]
- [[Pact - A Choreographic Language for Agentic Ecosystems]]
- [[Conversation Protocols]]
- [[Commitment Machines - Yolum and Singh]]
- [[Flexible Protocol Specification and Execution]]
- [[Communicating Sequential Processes]]

## Conceptual Contribution
- **Claim:** Multiparty distributed communication is best disciplined by a single *global type* describing the joint protocol of all participants, from which per-participant *local types* are derived by mechanical projection; well-typedness of the global type plus a *coherence* condition ensuring choice points are observed by all relevant parties is sufficient to guarantee that every projected process is communication-safe, deadlock-free, and faithful to the global protocol.
- **Mechanism:** Define global types as a calculus over `N ≥ 2` participants with sending, branching, recursion, parallel composition; define local types as session types with send/receive/select/branch; define a syntactic projection `G ↾ p` from global to local types per participant; type processes (extended asynchronous π-calculus with FIFO message buffers) against the projected local types; prove subject reduction (well-typedness preserved under reduction), communication safety (no type-mismatched messages), and progress (well-typed systems with empty buffers do not deadlock).
- **Concepts introduced/used:** [[Session Types]], multiparty session types, global type, local type, projection, coherence, subject reduction, asynchronous π-calculus, communication safety, session fidelity
- **Stance:** foundational / formal-semantic
- **Relates to:** Companion to [[Structured Communication-Centred Programming for Web Services]] (Carbone-Honda-Yoshida ESOP 2007 / TOPLAS 2012) — the two papers together establish the modern *global types → local types → processes* pipeline that all subsequent choreographic-programming and multiparty session-types work inherits. Without the multiparty extension here, the binary session-type substrate of Carbone-Honda-Yoshida 2007 cannot scale to the `N`-participant choreographies that real protocols need. Underwrites the contemporary textbook [[Introduction to Choreographies]] (Montesi 2023). Provides the type-system substrate that [[On the Monitorability of Session Types]] (Bartolo Burlò et al. ECOOP 2021) lifts into a runtime-monitoring theory, and that [[Pact - A Choreographic Language for Agentic Ecosystems]] adds game-theoretic operators on top of. The structural counterpart in the agent-communication tradition is [[Commitment Machines - Yolum and Singh]] / [[Flexible Protocol Specification and Execution]]: both lineages (multiparty session types ↔ Yolum-Singh commitment protocols) take a globally-specified `N`-participant protocol, project to per-role views, and prove the projection preserves a key correctness property (communication safety here, commitment discharge there). The π-calculus substrate descends from [[Communicating Sequential Processes]] (Hoare 1978) and Milner's π-calculus.

## Tags
#choreographic-programming #session-types #multiparty #endpoint-projection #pi-calculus #foundational #type-theory
