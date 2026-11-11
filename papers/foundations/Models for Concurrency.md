# Models for Concurrency

**Reference:** Glynn Winskel & Mogens Nielsen (1995). *Models for Concurrency*. In S. Abramsky, D. M. Gabbay & T. S. E. Maibaum (eds.), *Handbook of Logic in Computer Science*, volume 4, 1–148. Oxford University Press. [Author-hosted PDF](https://www.cl.cam.ac.uk/~gw104/winskel-nielsen-models-for-concurrency.pdf). [DOI](https://doi.org/10.1093/oso/9780198537809.003.0001).

## Summary

This chapter surveys the principal mathematical models of distributed computation. It contrasts interleaving models—transition systems, synchronization trees, and languages—with models that represent causal independence explicitly: Petri nets, asynchronous transition systems, [[Event Structure|event structures]], [[Pomset|pomsets]], and [[Mazurkiewicz Trace|Mazurkiewicz traces]].

The presentation uses categories, adjunctions, and coreflections to make translations between models precise. Rather than treating the formalisms as an unstructured list, it asks which behavior each model preserves, how parallel composition transfers between them, and when one model embeds faithfully into another. Worked relationships include a coreflection between trace languages and event structures and adjunctions linking asynchronous transition systems with nets. It is a later, wider alternative to Winskel's 1987 event-structures survey.

## Key Ideas

- Interleaving records concurrency as a set or tree of possible sequential orders.
- Noninterleaving models record independence or causal order directly.
- Transition systems, nets, traces, pomsets, and event structures expose different behavioral distinctions.
- Categories identify the appropriate structure-preserving maps for each model.
- Adjunctions and coreflections formalize systematic translations and embeddings.
- Parallel composition can be characterized abstractly across several model classes.

## Connections

- [[Petri Nets Event Structures and Domains Part I]] — the original net–event–domain correspondence.
- [[Event Structures]] — the focused standard survey.
- [[Concurrent Program Schemes and Their Interpretations]] — foundational trace presentation.
- [[Modeling Concurrency with Partial Orders]] — the pomset model.
- [[A Calculus of Communicating Systems]] and [[Communicating Sequential Processes]] — influential interleaving process models.
- [[The Semantics of a Simple Language for Parallel Programming]] — domain-theoretic semantics of process networks.

## Conceptual Contribution

- **Claim:** Concurrency models can be compared by explicit translations that reveal which notions of behavior, causality, and composition they preserve.
- **Mechanism:** A category-theoretic survey of interleaving and independence-based models.
- **Concepts introduced/used:** [[Transition System]], [[Petri Net]], [[Event Structure]], [[Mazurkiewicz Trace]], [[Pomset]], [[Adjunction]], [[Coreflection]]
- **Stance:** comparative / categorical concurrency semantics.
- **Relates to:** Provides the broad map connecting the event-structure, trace, and pomset traditions.

## Tags

#concurrency #event-structures #traces #pomsets #petri-nets #category-theory #survey
