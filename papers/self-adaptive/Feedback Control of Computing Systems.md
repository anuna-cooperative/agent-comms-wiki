# Feedback Control of Computing Systems

**Reference:** Hellerstein, J. L., Diao, Y., Parekh, S. & Tilbury, D. M. (2004). *Feedback Control of Computing Systems.* Wiley–IEEE Press. ISBN 978-0-471-26637-2. [URL](https://doi.org/10.1002/047166880X)

## Summary
This book is the standard text that brings **classical control theory** to bear on computing systems, and it is the reference source for the control-theoretic strand of self-adaptation. Its thesis is that the performance and resource management of software systems — web servers, databases, middleware, queues — can and should be engineered with the same feedback-control apparatus used in mechanical and electrical engineering: model the system, design a controller, and obtain provable guarantees about its closed-loop behaviour rather than tuning by trial and error.

The authors develop the toolkit systematically: **black-box system identification** to fit dynamic models (e.g. difference-equation / transfer-function models) to measured input–output data from a computing system; controller design (proportional, integral, PID and pole-placement techniques); and analysis of the resulting **closed loop** through the properties that name the book's recurring acronym **SASO** — **S**tability, **A**ccuracy, **S**ettling time, and **O**vershoot. Worked examples target real systems such as Apache HTTP server tuning, Lotus Notes/email server admission control, and load and queue-length regulation. For the self-adaptive-systems community the book supplies the rigorous underpinning that papers like [[Engineering Self-Adaptive Systems through Feedback Loops]] invoke: when the [[MAPE-K]] loop is treated as a genuine control loop, this is where the design-and-guarantee machinery comes from.

## Key Ideas
- Applies **classical (mostly linear) control theory** to computing systems for performance and resource management.
- **System identification**: fit empirical dynamic models to measured input/output data of a running system (black-box modelling).
- **Controller design**: proportional/integral/PID and pole-placement controllers for computing targets.
- **SASO** closed-loop properties — **S**tability, **A**ccuracy, **S**ettling time, **O**vershoot — as the analysis vocabulary.
- Concrete case studies (Apache, email/Notes servers, queueing/admission control) demonstrating measured, guaranteed regulation.

## Connections
- [[Control Theory]]
- [[Feedback Loop]]
- [[Engineering Self-Adaptive Systems through Feedback Loops]]
- [[Automated Design of Self-Adaptive Software with Control-Theoretical Formal Guarantees]]
- [[MAPE-K]]
- [[Self-Adaptation]]
- [[The Vision of Autonomic Computing]]

## Conceptual Contribution
- **Claim:** The dynamic behaviour of computing systems can be managed with classical feedback control, yielding *provable* closed-loop guarantees (stability, accuracy, settling time, overshoot) instead of heuristic tuning.
- **Mechanism:** Identify an empirical dynamic model of the target system, design a proportional/integral/PID or pole-placement controller against it, and analyse the closed loop with the SASO properties; validate on real server/queue case studies.
- **Concepts introduced/used:** [[Control Theory]], [[Feedback Loop]], [[System Identification]], [[MAPE-K]]
- **Stance:** foundational textbook / methodology
- **Relates to:** The rigorous control-theoretic basis behind the "loop as first-class artefact" stance of [[Engineering Self-Adaptive Systems through Feedback Loops]] and the automated controller synthesis of [[Automated Design of Self-Adaptive Software with Control-Theoretical Formal Guarantees]].

## Tags
#control-theory #feedback-control #self-adaptive #performance-management #software-engineering
