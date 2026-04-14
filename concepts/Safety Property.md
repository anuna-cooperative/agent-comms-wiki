# Safety Property

A property of a program or distributed system asserting that "**nothing bad ever happens**" (Lamport 1977). Formally, a safety property is one whose violation can be witnessed by a *finite* execution prefix: once the bad state is entered, no future behaviour can undo it.

Examples: mutual exclusion, partial correctness, absence of null-pointer dereference, "contract balance never drops below escrowed amount." Dual: [[Liveness Property]] ("something good eventually happens"), whose violation requires an infinite trace.

Safety is semantically rich: on arbitrary programs, non-trivial safety properties are undecidable ([[Rice's Theorem]]). This is why [[House on Rock - LangSec in Ethereum Classic]] argues that gas metering (a resource bound, decidable) cannot substitute for a safety guarantee (semantic, undecidable).

## Tags
#verification #distributed-systems #safety-liveness
