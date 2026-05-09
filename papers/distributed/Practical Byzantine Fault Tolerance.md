# Practical Byzantine Fault Tolerance

**Reference:** Castro, M. & Liskov, B. (1999). *Practical Byzantine Fault Tolerance*. In *3rd Symposium on Operating Systems Design and Implementation (OSDI '99)*, pp. 173–186, USENIX. Companion: Castro, M. (2001). *Practical Byzantine Fault Tolerance*. PhD thesis, MIT. Journal version: *ACM Transactions on Computer Systems* 20(4), pp. 398–461, 2002. [Open access PDF (MIT CSAIL)](https://pmg.csail.mit.edu/papers/osdi99.pdf) · [USENIX OSDI '99 page](https://www.usenix.org/conference/osdi-99/practical-byzantine-fault-tolerance) · [Journal version (BFT-TOCS)](http://www.pmg.csail.mit.edu/papers/bft-tocs.pdf)

## Summary
Castro and Liskov demonstrate that **Byzantine fault tolerance** — agreement among `3f+1` replicas in the presence of up to `f` arbitrarily faulty (malicious, buggy, compromised) nodes — can be made *practical*: their protocol, **PBFT**, achieves throughput within a small factor of unreplicated service for realistic workloads, where prior BFT protocols had been orders of magnitude slower. The protocol assumes the partial-synchrony model (eventual upper bound on message delay) for liveness; safety holds in fully asynchronous networks. The core protocol is a three-phase primary-backup scheme — **pre-prepare**, **prepare**, **commit** — driven by a designated primary (replica `p` such that `p ≡ v mod n` for view number `v`). The primary orders client requests; the prepare phase ensures `2f+1` replicas agree on the order in the current view; the commit phase ensures persistence across view changes. A **view change** protocol replaces the primary if it is suspected of failure: backups time out, exchange certified message logs, and elect the next primary; the new primary reconstructs the longest committed prefix from the received certificates. The two key engineering moves that make BFT practical are (1) MAC vectors (one symmetric MAC per recipient) instead of public-key signatures on every message — public-key crypto is reserved for view changes — and (2) a careful checkpoint-and-garbage-collect mechanism that bounds memory and accelerates recovery. The paper applies PBFT to a Byzantine-fault-tolerant NFS implementation; performance is within 3% of unreplicated NFS for realistic file-system workloads. PBFT inaugurated 25+ years of practical BFT research and is the direct ancestor of modern blockchain consensus protocols including Tendermint, [[HotStuff]], and Diem/Aptos's BFT family.

## Key Ideas
- *3f+1 replicas tolerate f Byzantine failures*: the standard BFT bound (Lamport, Shostak & Pease 1982) — needed because Byzantine replicas can equivocate, so a `2f+1` quorum (sufficient against crash failures) can be split if `f` Byzantine replicas vote opposite ways to two halves of the honest set.
- *Three-phase commit driven by a primary*: **pre-prepare** (primary assigns sequence number `n` to a request, broadcasts), **prepare** (each replica that accepts the pre-prepare broadcasts a prepare message; once `2f+1` prepare messages agree, the request is *prepared*), **commit** (each prepared replica broadcasts commit; once `2f+1` commit messages agree, the request is *committed* and executed).
- *View changes for primary failure*: when a backup times out without progress, it broadcasts a `view-change` message containing certified prepared / committed certificates from the previous view; the new primary (next in round-robin) collects `2f+1` view-change messages and constructs a `new-view` containing the prepared requests that must be re-executed.
- *MAC vectors instead of signatures*: every message carries a MAC for each recipient (computed under a pairwise symmetric key). One MAC is two orders of magnitude faster than a public-key signature; pairwise MACs are sufficient because Byzantine replicas cannot forge a MAC under a key they don't know.
- *Checkpoints and garbage collection*: every `K` requests, replicas take a checkpoint of state and broadcast a `checkpoint` message; once `2f+1` matching checkpoints exist (a *stable* checkpoint), older log entries can be discarded. Stable checkpoints also accelerate state transfer for recovering or lagging replicas.
- *Byzantine-fault-tolerant NFS*: end-to-end demonstration that BFT can be deployed in production-style systems with manageable performance overhead — essential evidence that BFT was *practical*, not just theoretically interesting.
- *Safety always, liveness under partial synchrony*: PBFT preserves safety (no two committed values disagree) under fully asynchronous networks; liveness requires partial synchrony (timeouts must eventually become accurate). FLP-compatible: the asynchronous gap is in liveness, not safety.

## Connections
- [[Practical Byzantine Fault Tolerance]]
- [[Byzantine Fault Tolerance]]
- [[The Part-Time Parliament]]
- [[In Search of an Understandable Consensus Algorithm]]
- [[Impossibility of Distributed Consensus with One Faulty Process]]
- [[HotStuff]]
- [[PBFT]]
- [[View Change]]
- [[Byzantine Agreement]]
- [[Distributed Consensus]]
- [[Replicated State Machine]]
- [[Brewers Conjecture and the Feasibility of Consistent Available Partition-Tolerant Web Services]]

## Conceptual Contribution
- **Claim:** Byzantine fault tolerance can be made *practical* (within a small factor of unreplicated performance) by combining a three-phase primary-backup protocol with view-change recovery, MAC vectors instead of public-key signatures on the common path, and checkpoint-driven garbage collection. Safety holds in asynchronous networks; liveness requires partial synchrony.
- **Mechanism:** Primary-backup protocol with `3f+1` replicas; three phases (pre-prepare, prepare, commit) each requiring `2f+1`-strong quorum certificates; view-change protocol triggered by backup timeouts, electing the next primary by round-robin; MAC vectors with public-key crypto reserved for view changes; periodic stable checkpoints for log truncation and state transfer.
- **Concepts introduced/used:** [[PBFT]], [[Byzantine Agreement]], [[View Change]], MAC Vector, Stable Checkpoint, `3f+1` Quorum, Partial Synchrony.
- **Stance:** systems-engineering paper / dissertation summary.
- **Relates to:** Implements [[Byzantine Agreement|Byzantine agreement]] (Lamport, Shostak & Pease 1982 / Pease, Shostak & Lamport 1980) practically. Subject to the same [[Impossibility of Distributed Consensus with One Faulty Process|FLP impossibility]] as crash-fault consensus, with the same partial-synchrony resolution. Pre-blockchain, BFT was largely a theoretical curiosity; PBFT proved deployment viable, but it took the explicit blockchain-as-economic-system framing of Bitcoin (Nakamoto 2008, not in vault) and especially of Tendermint (Buchman 2016) to drive industrial BFT adoption. Direct ancestor of [[HotStuff]] (Yin et al. 2019), which inherits PBFT's three-phase structure but achieves *linear* communication complexity (vs PBFT's quadratic) and *responsiveness* (no waiting for max network delay during normal operation). PBFT-style three-phase protocols underlie the consensus layers of Diem / Aptos, much of Hyperledger Fabric, and (with adaptations) Cosmos SDK chains. Compared to [[Raft]] / multi-Paxos: PBFT tolerates *malicious* nodes at the cost of `3f+1` replicas (vs `2f+1`), three communication phases (vs two), and quadratic message complexity (vs linear); for crash-only environments Raft is simpler and faster.

## Tags
#consensus #byzantine-fault-tolerance #pbft #castro #liskov #distributed-systems #foundations
