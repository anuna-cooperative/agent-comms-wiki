# Modeling Concurrency with Partial Orders

**Reference:** Vaughan R. Pratt (1986). *Modeling Concurrency with Partial Orders*. International Journal of Parallel Programming 15(1), 33–71. [DOI](https://doi.org/10.1007/BF01379149).

## Summary

Pratt proposes replacing strings—the linearly ordered multisets underlying ordinary formal languages—with **partially ordered multisets**, or [[Pomset|pomsets]]. Events carry labels, repeated labels remain distinct occurrences, and the partial order records required precedence. Incomparable events can occur concurrently, so one object represents the family of linear schedules compatible with the same causal structure.

Sets of pomsets form concurrent languages. The paper develops algebraic operations on them and relates the partial-order account to formal languages and temporal logic. Pratt argues that interleaving is sensitive to which events are treated as atomic: refining an apparently atomic event changes its possible interleavings, while partial-order concurrency survives the change of granularity. Operations such as **orthocurrence**—the direct product of pomsets—also lack an evident linear-order counterpart. Pomsets are more direct than trace equivalence classes: they take the partial order itself as the semantic object and are not limited to orders induced by a single global independence relation.

## Key Ideas

- A pomset is an isomorphism class of labeled partially ordered event occurrences.
- Repeated action labels require a multiset rather than a set of labels.
- Incomparability represents possible concurrency; order represents causal or temporal constraint.
- Linearizations recover the sequential executions compatible with a pomset.
- Sets of pomsets generalize formal languages from strings to partial strings.
- Algebraic and logical descriptions can coexist in one partial-order model.
- Partial-order concurrency is stable under changes in event granularity that alter interleaving semantics.
- Orthocurrence supplies a natural pomset operation without an evident linear-order analogue.

## Connections

- [[Concurrent Program Schemes and Their Interpretations]] — trace classes also correspond to partial orders, but begin with word equivalence and a fixed independence relation.
- [[Event Structures]] — adds global conflict and enabling across possible runs, whereas a pomset describes one partial-order run.
- [[Petri Nets Event Structures and Domains Part I]] — obtains partial-order occurrences by unfolding operational nets.
- [[Models for Concurrency]] — systematically compares pomsets with traces, event structures, and nets.
- [[Time Clocks and the Ordering of Events in a Distributed System]] — uses event partial orders to characterize distributed causality.

## Conceptual Contribution

- **Claim:** Partial orders, rather than sets of interleaved strings, are the natural basic objects for concurrent computation.
- **Mechanism:** Pomsets and languages of pomsets with algebraic operations and logical predicates.
- **Concepts introduced/used:** [[Pomset]], [[Partial Order]], [[Linearization]], [[True Concurrency]]
- **Stance:** order-theoretic / algebraic concurrency semantics.
- **Relates to:** Offers a direct partial-order replacement for ordinary trace languages.

## Tags

#pomsets #concurrency #partial-orders #formal-languages #temporal-logic #foundational
