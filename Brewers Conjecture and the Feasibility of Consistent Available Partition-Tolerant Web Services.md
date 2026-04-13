# Brewer's Conjecture and the Feasibility of Consistent, Available, Partition-Tolerant Web Services

## Reference

Gilbert, S., & Lynch, N. (2002, revisited 2012). "Perspectives on the CAP Theorem." MIT / National University of Singapore. [URL](http://groups.csail.mit.edu/tds/papers/Gilbert/Brewer2.pdf)

## Summary

This paper is the formal proof and later retrospective of Brewer's CAP conjecture: in a distributed system subject to communication failures, no web service can simultaneously guarantee **Consistency** (atomic read/write), **Availability** (every request receives a response), and **Partition-tolerance** (the system continues to operate when messages are lost between nodes). The proof is elegantly short: partition the servers into two groups; a write on one side and a read on the other must answer, but the read cannot know of the write, so either consistency or availability must fail.

The authors situate CAP within the deeper trade-off between **safety** and **liveness** properties in unreliable systems — the very trade-off FLP formalized for consensus. Consistency is a safety property ("nothing bad happens"), availability is a liveness property ("something good eventually happens"), and the unreliability axis includes partitions, crashes, and Byzantine faults. CAP is then one specific instance of the general fact that safety + liveness are jointly unattainable in sufficiently unreliable systems.

The paper distinguishes practical regimes (always-consistent with best-effort availability; always-available with weak/eventual consistency; hybrid tactics) and connects to partial synchrony results (Dwork, Lynch, Stockmeyer) that quantify exactly how much timing reliability is needed. CAP has become a rallying slogan and a misused one — the paper explicitly warns it is a theorem about *adversarial* partitions, not a license to abandon consistency whenever convenient.

## Key Ideas

- **CAP theorem**: pick at most two of consistency, availability, partition-tolerance in an unreliable network.
- **Asynchronous impossibility**: even without actual partitions, async delays force the same trade-off — you cannot distinguish a slow network from a partitioned one.
- **Safety vs. liveness lens**: CAP is a concrete instance of a broader unreliability theorem.
- **Weak consistency models**: eventual, causal, sequential — engineered escapes from strict CAP.
- **Synchrony continuum**: fully synchronous → partially synchronous → fully asynchronous; feasibility varies along it.
- **Practical taxonomy**: CP, AP, and CA-only-without-partitions system designs.
- **Not a license**: the theorem is often cited to justify weaker-than-needed guarantees; read carefully.

## Connections

- [[CAP Theorem]]
- [[CALM Theorem]] — identifies the programs for which consistency *does not* require coordination.
- [[Keeping CALM - When Distributed Consistency is Easy]]
- [[Coordination Avoidance]]
- [[Gossip Protocols]] — eventual consistency in the AP regime.
- [[Impossibility of Distributed Consensus with One Faulty Process]] — FLP is CAP's consensus cousin.
- [[Time Clocks and the Ordering of Events in a Distributed System]]

## Conceptual Contribution

> You cannot have atomic consistency and full availability in the presence of arbitrary network partitions. This is not an engineering failure but a theorem; it forces every distributed system architect to declare — per operation, not per system — which axis they sacrifice when the network misbehaves, and to design explicit strategies for detecting, tolerating, and recovering from the chosen sacrifice.

## Tags

#distributed-systems #CAP #consistency #availability #partition-tolerance #gilbert-lynch #foundational #safety-liveness
