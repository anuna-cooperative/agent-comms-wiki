# An Architecture-Based Approach to Self-Adaptive Software

**Reference:** Oreizy, P., Gorlick, M. M., Taylor, R. N., Heimbigner, D., Johnson, G., Medvidovic, N., Quilici, A., Rosenblum, D. S. & Wolf, A. L. (1999). *An Architecture-Based Approach to Self-Adaptive Software.* IEEE Intelligent Systems 14(3): 54–62. DOI: 10.1109/5254.769885. [URL](https://doi.org/10.1109/5254.769885)

## Summary
This paper is one of the founding statements of *architecture-based* self-adaptation, arguing — several years before the [[MAPE-K]] vocabulary crystallised — that self-adaptive software should be organised around an explicit model of its own **software architecture**. Rather than scattering adaptation logic through application code, the authors propose using the architectural description (components, connectors, configurations) as the artefact that is monitored, reasoned about, and modified at runtime. Keeping the architecture "in the loop" gives adaptation a principled, system-wide handle: global properties and constraints can be stated and checked at the architectural level, and change can be expressed as reconfiguration of the component-and-connector graph.

The paper decomposes self-adaptation into two intertwined processes. **Adaptation management** is the outer control activity — evaluating the running system, deciding when and how to change it, and enacting the change while preserving consistency and integrity. **Evolution management** maintains the architectural model itself and mediates all runtime modifications so that the implementation and its architectural description stay consistent. The authors frame the hard problems as *when* to adapt, *what* to change, and *how* to make the change safely (open questions of validity, ordering, and state transfer during dynamic reconfiguration). They ground the discussion in their work on the **C2** architectural style and the ArchStudio/dynamic-reconfiguration tooling built around it.

## Key Ideas
- **Architecture as the basis for adaptation**: make the component-and-connector model a first-class, runtime-manipulable artefact, not just a design document.
- **Two processes**: *adaptation management* (observe → decide → enact change) and *evolution management* (keep the architectural model and the running implementation consistent).
- **Dynamic reconfiguration** as the mechanism of change: add, remove, replace, and rewire components at runtime under architectural constraints.
- Central open questions: *when* to adapt, *what* to adapt, and *how* to adapt safely (consistency, integrity, state transfer, quiescence).
- Grounded in the **C2 style** and explicit architectural modelling; a direct ancestor of later frameworks like [[Rainbow - Architecture-Based Self-Adaptation with Reusable Infrastructure]].

## Connections
- [[Rainbow - Architecture-Based Self-Adaptation with Reusable Infrastructure]]
- [[Self-Managed Systems - an Architectural Challenge]]
- [[The Vision of Autonomic Computing]]
- [[Self-Adaptation]]
- [[Self-Adaptive Systems]]
- [[MAPE-K]]
- [[Models@run.time]]
- [[Software Architecture]]
- [[Architectural Pattern]]

## Conceptual Contribution
- **Claim:** Self-adaptive software is best engineered around an explicit, runtime-accessible model of its own architecture, so that adaptation is reasoned about and enacted as principled reconfiguration of components and connectors rather than as ad hoc code changes.
- **Mechanism:** Split the system into an *adaptation-management* loop that decides when/what/how to change and an *evolution-management* layer that keeps the architectural model causally connected to the running implementation, enacting change through dynamic reconfiguration under architectural constraints.
- **Concepts introduced/used:** [[Architecture-Based Adaptation]], [[Software Architecture]], [[Models@run.time]], [[Dynamic Reconfiguration]], [[MAPE-K]]
- **Stance:** engineering / position
- **Relates to:** The direct architectural ancestor of [[Rainbow - Architecture-Based Self-Adaptation with Reusable Infrastructure]] and the layered separation in [[Self-Managed Systems - an Architectural Challenge]]; predates but anticipates the runtime-model idea later named [[Models@run.time]], and sits inside the taxonomy of [[Self-Adaptive Software - Landscape and Research Challenges]].

## Tags
#self-adaptive #architecture-based-adaptation #software-architecture #dynamic-reconfiguration #software-engineering
