# Realizability and Verification of MSC Graphs

**Reference:** Alur, R., Etessami, K. & Yannakakis, M. (2001). *Realizability and Verification of MSC Graphs.* In *Proc. 28th International Colloquium on Automata, Languages and Programming (ICALP 2001)*, Crete, Greece, LNCS 2076, pp. 797–808. Springer. DOI [10.1007/3-540-48224-5_65](https://doi.org/10.1007/3-540-48224-5_65). Journal version: *Theoretical Computer Science* 331(1):97–114, 2005, DOI [10.1016/j.tcs.2004.09.034](https://doi.org/10.1016/j.tcs.2004.09.034). [URL](https://www.cis.upenn.edu/~alur/Icalp01.pdf).

## Summary
A **Message Sequence Chart (MSC)** describes a single scenario of communication among distributed processes as a partial order over send/receive events; an **MSC-graph** (equivalently a high-level MSC, HMSC) composes individual MSCs through choice, concatenation and loops to describe a *set* of scenarios — an early, visual model of a system amenable to analysis. Alur, Etessami and Yannakakis ask the foundational question of *realizability*: given such a scenario-based specification, does there exist a distributed implementation (a collection of communicating automata, one per process, exchanging messages over channels) whose behaviours are **exactly** the scenarios the graph specifies — no more and no fewer?

The paper's central observation is that a distributed implementation is forced to exhibit **implied scenarios**: because each process sees only its own local events, any implementation of a set of MSCs also generates every scenario in the *closure* of that set, and these implied behaviours may not be in the original specification. This gap is the source of unrealizability (the classic culprit being *non-local choice*, where a branch is decided by one process but not communicated to others). The authors formalise two notions — **weak realizability** (the implementation's behaviours match the specification) and **safe realizability** (additionally the implementation is deadlock-free, so no implied behaviour gets stuck) — and settle their decidability and complexity. For **bounded** MSC-graphs, weak realizability is **undecidable**, whereas **safe realizability is decidable** (in EXPSPACE). They also study *verification*: to model-check an MSC-graph one must check not just the specified scenarios but the whole closure of implied scenarios that any implementation must include, and they chart the associated complexity.

## Key Ideas
- **MSC-graph / HMSC:** individual MSCs (partial orders over messaging events) composed via choice, sequencing and iteration to specify a set of scenarios.
- **Realizability question:** does a distributed implementation exist whose behaviour is *exactly* the specified set of scenarios?
- **Implied scenarios / closure:** local-only knowledge forces any implementation to also generate the closure of the specified MSCs; the extra behaviours are the obstacle to realizability.
- **Non-local choice:** a branch chosen by one process but invisible to others — the canonical reason a specification is unrealizable.
- **Weak vs. safe realizability:** weak = behaviours match; safe = behaviours match *and* the implementation is deadlock-free.
- **Decidability boundary:** for bounded MSC-graphs, weak realizability is undecidable while safe realizability is decidable (EXPSPACE).
- **Verification over the closure:** correct model-checking of an MSC-graph must account for implied behaviours, not only the drawn scenarios.

## Connections
- [[Message Sequence Charts]]
- [[Realizability]]
- [[Communicating Finite State Machines]]
- [[Deciding Choreography Realizability]]
- [[Message Sequence Charts - A Survey]]
- [[Multiparty Compatibility in Communicating Automata]]
- [[Knowledge of Choice]]
- [[Structured Communication-Centred Programming for Web Services]]
- [[Multiparty Asynchronous Session Types]]

## Conceptual Contribution
- **Claim:** Scenario-based specifications cannot in general be implemented verbatim: any distributed realization is forced to include *implied* scenarios beyond those drawn, so realizability is a non-trivial (sometimes undecidable) property that must be checked, not assumed.
- **Mechanism:** Model the specification as an MSC-graph, define its closure under local-knowledge-preserving behaviour, and separate *weak* from *safe* (deadlock-free) realizability; decide safe realizability of bounded graphs in EXPSPACE while showing weak realizability undecidable.
- **Concepts introduced/used:** [[Message Sequence Charts]], MSC-graph / HMSC, implied scenario, closure, non-local choice, weak vs. safe [[Realizability]].
- **Stance:** formal / theoretical (automata & complexity theory)
- **Relates to:** The distributed-systems root of the modern *realizability* line pursued for choreographies in [[Deciding Choreography Realizability]] and for [[Communicating Finite State Machines]] vs. global types in [[Multiparty Compatibility in Communicating Automata]]; surveyed alongside HMSC theory in [[Message Sequence Charts - A Survey]]. The "non-local choice" pathology is the same phenomenon that [[Knowledge of Choice]] addresses in [[Choreographic Programming]].

## Tags
#message-sequence-charts #realizability #communicating-automata #distributed-systems #verification #foundational
