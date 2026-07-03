# MAPE-K

The reference control loop of [[Autonomic Computing]] and self-adaptive software: an **autonomic manager** runs a closed feedback loop of **M**onitor → **A**nalyse → **P**lan → **E**xecute over a shared **K**nowledge base, acting on a **managed element** through sensors (probes/gauges) and effectors.

- **Monitor** — collect and aggregate sensor data from the managed element and its environment.
- **Analyse** — detect when adaptation is needed (symptoms, constraint/SLA violations, drift from goals).
- **Plan** — select a course of action (a strategy/tactic, reconfiguration, or repair).
- **Execute** — enact the plan through effectors on the managed element.
- **Knowledge** — models, policies, goals, and history shared across the four phases (see [[Models@run.time]]).

Introduced in [[The Vision of Autonomic Computing]] (Kephart & Chess 2003) as the organising abstraction for the self-* properties (self-configuration, self-healing, self-optimisation, self-protection). It is the connective tissue linking architecture-based adaptation ([[Rainbow - Architecture-Based Self-Adaptation with Reusable Infrastructure]]), reference models ([[Three-Layer Reference Model]]), and the broader survey landscape ([[Self-Adaptive Software - Landscape and Research Challenges]]).

## In this vault
- [[The Vision of Autonomic Computing]]
- [[An Architecture-Based Approach to Self-Adaptive Software]]
- [[Rainbow - Architecture-Based Self-Adaptation with Reusable Infrastructure]]
- [[Self-Adaptive Software - Landscape and Research Challenges]]
- [[Engineering Self-Adaptive Systems through Feedback Loops]]
- [[Self-Adaptive Software Needs Quantitative Verification at Runtime]]
- [[ActivFORMS - Active Formal Models for Self-Adaptation]]
- [[Self-Adaptation]]
- [[Metacognitive Loop]]

## Related
- [[Autonomic Computing]]
- [[Self-Adaptive Systems]]
- [[Feedback Loop]]
- [[Control Theory]]
- [[Runtime Assurance]]
- [[Three-Layer Reference Model]]
- [[Models@run.time]]
