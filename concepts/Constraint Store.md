## Constraint Store

In [[Concurrent Constraint Programming]], the shared monotonically-growing collection of partial-information constraints over shared variables that serves as the medium of inter-agent communication. Reading is by entailment query (`ask c ⊃ P` blocks until the store entails `c`); writing is by constraint addition (`tell c → P`, asynchronous). Information accumulates and is never retracted — the *monotonicity discipline* that makes CCP reason-friendly and intrinsically [[CALM Theorem|coordination-free]].

## In this vault
- [[Concurrent Constraint Programming]]
- [[Ask-Tell]]
- [[CALM Theorem]]
