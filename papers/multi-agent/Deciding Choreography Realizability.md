# Deciding Choreography Realizability

**Reference:** Basu, S., Bultan, T. & Ouederni, M. (2012). *Deciding Choreography Realizability.* In *Proc. 39th ACM SIGPLAN-SIGACT Symposium on Principles of Programming Languages (POPL 2012)*, Philadelphia, PA, pp. 191–202. ACM. DOI [10.1145/2103656.2103680](https://doi.org/10.1145/2103656.2103680). [URL](https://sites.cs.ucsb.edu/~bultan/publications/popl12.pdf).

## Summary
A **choreography** specifies the allowable global orderings of message exchanges among the peers of a distributed system — a single state machine (a "conversation protocol") describing who sends what to whom, in what order. The **realizability** question asks whether that global contract can actually be implemented: is there a set of distributed peers that, each acting on purely local information and communicating **asynchronously over unbounded FIFO channels**, together generate **exactly** the conversations the choreography prescribes — no missing behaviours and no unintended extra ones? Because the peers are obtained from the choreography by projection, the difficulty is that asynchrony lets them race ahead of the global order and produce conversations the choreography never intended.

The paper's headline result is that, contrary to the prior expectation that unbounded-asynchronous realizability is undecidable, **choreography realizability is decidable**. The key device is **synchronizability**: a system of communicating peers is *synchronizable* when its observable conversation set is the same regardless of channel-buffer size — its behaviour under synchronous (rendez-vous) communication coincides with its behaviour under asynchronous buffering. Synchronizability can be checked by comparing the peers' synchronous semantics with their **1-bounded** asynchronous semantics, a finite check. Realizability is then decided by (i) projecting the choreography to peers, (ii) verifying that the projected system is synchronizable, and (iii) checking that the synchronous behaviour of those peers is language-equivalent to the choreography. When all hold, the finite (synchronous) analysis certifies the behaviour of the full unbounded-asynchronous system, so the otherwise infinite-state realizability question collapses to decidable equivalence checks.

## Key Ideas
- **Choreography as a global contract:** a state machine over the send events of all peers, fixing the allowable global message orderings.
- **Realizability:** existence of distributed, locally-driven peers whose asynchronous FIFO interaction reproduces *exactly* the choreography's conversation set.
- **Decidability result:** realizability is decidable — even under unbounded asynchronous communication — refuting the assumption that it is not.
- **Synchronizability:** behaviour is invariant to buffer size (synchronous ≡ asynchronous conversation sets); it is the hinge that makes the infinite-state problem finite.
- **Finite decision procedure:** check synchronizability by comparing synchronous and 1-bounded asynchronous behaviour, then compare the synchronous behaviour to the choreography.
- **Projection + equivalence:** project the global spec to peers and reduce realizability to language-equivalence checks over finite (bounded) system semantics.

## Connections
- [[Realizability]]
- [[Communicating Finite State Machines]]
- [[Synchronizability]]
- [[Endpoint Projection]]
- [[Choreographic Programming]]
- [[Realizability and Verification of MSC Graphs]]
- [[Multiparty Compatibility in Communicating Automata]]
- [[Structured Communication-Centred Programming for Web Services]]
- [[Knowledge of Choice]]

## Conceptual Contribution
- **Claim:** Whether a global choreography can be faithfully implemented by asynchronously communicating peers is a *decidable* question, despite unbounded message buffers, provided the projected system is synchronizable.
- **Mechanism:** Project the choreography to peer machines; decide *synchronizability* by comparing synchronous and 1-bounded asynchronous semantics; then check language-equivalence between the peers' synchronous behaviour and the choreography — reducing an infinite-state problem to finite equivalence checks.
- **Concepts introduced/used:** choreography / conversation protocol, [[Realizability]], [[Synchronizability]], [[Endpoint Projection]], [[Communicating Finite State Machines]].
- **Stance:** formal / algorithmic (verification)
- **Relates to:** The service-choreography counterpart of the MSC realizability programme in [[Realizability and Verification of MSC Graphs]] and [[Message Sequence Charts - A Survey]]; complementary to the session-type route to the same question in [[Multiparty Compatibility in Communicating Automata]]; the projection machinery is the [[Endpoint Projection]] used across [[Choreographic Programming]] ([[Structured Communication-Centred Programming for Web Services]], [[Deadlock-freedom-by-design - Multiparty Asynchronous Global Programming]]), and the unrealizability pathologies it rules out are those [[Knowledge of Choice]] targets.

## Tags
#choreography #realizability #synchronizability #communicating-automata #verification #web-services
