# Choral: Object-Oriented Choreographic Programming

**Reference:** Giallorenzo, S., Montesi, F. & Peressotti, M. (2024). *ACM Transactions on Programming Languages and Systems (TOPLAS)* 46(1):1, pp. 1–59. ACM. DOI: [10.1145/3632398](https://doi.org/10.1145/3632398). Preprint: arXiv:2005.09520 [cs.PL] (first version 19 May 2020; rev. 19 Oct 2023), DOI: [10.48550/arXiv.2005.09520](https://doi.org/10.48550/arXiv.2005.09520). [URL](https://dl.acm.org/doi/10.1145/3632398). Software: <https://www.choral-lang.org/>.

## Summary
Choral is the first choreographic programming language built on *mainstream* abstractions: it embeds [[Choreographic Programming]] into an object-oriented language that compiles to plain Java libraries. Its central technical idea is a new notion of data type parameterised by **roles** — a type `T@(A, B, …)` denotes a value whose state is *distributed* across several participants. An ordinary Java type like `Integer@A` lives entirely at role `A`; a type like `Pair@(A, B)` is a single object whose first component sits at `A` and whose second sits at `B`. Choreographies in Choral are simply **classes** whose methods are parameterised over roles, and an instance of a choreography is an object whose state and behaviour are implemented *collaboratively* by all of its roles. Interaction between roles happens through channel objects (`SymChannel`, `DiChannel`, etc.) whose `com` method moves a value from one role's location to another — the only place where a value changes the role it lives at.

The pay-off is **endpoint projection** realised as ordinary compilation. Given one choreographic class, the Choral compiler generates a separate, compilable Java class for each role — the code that participant actually runs — such that the parallel execution of the projected programs faithfully realises the single global program, deadlock-free by construction. Because the output is idiomatic Java, choreographies compose with existing libraries, run on existing toolchains, and can be published as normal artefacts. Choral is also the first incarnation of choreographic programming to offer real **modularity**: choreographies support higher-order composition (choreographies passed to and returned from other choreographies), interfaces, subtyping, and generics, so protocols can be abstracted, parameterised, and reused like any other object-oriented code. The paper situates this as the bridge from the multiparty-session-types / choreography theory inherited from [[Multiparty Asynchronous Session Types]] and [[Structured Communication-Centred Programming for Web Services]] to practical, mainstream software development.

## Key Ideas
- *Roles as type parameters*: every Choral type carries one or more roles; `Integer@A` is data at `A`, `Pair@(A, B)` is a single object whose parts are distributed across `A` and `B`. Roles are the language's first-class notion of location.
- *Choreographies are classes, instances are objects*: a choreographic protocol is an OO class parameterised over roles; its methods describe the joint behaviour of all participants, and an object's state is split across those roles.
- *Communication via channel objects*: `com` on a typed channel is the sole construct that transfers a value from one role to another — i.e. the only operation that changes where data lives; everything else is ordinary local computation.
- *Endpoint projection = compilation*: the compiler emits one self-contained, runnable Java class per role from a single choreographic source; their concurrent execution realises the global program, deadlock-free by construction.
- *Mainstream output*: generated code is plain Java libraries that interoperate with existing code, build systems, and runtimes — choreographies become ordinary deployable artefacts.
- *Modularity & higher-order choreographies*: choreographies compose via interfaces, subtyping, generics, and first-class choreography values (passed and returned), the first choreographic language to offer such modularity.
- *Knowledge of choice / selections*: branching protocols require that participants affected by a choice be informed of it (via label selection), the projection-level realisability condition shared with [[Knowledge of Choice]] and the coherence condition of [[Multiparty Asynchronous Session Types]].

## Connections
- [[Choreographic Programming]]
- [[Endpoint Projection]]
- [[Multiparty Asynchronous Session Types]]
- [[Structured Communication-Centred Programming for Web Services]]
- [[Introduction to Choreographies]]
- [[Session Types]]
- [[Knowledge of Choice]]
- [[Pact - A Choreographic Language for Agentic Ecosystems]]
- [[On the Monitorability of Session Types]]

## Conceptual Contribution
- **Claim:** Choreographic programming can be delivered through *mainstream* object-oriented abstractions rather than a bespoke calculus: by making *roles* a parameter of data types — so that a single type can describe data distributed across several participants — choreographies become ordinary classes, and endpoint projection becomes ordinary compilation to per-role libraries that are deadlock-free by construction.
- **Mechanism:** Introduce role-parameterised types (`T@(R₁, …, Rₙ)`) whose values may be distributed across roles; model choreographies as classes whose methods are parameterised over roles and whose instances are objects implemented collaboratively by those roles; restrict cross-role data movement to channel-object `com` operations; require label selection so that every participant affected by a branch learns of the choice; compile each choreography into one compilable Java class per role (endpoint projection), proving the projected ensemble faithfully and deadlock-freely realises the global program; support higher-order choreographies, interfaces, subtyping, and generics for modular reuse.
- **Concepts introduced/used:** [[Choreographic Programming]], [[Endpoint Projection]], roles, distributed data types, higher-order choreographies, [[Session Types]], knowledge of choice, deadlock freedom
- **Stance:** language design / implementation (with metatheory)
- **Relates to:** The practical realisation of the theory established by [[Multiparty Asynchronous Session Types]] (Honda, Yoshida & Carbone POPL 2008) and [[Structured Communication-Centred Programming for Web Services]] (Carbone, Honda & Yoshida ESOP 2007 / TOPLAS 2012): where those papers fix the *global types → local types → processes* pipeline as formal semantics, Choral turns that pipeline into a usable language whose endpoint projection is the compiler and whose output is mainstream Java. It is the reference implementation cited by the textbook [[Introduction to Choreographies]] (Montesi 2023) and the canonical "Choral" referenced as a contemporary choreographic-programming language in [[Multiparty Asynchronous Session Types]]. Its branching discipline is the realisability property formalised in [[Knowledge of Choice]] (Montesi). [[Pact - A Choreographic Language for Agentic Ecosystems]] (Gopinathan et al. CP 2026) builds on the same choreographic substrate, adding game-theoretic operators for self-interested agents — where Choral assumes cooperative participants and guarantees correctness by construction, Pact asks *why* an autonomous agent would follow the projected protocol at all.

## Tags
#choreographic-programming #session-types #endpoint-projection #object-oriented #programming-languages #java #multiparty
