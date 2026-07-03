# Software Architecture

The structure of a system in terms of its **components, the connectors between them, and their configuration and properties** — the level of abstraction at which system-wide qualities (latency, availability, cost, reliability) are expressed and reasoned about. In self-adaptive systems the architecture is not just a design document: **architecture-based adaptation** makes a runtime model of the component-and-connector graph the artefact that is monitored, checked against constraints, and reconfigured, because it is abstract enough to be tractable yet concrete enough to map onto real system elements.

This stance runs from [[An Architecture-Based Approach to Self-Adaptive Software]] (Oreizy et al. 1999), which first proposed keeping the architecture "in the loop", to [[Rainbow - Architecture-Based Self-Adaptation with Reusable Infrastructure]] (Garlan et al. 2004), where the software architecture literally *is* the [[Models@run.time|runtime model]] against which constraints are evaluated and repairs planned, and the layered separation of [[Self-Managed Systems - an Architectural Challenge]].

## In this vault
- [[An Architecture-Based Approach to Self-Adaptive Software]]
- [[Rainbow - Architecture-Based Self-Adaptation with Reusable Infrastructure]]
- [[Self-Managed Systems - an Architectural Challenge]]

## Related
- [[Architectural Pattern]]
- [[Models@run.time]]
- [[MAPE-K]]
- [[Self-Adaptation]]
