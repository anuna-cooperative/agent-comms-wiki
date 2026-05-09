# Event Calculus

A logic-based formalism (Kowalski & Sergot 1986; Shanahan's planner formulation 2000) for reasoning about events that initiate and terminate *fluents* — properties whose truth value changes over time. Events are described by `Initiates`, `Terminates`, `Happens`, `HoldsAt`, `Clipped`, and `Declipped` predicates plus a small set of axioms.

In the agent-communication strand it is used to give an executable, planner-driven semantics to commitment-based protocols: each commitment is a fluent, each communicative act an event with Initiates/Terminates clauses, and protocol runs are abductively generated from initial- and goal-state descriptions.

## In this vault
- [[Flexible Protocol Specification and Execution]]
- [[Commitment-Based Protocol]]
- [[Commitment-based Semantics]]
