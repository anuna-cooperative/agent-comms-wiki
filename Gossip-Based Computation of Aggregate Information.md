# Gossip-Based Computation of Aggregate Information

**Reference:** David Kempe, Alin Dobra, Johannes Gehrke (2003). *FOCS 2003 (IEEE Symposium on Foundations of Computer Science)*. Source file: `focs2003-gossip.pdf`. [URL](https://david-kempe.com/publications/aggregation.pdf)

## Summary
This paper analyzes simple gossip protocols (epidemic-style, randomized pairwise exchanges) for computing aggregate functions — sums, averages, quantiles, random samples — over values held by nodes in highly dynamic distributed systems like P2P networks and sensor networks. The key contribution is the *Push-Sum* protocol, which distributes weight alongside value so that the ratio stored at each node converges exponentially fast to the true average, even in the face of node failures and message loss.

The second contribution is a precise *diffusion speed* formalism linking protocol convergence to random walk / Markov chain mixing times, letting the authors analyze uniform gossip, flooding, and other mechanisms uniformly. Push-Sum converges in O(log n + log 1/ε + log 1/δ) rounds with exponentially small message sizes, making it suitable for massive, volatile networks.

## Key Ideas
- Push-Sum: maintain (value, weight) pairs, exchange halves with random peer; ratio converges to global average.
- Mass conservation invariant underlies correctness.
- Diffusion speed = convergence rate, mapped to Markov chain mixing times.
- Robust to node/link failures — degraded guarantee scales with 1/(1-µ)^2.
- Extends to sums, quantiles, random samples, and arbitrary linear syntactic aggregates.

## Connections
- [[Gossip Protocols]]
- [[Multi-Agent Systems]]
- [[Self-Adaptive Systems]]
- [[Peer Sampling Service]]
- [[Large Population Models]]

## Conceptual Contribution
- **Claim:** Aggregates (sums, averages, quantiles, random samples) over a massive, volatile network can be computed by simple gossip protocols that converge exponentially fast; a mass-conservation trick (Push-Sum) gives precise averages with only local pairwise exchange.
- **Mechanism:** Introduces Push-Sum (each node maintains a (value, weight) pair and halves on exchange; ratio = average), generalises it to Push-Vector and Push-Synopses for linear synopses; defines diffusion speed connecting protocol convergence to random-walk mixing times on the communication graph; proves O(log n + log 1/ε + log 1/δ) convergence with robustness under message loss and node failure.
- **Concepts introduced/used:** [[Push-Sum]], [[Mass Conservation]], [[Diffusion Speed]], [[Uniform Gossip]], [[Flooding]], [[Push-Synopses]], [[Random Walks on Graphs]], [[Aggregate Functions]]
- **Stance:** formal-semantic / foundational (for gossip-based distributed algorithms)
- **Relates to:** Theoretical foundation for [[Gossip-based Aggregation in Large Dynamic Networks]] (which re-derives Push-Sum empirically as averaging) and underpins the aggregation primitives surveyed in [[Gossiping in Distributed Systems]] and [[Gossip Protocols]]; gossip training in [[Edge Intelligence Survey]] inherits this analysis.

## Tags
#gossip #aggregation #distributed-computing #randomized-algorithms
