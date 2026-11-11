# Event Structures

**Reference:** Glynn Winskel (1987). *Event Structures*. In W. Brauer, W. Reisig & G. Rozenberg (eds.), *Petri Nets: Applications and Relationships to Other Models of Concurrency*, Lecture Notes in Computer Science 255, 325–392. Springer. [Author-hosted PDF](https://www.cl.cam.ac.uk/~gw104/Winskel1987_Chapter_EventStructures.pdf). [DOI](https://doi.org/10.1007/3-540-17906-2_31).

## Summary

Winskel's chapter is the standard survey of [[Event Structure|event structures]]. Its most general structure is a triple `(E, Con, ⊢)`: events, finite consistent sets, and an enabling relation from consistent sets to events. A configuration is consistent and **secured**—each event has a finite enabling sequence beginning with an event enabled by the empty set. Stable and prime event structures impose successively stronger causal structure. Unlike interleaving models, these representations do not impose an order on genuinely independent events.

The chapter systematically connects event structures to domains and Petri nets and develops operations needed for semantics, including restriction, relabelling, parallel composition, and constructions for nondeterminism. Its broad definitions and comparison results made it the usual citation for the event-structure model rather than only its original introduction.

## Key Ideas

- A general **configuration** is consistent and secured by finite enabling sequences.
- **Prime event structures** assign each event a unique minimal causal history.
- **Stable event structures** allow more flexible enabling while retaining well-behaved local causes.
- **General event structures** express enabling directly between sets of events and events.
- In prime structures, concurrent events are consistent and causally unrelated; their ordering is intentionally unspecified.
- Configuration domains connect event-based operational behavior to denotational semantics.

## Connections

- [[Petri Nets Event Structures and Domains Part I]] — introduces event structures as the net–domain bridge.
- [[Models for Concurrency]] — places event structures in a wider comparative and categorical landscape.
- [[Causal Unfoldings and Disjunctive Causes]] — explains why prime structures alone cannot universally unfold every general event structure.
- [[Concurrent Program Schemes and Their Interpretations]] — sequence-first route to partial-order behavior.
- [[Modeling Concurrency with Partial Orders]] — direct partial-order model without event-structure enabling and conflict as primitives.

## Conceptual Contribution

- **Claim:** Causality, consistency, and enabling provide a general semantics of concurrent computations that preserves independence rather than encoding it as interleaving.
- **Mechanism:** Families of event structures, configurations, and structure-preserving semantic operations.
- **Concepts introduced/used:** [[Event Structure]], [[Prime Event Structure]], [[Stable Event Structure]], [[General Event Structure]], [[Configuration (Concurrency)]]
- **Stance:** true-concurrency / denotational semantics.
- **Relates to:** Supplies the canonical definitions used by later event-structure work.

## Tags

#event-structures #concurrency #causality #domain-theory #petri-nets #survey
