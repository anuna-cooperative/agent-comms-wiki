# Runtime Quantitative Verification

The application of **quantitative (probabilistic) model checking** — verifying reliability, performance, availability, and cost/reward properties over stochastic models such as discrete- and continuous-time Markov chains and Markov decision processes — *continuously at runtime* rather than only at design time. An operational stochastic model of the system is kept in the [[MAPE-K|runtime knowledge]] as a [[Models@run.time]] artefact, its parameters are updated from monitored data, and the relevant properties are re-verified so that predicted requirement violations can trigger and guide adaptation.

Introduced as an agenda for self-adaptation by [[Self-Adaptive Software Needs Quantitative Verification at Runtime]] (Calinescu, Ghezzi, Kwiatkowska & Mirandola 2012), it is a central technique of [[Runtime Assurance]]. Its practicality hinges on **efficiency** — incremental and parametric verification methods that fit inside the adaptation loop's time budget.

## In this vault
- [[Self-Adaptive Software Needs Quantitative Verification at Runtime]]
- [[Software Engineering for Self-Adaptive Systems - A Second Research Roadmap]]

## Related
- [[Runtime Assurance]]
- [[Runtime Verification]]
- [[Formal Verification]]
- [[Models@run.time]]
- [[MAPE-K]]
