# In Search of an Understandable Consensus Algorithm (Extended Version)

**Reference:** Ongaro, D. & Ousterhout, J. (2014). *In Search of an Understandable Consensus Algorithm*. In *2014 USENIX Annual Technical Conference (USENIX ATC '14)*, pp. 305–319. (Extended version on arXiv: 1404.4097.) Companion: Ongaro, D. (2014). *Consensus: Bridging Theory and Practice*. PhD thesis, Stanford University. [Open access PDF (raft.github.io)](https://raft.github.io/raft.pdf) · [project home](https://raft.github.io/) · [arXiv:1404.4097 (extended)](https://arxiv.org/abs/1404.4097)

## Summary
Ongaro and Ousterhout introduce **Raft**, a consensus algorithm for replicated state machines that is *equivalent in fault-tolerance and performance to multi-Paxos but designed primarily for understandability*. The paper opens with the observation that despite Paxos's status as the canonical consensus algorithm ([[The Part-Time Parliament|Lamport 1998]]), it has consistently proved difficult for students and engineers to learn, reason about, and implement correctly: Lamport's Paxos description is famously oblique, derivative explanations diverge, and most production "Paxos" implementations are actually significantly different algorithms. Raft is a deliberate engineering response to this state of affairs. It decomposes consensus into three relatively independent sub-problems — **leader election**, **log replication**, and **safety** — and adds an explicit *strong leader* discipline (logs flow only from leader to followers, never the reverse) plus a *log-matching* invariant that simplifies the consistency argument. Cluster membership changes are handled by a single-server-at-a-time approach (joint consensus is presented as the more general alternative). The paper includes a user study comparing student understanding of Raft against Paxos: across two universities, Raft scored substantially higher on comprehension tests after equivalent teaching time. Ongaro's PhD thesis adds detail on snapshotting, log compaction, and client interaction. Raft is now the consensus algorithm of choice in the systems community: etcd (Kubernetes), CockroachDB, TiKV, Consul, RethinkDB, and many others use Raft directly; the algorithm is taught in distributed-systems courses worldwide. The paper deliberately demotes formal-verification rigour in favour of operator and engineer accessibility — a methodological stance with its own descendants in the systems literature.

## Key Ideas
- *Three sub-problems*: **leader election** (timeout-driven elections with randomised timeouts to break ties), **log replication** (leader appends entries and replicates to a majority), **safety** (committed entries must persist; only up-to-date candidates can win elections).
- *Strong leader*: at any moment at most one leader exists per term; followers passively accept the leader's appends. All client requests go through the leader; logs flow only leader→follower. This rules out an entire class of Paxos's apparent symmetry.
- *Election restriction*: a candidate's vote request is rejected by any voter whose log is *more up-to-date* (longer term, or same term and longer index). Combined with majority voting, this guarantees that any newly elected leader contains all previously committed entries.
- *Log-matching invariant*: if two logs contain an entry with the same index *and* term, then they are identical in all entries up to and including that index. This is enforced by the replication protocol (followers reject appends inconsistent with their last entry) and is the key property simplifying the safety argument.
- *Membership changes via joint consensus*: to safely move from cluster `C_old` to `C_new`, the leader appends a *joint* configuration `C_old,new` that requires majorities of *both* configurations to commit; once committed, the leader appends the final `C_new`. (The thesis presents the simpler single-server-at-a-time method.)
- *Explicit terms as logical clocks*: every server maintains a current term number; communications carry the sender's term, and any server with a stale term steps down. Terms eliminate stale-leader pathologies that Paxos handles less directly.
- *Comprehensibility-as-design-criterion*: the user-study results are presented as a primary contribution — the explicit thesis that algorithm design should weight understandability as it would performance or fault-tolerance.
- *Production realities*: snapshotting for log compaction, linearizable read leases for read-only requests, client session-IDs for at-most-once semantics — covered in the thesis and absorbed into the standard Raft implementation patterns.

## Connections
- [[The Part-Time Parliament]]
- [[Impossibility of Distributed Consensus with One Faulty Process]]
- [[Brewers Conjecture and the Feasibility of Consistent Available Partition-Tolerant Web Services]]
- [[Time Clocks and the Ordering of Events in a Distributed System]]
- [[Practical Byzantine Fault Tolerance]]
- [[HotStuff]]
- [[Raft]]
- [[Leader Election]]
- [[Log Replication]]
- [[Distributed Consensus]]
- [[Replicated State Machine]]
- [[Byzantine Fault Tolerance]]
- [[CAP Theorem]]

## Conceptual Contribution
- **Claim:** A consensus algorithm equivalent in fault-tolerance and performance to multi-Paxos can be designed primarily for *understandability* by decomposing consensus into independent sub-problems (leader election / log replication / safety), enforcing a strong-leader discipline, and adding a log-matching invariant; understandability should be a first-class design criterion alongside fault-tolerance and performance.
- **Mechanism:** Strong-leader replicated-state-machine architecture; randomised election timeouts; AppendEntries RPC carrying previous-entry index+term so followers can reject inconsistent appends; vote-restriction by log up-to-date-ness; joint-consensus membership changes; user-study evaluation on graduate students.
- **Concepts introduced/used:** [[Raft]], [[Leader Election]], [[Log Replication]], Strong Leader, Log Matching Invariant, Joint Consensus, Term (as logical clock), Election Restriction.
- **Stance:** systems-engineering paper with a methodological thesis (understandability as design criterion).
- **Relates to:** Equivalent in capability to (multi-)[[The Part-Time Parliament|Paxos]] (Lamport 1998 / 2001), explicitly and pointedly so — Raft is the *re-presentation* of Paxos's solution space under a different organising principle. Subject to the same [[Impossibility of Distributed Consensus with One Faulty Process|FLP impossibility result]] (Fischer, Lynch & Paterson 1985) and the same [[CAP Theorem]] trade-offs as Paxos: Raft chooses CP over AP in a network partition, sacrificing availability of the minority side. Crash-fault-tolerant only — Byzantine variants ([[Practical Byzantine Fault Tolerance|PBFT]], [[HotStuff]]) tolerate adversarial nodes but at the cost of a more expensive message protocol. Foundational for the modern CP-flavoured distributed-systems landscape: etcd / Kubernetes, CockroachDB, TiKV, Consul, MongoDB, and many others use Raft for cluster coordination; many "Paxos" implementations have been quietly rewritten as Raft for the same reasons Ongaro & Ousterhout argue. The paper's methodological thesis — that designing for human comprehension is itself a research contribution — is influential beyond consensus and finds echoes in the design of Rust (over C++), TLA+ (over CSP-style notations), and the [[Pact - A Choreographic Language for Agentic Ecosystems|Pact]]-style choreographies that prefer DSL-shape over raw process-calculus terms.

## Tags
#consensus #distributed-systems #raft #ongaro #replicated-state-machines #leader-election #foundations
