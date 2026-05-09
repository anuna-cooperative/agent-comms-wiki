## Ask-Tell

The two communication primitives of [[Concurrent Constraint Programming]]. **Tell** `c → P` (Saraswat's *atomic tell*) adds constraint `c` to the [[Constraint Store|constraint store]] *if* it is consistent with what is already there, then continues as `P`; the simpler *eventual tell* variant adds unconditionally without consistency-checking. **Ask** `c ⊃ P` blocks until the store entails `c`, then continues as `P` — synchronous on entailment. All other concurrency operators (parallel composition, choice, hiding, recursion) are built from ask, tell, and the algebraic structure of the constraint system.

## In this vault
- [[Concurrent Constraint Programming]]
- [[Constraint Store]]
