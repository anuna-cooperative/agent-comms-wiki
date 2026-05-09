# HotStuff: BFT Consensus with Linearity and Responsiveness

**Reference:** Yin, M., Malkhi, D., Reiter, M. K., Gueta, G. G. & Abraham, I. (2019). *HotStuff: BFT Consensus with Linearity and Responsiveness*. In *Proceedings of the 2019 ACM Symposium on Principles of Distributed Computing (PODC '19)*, pp. 347–356. (Earlier arXiv: 1803.05069.) [ACM DOI](https://doi.org/10.1145/3293611.3331591) · [Open access PDF (arXiv:1803.05069)](https://arxiv.org/pdf/1803.05069)

## Summary
Yin, Malkhi, Reiter, Gueta and Abraham introduce **HotStuff**, a Byzantine-fault-tolerant consensus protocol with two new properties beyond [[Practical Byzantine Fault Tolerance|PBFT]]: **linearity** (communication complexity is `O(n)` per consensus decision in both the common case and view change, vs PBFT's `O(n²)` view change) and **responsiveness** (a non-faulty leader drives consensus at the speed of the actual network, with no need to wait out a maximum-delay timeout in the common case). The simplification rests on three moves. (1) HotStuff replaces the all-to-all communication of PBFT's prepare/commit phases with **threshold signatures**: each replica sends its vote to the leader, the leader aggregates `2f+1` votes into a single threshold-signature *quorum certificate* (QC), and broadcasts the QC. (2) HotStuff structures a single decision as a *chain* of QCs through three phases — **prepare**, **pre-commit**, **commit** — each requiring a QC from the previous phase. The three-chain structure subsumes view change: a leader simply *extends the chain* on takeover, and the third QC in the chain commits not only its own block but earlier ones too. (3) HotStuff makes view change *symmetric* with the common case — both are leader-driven QC chains, eliminating PBFT's separate view-change protocol. The paper additionally introduces a **chained HotStuff** variant in which a single leader proposal in view `v` simultaneously serves as the prepare for block `b_v`, pre-commit for `b_{v-1}`, and commit for `b_{v-2}`, achieving full pipelining at one block per view. Chained HotStuff is the consensus core of Diem (formerly Libra), Aptos, Sui (Mysticeti is descended from HotStuff), and many other modern PoS blockchain systems; the unchained version underlies Cypherium and several enterprise BFT deployments.

## Key Ideas
- *Linearity via threshold signatures*: instead of `O(n²)` all-to-all message exchanges per phase, each phase becomes `O(n)`: votes flow `n→1` to the leader, certificates flow `1→n` from the leader. The threshold-signature QC carries a single proof that `2f+1` distinct replicas voted, with constant size.
- *Three-chain commit*: a block is *prepared* on the first QC, *pre-committed* on a QC for its prepare-QC, and *committed* on a QC for its pre-commit-QC. The three-chain structure gives both safety (commits cannot be undone across views) and a uniform mechanism that absorbs view change.
- *Responsiveness*: in the common case, a non-faulty leader drives consensus at the rate of actual network message delivery, not a worst-case timeout. PBFT and other earlier BFT protocols were *non-responsive* — view change required waiting out a maximum-delay timer.
- *Chained pipelining*: a single leader-proposed message in view `v` can serve as prepare for `b_v`, pre-commit for `b_{v-1}`, and commit for `b_{v-2}` — three commits per leader rotation. The picture is a single chain of blocks each carrying a parent QC.
- *View synchroniser as separate concern*: HotStuff factors out view-numbering / leader-rotation into an abstract *Pacemaker*; the consensus core operates on whatever view `v` the Pacemaker certifies. Different deployments can plug in different Pacemakers (round-robin, reputation-weighted, randomised).
- *Safety unconditional, liveness under partial synchrony*: as with [[PBFT]], HotStuff preserves safety under any network behaviour and requires partial synchrony (eventual upper bound on message delay) for liveness — FLP-compatible.
- *Industrial deployment*: chained HotStuff is the consensus core of Diem/Aptos (DiemBFT, AptosBFT) and a direct ancestor of Sui's Mysticeti and many recent BFT-PoS systems. Conceptually it is the contemporary successor of PBFT.

## Connections
- [[HotStuff]]
- [[Practical Byzantine Fault Tolerance]]
- [[PBFT]]
- [[Byzantine Fault Tolerance]]
- [[Byzantine Agreement]]
- [[View Change]]
- [[Distributed Consensus]]
- [[Threshold Signature]]
- [[Quorum Certificate]]
- [[Pipelined BFT]]
- [[Chained Consensus]]
- [[Replicated State Machine]]
- [[The Part-Time Parliament]]
- [[In Search of an Understandable Consensus Algorithm]]

## Conceptual Contribution
- **Claim:** A Byzantine-fault-tolerant consensus protocol can be made *linear* in communication complexity (per decision, including view change) and *responsive* in the common case by combining threshold-signature quorum certificates with a uniform three-chain commit structure that subsumes view change. Pipelined as *chained HotStuff*, the protocol commits one block per leader rotation.
- **Mechanism:** Three-phase commit (prepare / pre-commit / commit), each phase producing a single threshold-signature QC; chain of QCs across views; commit of a QC commits its grandparent; abstract Pacemaker for view synchronisation; chained variant pipelines three views into a single message per leader.
- **Concepts introduced/used:** [[HotStuff]], [[Threshold Signature]], [[Quorum Certificate]], Three-Chain Commit, [[Pipelined BFT]], [[Chained Consensus]], Pacemaker, Responsiveness, Linearity (BFT).
- **Stance:** systems-engineering paper / theoretical advance over PBFT.
- **Relates to:** Direct successor of [[Practical Byzantine Fault Tolerance|PBFT]] in the BFT lineage — same `3f+1` quorum bound, same partial-synchrony assumption for liveness, but `O(n)` communication and responsive view change. Uses the same FLP-compatible safety/liveness factoring as Paxos / Raft / PBFT. Threshold signatures (Boneh, Lynn & Shacham 2001 / Boldyreva 2002, in the BLS lineage) are the cryptographic primitive that makes linearity possible — the protocol structure existed in earlier work but was rarely deployable until BLS made aggregation cheap. Industrial significance: the consensus core of essentially every BFT-style blockchain shipped after 2019 is HotStuff or a HotStuff variant, including Diem/Aptos, Sui (Mysticeti), Linera, Espresso, several Cosmos SDK chains, and many enterprise BFT-PoS systems. The contemporary successor work — Bullshark, Narwhal+Tusk, Mysticeti, Jolteon — adds DAG-based mempool, asynchronous safety, and various liveness optimisations on the HotStuff substrate. Within this vault HotStuff completes the [[The Part-Time Parliament|Paxos]] → [[In Search of an Understandable Consensus Algorithm|Raft]] → [[PBFT]] → HotStuff lineage that runs from the original consensus theory through engineering accessibility through Byzantine generalisation through linear-and-responsive Byzantine generalisation — the "core sequence" any agent system that needs durable, replicated, fault-tolerant coordination ought to know.

## Tags
#consensus #byzantine-fault-tolerance #hotstuff #pipelined-consensus #threshold-signatures #blockchain #foundations
