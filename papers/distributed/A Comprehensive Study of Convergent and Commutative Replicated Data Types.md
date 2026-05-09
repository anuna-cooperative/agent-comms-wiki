# A Comprehensive Study of Convergent and Commutative Replicated Data Types

**Reference:** Shapiro, M., Preguiça, N., Baquero, C. & Zawirski, M. (2011). *INRIA Research Report RR-7506*, January 2011. (Subsequently SSS 2011 — *Stabilization, Safety, and Security of Distributed Systems*, LNCS 6976: 386–400.) Source file: `shapiro-crdts-rr7506.pdf`. [URL](https://hal.inria.fr/inria-00555588)

## Summary
Shapiro, Preguiça, Baquero and Zawirski give the canonical formal account of *Conflict-free Replicated Data Types* (CRDTs) — replicated objects whose replicas can be updated concurrently without coordination, and which converge to a deterministic value once all updates have propagated. The paper distinguishes two equivalent specification styles: **state-based / Convergent Replicated Data Types (CvRDTs)**, where each replica's state forms a join-semilattice and replicas merge by joining states; and **operation-based / Commutative Replicated Data Types (CmRDTs)**, where operations are designed to commute pairwise so that any delivery order yields the same final state under causal broadcast. They prove the two styles equivalent in expressive power and characterise *Strong Eventual Consistency* (SEC): the stronger sibling of eventual consistency in which all replicas that have received the same set of updates are *immediately* identical, with no need to wait for the system to "calm down."

The paper catalogues a library of CRDTs spanning counters (G-Counter, PN-Counter), registers (LWW-Register, MV-Register), sets (G-Set, 2P-Set, OR-Set, LWW-element-Set), maps, sequences, and graphs, together with the design patterns (tombstones, version vectors, causal histories) that make them work. A separate axis treats *delta-CRDTs* and bandwidth-efficient propagation. The result is the foundational reference for coordination-free replicated state — adopted across Riak, Redis, Soundcloud's Roshi, Akka, Automerge, and Yjs, and one of the two pillars (alongside the [[CALM Theorem]]) of the contemporary "consistency without coordination" programme.

## Key Ideas
- *State-based (CvRDT)*: replica state is a join-semilattice; updates are monotone state transitions; merge is lattice join. SEC follows automatically from associativity, commutativity, idempotence of join and monotonicity of updates.
- *Operation-based (CmRDT)*: replicas exchange operations rather than states; operations must commute pairwise; causal broadcast plus commutativity yields SEC.
- *Equivalence theorem*: every state-based CRDT can be expressed op-based, and vice versa, under appropriate delivery assumptions.
- *Strong Eventual Consistency (SEC)*: all replicas that have observed the same updates are byte-identical, regardless of order — strictly stronger than classical eventual consistency.
- *CRDT zoo*: G-Counter, PN-Counter (counters); LWW-Register, MV-Register (registers); G-Set, 2P-Set, OR-Set, Add-Wins/Remove-Wins Sets (sets); OR-Map, RGA, LSEQ (maps and sequences); Add-only Graph (graphs). Each design choice corresponds to a different conflict-resolution policy made explicit.
- *Tombstones*: a standard pattern for monotonising removal — instead of forgetting a removed element, mark it removed (a monotone state change).
- *Causal-broadcast assumption*: op-based CRDTs require the network layer to deliver operations in causal order; state-based CRDTs make weaker assumptions.

## Connections
- [[CRDTs]]
- [[Keeping CALM - When Distributed Consistency is Easy]]
- [[Logic and Lattices for Distributed Programming]]
- [[Relational Transducers for Declarative Networking]]
- [[CALM Theorem]]
- [[Confluence]]
- [[Tombstones]]
- [[Time Clocks and the Ordering of Events in a Distributed System]]
- [[Knowledge and Common Knowledge in a Distributed Environment]]
- [[Brewers Conjecture and the Feasibility of Consistent Available Partition-Tolerant Web Services]]
- [[Coordination Avoidance]]
- [[Immutable Data Structures]]
- [[Monotonic Logic]]
- [[CBCL - Safe Self-Extending Agent Communication]]

## Conceptual Contribution
- **Claim:** Replicated objects can converge deterministically without coordination iff their state forms a join-semilattice with monotone updates (state-based) or their operations pairwise commute under causal delivery (op-based); the two styles are equivalent in expressive power and together yield *Strong Eventual Consistency*, a precise formal target for replicated data structures that is strictly stronger than classical eventual consistency.
- **Mechanism:** Formalise replica state as a join-semilattice; prove SEC follows from join-associativity / -commutativity / -idempotence plus monotone updates; characterise op-based CRDTs via pairwise operation commutativity under causal broadcast; prove state-based and op-based formulations equivalent. Catalogue counters, registers, sets, maps, and sequences as instances; document tombstones, version vectors, and causal histories as recurring design patterns.
- **Concepts introduced/used:** [[CRDTs]], [[Strong Eventual Consistency]], join-semilattice, [[Tombstones]], [[Version Vector]], [[Causal Broadcast]], [[Eventual Consistency]], [[CAP Theorem]]
- **Stance:** foundational / formal-systems
- **Relates to:** Foundational reference for [[CRDTs]] across the contemporary distributed-systems stack; the lattice-theoretic substrate that [[Logic and Lattices for Distributed Programming]] (Conway et al. 2012) lifts into a programming-language type system, and that [[Keeping CALM - When Distributed Consistency is Easy]] (Hellerstein & Alvaro 2019) generalises into the [[CALM Theorem]]. Where CALM gives the *theorem* (monotone ⇔ coordination-free) and BloomL gives a *language*, this paper gives the *data structures*: a catalogue of CRDTs that designers can drop into a coordination-free system. The G-Set / OR-Set / version-vector vocabulary is what [[CBCL - Safe Self-Extending Agent Communication]]'s SPEC-003 message-store lattice and SPEC-002 causal-protocol layer use directly. Pairs with [[Time Clocks and the Ordering of Events in a Distributed System]] (Lamport 1978) on the causal-history side and with [[Brewers Conjecture and the Feasibility of Consistent Available Partition-Tolerant Web Services]] on the impossibility-result side: where CAP says you can't have all three of consistency, availability, and partition-tolerance for *arbitrary* programs, CRDTs identify a class of programs (those whose state lives in a join-semilattice) for which all three coexist.

## Tags
#distributed-systems #crdts #consistency #lattices #replication #foundational #strong-eventual-consistency
