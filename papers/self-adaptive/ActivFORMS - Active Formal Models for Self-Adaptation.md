# ActivFORMS: Active Formal Models for Self-Adaptation

**Reference:** Iftikhar, M. U. & Weyns, D. (2014). *ActivFORMS: Active Formal Models for Self-Adaptation.* In Proc. 9th International Symposium on Software Engineering for Adaptive and Self-Managing Systems (SEAMS 2014), ACM, pp. 125–134. DOI: 10.1145/2593929.2593944. [URL](https://doi.org/10.1145/2593929.2593944)

## Summary
ActivFORMS ("Active FORmal Models for Self-adaptation") is an approach in which a **formal model of the feedback loop is not merely used to verify a design and then discarded, but is directly executed as the running adaptation logic**. The feedback loop's [[MAPE-K]] behaviour is specified as a network of timed automata; those automata are verified against the adaptation goals (using model checking, e.g. Uppaal), and then the *same verified model* is deployed and executed by a virtual machine that interprets the automata at runtime. Because the artefact that runs is the artefact that was verified, ActivFORMS closes the usual gap between a verified design and the code that actually executes.

The approach's second contribution is **on-the-fly change of the adaptation logic with guarantees**: because the executing model is a first-class runtime object, a new (re-verified) feedback-loop model can be installed at runtime to change *how* the system adapts, extending assurance from the managed application to the manager itself. ActivFORMS is a flagship example of **models@run.time** used for *assurance*: the running formal model is simultaneously the system's [[Models@run.time|knowledge]], its executable controller, and the object of verification. Weyns and collaborators later extended it with runtime **goal management** and statistical model checking, and it stands as a canonical answer to the roadmaps' call for practical runtime assurance of self-adaptive systems.

## Key Ideas
- **Executable verified models**: specify the [[MAPE-K]] feedback loop as timed automata, verify them, then *directly execute* the verified model — no separate hand-coded controller.
- A **model-execution virtual machine** interprets the automata at runtime, eliminating the design-to-code assurance gap.
- **On-the-fly adaptation of the adaptation logic**: install a new, re-verified feedback-loop model at runtime with retained guarantees.
- Extends assurance to the **managing system**, not just the managed application.
- A leading instance of **[[Models@run.time]] for assurance**; later extended with runtime goal management and statistical model checking.

## Connections
- [[Runtime Assurance]]
- [[Models@run.time]]
- [[MAPE-K]]
- [[Feedback Loop]]
- [[Formal Verification]]
- [[Runtime Verification]]
- [[Self-Adaptation]]
- [[Self-Adaptive Software Needs Quantitative Verification at Runtime]]
- [[Software Engineering for Self-Adaptive Systems - A Second Research Roadmap]]

## Conceptual Contribution
- **Claim:** Assurance for self-adaptive systems is strongest when the *verified formal model of the feedback loop is itself executed*, so the running adaptation logic and the verified artefact are one and the same — and can be replaced at runtime with retained guarantees.
- **Mechanism:** Model the [[MAPE-K]] loop as timed automata, model-check them against goals, and run the verified model on a model-execution virtual machine as a first-class [[Models@run.time]] object that can be swapped for a re-verified model on the fly.
- **Concepts introduced/used:** [[Runtime Assurance]], [[Models@run.time]], [[MAPE-K]], [[Formal Verification]], [[Feedback Loop]]
- **Stance:** engineering / framework
- **Relates to:** The formal/model-based counterpart to the probabilistic [[Self-Adaptive Software Needs Quantitative Verification at Runtime]]; a concrete realisation of the perpetual-assurance agenda in [[Software Engineering for Self-Adaptive Systems - A Second Research Roadmap]].

## Tags
#self-adaptive #runtime-assurance #formal-methods #models-at-runtime #mape-k #software-engineering
