# A Robust Layered Control System for a Mobile Robot

**Reference:** Brooks, R. A. (1986). *A Robust Layered Control System for a Mobile Robot*. IEEE Journal of Robotics and Automation, 2(1), pp. 14–23. (Originally MIT AI Lab Memo 864, September 1985.) [IEEE DOI](https://doi.org/10.1109/JRA.1986.1087032) · [Open access PDF (MIT AI Memo 864)](https://people.csail.mit.edu/brooks/papers/AIM-864.pdf)

## Summary
Brooks introduces the **subsumption architecture** — a radical alternative to the *sense-plan-act* paradigm that dominated robotics through the 1980s. Where the prevailing approach decomposed robot control into functional modules (perception, world modelling, planning, motor control) operating on a single shared symbolic representation, Brooks's architecture decomposes by *behaviour*: each layer of the system is a complete sense-act loop implementing one behavioural competence (avoid obstacles, wander, explore, build maps, identify objects, plan, ...). Layers run concurrently and are connected by *suppression* and *inhibition* wires that allow higher (later-built) layers to subsume the outputs of lower layers. The lowest layer alone produces a useful (if minimal) robot — an obstacle-avoiding wanderer; each additional layer adds more sophisticated competence on top of an already-functional system. There is *no* central representation, no shared world model, no symbolic planner driving low-level action. Brooks demonstrated the architecture on a real mobile robot (Allen, the AI Lab's first subsumption-architecture robot) navigating a cluttered office environment in real time — performance unattainable by the symbolic-AI robots of the era. The 1986 paper is the formal architecture description; the underlying philosophical thesis — that intelligent behaviour does not require explicit representation, that the world is its own best model — is developed in the 1991 follow-ups *Intelligence Without Representation* and *Elephants Don't Play Chess*. The subsumption architecture inaugurated **behaviour-based robotics** as a research programme, influenced multi-agent systems through the **reactive vs deliberative agents** distinction, and supplied a substantial counter-tradition to BDI-style symbolic agency.

## Key Ideas
- *Decomposition by behaviour, not function*: each layer is a complete sense-act loop implementing one behavioural competence; functional decomposition (perception / planning / control) is rejected as the wrong organising principle.
- *Layered competence*: layer 0 is a working (minimal) robot; each subsequent layer adds capability on top of an already-running system. The N-layer system always behaves at least as well as the (N-1)-layer system.
- *Suppression and inhibition wires*: inter-layer communication is by *suppression* (a higher layer's output replaces a lower layer's signal at the suppression node for a fixed time) and *inhibition* (a higher layer's signal blocks a lower layer's output without substituting). No higher-bandwidth representation passes between layers.
- *No central representation*: there is no shared world model. Each layer maintains its own state as needed; cross-layer communication is restricted to the suppression/inhibition primitive.
- *The world is its own best model*: rather than maintain symbolic representations of the world, the robot perceives the world directly when it needs to act on it. Eliminates the symbol-grounding problem and the cost of keeping a world model synchronised with reality.
- *Real-time, real-environment demonstration*: the architecture was demonstrated on Allen, then Herbert, then later the Cog humanoid project — operating in real environments in real time, with performance that the dominant symbolic-AI robotics could not match.
- *Modular evolution-friendly architecture*: layers can be added or removed without modifying others; the architecture is robust to layer failure (the next-lower layer continues to operate). Brooks frames this as an *evolutionary* architecture in which more sophisticated competences accrete on top of basic survival competences.

## Connections
- [[Subsumption Architecture]]
- [[Reactive vs Deliberative Agents]]
- [[Intelligence Without Representation]]
- [[Behaviour-Based Robotics]]
- [[Sense-Plan-Act]]
- [[Embodiment]]
- [[The Society of Mind]]
- [[Agents (Minsky)]]
- [[BDI]]
- [[Modeling Rational Agents within a BDI-Architecture]]
- [[Agent Architecture]]
- [[Agent-Oriented Programming]]
- [[A Universal Modular Actor Formalism for Artificial Intelligence]]

## Conceptual Contribution
- **Claim:** Intelligent robot behaviour can be built by *decomposing along behavioural competence rather than functional modules*: each layer is a complete sense-act loop, layers run concurrently, higher layers subsume lower ones via suppression/inhibition, and there is no central symbolic representation. The architecture is incremental, evolution-friendly, and demonstrably outperforms symbolic-AI robotics in real-time real-world tasks.
- **Mechanism:** Concurrent finite-state-machine layers each implementing one behavioural competence; suppression nodes (replace) and inhibition nodes (block) for inter-layer interaction; no shared world model; demonstration on real mobile robots (Allen, Herbert) in real environments.
- **Concepts introduced/used:** [[Subsumption Architecture]], [[Behaviour-Based Robotics]], [[Reactive vs Deliberative Agents]] (the dichotomy this paper inaugurated), Suppression / Inhibition Networks, Layered Competence, Embodiment.
- **Stance:** systems-engineering paper / programmatic break with symbolic-AI orthodoxy.
- **Relates to:** Inaugurates the *reactive* (or *behaviour-based*) tradition in agent architectures, opposed at the time to the *deliberative* / symbolic tradition that produced [[BDI|BDI agents]] ([[Modeling Rational Agents within a BDI-Architecture|Rao & Georgeff 1991]], [[Intention Is Choice with Commitment|Cohen & Levesque 1990]]) and [[Agent-Oriented Programming]] (Shoham 1993). The dichotomy is now mostly resolved as a *layered* hybrid (3T architecture, BDI with reactive lower layers), but the historical break drove the conceptual repertoire of MAS for two decades. Conceptually adjacent to [[The Society of Mind]] (Minsky 1986) — both treat intelligence as the cooperation of many simple specialised agents, though Minsky's [[Agents (Minsky)|society of agents]] are still symbolic where Brooks's subsumption layers are not. The 1991 follow-ups *Intelligence Without Representation* (already in vault as [[Intelligence Without Representation]]) and *Elephants Don't Play Chess* extend the philosophical critique. In modern multi-agent systems, the *reactive vs deliberative* distinction underwrites the design of LLM-agent architectures: the contemporary debate over chain-of-thought / planner-decoupling / tool-use vs end-to-end-trained reactive agents recapitulates Brooks's polemic with new vocabulary.

## Tags
#robotics #subsumption-architecture #brooks #behaviour-based #reactive-agents #foundations
