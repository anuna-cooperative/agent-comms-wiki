# Self-Managed Systems: an Architectural Challenge

**Reference:** Kramer, J. & Magee, J. (2007). *Self-Managed Systems: an Architectural Challenge.* In *Future of Software Engineering (FOSE '07)*, at ICSE 2007, pp. 259–268. DOI: 10.1109/FOSE.2007.19. [URL](https://doi.org/10.1109/FOSE.2007.19)

## Summary
Kramer and Magee frame self-management as fundamentally an **architectural** problem and offer a reference model for structuring it. Building on their work on dynamic software architecture — systems whose components and connectors can be added, removed, and rewired at runtime — they argue that self-configuration, self-healing, and self-optimisation are best organised around explicit architectural change rather than ad-hoc code.

Their central proposal is a **three-layer reference model** (see [[Three-Layer Reference Model]]), adapted from Gat's three-layer architecture in autonomous robotics. The bottom **component-control** layer is the running application, instrumented to report status and to reconfigure itself. The middle **change-management** layer holds a repertoire of pre-computed plans that respond to status reports and effect reconfigurations, escalating upward when it has no plan for the situation. The top **goal-management** layer synthesises new plans from high-level goals via (slower) deliberative planning. Separating layers by timescale and abstraction lets fast reactive adaptation and slow deliberative planning coexist cleanly.

The paper is as much an agenda as an architecture. Kramer and Magee catalogue the hard open problems this structure exposes — deriving correct plans from goals, guaranteeing consistency and safety during runtime reconfiguration, managing decentralised control across many self-managed components, and eliciting and evolving the goals themselves — positioning **assurance of self-adaptive behaviour** as a first-order software-engineering challenge.

## Key Ideas
- **Self-management is an architectural problem**, grounded in dynamic (runtime-reconfigurable) software architecture.
- **Three-layer reference model**: component control → change management → goal management, borrowed from robotics.
- **Separation by timescale/abstraction**: fast reactive plan execution below, slow deliberative planning above; escalation when no plan applies.
- **Runtime reconfiguration** must preserve consistency and safety of the executing system.
- A **research agenda**: plan synthesis from goals, assurance, decentralised control, goal elicitation and evolution.

## Connections
- [[Three-Layer Reference Model]]
- [[MAPE-K]]
- [[Autonomic Computing]]
- [[Self-Adaptation]]
- [[Self-Adaptive Systems]]
- [[The Vision of Autonomic Computing]]
- [[Rainbow - Architecture-Based Self-Adaptation with Reusable Infrastructure]]
- [[Self-Adaptive Software - Landscape and Research Challenges]]
- [[A Robust Layered Control System]]
- [[Software Architecture]]

## Conceptual Contribution
- **Claim:** Self-managed systems should be structured as a three-layer architecture that separates component control, change management, and goal management — matching each adaptation concern to the timescale and abstraction at which it operates.
- **Mechanism:** A dynamically reconfigurable component layer reports status upward; a change-management layer applies pre-computed plans and escalates when none fit; a goal-management layer generates new plans from high-level goals through deliberative planning — a layered decomposition of the Plan/Execute half of a MAPE-K loop.
- **Concepts introduced/used:** [[Three-Layer Reference Model]], [[Dynamic Software Architecture]], [[MAPE-K]], [[Runtime Reconfiguration]], [[Goal Management]]
- **Stance:** architecture / research agenda
- **Relates to:** Gives [[The Vision of Autonomic Computing]] a concrete reference architecture and complements the reusable-infrastructure stance of [[Rainbow - Architecture-Based Self-Adaptation with Reusable Infrastructure]]; the robotics lineage connects to layered control in [[A Robust Layered Control System]]; its open problems are surveyed in [[Self-Adaptive Software - Landscape and Research Challenges]].

## Tags
#self-adaptive #autonomic-computing #software-architecture #reference-model #mape-k #software-engineering
