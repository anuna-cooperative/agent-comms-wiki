# A Calculus of Communicating Systems

**Reference:** Milner, R. (1980). *A Calculus of Communicating Systems*. Lecture Notes in Computer Science 92, Springer-Verlag. Companion paper: Milner, R. (1989). *Communication and Concurrency*. Prentice Hall. [Springer (LNCS 92)](https://doi.org/10.1007/3-540-10235-3) · [Edinburgh Research Explorer](https://www.research.ed.ac.uk/en/publications/a-calculus-of-communicating-systems) (Citation only — book.)

## Summary
Milner introduces **CCS**, the first algebraic process calculus to make synchronisation rather than shared state the foundation of concurrency. A CCS process is built from action prefix (`a.P`), summation (`P + Q`), parallel composition (`P | Q`), restriction (`P \ L`), relabelling (`P[f]`), and (constant) recursion. Communication is **synchronous handshake** between complementary actions `a` and `ā` — paired transitions yield a silent τ. The technical heart of the monograph is the development of **observational equivalence** (later refined by Park into [[Bisimulation|bisimulation]]) as a behavioural equivalence preserved by all CCS contexts: two processes are equivalent iff they can match each other's transitions step-for-step. Earlier Milner had developed the equivalence over **synchronisation trees** — tree unfoldings of the LTS — and shown that CCS is sound and complete for *strong* equivalence given a finite axiomatisation. The calculus served as the workhorse for ten years of process-algebra research and is the direct predecessor of the [[Pi-Calculus]], which lifted CCS's fixed-topology assumption by making channel names mobile values. The 1989 *Communication and Concurrency* book is the more polished re-presentation that most readers cite.

## Key Ideas
- *Synchronous handshake as the primitive*: complementary actions on a shared name produce a silent step; concurrency is communication, not interleaving over a heap.
- *Algebraic, not denotational*: the meaning of a CCS term is given by its position in an equational theory under bisimulation, not by translation into a domain. Laws like `P + 0 = P`, `(P | Q) | R = P | (Q | R)`, and the *expansion law* (`P | Q` distributes over a sum of all possible synchronisations) form the calculational kit.
- *Synchronisation tree*: the LTS unfolded as an action-labelled tree; equivalences over LTSs lift to equivalences over trees.
- *Observational equivalence ≈ bisimulation*: invented and refined within the CCS programme; the standard behavioural equivalence ever since.
- *Restriction `P \ L`*: hides a set of action names from the environment, forcing them to synchronise *within* `P` — this is what later inspires π's `(νx)` binder, generalised to fresh names.
- *Recursion via constants*: rather than fix-point operators, CCS uses named process equations `A ≜ a.A`, simpler to manipulate algebraically.
- *Limitations that motivate π*: communication topology is fixed at a process's birth — there is no way for `a.P` to communicate `b` to a peer who could then use `b` to communicate further. This restriction is exactly what name-passing in π lifts.

## Connections
- [[Pi-Calculus]]
- [[A Calculus of Mobile Processes]]
- [[Communicating Sequential Processes]]
- [[Bisimulation]]
- [[Process Calculi]]
- [[Synchronisation Tree]]
- [[Observational Equivalence]]
- [[Algebra of Communicating Processes]]
- [[Structured Operational Semantics]]
- [[Programming Erlang Second Edition]]
- [[A Universal Modular Actor Formalism for Artificial Intelligence]]

## Conceptual Contribution
- **Claim:** Concurrency can be developed as an algebraic theory of synchronisation in which the meaning of a process is determined by an observational equivalence preserved under all contexts; communication, not shared state, is the right primitive.
- **Mechanism:** A small term language (prefix, sum, parallel composition, restriction, relabelling, named recursion); structural-operational-semantics rules deriving a labelled transition system; observational equivalence (≈ bisimulation) preserved by all syntactic contexts, with a complete equational axiomatisation in the finite case.
- **Concepts introduced/used:** [[CCS]], [[Synchronisation Tree]], [[Observational Equivalence]], [[Bisimulation]], [[Process Calculi]], [[Structured Operational Semantics]] (developed by Plotkin in dialogue with the CCS programme).
- **Stance:** foundational technical monograph.
- **Relates to:** Sibling of [[Communicating Sequential Processes]] (Hoare 1978), which uses an event-trace semantics and refinement orderings rather than bisimulation. Direct ancestor of the [[Pi-Calculus]] ([[A Calculus of Mobile Processes]]) which keeps the algebraic methodology but lifts the topology restriction. The actor-model line ([[A Universal Modular Actor Formalism for Artificial Intelligence|Hewitt 1973]], realised industrially in Erlang) takes asynchronous, mailbox-based messaging as primitive — historically opposed to CCS's synchronous handshake but reconciled in asynchronous π and the [[Join Calculus]]. CCS supplies the underlying behavioural-equivalence machinery used (often implicitly) when reasoning about [[Conversation Policy]] equivalence in the ACL literature: two protocols are "the same" iff they bisimulate.

## Tags
#process-calculi #ccs #milner #concurrency #foundations #bisimulation #synchronisation
