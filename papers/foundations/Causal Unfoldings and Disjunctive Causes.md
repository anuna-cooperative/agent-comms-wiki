# Causal Unfoldings and Disjunctive Causes

**Reference:** Marc de Visme & Glynn Winskel (2023). *Causal Unfoldings and Disjunctive Causes*. arXiv:2003.06267v4. [Open access](https://arxiv.org/pdf/2003.06267)

## Summary

Prime event structures give every event one prime causal history, but many systems admit **disjunctive causation**: any of several sets of prior events may enable the same event. General event structures express such alternatives, including alternatives that can coexist as parallel causes, but may erase the distinction between the precise histories that led to a common event.

The obvious mathematical hope—unfold every general event structure into a prime one via a universal right adjoint—fails. The authors repair this by extending prime event structures with equivalence, so distinct event occurrences can represent different causal histories of the same abstract event. In that richer category, causal unfolding becomes a right adjoint and hence a universal construction. The construction matters when histories carry information such as probabilities or when causal provenance must remain explicit.

## Key Ideas

- **Disjunctive causes:** one event may be enabled by several alternative cause sets.
- **Parallel causes:** distinct sufficient histories may coexist rather than conflict.
- **Limits of prime unfolding:** ordinary prime event structures cannot universally preserve all general-event causality.
- **Events with equivalence:** multiple occurrences stand for one abstract event under different histories.
- **Universal construction:** the repaired causal unfolding is characterized by a right adjoint.
- **History-sensitive semantics:** probabilities or provenance can attach to precise causal histories.

## Connections

- [[Time Clocks and the Ordering of Events in a Distributed System]]
- [[Inductive Diagrams for Causal Reasoning]]
- [[Analysis of the Matrix Event Graph Replicated Data Type]]
- [[The Semantics of a Simple Language for Parallel Programming]]
- [[A Calculus of Communicating Systems]]

## Conceptual Contribution

- **Claim:** Faithfully unfolding disjunctive causation requires distinguishing causal occurrences while retaining their equivalence as one abstract event.
- **Mechanism:** Prime event structures with equivalence and a right-adjoint causal-unfolding construction.
- **Concepts introduced/used:** [[Event Structure]], [[Disjunctive Cause]], [[Parallel Cause]], [[Causal Unfolding]], [[Right Adjoint]]
- **Stance:** categorical concurrency semantics
- **Relates to:** Gives a more expressive account of causal history than the single-predecessor or plain DAG views common in replicated event systems.

## Tags

#causality #event-structures #concurrency #category-theory #semantics
