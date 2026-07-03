# Automated Design of Self-Adaptive Software with Control-Theoretical Formal Guarantees

**Reference:** Filieri, A., Hoffmann, H. & Maggio, M. (2014). *Automated Design of Self-Adaptive Software with Control-Theoretical Formal Guarantees.* In Proc. 36th International Conference on Software Engineering (ICSE '14), ACM, pp. 299–310. DOI: 10.1145/2568225.2568272. [URL](https://doi.org/10.1145/2568225.2568272)

## Summary
This paper attacks a practical obstacle to using [[Control Theory|control theory]] for self-adaptation: designing a controller normally requires control-engineering expertise that most software engineers lack. The authors propose an **automated** method that, given a software system exposing a tunable knob and a measurable goal, builds a dynamic model of the system by lightweight experimentation and then *synthesises a controller* for it — turning controller design into a push-button step of the software process rather than a bespoke modelling exercise.

The technique performs on-line **system identification** to fit a simple (linear, adaptive) model relating the control input to the measured output, then automatically derives a controller whose parameters are chosen to deliver **formal control-theoretic guarantees**: stability of the closed loop, absence of steady-state error (the goal is met in the limit), bounded settling time, and robustness to modelling inaccuracy and disturbances. Because the model is re-estimated on-line, the controller adapts as the system or environment drifts. The result is a general, reusable way to give self-adaptive software the kind of provable regulation guarantees advocated by [[Feedback Control of Computing Systems]] and [[Engineering Self-Adaptive Systems through Feedback Loops]], without demanding that each developer become a control engineer.

## Key Ideas
- **Automated controller synthesis**: given a knob and a measurable goal, generate a controller with no manual control-theory design.
- **On-line system identification** fits a simple adaptive model of input→output behaviour and re-estimates it as the system drifts.
- Delivers **formal guarantees** — stability, zero steady-state error (goal convergence), bounded settling time, robustness to disturbance/model error.
- Makes control-theoretic adaptation **reusable and accessible** to software engineers, not just control specialists.
- A concrete bridge from classical control theory to the [[MAPE-K]] loop's Plan/Execute stages.

## Connections
- [[Control Theory]]
- [[Feedback Control of Computing Systems]]
- [[Engineering Self-Adaptive Systems through Feedback Loops]]
- [[Feedback Loop]]
- [[MAPE-K]]
- [[Self-Adaptation]]
- [[Software Engineering for Self-Adaptive Systems - A Second Research Roadmap]]
- [[Runtime Assurance]]

## Conceptual Contribution
- **Claim:** Control-theoretic self-adaptation can be *automated* — a controller with formal stability and convergence guarantees can be synthesised from a system's own measured behaviour, removing the control-engineering expertise barrier.
- **Mechanism:** On-line system identification fits an adaptive linear model of the control input's effect on the goal metric; a controller is then derived automatically to guarantee stability, zero steady-state error, bounded settling time, and robustness, and is re-tuned as the model is re-estimated.
- **Concepts introduced/used:** [[Control Theory]], [[System Identification]], [[Feedback Loop]], [[MAPE-K]], [[Runtime Assurance]]
- **Stance:** engineering / method
- **Relates to:** Operationalises the control-theoretic programme of [[Feedback Control of Computing Systems]] and [[Engineering Self-Adaptive Systems through Feedback Loops]], and supplies one form of the runtime assurance called for by [[Software Engineering for Self-Adaptive Systems - A Second Research Roadmap]].

## Tags
#control-theory #self-adaptive #feedback-control #controller-synthesis #runtime-assurance #software-engineering
