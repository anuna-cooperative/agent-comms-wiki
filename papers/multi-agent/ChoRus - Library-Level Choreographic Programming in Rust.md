# ChoRus: Library-Level Choreographic Programming in Rust

**Reference:** Kashiwa, S., Shen, G., Zare, S. & Kuper, L. (2023). *Portable, Efficient, and Practical Library-Level Choreographic Programming.* arXiv:2311.11472 [cs.PL]. DOI: [10.48550/arXiv.2311.11472](https://doi.org/10.48550/arXiv.2311.11472). [URL](https://arxiv.org/abs/2311.11472). A short version, *ChoRus: Library-Level Choreographic Programming in Rust* (Kashiwa & Kuper), was presented at CP 2024 (Choreographic Programming workshop, co-located with PLDI 2024). Software: <https://github.com/lsd-ucsc/ChoRus>.

## Summary
ChoRus is the first [[Choreographic Programming]] library for Rust. It carries the library-level approach pioneered by [[HasChor - Functional Choreographic Programming|HasChor]] into a language without higher-kinded monadic machinery, and in doing so distils the underlying technique into a language-agnostic recipe. The paper's first contribution is **endpoint projection as dependency injection (EPP-as-DI)**: rather than compiling a choreography to per-node programs ahead of time, the library bundles the choreographic operators (local computation, communication, etc.) into an interface and *injects* a node-specific implementation at run time. Projecting the choreography onto a given participant just means running the single global program with that participant's operator implementations supplied — communications become sends on the projecting node and receives elsewhere. The only host-language feature required is higher-order functions, so the same design transfers to many languages; in Rust the operators are bundled into a trait passed to a `run` method for an ergonomic API.

The second contribution is **choreographic enclaves**: a language construct that lets a programmer carve out a sub-choreography among a subset of participants, so that [[Knowledge of Choice]] — the obligation to inform every participant affected by a branch — is propagated only *within* the enclave rather than broadcast to all nodes. This makes branching choreographies more efficient by avoiding unnecessary notifications to participants that are not involved in a local decision. The authors implement both techniques in ChoRus and evaluate it on case studies and benchmarks, finding usability and performance comparable to writing the same distributed systems with conventional Rust libraries — evidence that choreographic programming can be both portable and practical at the library level.

## Key Ideas
- *First CP library for Rust*: brings choreographic programming to a systems language, as a library rather than a dedicated compiler.
- *Endpoint projection as dependency injection (EPP-as-DI)*: project by injecting node-specific implementations of the choreographic operators into one global program; needs only higher-order functions, hence language-agnostic.
- *Operators bundled in a trait*: Rust realises EPP-as-DI by packaging the choreographic operators into a trait passed to `run`, giving an idiomatic, ergonomic API.
- *Choreographic enclaves*: sub-choreographies over a subset of participants within which knowledge of choice is propagated only among enclave members, cutting unnecessary selection messages.
- *Efficiency of branching*: enclaves localise the cost of informing participants about choices, improving performance on protocols with local decisions.
- *Portable & practical*: case studies and benchmarks show usability and performance on par with conventional distributed Rust code.
- *Located values & operator interface*: as in HasChor, data is tied to the node that owns it, and communication is the sole operator that moves a value between participants.

## Connections
- [[Choreographic Programming]]
- [[Endpoint Projection]]
- [[Knowledge of Choice]]
- [[HasChor - Functional Choreographic Programming]]
- [[Choral - Object-Oriented Choreographic Programming]]
- [[Introduction to Choreographies]]
- [[Session Types]]
- [[Multiparty Asynchronous Session Types]]
- [[Structured Communication-Centred Programming for Web Services]]
- [[Pact - A Choreographic Language for Agentic Ecosystems]]

## Conceptual Contribution
- **Claim:** Library-level choreographic programming is portable and practical: endpoint projection can be implemented in essentially any language with higher-order functions by treating it as *dependency injection* of node-specific operator implementations, and branching can be made efficient by scoping knowledge of choice to *enclaves* of the participants that actually need it.
- **Mechanism:** Express a choreography as one global program parameterised over an interface (a Rust trait) of choreographic operators; project onto a node by injecting that node's operator implementation and running the program, so communications resolve to sends/receives per participant (EPP-as-DI); introduce choreographic enclaves that delimit a sub-choreography over a participant subset and confine selection/knowledge-of-choice propagation to it; implement and benchmark the design as the ChoRus Rust library.
- **Concepts introduced/used:** [[Choreographic Programming]], [[Endpoint Projection]], endpoint-projection-as-dependency-injection, choreographic enclaves, [[Knowledge of Choice]], located values, [[Session Types]]
- **Stance:** language/library design with empirical evaluation
- **Relates to:** The Rust successor to [[HasChor - Functional Choreographic Programming]] (Shen, Kashiwa & Kuper ICFP 2023): where HasChor realises endpoint projection as a monadic interpretation in Haskell, ChoRus reframes the same idea as dependency injection so it no longer depends on monads and ports to Rust, adding enclaves for efficient branching. It is a library-level sibling of the compiler-based [[Choral - Object-Oriented Choreographic Programming]] (Giallorenzo, Montesi & Peressotti TOPLAS 2024), and both are listed in [[Introduction to Choreographies]] (Montesi 2023) as part of the modern implementation landscape building on [[Structured Communication-Centred Programming for Web Services]] and [[Multiparty Asynchronous Session Types]]. Its enclave mechanism operationalises the realisability condition studied in [[Knowledge of Choice]].

## Tags
#choreographic-programming #endpoint-projection #rust #dependency-injection #knowledge-of-choice #session-types #programming-languages
