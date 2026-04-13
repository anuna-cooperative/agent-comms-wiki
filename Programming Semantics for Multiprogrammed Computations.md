# Programming Semantics for Multiprogrammed Computations

## Reference

Dennis, Jack B.; Van Horn, Earl C. "Programming Semantics for Multiprogrammed Computations." *Communications of the ACM*, 9(3):143-155, March 1966. [URL](https://www.princeton.edu/~rblee/ELE572Papers/Fall04Readings/ProgramSemantics_DennisvanHorn.pdf)

## Summary

The Dennis & Van Horn paper is the origin point of the capability concept in computer science. Written during the Project MAC era and responding to the needs of multiprogrammed, multi-user systems like MULTICS and the SABRE reservation system, it defines a set of *meta-instructions* that a supervisor provides to user programs to express the five core requirements of multiprogrammed computation: (1) parallel processing; (2) creating, suspending, and resuming computations; (3) protection of a computation from other computations; (4) debugging support; and (5) shared access to data and procedures.

The paper's lasting contribution is the introduction of the *capability* (called a C-list entry) as the fundamental access-control primitive. A capability is an unforgeable pair of a unique-name (naming a segment or other object) and an access-indicator (X, R, RW, RWX) that determines what may be done with the object. A computation's *sphere of protection* is defined precisely by its C-list. Crucially, a process cannot name a resource it has no capability for - designation and authority are unified. The paper introduces *principals* (the human or organisational accountability unit), *processes* as loci of execution, and the meta-instructions for fork/join, lock/unlock, I/O function invocation, and capability transfer.

This is the paper that every later capability system - Plessey 250, CAP, KeyKOS, EROS, seL4, E, Spritely - is ultimately paying tribute to. It is also striking how many apparently recent ideas (unforgeable references, segment-level fine-grained protection, per-process authority sets, mutually suspicious processes on one machine) are already present here in 1966.

## Key Ideas

- **Capability** as an unforgeable (unique-name, access-indicator) pair; the first definition in the literature.
- **C-list** per process: the exhaustive list of a computation's authorities.
- **Sphere of protection** = closure of what a process can name and do via its C-list.
- **Principal** vs **process**: accountability vs. execution.
- **Meta-instructions** as the supervisor's API for computations: fork, join, quit, lock, unlock, execute i/o function, create segment, enter block, etc.
- **Multiprogramming as access-control problem**: protection, sharing, and scheduling are one design problem, not three.
- **Designation and authority unified**: a name in a program is dereferenced through the C-list, so "unknown" resources are also "unreachable" - the ancestral seed of "no designation without authority."
- **Mutually suspicious computations** as a first-class goal.

## Connections

- [[The Heart of Spritely - Distributed Objects and Capability Security]]
- [[Capability Security]] - this is the paper that invents the concept.
- [[Object Capability Security]] - Miller-era ocap refines Dennis & Van Horn's C-list into object references.
- [[E Language]] - E's reference-passing rules are a memory-safe OO realisation of Dennis-Van-Horn C-lists.
- [[CapTP]]
- [[Ambient Authority]] - designation-without-authority, which ambient-authority systems permit, is precisely what this paper eliminates by construction.
- [[Confused Deputy]] - Hardy's 1988 paper points back to Dennis & Van Horn as the road not taken.
- [[Principle of Least Authority]] - C-lists make POLA expressible at segment granularity.
- [[Distributed Security]]
- [[Security Kernel Lambda Calculus]]
- [[A Universal Modular Actor Formalism for Artificial Intelligence]] - Hewitt's actors and Dennis-Van-Horn capabilities are parallel 1960s-70s answers to concurrent computation; Miller's E later unifies them.
- [[Actor Model]]
- [[Vat Model]]

## Conceptual Contribution

> A multiprogrammed computer system is cleanly described by giving each computation a *sphere of protection* - a capability list enumerating the specific objects (segments, procedures, i/o devices) it may name and the operations it may perform on them - together with a small set of meta-instructions for creating, passing, and revoking these capabilities. This single idea reduces protection, sharing, naming, and scheduling to one coherent design.

## Tags

#capability-security #origins #1966 #cacm #multiprogramming #project-mac #dennis-van-horn #foundational #access-control #protection #c-list #spheres-of-protection
