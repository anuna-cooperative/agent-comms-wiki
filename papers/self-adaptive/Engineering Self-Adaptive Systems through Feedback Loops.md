# Engineering Self-Adaptive Systems through Feedback Loops

**Reference:** Brun, Y., Di Marzo Serugendo, G., Gacek, C., Giese, H., Kienle, H., Litoiu, M., Müller, H., Pezzè, M. & Shaw, M. (2009). *Engineering Self-Adaptive Systems through Feedback Loops.* In *Software Engineering for Self-Adaptive Systems*, LNCS 5525, Springer, pp. 48–70. DOI: 10.1007/978-3-642-02161-9_3. [URL](https://doi.org/10.1007/978-3-642-02161-9_3)

## Summary
This chapter makes a single, influential argument: the **feedback loop** should be a *first-class, explicit* entity in the engineering of self-adaptive software. The authors observe that although virtually every self-adaptive system is, at heart, one or more control loops, those loops are usually hidden — dispersed through the code and left implicit — which makes the system hard to understand, analyse, and assure. Their prescription is to surface the loop as an architectural element with named, documented parts, drawing directly on the long tradition of **control engineering**, where feedback loops are the primary object of design and analysis.

The paper anatomises the loop into its canonical activities — **collect** (sense), **analyse**, **decide**, and **act** — closely mirroring [[MAPE-K]], and stresses the *properties* engineers must reason about by analogy to control theory: stability, accuracy, settling time, and overshoot, together with the handling of disturbances and the cost of sensing and actuation. It further argues for making the loop's **control properties** explicit design concerns and for recognising when a system needs **multiple, possibly interacting or hierarchical** loops. By naming the feedback loop as the unit of design and importing control-theoretic vocabulary, the chapter became a standard reference for the "the loop is the architecture" stance in self-adaptive systems.

## Key Ideas
- **Make the feedback loop first-class**: name it, document its parts, and treat it as the primary architectural element — not logic buried in code.
- Canonical loop activities — **collect → analyse → decide → act** — align with the [[MAPE-K]] phases.
- Import **control-engineering properties** as design concerns: stability, accuracy, settling time, overshoot, disturbance rejection.
- Reason explicitly about **multiple and interacting loops** (hierarchical or coordinated control).
- Positions control theory as a source of both *design guidance* and *assurance* for adaptation.

## Connections
- [[Feedback Loop]]
- [[MAPE-K]]
- [[Software Engineering for Self-Adaptive Systems - A Research Roadmap]]
- [[Software Engineering for Self-Adaptive Systems - A Second Research Roadmap]]
- [[Feedback Control of Computing Systems]]
- [[Automated Design of Self-Adaptive Software with Control-Theoretical Formal Guarantees]]
- [[The Vision of Autonomic Computing]]
- [[Self-Adaptation]]
- [[Control Theory]]

## Conceptual Contribution
- **Claim:** Because a self-adaptive system *is* a feedback control system, the feedback loop should be an explicit, first-class engineering artefact whose control properties are designed and analysed, not an implicit by-product of the code.
- **Mechanism:** Surface the loop as an architectural element with named collect/analyse/decide/act parts (the [[MAPE-K]] phases), reason about it with control-theoretic properties (stability, accuracy, settling time, overshoot), and structure systems as one or more coordinated loops.
- **Concepts introduced/used:** [[Feedback Loop]], [[MAPE-K]], [[Control Theory]], [[Self-Adaptation]]
- **Stance:** engineering / position
- **Relates to:** Deepens the feedback-loop theme of the SEAMS roadmaps ([[Software Engineering for Self-Adaptive Systems - A Research Roadmap]]); its control-theoretic programme is made rigorous in [[Feedback Control of Computing Systems]] and [[Automated Design of Self-Adaptive Software with Control-Theoretical Formal Guarantees]].

## Tags
#self-adaptive #feedback-control #mape-k #control-theory #software-engineering
