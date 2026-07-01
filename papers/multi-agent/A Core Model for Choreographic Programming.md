# A Core Model for Choreographic Programming

**Reference:** Luís Cruz-Filipe & Fabrizio Montesi (2020). *A Core Model for Choreographic Programming.* Theoretical Computer Science (Elsevier). Extended version of the FoSSaCS 2017 paper of the same title. University of Southern Denmark, Department of Mathematics and Computer Science. [URL](https://www.fabriziomontesi.com/files/cm20.pdf). Keywords: Choreography, Computability, Process Calculi.

## Summary
[[Choreographic Programming]] is a paradigm for writing concurrent programs that are deadlock-free by construction: a programmer declaratively writes the communications they want as a global program (a *choreography*), and an [[Endpoint Projection]] (EPP) mechanically synthesises the per-process implementations that faithfully realise those communications. Despite sustained interest, the field lacked a foundational model explaining *which computations* the hallmark constructs of choreographies can actually perform. This paper supplies one: **Core Choreographies (CC)**, a calculus containing only the core primitives common to most choreography languages, restricted to the minimum needed for Turing power.

In CC, processes run in parallel and each stores a single value (a string built from a successor over a base symbol) in a local cell; a process may read its own memory but never another's (no data sharing). The syntax offers just value communication (`p.e -> q`), label selection (`p -> q[l]`), conditionals, recursive procedure definitions, and a terminated choreography `0`; local computation is deliberately crippled to constant and successor only, so any nontrivial computation *must* be expressed through communication. The central technical result is that the set of **projectable** choreographies in CC — those EPP can compile — is Turing complete; hence the resulting **choreography projections** (the executable process terms) are Turing complete too, characterising a Turing-complete, deadlock-free fragment of a process calculus (the authors' Stateful Processes, and, relatedly, a fragment of value-passing CCS). The Turing-completeness proof is constructive: it gives an algorithm that builds a choreography implementing any given computable function.

Beyond expressivity, CC is offered as a canonical common setting for foundational questions about choreographies, analogous to the λ-calculus for functional programming and the [[A Calculus of Mobile Processes|π-calculus]] for mobile processes. As an illustration, the authors show label selection can be *removed* from CC without changing its computational power, yielding **Minimal Choreographies (MC)** — but at the cost of the clean separation between data and control, making programs hard to read. This motivates treating selections as a source-level convenience: the paper gives an amendment strategy encoding selections into ordinary communications, and shows the EPP for MC avoids the [[Merge Operator]] — usually one of the most intricate steps in projection.

## Key Ideas
- **Core Choreographies (CC):** a minimal choreographic calculus — value communication, label selection, conditional, recursive procedures, and termination `0` — with processes holding a single string cell and successor-only local computation.
- **Communication-forced computation:** because local computation is restricted, any nontrivial function must be realised through inter-process communication, keeping the model both representative and analysable.
- **Turing completeness of projectable choreographies:** the projectable fragment of CC (and therefore its EPP-produced process terms) is Turing complete; the proof constructs a choreography for any computable function.
- **Deadlock-free by construction:** EPP yields processes guaranteed deadlock-free even under arbitrary protocol composition; only *projectable* choreographies can be projected, and their projections form the deadlock-free processes.
- **Expressivity of choreographies ≠ expressivity of projections:** since EPP is an incomplete procedure guarding deadlock-freedom, the two must be studied separately.
- **Amendment:** every unprojectable choreography can be made projectable by adding label selections.
- **Minimal Choreographies (MC):** dropping label selection keeps Turing power but destroys the data/control separation; selections are better seen as syntactic sugar, encodable into communications — and MC's EPP needs no merge operator.
- **Parallelism:** CC gives a clean notion of parallelism in choreographies that translates directly to parallel execution of the projected processes.
- **Foundational stance:** CC is argued to be a canonical model for choreographic programming, akin to λ-calculus / π-calculus, and also exposes a Turing-complete, deadlock-free fragment of value-passing CCS.

## Connections
- [[Choreographic Programming]]
- [[Endpoint Projection]]
- [[Merge Operator]]
- [[Process Calculi]]
- [[Structured Communication-Centred Programming for Web Services]]
- [[Deadlock-freedom-by-design - Multiparty Asynchronous Global Programming]]
- [[Choral - Object-Oriented Choreographic Programming]]
- [[HasChor - Functional Choreographic Programming]]
- [[Introduction to Choreographies]]
- [[Knowledge of Choice]]
- [[Session Types]]
- [[A Calculus of Communicating Systems]]
- [[A Calculus of Mobile Processes]]
- [[Deadlock Freedom]]
- [[Turing Completeness]]
- [[Selection (Choreography)]]

## Conceptual Contribution
- **Claim:** Choreographic programming has a canonical minimal core — Core Choreographies — whose *projectable* fragment is already Turing complete, giving the paradigm the kind of foundational computational model that λ-calculus provides for functional programming and π-calculus for mobile processes.
- **Mechanism:** A minimal calculus (value communication, label selection, conditional, recursion, termination) over processes that each hold a single string cell with successor-only local computation; an [[Endpoint Projection]] into Stateful Processes; a constructive proof building a choreography for any computable function; and an encoding of label selections into communications that yields Minimal Choreographies with a [[Merge Operator|merge]]-free projection.
- **Concepts introduced/used:** Core Choreographies, Minimal Choreographies, [[Endpoint Projection]], [[Merge Operator]], label selection, [[Deadlock Freedom]], [[Turing Completeness]]
- **Stance:** theoretical / foundational
- **Relates to:** Provides the computational bedrock beneath language-level CP works like [[Choral - Object-Oriented Choreographic Programming]], [[HasChor - Functional Choreographic Programming]] and [[ChoRus - Library-Level Choreographic Programming in Rust]]; grounds the deadlock-freedom-by-construction guarantees of [[Deadlock-freedom-by-design - Multiparty Asynchronous Global Programming]]; and is the theoretical companion to the textbook [[Introduction to Choreographies]].

## Tags
#choreographic-programming #process-calculi #computability #deadlock-freedom #endpoint-projection #foundations
