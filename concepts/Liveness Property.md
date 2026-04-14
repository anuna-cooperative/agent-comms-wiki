# Liveness Property

A property of a program or distributed system asserting that "**something good eventually happens**" (Lamport 1977; Alpern & Schneider 1985). Unlike a [[Safety Property]], a liveness property cannot be falsified by any finite prefix — one must observe (or reason about) infinite behaviours.

Examples: eventual delivery ("every sent message is eventually received"), progress ("every enabled thread eventually runs"), termination ("every well-formed input produces output"). Proving liveness typically requires a *well-founded ordering* or a *fairness assumption*.

Alpern–Schneider's decomposition theorem: every trace property is the intersection of a safety property and a liveness property. This factoring structures verification: safety is proved by invariants, liveness by well-founded descent or fairness-conditioned reasoning.

## Tags
#verification #distributed-systems #safety-liveness
