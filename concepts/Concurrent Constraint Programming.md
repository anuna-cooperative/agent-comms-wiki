## Concurrent Constraint Programming

Saraswat's (1989) framework unifying concurrent computation, constraint solving, and declarative logic programming. Agents communicate via a shared monotonically-growing [[Constraint Store|constraint store]] using two primitives: [[Ask-Tell|tell]] (add a constraint, asynchronous) and [[Ask-Tell|ask]] (block until the store entails a query). Subsumes concurrent logic programming (Concurrent Prolog, GHC, Parlog), constraint logic programming (CLP), and process-calculus synchronisation patterns. Mozart/Oz is the canonical implementation.

## In this vault
- [[Concurrent Constraint Programming]]
- [[Constraint Store]]
- [[Ask-Tell]]
- [[Linda (coordination)]]
- [[CALM Theorem]]
- [[Bloom Language]]
