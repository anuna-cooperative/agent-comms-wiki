# Bloom Language

Declarative, Dedalus-based language for distributed programming (Alvaro, Conway, Hellerstein, Marczak) in which state is modelled as relations and computation as monotonic rules over them. Bloom ships a **syntactic monotonicity check** — programs written in the monotonic subset are guaranteed by the **[[CALM Theorem]]** to be eventually consistent and coordination-free.

Non-monotone operators (`<-`, aggregates over closed sets, deletions) are visible at the type level, giving the programmer / compiler a "bright line" for where coordination is required.

## In this vault
- [[Keeping CALM - When Distributed Consistency is Easy]]
- [[CALM Theorem]]
- [[Dedalus]]
- [[Monotonic Logic]]
- [[Coordination Avoidance]]
- [[Relational Transducer]]
