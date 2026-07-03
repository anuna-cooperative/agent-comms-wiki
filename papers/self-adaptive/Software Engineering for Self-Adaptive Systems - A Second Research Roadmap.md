# Software Engineering for Self-Adaptive Systems: A Second Research Roadmap

**Reference:** de Lemos, R., Giese, H., Müller, H. A., Shaw, M., et al. (2013). *Software Engineering for Self-Adaptive Systems: A Second Research Roadmap.* In *Software Engineering for Self-Adaptive Systems II*, LNCS 7475, Springer, pp. 1–32. DOI: 10.1007/978-3-642-35813-5_1. [URL](https://doi.org/10.1007/978-3-642-35813-5_1)

## Summary
The second SEAMS roadmap, produced four years after the first, takes stock of the field's progress and re-sets the agenda around what the community had learned to be the genuinely hard problems. Where the [[Software Engineering for Self-Adaptive Systems - A Research Roadmap|first roadmap]] partitioned the space, this one is organised around **four thematic challenges** that had emerged as central: **design space** (systematically characterising the choices a designer of a self-adaptive system faces), **processes** (development and lifecycle processes that span design time and runtime), **decentralisation of control loops** (moving beyond a single [[MAPE-K]] loop to *multiple, interacting* control loops and coordination patterns among them), and **practical run-time verification and validation** (V&V).

The roadmap's sharpest emphasis is on **assurance**: it argues that self-adaptive systems demand a continuous supply of evidence that requirements are still met as the system and its environment change, shifting V&V from a design-time gate to a runtime, incremental activity. It highlights the need to reason explicitly about the **uncertainty** that motivates adaptation, to make control loops (and their interactions) explicit architectural entities, and to develop **perpetual assurance** techniques — including quantitative and formal methods applied at runtime — that keep pace with adaptation. It is the standard "state of the field, part II" reference for engineering and assuring self-adaptive software.

## Key Ideas
- **Four thematic challenges**: design space, processes (design-time + runtime), decentralised control loops, and practical run-time V&V.
- **Decentralised control**: self-adaptive systems increasingly need *multiple interacting* [[MAPE-K]] loops with explicit coordination, not one central loop.
- **Perpetual / runtime assurance**: continuous, incremental evidence that goals still hold, replacing one-shot design-time verification.
- **Uncertainty is first-class**: adaptation exists to handle it, so it must be modelled and reasoned about explicitly across the lifecycle.
- Positions **runtime quantitative verification** and formal runtime models as key enabling techniques for assurance.

## Connections
- [[Software Engineering for Self-Adaptive Systems - A Research Roadmap]]
- [[Self-Adaptive Software - Landscape and Research Challenges]]
- [[Self-Adaptive Software Needs Quantitative Verification at Runtime]]
- [[ActivFORMS - Active Formal Models for Self-Adaptation]]
- [[Engineering Self-Adaptive Systems through Feedback Loops]]
- [[MAPE-K]]
- [[Feedback Loop]]
- [[Runtime Assurance]]
- [[Requirements Under Uncertainty]]
- [[Self-Adaptation]]

## Conceptual Contribution
- **Claim:** Four years on, the hard core of engineering self-adaptive systems is decentralised control, lifecycle processes spanning design/runtime, and — above all — *continuous* runtime assurance under uncertainty.
- **Mechanism:** Reorganise the agenda around design space, processes, decentralisation of control loops, and practical run-time V&V; treat uncertainty as first-class and pursue perpetual assurance via runtime quantitative/formal verification.
- **Concepts introduced/used:** [[Runtime Assurance]], [[MAPE-K]], [[Requirements Under Uncertainty]], [[Feedback Loop]], [[Runtime Quantitative Verification]]
- **Stance:** roadmap / community agenda
- **Relates to:** The sequel to [[Software Engineering for Self-Adaptive Systems - A Research Roadmap]]; its assurance emphasis is realised in [[Self-Adaptive Software Needs Quantitative Verification at Runtime]] and [[ActivFORMS - Active Formal Models for Self-Adaptation]], and its decentralised-control theme extends the single loop of [[The Vision of Autonomic Computing]].

## Tags
#self-adaptive #software-engineering #mape-k #runtime-assurance #decentralised-control #roadmap
