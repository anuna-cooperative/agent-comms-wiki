# Software Engineering for Self-Adaptive Systems: A Research Roadmap

**Reference:** Cheng, B. H. C., de Lemos, R., Giese, H., Inverardi, P., Magee, J., et al. (2009). *Software Engineering for Self-Adaptive Systems: A Research Roadmap.* In *Software Engineering for Self-Adaptive Systems*, LNCS 5525, Springer, pp. 1–26. DOI: 10.1007/978-3-642-02161-9_1. [URL](https://doi.org/10.1007/978-3-642-02161-9_1)

## Summary
This roadmap — the outcome of a Dagstuhl seminar bringing together the self-adaptive-systems community — is the first attempt to organise self-adaptation as a *software-engineering* discipline rather than a collection of point techniques. It frames self-adaptation as the response to increasing scale, dynamism, and uncertainty in operating environments, where systems must adjust at runtime with reduced human intervention, and argues that the classic engineering activities (requirements, design, verification, process) all need to be rethought when much of the decision-making is deferred to runtime.

Its most-cited contribution is a set of **four views** that partition the research agenda: **modelling dimensions** (a vocabulary for classifying self-adaptive systems — e.g. what is adapted, when, why, and how), **requirements** (specifying adaptation goals and tolerated uncertainty, including languages that "relax" requirements), **engineering** (making the feedback loop a first-class design element and reusing control-loop architectures such as [[MAPE-K]]), and **assurance** (providing runtime evidence, verification, and validation that adaptation preserves goals). The paper repeatedly emphasises the **feedback loop** as the architectural centre of gravity — echoing control engineering — and lays out open challenges that framed the field for a decade.

## Key Ideas
- Reframes self-adaptation as a **software-engineering** problem: requirements, design, assurance, and process must all account for runtime decision-making under uncertainty.
- **Four research views**: modelling dimensions, requirements, engineering, and assurance.
- **Modelling dimensions** give a shared classification vocabulary (goals, change, mechanisms, effects) for comparing self-adaptive systems.
- Makes the **feedback loop / [[MAPE-K]] control loop** a first-class, visible design element rather than buried logic.
- Names **assurance** (continuous, runtime evidence that goals still hold) as a defining open challenge.

## Connections
- [[Self-Adaptive Software - Landscape and Research Challenges]]
- [[Software Engineering for Self-Adaptive Systems - A Second Research Roadmap]]
- [[Engineering Self-Adaptive Systems through Feedback Loops]]
- [[The Vision of Autonomic Computing]]
- [[Self-Managed Systems - an Architectural Challenge]]
- [[MAPE-K]]
- [[Feedback Loop]]
- [[Self-Adaptation]]
- [[Requirements Under Uncertainty]]
- [[Runtime Assurance]]

## Conceptual Contribution
- **Claim:** Self-adaptation should be treated as a first-class software-engineering discipline; its distinctive challenges — deferring decisions to runtime under uncertainty — reshape requirements, design, assurance, and process.
- **Mechanism:** Partition the agenda into four views (modelling dimensions, requirements, engineering, assurance), elevate the feedback/[[MAPE-K]] loop to an explicit architectural element, and demand continuous runtime assurance rather than one-off design-time verification.
- **Concepts introduced/used:** [[Feedback Loop]], [[MAPE-K]], [[Runtime Assurance]], [[Requirements Under Uncertainty]], [[Adaptation Dimensions]]
- **Stance:** roadmap / community agenda
- **Relates to:** The first of the two SEAMS roadmaps; its successor [[Software Engineering for Self-Adaptive Systems - A Second Research Roadmap]] deepens the assurance and control agenda. Complements the taxonomy of [[Self-Adaptive Software - Landscape and Research Challenges]] and the feedback-loop treatment of [[Engineering Self-Adaptive Systems through Feedback Loops]].

## Tags
#self-adaptive #software-engineering #mape-k #feedback-control #runtime-assurance #roadmap
