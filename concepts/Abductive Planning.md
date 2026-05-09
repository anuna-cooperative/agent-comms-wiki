# Abductive Planning

Plan generation by *abductive* logical reasoning: given a domain theory (in our setting, the [[Event Calculus]] axioms plus protocol-specific Initiates/Terminates clauses), an initial state, and a goal-state description, the planner abduces a set of `Happens` events whose occurrence — together with the domain theory — entails the goal. Shanahan's 2000 abductive event-calculus planner is the canonical reference and is the engine Yolum & Singh use to generate flexible runs of commitment-based protocols.

## In this vault
- [[Event Calculus]]
- [[Flexible Protocol Specification and Execution]]
