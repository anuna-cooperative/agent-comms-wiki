# Self-Adaptive Software: Landscape and Research Challenges

**Reference:** Salehie, M. & Tahvildari, L. (2009). *Self-Adaptive Software: Landscape and Research Challenges.* ACM Transactions on Autonomous and Adaptive Systems (TAAS) 4(2), Article 14. DOI: 10.1145/1516533.1516538. [URL](https://doi.org/10.1145/1516533.1516538)

## Summary
This survey organises the self-adaptive-software field into a coherent taxonomy and a research roadmap. Its recurring analytic device is a set of **"self-*" questions** derived from the classic journalistic hexad — *where, what, when, why, who, how* — used to structure both what a system adapts and how it is built. The authors position self-adaptation against the neighbouring traditions of [[Autonomic Computing]], multi-agent systems, control theory, and machine learning, and distil their shared structure into an adaptation feedback loop of the [[MAPE-K]] form.

On **what and where**, the survey classifies adaptation by the properties being maintained — the **self-* properties** (self-configuring, self-healing, self-optimising, self-protecting, and the enabling self-awareness/self-monitoring) — and by the artefacts and layers where change is applied. On **when**, it distinguishes reactive from proactive adaptation and static from dynamic decision-making. On **how**, it surveys the mechanisms of monitoring, detecting, deciding, and acting, together with the models and knowledge each phase needs.

The paper's lasting contribution is as a **map and vocabulary**: it fixes the terminology (adaptation properties, the MAPE-style loop, the object and level of adaptation) that later work builds on, and it enumerates the open research challenges — engineering trustworthy adaptation, assurance and verification, handling uncertainty, and decentralised/large-scale control — that motivate much of the subsequent SEAMS-community literature.

## Key Ideas
- A **taxonomy via the six "self-*" questions** (where/what/when/why/who/how) spanning object, level, timing, and mechanism of adaptation.
- **Self-* properties** organised into a hierarchy: general (self-managing), major (configuring/healing/optimising/protecting), and enabling (self-awareness/self-monitoring).
- **Adaptation loop** cast in MAPE-K terms as the common structure across autonomic computing, control theory, and agents.
- **Reactive vs. proactive** and **static vs. dynamic** decision-making as key design axes.
- A **research roadmap**: assurance/verification of adaptation, dealing with uncertainty, trust, and scale/decentralisation.

## Connections
- [[MAPE-K]]
- [[Autonomic Computing]]
- [[Self-Adaptation]]
- [[Self-Adaptive Systems]]
- [[The Vision of Autonomic Computing]]
- [[Rainbow - Architecture-Based Self-Adaptation with Reusable Infrastructure]]
- [[Self-Managed Systems - an Architectural Challenge]]
- [[Adaptation Dimensions]]
- [[Feedback Loop]]

## Conceptual Contribution
- **Claim:** The self-adaptive-software field can be organised by asking, of any adaptation, *where/what/when/why/who/how* — yielding a taxonomy of adaptation properties, objects, timing, and mechanisms that unifies autonomic computing, control theory, and agent-based approaches under a common feedback-loop structure.
- **Mechanism:** A survey framework built on the six self-* questions and a hierarchy of self-* properties, mapped onto a MAPE-style adaptation loop, used to classify existing systems and to expose gaps (assurance, uncertainty, trust, scale).
- **Concepts introduced/used:** [[Self-Adaptation]], [[MAPE-K]], [[Adaptation Dimensions]], [[Self-* Properties]], [[Assurance]]
- **Stance:** survey / taxonomy
- **Relates to:** The standard map for the cluster anchored by [[The Vision of Autonomic Computing]]; classifies architecture-based approaches like [[Rainbow - Architecture-Based Self-Adaptation with Reusable Infrastructure]] and reference models like [[Self-Managed Systems - an Architectural Challenge]], and shares its property vocabulary with the ensemble-oriented [[Self-Adaptation Self-Expression Self-Awareness ASCENS]].

## Tags
#self-adaptive #autonomic-computing #survey #taxonomy #mape-k #software-engineering
