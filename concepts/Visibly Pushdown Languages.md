# Visibly Pushdown Languages

Alur and Madhusudan's (2004) language class strictly between regular and deterministic context-free, in which input symbols are partitioned into *call*, *return*, and *internal* alphabets and the pushdown stack must push/pop in lock-step with call/return symbols. VPLs retain decidable inclusion, intersection, and equivalence — properties that general context-free languages lose — making them attractive for verifying structural contracts over hierarchical messages. [[CBCL - Safe Self-Extending Agent Communication]]'s shipped R5 shape-contract layer uses VPLs over expanded S-expressions to express decidable per-performative shape constraints while remaining within DCFL.

## In this vault
- [[CBCL - Safe Self-Extending Agent Communication]]
- [[Deterministic Context-Free Language]]
- [[LangSec]]
