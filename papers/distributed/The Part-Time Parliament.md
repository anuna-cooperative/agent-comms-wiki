# The Part-Time Parliament

**Reference:** Leslie Lamport (1998). *ACM Transactions on Computer Systems*, 16(2):133-169 (minor corrections 2000). Source file: `lamport-paxos.pdf`. [URL](https://lamport.azurewebsites.net/pubs/lamport-paxos.pdf)

## Summary
The original exposition of the Paxos consensus algorithm, framed as an archaeological account of the part-time parliament of the (fictional) ancient Greek island of Paxos. Legislators drift in and out of the Chamber and messengers may lose, duplicate, or delay messages; nevertheless the parliament maintains a consistent ledger of decrees. Translated to distributed computing, this is the canonical solution to asynchronous fault-tolerant state-machine replication: a majority quorum protocol that guarantees safety (no two ledgers ever disagree on a decree) and makes progress whenever a majority of processes and their messages are eventually responsive.

The paper develops the *single-decree Synod* protocol first — choosing one value — using a ballot structure with three conditions (unique ballot numbers, pairwise-intersecting quorums, and a rule forcing a ballot's decree to equal the latest decree of any earlier ballot whose quorum overlaps). It then generalises to multi-decree Parliament (multi-Paxos). The prose style (Greek-parable framing, archaeological footnotes) famously delayed the paper's publication and shaped the oral tradition of the algorithm.

## Key Ideas
- Asynchronous consensus under crash failures and unreliable messaging via majority quorums
- Two-phase protocol: prepare (collect promises / latest earlier votes) then accept (commit a value)
- Ballot numbers totally ordered; any two quorums intersect; late ballots adopt an earlier committed value
- Safety is unconditional; liveness depends on eventual synchrony plus a distinguished proposer
- Multi-Paxos: amortise phase 1 across a sequence of decrees under a stable leader
- State-machine replication as the canonical application

## Connections
- [[CAP Theorem]]
- [[Impossibility of Distributed Consensus with One Faulty Process]]
- [[Time Clocks and the Ordering of Events in a Distributed System]]
- [[CALM Theorem]]

## Conceptual Contribution
- **Claim:** Fault-tolerant consensus is achievable in an asynchronous message-passing system with crash failures as long as a majority of processes is eventually live and can communicate, by requiring every decision-making quorum to intersect every other.
- **Mechanism:** Ballots with unique, totally ordered numbers; each ballot has a quorum; a ballot succeeds iff its quorum all vote. Condition B3 — a ballot's decree must match the decree of the latest earlier ballot in which any quorum member voted — propagates any already-committed value forward, preserving safety across leader changes.
- **Concepts introduced/used:** Paxos, Synod protocol, ballots, quorums, proposer/acceptor/learner roles (implicit), state-machine replication, safety vs. liveness, leader election, eventual synchrony.
- **Stance:** formal / algorithmic — an algorithm with a correctness proof disguised as archaeology.
- **Relates to:** Paxos sidesteps [[Impossibility of Distributed Consensus with One Faulty Process]] (FLP) by relaxing liveness under worst-case asynchrony. It operationalises the happens-before order of [[Time Clocks and the Ordering of Events in a Distributed System]] (another Lamport paper) at the agreement level. Sits firmly in the CP corner of the [[CAP Theorem]], trading availability during partitions for consistency. Contrasts with [[CALM Theorem]], which identifies classes of computations that need no coordination at all.

## Tags
#distributed-systems #consensus #paxos #fault-tolerance #replication
