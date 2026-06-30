# Denotational reasoning for asynchronous multiparty session types

**Reference:** McDermott, D. & Yoshida, N. (2026). *Denotational reasoning for asynchronous multiparty session types*. 35th European Symposium on Programming (ESOP 2026), Turin, Italy. University of Oxford. [PDF (Oxford MRG)](https://mrg.cs.ox.ac.uk/publications/denotational-reasoning-for-asynchronous-multiparty-session-types/main.pdf)

## Summary
McDermott and Yoshida provide the **first denotational semantics for asynchronous multiparty session types (MPST) with precise asynchronous subtyping**. Where MPST has accumulated a vast operational and type-theoretic literature, no extensional denotational semantics for an expressive MPST calculus previously existed (binary session types had been given logical-relations and game-semantics models, but multiparty had not). The paper closes that gap with a model designed for *reasoning*: it is extensional, hiding non-observable behaviour (internal reductions) while capturing observable behaviour (sending a message), so that one can prove equivalences between syntactically distinct message-passing programs and justify communication optimisations — in particular those that **reorder messages** as permitted under asynchrony.

The central insight is that **sending and receiving messages are computational effects**, analogous to mutating state or raising an exception. The authors therefore design **SafeMP**, an idealised call-by-value language built on the fine-grain call-by-value calculus with asynchronous message-passing added as an effect plus first-order guarded recursive functions. Rather than the linear-logic foundation of most prior session-type systems, SafeMP is a **graded type system**: each computation carries both a type and a *grade*, and here the grades are multiparty session types, which carry exactly the information needed to enforce safety and liveness. This recasts "multiparty session typing is an instance of grading." Because graded type systems are standardly modelled by **graded monads**, the paper introduces **computation trees** — a simple representation of asynchronous message-passing computation that accounts for asynchrony *without* explicit queues — and shows they form a graded monad. Computation trees yield an **adequate denotational semantics** for SafeMP with respect to a typed notion of bisimilarity that accounts for asynchrony, and the model is then used to prove **communication safety, deadlock-freedom, and liveness even in the presence of communication optimisations**.

A further contribution is a ground-up **reformulation of asynchronous multiparty session subtyping**. Taking the sound-and-complete (precise) asynchronous subtyping of Ghilezan et al. as its target, the paper gives the first definition that is sound and complete while (1) operating directly on session types rather than their infinite unfoldings as *session trees*, and (2) supporting subtyping for session types with **free type variables** (needed by SafeMP). For closed session types the new definition is shown equivalent to Ghilezan et al.

## Key Ideas
- **First denotational semantics for asynchronous MPST** with precise asynchronous subtyping; extensional, so it abstracts internal reductions while retaining observable message-passing — purpose-built for proving program equivalences and optimisation correctness.
- **Message-passing as a computational effect.** Sending/receiving are treated like state or exceptions; the connection to the computational-effects literature is exploited throughout.
- **Grading instead of linearity.** SafeMP is the first session type system for a call-by-value language based on *grading* (an effect system) rather than linear logic; the grades *are* multiparty session types. Multiparty session typing is exhibited as an instance of grading.
- **Computation trees as a graded monad.** A simple representation of asynchronous computation that captures asynchrony without queues and forms the graded monad modelling SafeMP.
- **Adequacy w.r.t. asynchronous bisimilarity.** Computation trees give an adequate denotational semantics for SafeMP relative to a typed bisimilarity that accounts for asynchrony, enabling reasoning about equivalences that *rely* on asynchrony (e.g. message reordering).
- **Reformulated asynchronous subtyping.** First sound-and-complete asynchronous session subtyping that (a) avoids infinite session trees and (b) permits free type variables; equivalent to Ghilezan et al.'s precise subtyping on closed types.
- **Provable communication optimisations.** Asynchrony admits more permissive subtyping (some synchronous deadlocks vanish), licensing practically useful optimisations; the model proves their correctness while preserving communication safety, deadlock-freedom, and liveness.
- **SafeMP operational vs denotational asymmetry.** The operational semantics buffers messages into queues in the usual way; the denotational semantics achieves the same asynchrony with a simpler, queue-free setup.

## Connections
- [[Multiparty Asynchronous Session Types]]
- [[Session Types]]
- [[Denotational Semantics]]
- [[Asynchronous Subtyping]]
- [[Graded Monad]]
- [[Graded Type System]]
- [[Computational Effects]]
- [[Communication Safety]]
- [[Deadlock Freedom]]
- [[Liveness Property]]
- [[Call-by-Value]]
- [[Bisimulation]]
- [[Linear Logic]]
- [[Endpoint Projection]]
- [[On the Monitorability of Session Types]]
- [[Structured Communication-Centred Programming for Web Services]]
- [[Pi-Calculus]]

## Conceptual Contribution
- **Claim:** Asynchronous multiparty session typing is an instance of *grading*, and asynchronous message-passing admits a simple, extensional **denotational** model — the first for MPST with precise asynchronous subtyping — that is adequate w.r.t. an asynchrony-aware bisimilarity and strong enough to prove the correctness of communication optimisations (message reordering) while guaranteeing communication safety, deadlock-freedom, and liveness.
- **Mechanism:** Treat send/receive as computational effects; build **SafeMP** as a graded (effect) type system over fine-grain call-by-value with first-order guarded recursion, where the grades are multiparty session types; introduce **computation trees** as a queue-free representation of asynchronous computation forming a **graded monad**; interpret SafeMP into this monad and prove adequacy against a typed, asynchrony-accounting bisimilarity; reformulate asynchronous subtyping directly on session types (no session trees, free type variables allowed), shown equivalent to Ghilezan et al. on closed types.
- **Concepts introduced/used:** computation trees, [[Graded Monad]], [[Graded Type System]], multiparty session types, [[Asynchronous Subtyping]], [[Denotational Semantics]], [[Computational Effects]], SafeMP, fine-grain call-by-value, adequacy, asynchronous bisimilarity.
- **Stance:** foundational / formal-semantic.
- **Relates to:** Direct semantic complement to [[Multiparty Asynchronous Session Types]] (Honda, Yoshida & Carbone POPL 2008), which established the operational global-types → local-types → processes pipeline; this paper supplies the missing *denotational* account for the asynchronous multiparty setting and re-derives its subtyping. By founding session typing on **grading** rather than [[Linear Logic|linear logic]], it deliberately breaks with the Curry-Howard/linear-logic lineage that underlies most session-type systems, importing instead the [[Graded Monad|graded-monad]] machinery from the computational-effects literature. Sits alongside [[On the Monitorability of Session Types]] as another semantic-foundations treatment of session types, and shares the Yoshida choreographic-programming family ([[Structured Communication-Centred Programming for Web Services]]) whose protocols project to the per-role session types this model interprets. The reordering-optimisation results connect to the broader asynchronous-subtyping program implemented in Rust, MPI and C and mechanised in Rocq.

## Tags
#session-types #multiparty #denotational-semantics #asynchronous-subtyping #graded-monad #computational-effects #type-theory #foundational #yoshida
