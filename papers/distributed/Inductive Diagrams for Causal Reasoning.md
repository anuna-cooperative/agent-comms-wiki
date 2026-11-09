# Inductive Diagrams for Causal Reasoning

**Reference:** Jonathan Castello, Patrick Redmond & Lindsey Kuper (2024). *PACMPL* 8 (OOPSLA1), article 113, 26 pages. [DOI](https://doi.org/10.1145/3649830). [arXiv:2307.10484v2](https://arxiv.org/abs/2307.10484v2), 14 May 2024; first submitted July 2023. [PDF](https://arxiv.org/pdf/2307.10484).

## Summary

**Causal separation diagrams (CSDs)** give concurrent execution histories an inductive representation suited to mechanized proofs. Inspired by Lamport diagrams, string diagrams, and concurrent separation logic, they encode causal relationships as dependent types of information-flow paths.

Rather than reconstructing causality from axioms, proofs can follow the diagram's structure. The authors interpret diagrams into paths, clocks, and proofs, obtaining a generic clock-condition theorem and verified scalar, vector, and matrix clock implementations in Agda.

## Key Ideas

- Histories are acyclic by construction.
- Sites represent state, encompassing both processes and messages; fork/join steps split or combine sites.
- A causal path witnesses how information travels between events.
- Clock correctness is parametric in suitable increment and merge operations.
- The clock condition preserves causal ordering in timestamps; it does not by itself establish the converse for every clock.

## Connections

- [[Time Clocks and the Ordering of Events in a Distributed System]] — foundational happens-before relation and clock condition.
- [[Concurrency]]
- [[Causal Broadcast]] — related application of causal ordering.
- [[Distributed Snapshots Determining Global States of Distributed Systems]] — consistent cuts and global histories.
- [[Program Verification]]
- [[Can You Keep a Secret - A New Protocol for Sender-Side Enforcement of Causal Message Delivery]] — compare concrete enforcement of delivery order.

## Conceptual Contribution

- **Claim:** Inductive histories simplify mechanized causal reasoning.
- **Mechanism:** Compositional interpretations of CSDs and path witnesses.
- **Concepts introduced/used:** CSDs, causal paths, logical clocks, [[Concurrency]].
- **Stance:** formal distributed systems / mechanized semantics.
- **Relates to:** Gives the vault's Lamport lineage a constructive proof framework.

## Tags

#distributed-systems #causality #logical-clocks #agda #formal-verification #oopsla
