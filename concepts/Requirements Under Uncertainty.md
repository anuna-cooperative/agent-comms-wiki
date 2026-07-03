# Requirements Under Uncertainty

The problem of **specifying requirements for systems that operate under uncertainty** — where the environment, workload, and even the availability of components are not fully known at design time — and of making the requirements themselves *adaptive* so a self-adaptive system knows what it must always guarantee versus what it may trade off. Because [[Self-Adaptation]] exists precisely to handle uncertainty, requirements engineering for self-adaptive systems must express tolerated variation rather than assume a fixed, fully-specified world.

Two influential lines address this. **RELAX** (Whittle, Sawyer, Bencomo, Cheng & Bruel, 2009) is a requirements language that introduces explicit operators — *as early as possible*, *as close as possible to*, *eventually*, etc. — to mark which requirements may be relaxed and under what environmental uncertainty. **Awareness Requirements** (Silva Souza, Lapouchnian, Robinson & Mylopoulos, 2011) are meta-level requirements *about other requirements* — constraints on their runtime success/failure rates — that give the feedback loop explicit, monitorable adaptation triggers. Both connect to **utility-based decision-making** (see [[Utility Function]]): when requirements admit trade-offs, a utility function ranks the alternatives the [[MAPE-K]] Plan step chooses among. The SEAMS roadmaps flag requirements under uncertainty as a core open challenge.

## In this vault
- [[Software Engineering for Self-Adaptive Systems - A Research Roadmap]]
- [[Software Engineering for Self-Adaptive Systems - A Second Research Roadmap]]

## Related
- [[Self-Adaptation]]
- [[Utility Function]]
- [[MAPE-K]]
- [[Runtime Assurance]]
- [[Goal Management]]
