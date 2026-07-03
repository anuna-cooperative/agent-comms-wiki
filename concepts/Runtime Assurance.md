# Runtime Assurance

The provision of **continuous, runtime evidence** that a self-adaptive system still satisfies its requirements as the system, its environment, and its workload change — replacing (or supplementing) one-shot design-time verification with an incremental, always-on activity. Because self-adaptation defers decisions to runtime precisely to cope with uncertainty, the guarantees must be re-established at runtime too; the SEAMS roadmaps call this **perpetual assurance** and treat it as the field's defining challenge.

Runtime assurance is realised through several complementary techniques in this vault: **quantitative (probabilistic) verification at runtime** ([[Self-Adaptive Software Needs Quantitative Verification at Runtime]]), **executable verified formal models** of the feedback loop ([[ActivFORMS - Active Formal Models for Self-Adaptation]]), and **control-theoretic guarantees** synthesised for the adaptation controller ([[Automated Design of Self-Adaptive Software with Control-Theoretical Formal Guarantees]]). All of them keep a [[Models@run.time|runtime model]] in the [[MAPE-K]] knowledge base and re-check goals against it as conditions drift.

## In this vault
- [[Self-Adaptive Software Needs Quantitative Verification at Runtime]]
- [[ActivFORMS - Active Formal Models for Self-Adaptation]]
- [[Automated Design of Self-Adaptive Software with Control-Theoretical Formal Guarantees]]
- [[Software Engineering for Self-Adaptive Systems - A Second Research Roadmap]]

## Related
- [[Runtime Quantitative Verification]]
- [[Runtime Verification]]
- [[Formal Verification]]
- [[Models@run.time]]
- [[MAPE-K]]
- [[Self-Adaptation]]
