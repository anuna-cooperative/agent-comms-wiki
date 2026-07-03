# Utility Function

A scalar-valued function that maps a system state (or a candidate configuration) to a measure of **how good it is** against the stakeholders' objectives, so that competing alternatives can be *ranked* and the best chosen. In self-adaptive and [[Autonomic Computing|autonomic]] systems, utility functions are the standard basis for **decision-making in the Plan step** of a [[MAPE-K]] loop: rather than encoding fixed if-then adaptation rules, the manager evaluates the utility of each reachable configuration (trading off, say, performance against cost and reliability) and adapts toward the one of highest expected utility.

Utility-based control is what lets a system reconcile multiple, possibly conflicting non-functional goals and handle [[Requirements Under Uncertainty|requirements that admit trade-offs]]. In this vault it underpins the utility-based strategy selection of [[Rainbow - Architecture-Based Self-Adaptation with Reusable Infrastructure]] (its Stitch strategies are chosen by expected utility) and the goal-driven planning of the [[Three-Layer Reference Model]].

## In this vault
- [[Rainbow - Architecture-Based Self-Adaptation with Reusable Infrastructure]]
- [[The Vision of Autonomic Computing]]

## Related
- [[MAPE-K]]
- [[Self-Adaptation]]
- [[Requirements Under Uncertainty]]
- [[Autonomic Computing]]
- [[Goal Management]]
