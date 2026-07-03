# Rainbow: Architecture-Based Self-Adaptation with Reusable Infrastructure

**Reference:** Garlan, D., Cheng, S.-W., Huang, A.-C., Schmerl, B. & Steenkiste, P. (2004). *Rainbow: Architecture-Based Self-Adaptation with Reusable Infrastructure.* IEEE Computer 37(10): 46–54. DOI: 10.1109/MC.2004.175. [URL](https://doi.org/10.1109/MC.2004.175)

## Summary
Rainbow is a framework for adding self-adaptation to existing systems by using an **architectural model** of the target system as the basis for monitoring, problem detection, and repair. Its core claim is that a software architecture — components, connectors, and properties — is the right level of abstraction for reasoning about system-wide adaptation: it is abstract enough to be tractable and to express global constraints (latency, cost, availability), yet concrete enough to map to real system elements. This is a concrete realisation of the [[MAPE-K]] loop where the *architecture is the runtime model* (see [[Models@run.time]]).

The framework provides a **reusable infrastructure** with clearly separated, customisable parts. **Probes** instrument the running system; **gauges** aggregate probe readings into updates on the architectural model; a **model manager** maintains the architecture; a **constraint evaluator** checks the model against invariants and triggers adaptation when they are violated; and an **adaptation engine** selects and carries out repairs through system-level **effectors**. Rainbow separates this generic machinery from a **system-specific adaptation knowledge** layer — the architectural style, constraints, and repair strategies — so the same infrastructure can be retargeted to different systems at much lower cost than bespoke, code-level adaptation.

Rainbow's key engineering contribution is thus **reuse**: rather than weaving adaptation logic into application code, developers supply an architectural model, a set of constraints, and a library of repair strategies, and the shared infrastructure supplies the control loop. The approach is later extended with utility-based strategy selection and the **Stitch** adaptation language, and exercised on canonical exemplars such as the **Znn.com** news-service testbed, which together made Rainbow the reference example of architecture-based self-adaptation.

## Key Ideas
- **Architecture as the locus of adaptation**: reason about the system through its component-and-connector model, not its source.
- **Reusable control-loop infrastructure**: probes, gauges, model manager, constraint evaluator, adaptation engine, effectors.
- **Separation of generic mechanism from system-specific adaptation knowledge** (style, constraints, strategies) — the source of reuse and low retargeting cost.
- **Constraint-triggered repair**: violated architectural invariants drive selection of a repair strategy.
- **Externalised adaptation**: the adaptation logic lives outside the target system, keeping the application unchanged.
- Later refinements: **utility-based** strategy selection and the **Stitch** strategy language; **Znn.com** as the standard testbed.

## Connections
- [[MAPE-K]]
- [[Autonomic Computing]]
- [[Models@run.time]]
- [[Self-Adaptation]]
- [[Self-Adaptive Systems]]
- [[The Vision of Autonomic Computing]]
- [[Self-Managed Systems - an Architectural Challenge]]
- [[Self-Adaptive Software - Landscape and Research Challenges]]
- [[Architectural Pattern]]
- [[Software Architecture]]

## Conceptual Contribution
- **Claim:** Self-adaptation should be engineered at the architectural level using a *reusable* framework: a runtime model of the system's architecture, plus system-specific constraints and repair strategies, lets the same adaptation infrastructure be retargeted across systems instead of hand-coded each time.
- **Mechanism:** Probes instrument the system; gauges update an architectural model; a constraint evaluator detects invariant violations; an adaptation engine selects repair strategies and enacts them via effectors — a MAPE-K loop over an architectural runtime model, with generic infrastructure cleanly separated from a customisable adaptation-knowledge layer.
- **Concepts introduced/used:** [[Architecture-Based Adaptation]], [[MAPE-K]], [[Models@run.time]], [[Software Architecture]], [[Constraint Evaluation]], [[Utility Function]]
- **Stance:** engineering / framework
- **Relates to:** The canonical architecture-based exemplar of [[The Vision of Autonomic Computing]]; complements the layered separation of concerns in [[Self-Managed Systems - an Architectural Challenge]] and sits inside the taxonomy of [[Self-Adaptive Software - Landscape and Research Challenges]]. Its "architecture as formal artefact" stance rhymes with pattern-based dependability in [[Architectural Patterns for Dependable Software Systems - SOL]].

## Tags
#self-adaptive #architecture-based-adaptation #autonomic-computing #mape-k #software-architecture #software-engineering
