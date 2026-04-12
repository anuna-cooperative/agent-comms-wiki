# Gossiping in Distributed Systems

**Reference:** Anne-Marie Kermarrec, Maarten van Steen (2007). *ACM SIGOPS Operating Systems Review*, Vol. 41, No. 5. Source file: `Gossiping_in_distributed_systems.pdf`

## Summary
This tutorial surveys the "gossip revival" in distributed systems, providing a unifying framework for reasoning about the broad space of gossip-based protocols now used far beyond their original role as epidemic reliable multicast. The authors organize gossip protocols by three crucial parameters: *peer selection* (who to talk to), *data exchanged* (what to send), and *data processing* (what to do with what arrives); varying these three gives rise to dissemination, peer sampling, aggregation, overlay/topology construction, resource monitoring, and slicing protocols.

They illustrate each axis with canonical examples — Lpbcast and Newscast for membership, Push-Sum and T-Man for aggregation and overlay construction, Astrolabe for monitoring — and highlight why gossip's randomized, local-only interactions produce emergent convergent global behavior with exceptional robustness to churn and failures. The paper emphasizes gossip's use in *convergent*, not just divergent (epidemic) behaviors.

## Key Ideas
- Three-parameter gossip framework: peer selection, data exchanged, data processing.
- Applications: dissemination, peer sampling, aggregation, topology construction, monitoring, slicing.
- Convergent behavior from local random pairwise exchanges.
- Peer sampling service is the common substrate most gossip protocols assume.
- Robustness through probabilistic redundancy and randomization.

## Connections
- [[Gossip Protocols]]
- [[Multi-Agent Systems]]
- [[Self-Adaptive Systems]]

## Conceptual Contribution
- **Claim:** The sprawling family of gossip-based algorithms can be unified as a three-parameter design space — peer selection, data exchanged, data processing — and the same substrate supports not just epidemic dissemination but convergent behaviours including aggregation, overlay construction, and monitoring.
- **Mechanism:** Presents a generic active/passive-thread gossip skeleton; classifies protocols along the three parameters with canonical instances (Lpbcast, Newscast, Cyclon, T-Man, Push-Sum, Astrolabe, GEMS); highlights how peer-sampling acts as the common foundational service enabling higher-level applications.
- **Concepts introduced/used:** [[Gossip Framework]], [[Peer Selection]], [[Data Exchange]], [[Data Processing]], [[Peer Sampling Service]], [[Convergent Gossip]], [[Epidemic Dissemination]], [[Overlay Construction]]
- **Stance:** survey
- **Relates to:** Provides the taxonomy that situates [[Gossip-based Aggregation in Large Dynamic Networks]] (aggregation), [[Gossip-Based Computation of Aggregate Information]] (Push-Sum), [[Myconet Fungi Inspired Superpeer Overlay]] (topology construction), and the gossip-training mode surveyed in [[Edge Intelligence Survey]]. Anchor for [[Gossip Protocols]] hub.

## Tags
#gossip #survey #epidemic #overlay
