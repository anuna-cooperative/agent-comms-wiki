# Linear Logic

**Reference:** Girard, J.-Y. (1987). *Linear Logic*. Theoretical Computer Science, 50(1), pp. 1–101. [DOI](https://doi.org/10.1016/0304-3975(87)90045-4) · [ScienceDirect (open archive)](https://www.sciencedirect.com/science/article/pii/0304397587900454)

## Summary
Girard introduces **linear logic** by stripping the structural rules of weakening and contraction from classical and intuitionistic sequent calculus, then re-introducing them in a controlled way through *exponential modalities* `!` ("of-course") and `?` ("why-not"). The resulting system is **resource-aware**: a hypothesis can be used exactly once unless explicitly marked reusable. The connectives split into two families — *multiplicatives* `⊗` (tensor, "with both available") and `⅋` (par, "the disjunction with both still possible") and *additives* `&` (with, "I choose") and `⊕` (plus, "the world chooses") — together with their units, negation as involution, and exponentials. The technical heart is **proof nets**: a graph-theoretic syntax that quotients away the inessential commutation steps of sequent calculus and gives a strongly normalising calculus of proofs. Cut elimination produces an algorithmic dynamic on proof nets that is the linear analogue of β-reduction. The deep consequences run in two directions: (i) classical/intuitionistic logic *embeds* into linear logic via the exponentials, so linear logic is a refinement, not a competitor; (ii) the multiplicatives correspond directly to **concurrent communication** (a two-place tensor is a synchronisation point), making linear logic the formal substrate of a Curry–Howard correspondence for [[Session Types]] and [[Pi-Calculus|π-calculus]] communication. The paper inaugurated 35+ years of substructural logic, type-theoretic concurrency, and resource-typed programming.

## Key Ideas
- *Resources, not propositions*: a linear hypothesis is *used*, not just *consumed* in a proof — closer to physical resources or messages than to mathematical truth.
- *Multiplicatives vs additives*: `A ⊗ B` means "I have both A and B" (independent resources); `A & B` means "I have a choice between A and B but only one"; `A ⅋ B` is the multiplicative dual to `⊗`; `A ⊕ B` is the additive sum.
- *Exponentials reintroduce structural rules locally*: `!A` is a reusable A; weakening and contraction apply to formulas under `!`; `?A` is its de Morgan dual.
- *Involutive negation*: `(A^⊥)^⊥ = A` syntactically; classical-style symmetry without classical-style proof multiplicities.
- *Proof nets*: cut-elimination becomes graph rewriting; "essentially the same" sequent-calculus proofs become *literally* the same net.
- *Curry–Howard for concurrency*: linear-logic propositions ⇔ session types; proofs ⇔ processes; cut elimination ⇔ communication. The Caires–Pfenning correspondence (2010) and Wadler's *Propositions as Sessions* (2012) turn this into a typed [[Pi-Calculus]] in which deadlock-freedom and session fidelity follow from cut elimination.
- *Light fragments and complexity*: Girard's later light/elementary linear logics (LLL, ELL) capture polynomial-time and elementary computation respectively — proof-theoretic characterisations of complexity classes.

## Connections
- [[Pi-Calculus]]
- [[A Calculus of Mobile Processes]]
- [[Session Types]]
- [[Multiparty Asynchronous Session Types]]
- [[Curry-Howard Correspondence]]
- [[Substructural Logic]]
- [[Proof Nets]]
- [[Multiplicative-Additive]]
- [[Exponential Modalities]]
- [[Process Calculi]]
- [[Algebraic Effects]]
- [[Robust Composition - Towards a Unified Approach to Access Control and Concurrency Control]]

## Conceptual Contribution
- **Claim:** Removing weakening and contraction from sequent calculus and reintroducing them through controlled exponential modalities yields a resource-aware logic that is simultaneously a refinement of classical/intuitionistic logic and the natural type discipline for concurrent, resource-sensitive computation.
- **Mechanism:** Sequent calculus over multiplicative (`⊗`, `⅋`), additive (`&`, `⊕`), and exponential (`!`, `?`) connectives with involutive negation and per-rule resource discipline; proof nets as cut-elimination-amenable graphical syntax; cut elimination as the dynamics of proofs; embeddings of classical and intuitionistic logic via exponentials.
- **Concepts introduced/used:** [[Linear Logic]], [[Multiplicative-Additive]], [[Exponential Modalities]], [[Proof Nets]], [[Substructural Logic]], [[Curry-Howard Correspondence]] (concurrent extension).
- **Stance:** foundational technical paper.
- **Relates to:** Provides the type-theoretic substrate that turns the [[Pi-Calculus]] from an untyped calculus into a typed one whose well-typed processes are deadlock-free and session-faithful — Caires & Pfenning (2010) and Wadler (2012) make this explicit. Every later session-typed language ([[Multiparty Asynchronous Session Types]], the choreographic-programming languages of [[Structured Communication-Centred Programming for Web Services]] and [[Pact - A Choreographic Language for Agentic Ecosystems]]) inherits this connection. Outside concurrency, linear logic underlies *Rust*-style ownership types, region-based memory management, separation logic, and the linear-types extension that landed in Haskell — all engineering descendants of Girard's resource discipline. Conceptually relevant to [[Capability Security]]: a capability *is* a linear resource (forgeable copies break it), and substructural type systems that prevent capability duplication realise the Dennis–Van Horn ideal in a typed setting; this connection is exploited in modern capability-typed languages (Pony's reference capabilities, Project Verona, Rust's borrow checker).

## Tags
#linear-logic #girard #substructural #proof-theory #foundations #curry-howard #session-types-foundation
