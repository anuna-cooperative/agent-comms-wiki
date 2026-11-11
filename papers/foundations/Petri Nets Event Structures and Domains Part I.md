# Petri Nets, Event Structures and Domains, Part I

**Reference:** Mogens Nielsen, Gordon D. Plotkin & Glynn Winskel (1981). *Petri Nets, Event Structures and Domains, Part I*. Theoretical Computer Science 13(1), 85–108. [Author-hosted PDF](https://www.cl.cam.ac.uk/~gw104/PetriNetsPart1.pdf). [DOI](https://doi.org/10.1016/0304-3975(81)90112-2).

## Summary

This paper introduces [[Event Structure|event structures]] as an intermediate language between two accounts of concurrency. [[Petri Net|Petri nets]] describe how events can occur, while Scott-style [[Domain Theory|domains]] order partial information about computations. In the paper's event structures, a partial order records causal dependence and an irreflexive relation records inherited conflict. Their configurations—conflict-free, left-closed sets of events—form a domain ordered by inclusion.

The paper develops this bridge first for causal nets and then for occurrence nets, which add forward conflict. It also shows how transition nets can be unfolded into occurrence nets, much as a finite flowchart can be unfolded into a tree of occurrences. The result lets operational notions from net theory be translated into denotational ones: in particular, Petri-net confusion corresponds to the failure of concreteness in the associated domain.

## Key Ideas

- **Events as occurrences:** distinct occurrences matter even when they carry the same action label.
- **Causality and conflict:** an event can require predecessors and be incompatible with alternatives.
- **Configurations:** possible computation histories are conflict-free, left-closed sets of event occurrences.
- **Domains from events:** configurations ordered by inclusion represent increasing information about a run.
- **Unfolding:** transition nets expand into occurrence nets that expose individual causal histories.
- **Operational–denotational bridge:** net-theoretic properties translate into order-theoretic properties.

## Connections

- [[Event Structures]] — the later standard survey and generalized definitions.
- [[Models for Concurrency]] — compares this lineage with traces, pomsets, transition systems, and nets.
- [[Concurrent Program Schemes and Their Interpretations]] — obtains partial orders by quotienting sequential observations by independence.
- [[Modeling Concurrency with Partial Orders]] — models computations directly as partially ordered multisets.
- [[Causal Unfoldings and Disjunctive Causes]] — extends the unfolding lineage to disjunctive and parallel causes.
- [[The Semantics of a Simple Language for Parallel Programming]] — another bridge between operational concurrency and domains.

## Conceptual Contribution

- **Claim:** True concurrency can be represented in a form that connects operational Petri nets to denotational domains without collapsing independent events into arbitrary interleavings.
- **Mechanism:** Event structures and their configuration domains, together with occurrence-net unfolding.
- **Concepts introduced/used:** [[Event Structure]], [[Configuration (Concurrency)]], [[Causality]], [[Conflict]], [[Occurrence Net]], [[Domain Theory]]
- **Stance:** operational–denotational concurrency semantics.
- **Relates to:** Establishes the central bridge from event occurrences to partial information about computations.

## Tags

#event-structures #petri-nets #concurrency #domain-theory #semantics #foundational
