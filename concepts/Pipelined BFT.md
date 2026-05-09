## Pipelined BFT

Optimisation in which the phases of a multi-phase BFT consensus protocol overlap across consecutive blocks: while block `b_v` is in its prepare phase, block `b_{v-1}` is in pre-commit and `b_{v-2}` is in commit. *Chained* [[HotStuff]] is the canonical example — each leader proposal serves three phases for three different blocks, achieving one commit per leader rotation. The pipelining requires careful safety arguments because rollback in one block can cascade; HotStuff's three-chain commit structure makes the argument tractable.

## In this vault
- [[HotStuff]]
- [[Chained Consensus]]
