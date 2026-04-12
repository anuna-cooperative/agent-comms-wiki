# Gossip-based Aggregation in Large Dynamic Networks

**Reference:** Márk Jelasity, Alberto Montresor, Ozalp Babaoglu (2005). *ACM Transactions on Computer Systems*, Vol. 23, No. 3, pp. 219-252. Source file: `gossip.pdf`. URL: http://www.cs.unibo.it/bison/publications/aggregation-tocs.pdf

## Summary
The paper presents a proactive, gossip-based protocol for continuously computing aggregate functions (averages, sums, counts, variances, network size, extremal values) over huge dynamic networks such as P2P and grid systems. Each node periodically picks a random neighbor and performs a push-pull exchange; pairwise averaging drives the variance of estimates to zero at a geometric rate while preserving the global mean ("mass conservation"). All nodes thus converge to the correct aggregate and adaptively track changes over time.

Beyond core averaging, the authors show how to compute more complex aggregates (variance, network size via a single seed) and evaluate robustness under node churn and message loss, including a PlanetLab deployment. The protocol is attractive because it is simple, scalable, lightweight, and requires no centralized infrastructure — only a peer-sampling service.

## Key Ideas
- Push-pull averaging: w_p, w_q ← (w_p + w_q)/2 drives variance to zero exponentially.
- Mass conservation preserves global sum so global average remains unchanged.
- Reactive vs. proactive aggregation; this work targets proactive, always-on aggregates.
- Robustness to dynamism, churn, and message loss.
- Underlying assumption: a peer-sampling service supplies uniform random neighbors.

## Connections
- [[Gossip Protocols]]
- [[Self-Adaptive Systems]]
- [[Multi-Agent Systems]]

## Conceptual Contribution
- **Claim:** A simple push-pull averaging gossip protocol — paired with a peer-sampling service — provides proactive, continuously-updated aggregates (average, sum, count, variance, network size, extrema) at large scale with geometric-rate convergence and robustness to churn and message loss.
- **Mechanism:** Each node periodically picks a random neighbour via getNeighbor(), exchanges local estimate, and replaces both with their average; variance analysis as iterative reduction gives convergence factor independent of network size; adaptive restart mechanism handles dynamism; PlanetLab deployment validates the theory.
- **Concepts introduced/used:** [[Push-Pull Gossip]], [[Proactive Aggregation]], [[Peer Sampling Service]], [[Variance Reduction]], [[Mass Conservation]], [[Convergence Factor]], [[Adaptive Protocols]]
- **Stance:** engineering / empirical with formal analysis
- **Relates to:** Practical complement to the theoretical [[Gossip-Based Computation of Aggregate Information]] (Push-Sum); cited as a canonical aggregation example in [[Gossiping in Distributed Systems]]; the peer-sampling substrate it assumes is the same used by [[Myconet Fungi Inspired Superpeer Overlay]] and other bio-inspired overlays.

## Tags
#gossip #aggregation #p2p #adaptive
