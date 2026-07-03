# The Vision of Autonomic Computing

**Reference:** Kephart, J. O. & Chess, D. M. (2003). *The Vision of Autonomic Computing.* IEEE Computer 36(1): 41–50. DOI: 10.1109/MC.2003.1160055. [URL](https://doi.org/10.1109/MC.2003.1160055)

## Summary
This manifesto argues that the chief obstacle to further progress in computing is not raw capability but **complexity**: the installation, configuration, tuning, and maintenance of large heterogeneous systems is outstripping the ability of human administrators to manage them. Taking the human autonomic nervous system as its metaphor — it regulates heartbeat and temperature without conscious attention — the paper proposes **autonomic computing**: systems that manage themselves against high-level objectives supplied by administrators, who say *what* is wanted rather than *how* to achieve it.

The paper's central architectural abstraction is the **autonomic element**: an autonomic manager wrapping a managed element, coupled to it through sensors and effectors, and running a closed control loop. That loop — **Monitor, Analyse, Plan, Execute over a shared Knowledge base** — is the [[MAPE-K]] loop that became the field's organising pattern. Autonomic elements are composed into larger systems whose global self-management emerges from local manager behaviour and inter-element relationships (service agreements, negotiation).

Kephart and Chess frame the field's goals through four **self-* properties**: **self-configuration** (systems configure themselves from high-level policy), **self-healing** (detect, diagnose, and repair faults), **self-optimisation** (continually tune performance and resource use), and **self-protection** (defend against and anticipate attacks). They lay out a research agenda spanning the individual-element level (theory of autonomic elements, lifecycle, learning) and the system level (emergent behaviour, negotiation, trust, and the engineering and *assurance* challenges of large adaptive systems).

## Key Ideas
- **Complexity is the limiting factor**; the answer is systems that manage themselves given high-level goals.
- **Autonomic element** = autonomic manager + managed element, joined by sensors and effectors.
- **MAPE-K control loop**: Monitor → Analyse → Plan → Execute over shared Knowledge.
- **Self-CHOP properties**: self-configuration, self-healing, self-optimisation, self-protection.
- **Policy-based, goal-directed management**: administrators specify objectives, not procedures.
- **System-level self-management as emergent** from many interacting autonomic elements (agreements, negotiation, trust).
- A broad **research agenda** naming learning, optimisation, negotiation, and assurance as open problems.

## Connections
- [[Autonomic Computing]]
- [[MAPE-K]]
- [[Self-Adaptation]]
- [[Self-Adaptive Systems]]
- [[Rainbow - Architecture-Based Self-Adaptation with Reusable Infrastructure]]
- [[Self-Managed Systems - an Architectural Challenge]]
- [[Self-Adaptive Software - Landscape and Research Challenges]]
- [[Multi-Agent Systems]]
- [[Feedback Loop]]

## Conceptual Contribution
- **Claim:** As systems outgrow human administrability, they must become self-managing — regulating their own configuration, health, performance, and defence against high-level objectives rather than step-by-step instructions.
- **Mechanism:** Wrap each managed element in an autonomic manager that runs a Monitor–Analyse–Plan–Execute loop over a shared Knowledge base (MAPE-K), reading sensors and driving effectors; compose autonomic elements, coordinated by service agreements and negotiation, into self-managing systems judged by the self-CHOP properties.
- **Concepts introduced/used:** [[Autonomic Computing]], [[MAPE-K]], [[Self-Adaptation]], [[Feedback Loop]], [[Models@run.time]]
- **Stance:** vision / research agenda
- **Relates to:** The origin point for the self-adaptive cluster — the architecture-based realisation in [[Rainbow - Architecture-Based Self-Adaptation with Reusable Infrastructure]], the reference architecture of [[Self-Managed Systems - an Architectural Challenge]], and the taxonomy of [[Self-Adaptive Software - Landscape and Research Challenges]] all build on this framing. The biological metaphor complements the biology-inspired adaptation in [[Self-Adaptation Self-Expression Self-Awareness ASCENS]].

## Tags
#autonomic-computing #self-adaptive #mape-k #feedback-control #software-engineering
