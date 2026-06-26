# HasChor: Functional Choreographic Programming for All

**Reference:** Shen, G., Kashiwa, S. & Kuper, L. (2023). *HasChor: Functional Choreographic Programming for All (Functional Pearl).* Proceedings of the ACM on Programming Languages (PACMPL) 7(ICFP), Article 207, ICFP 2023. ACM. DOI: [10.1145/3607849](https://doi.org/10.1145/3607849). Preprint: arXiv:2303.00924 [cs.PL], DOI: [10.48550/arXiv.2303.00924](https://doi.org/10.48550/arXiv.2303.00924). [URL](https://arxiv.org/abs/2303.00924). Software: <https://github.com/gshen42/HasChor>.

## Summary
HasChor is a Haskell library that brings [[Choreographic Programming]] into a mainstream functional language without a bespoke compiler. A choreography is written as a single global program — an ordinary Haskell computation in a `Choreo` monad — that describes the behaviour of every participant in a distributed system at once, and the library performs [[Endpoint Projection]] *at runtime* to derive the local program each node actually executes. The library's central insight, given as a *functional pearl*, is that endpoint projection has a short and simple essence once it is expressed monadically: the same `Choreo` value, interpreted with respect to a particular location, naturally specialises to that location's behaviour, with communications becoming sends on the projecting node and receives on the others.

The interface is built from a small set of choreographic operators — most importantly `locally` (a local computation at one node) and `comm`/`~>` (a directed communication that moves a value from one node to another, returning a *located value* visible only at the recipient). Located values, indexed by their owning location at the type level, statically prevent a node from using data it does not hold. Because the host language is Haskell, choreographies are *first-class* and *higher-order*: they can be passed as arguments, returned, and abstracted over their participating locations (location polymorphism), so reusable distributed protocols compose like ordinary functions. HasChor thus delivers deadlock-free-by-construction distributed code — bank services, key-value stores, and similar examples — entirely as a library, demonstrating that choreographic programming need not be confined to dedicated languages such as [[Choral - Object-Oriented Choreographic Programming|Choral]].

## Key Ideas
- *Choreographies as a monad*: a global program is a value in a `Choreo` monad; ordinary `do`-notation expresses the joint behaviour of all participants.
- *Endpoint projection as interpretation*: projection is performed at runtime by interpreting the one `Choreo` value with respect to a target location — no separate compiler — reducing EPP "to its short and simple essence".
- *Located values*: `a @ l` types a value as living at location `l`; the type system stops a node from accessing data it does not own, enforcing communication safety.
- *Core operators*: `locally` for node-local computation and `comm` (`~>`) for directed communication, which is the only construct that moves data between locations.
- *Higher-order & location-polymorphic choreographies*: choreographies are first-class Haskell values that can be passed, returned, and abstracted over their participants, giving modular, reusable protocols.
- *Library, not language*: the whole approach is a Haskell library, so choreographies interoperate with the existing ecosystem and toolchain.
- *Functional pearl*: the contribution is as much pedagogical as practical — a clean, minimal account of how projection falls out of a monadic embedding.

## Connections
- [[Choreographic Programming]]
- [[Endpoint Projection]]
- [[Choral - Object-Oriented Choreographic Programming]]
- [[ChoRus - Library-Level Choreographic Programming in Rust]]
- [[Introduction to Choreographies]]
- [[Session Types]]
- [[Knowledge of Choice]]
- [[Multiparty Asynchronous Session Types]]
- [[Structured Communication-Centred Programming for Web Services]]
- [[Pact - A Choreographic Language for Agentic Ecosystems]]

## Conceptual Contribution
- **Claim:** Choreographic programming can be delivered as an ordinary *library* in a functional host language rather than a dedicated compiler: once choreographies are embedded as values in a monad, endpoint projection becomes a short runtime interpretation, and choreographies inherit first-class, higher-order, and location-polymorphic composition for free.
- **Mechanism:** Embed global programs in a `Choreo` monad; type communicated data as *located values* (`a @ l`) so the type checker enforces that nodes only touch data they own; provide `locally` and `comm` as the core operators; implement endpoint projection by interpreting the single `Choreo` value against a chosen location, so sends/receives specialise per node; leverage Haskell's higher-order functions for location-polymorphic, composable choreographies.
- **Concepts introduced/used:** [[Choreographic Programming]], [[Endpoint Projection]], located values, location polymorphism, higher-order choreographies, monadic embedding, [[Session Types]]
- **Stance:** language/library design (functional pearl)
- **Relates to:** The library-level counterpart to [[Choral - Object-Oriented Choreographic Programming]] (Giallorenzo, Montesi & Peressotti TOPLAS 2024), where Choral makes roles a type parameter and compiles to per-role Java, HasChor keeps endpoint projection inside the host language as a monadic interpretation. It is the direct precursor to [[ChoRus - Library-Level Choreographic Programming in Rust]] (Kashiwa et al.), which ports the EPP-as-interpretation idea to Rust as dependency injection. Both are named in [[Introduction to Choreographies]] (Montesi 2023) as part of the modern choreographic-programming implementation landscape, and both rest on the choreography/session-type lineage of [[Structured Communication-Centred Programming for Web Services]] and [[Multiparty Asynchronous Session Types]].

## Tags
#choreographic-programming #endpoint-projection #functional-programming #haskell #monads #session-types #programming-languages
