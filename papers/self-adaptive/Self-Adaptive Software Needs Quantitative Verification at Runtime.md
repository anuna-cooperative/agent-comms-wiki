# Self-Adaptive Software Needs Quantitative Verification at Runtime

**Reference:** Calinescu, R., Ghezzi, C., Kwiatkowska, M. & Mirandola, R. (2012). *Self-Adaptive Software Needs Quantitative Verification at Runtime.* Communications of the ACM 55(9): 69–77. DOI: 10.1145/2330667.2330686. [URL](https://doi.org/10.1145/2330667.2330686)

## Summary
This paper argues that self-adaptive software must move a class of *quantitative* analysis from design time into **runtime**. Non-functional requirements — reliability, availability, performance, cost — are often stated probabilistically or in terms of expected costs/rewards, and the standard design-time way to establish them is **quantitative (probabilistic) model checking** over Markov models (DTMCs/MDPs, CTMCs) using tools such as PRISM. The authors' thesis is that because the environment, workloads, and component behaviours a system actually meets are only known once it is running — and keep changing — the same quantitative verification must be re-run *continuously, at runtime*, to check whether requirements still hold and to guide adaptation when they do not.

Concretely, the approach keeps an operational **stochastic model** of the system as part of the [[MAPE-K|Knowledge]] (a [[Models@run.time]] artefact), continuously updates its parameters from monitored data (e.g. observed failure rates, response times), and re-verifies the relevant probabilistic/reward properties against that model. When verification predicts a requirement violation, the results drive the Plan step — selecting a reconfiguration whose verified properties restore the guarantees. The chief engineering challenge the paper foregrounds is **efficiency**: full model checking is expensive, so runtime use demands incremental and parametric verification techniques so the analysis can keep pace with adaptation. The work is a cornerstone of the *runtime-assurance* agenda, giving self-adaptation continuous, evidence-based guarantees rather than one-off design-time certificates.

## Key Ideas
- **Move quantitative verification from design time to runtime**: continuously re-check probabilistic/reward requirements as conditions change.
- Keep an **operational stochastic model** (DTMC/MDP/CTMC) in the system's runtime knowledge, updated from monitored data.
- Verification results **drive adaptation**: a predicted violation triggers selection of a reconfiguration with verified properties.
- Targets **non-functional** requirements — reliability, performance, availability, cost — that are naturally quantitative.
- Central obstacle is **efficiency**; needs incremental/parametric model checking to run within the [[MAPE-K]] loop's time budget.

## Connections
- [[Runtime Quantitative Verification]]
- [[Runtime Assurance]]
- [[Runtime Verification]]
- [[Models@run.time]]
- [[MAPE-K]]
- [[Self-Adaptation]]
- [[Software Engineering for Self-Adaptive Systems - A Second Research Roadmap]]
- [[ActivFORMS - Active Formal Models for Self-Adaptation]]
- [[Formal Verification]]

## Conceptual Contribution
- **Claim:** Because the conditions under which non-functional requirements must hold are known only at runtime and keep changing, quantitative (probabilistic) verification has to be performed continuously at runtime, not once at design time.
- **Mechanism:** Maintain a parametric stochastic model of the system in the runtime knowledge base, update it from monitored data, and re-run quantitative model checking (reliability/performance/cost properties) to detect predicted violations and choose verified reconfigurations — using incremental/parametric techniques for efficiency.
- **Concepts introduced/used:** [[Runtime Quantitative Verification]], [[Runtime Assurance]], [[Models@run.time]], [[MAPE-K]], [[Formal Verification]]
- **Stance:** engineering / position + method
- **Relates to:** A concrete realisation of the perpetual-assurance goal of [[Software Engineering for Self-Adaptive Systems - A Second Research Roadmap]]; the probabilistic counterpart to the model-based runtime formal methods of [[ActivFORMS - Active Formal Models for Self-Adaptation]].

## Tags
#self-adaptive #runtime-assurance #quantitative-verification #probabilistic-model-checking #models-at-runtime #software-engineering
