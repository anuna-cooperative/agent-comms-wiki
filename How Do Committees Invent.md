# How Do Committees Invent?

**Reference:** Melvin E. Conway (1968). *Datamation*, April 1968, pp. 28-31. Source file: `Conway, Melvin E._ How Do Committees Invent_. In_ Datamation (1968).pdf`

## Summary
Conway's classic essay articulates what is now known as Conway's Law: "organizations which design systems are constrained to produce designs which are copies of the communication structures of these organizations." He argues that the structure (graph) of any designed system is homomorphic to the structure of the design organization that produced it, because each interface in the system corresponds to a coordination path between subgroups.

Drawing on examples from compiler development, military weapons systems, and public administration, Conway traces how organization charts end up printed onto product architectures. He closes with a warning against premature commitment to an initial design organization, since such commitment freezes choices and leaves systems unable to be decomposed sensibly later — "systems tend to disintegrate" as the organization evolves.

## Key Ideas
- System structure mirrors the communication structure of its designers (Conway's Law).
- Design organization choices shape the set of alternatives considered.
- Homomorphism argument: interfaces between subsystems = coordination between subgroups.
- Organizations must stay flexible to avoid freezing a suboptimal design.
- Applicability beyond software: any large coordinated design effort.

## Connections
- [[Multi-Agent Systems]]
- [[Agent Communication Languages]]
- [[Self-Adaptive Systems]]

## Conceptual Contribution
- **Claim:** The structure of a designed system is homomorphic to the communication structure of the organization that designs it (Conway's Law); therefore design-team topology pre-determines the space of realisable architectures.
- **Mechanism:** An informal homomorphism argument — every subsystem maps to a design subgroup and every interface maps to a negotiation path — illustrated through compiler, weapons system, and public-administration case studies; followed by a disintegration argument (overpopulation + rigid management practice fragment the communication graph, which fragments the product).
- **Concepts introduced/used:** [[Conway's Law]], [[System Homomorphism]], [[Communication Structure]], [[Design Organization]], [[Coordination]], [[Interface]]
- **Stance:** foundational / critique
- **Relates to:** Provides the organisational backdrop for every multi-agent architecture in the vault; pairs naturally with [[Multiagent Systems Sycara]] (which treats the agent organisation as a deliberate design variable) and with [[A Scalable Communication Protocol for Networks of LLMs]] (whose protocol shape will, by Conway's Law, shape the societies of LLMs built atop it).

## Tags
#conways-law #organization #system-design #communication-structure
