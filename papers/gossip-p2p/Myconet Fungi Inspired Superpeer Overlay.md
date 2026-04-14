# Myconet: A Fungi-Inspired Model for Superpeer-based Peer-to-Peer Overlay Topologies

**Reference:** Paul L. Snyder, Rachel Greenstadt, Giuseppe Valetto. *Drexel University Dept. of Computer Science*. Source file: `Myconet_A_Fungi_Inspired_Model_for_Super.pdf`. [URL](https://www.cs.drexel.edu/tech-reports/myconet-saso2009.pdf)

## Summary
Myconet is a biologically inspired self-organizing overlay-construction protocol for superpeer-based P2P networks, drawing its design from the growth patterns of fungal mycelia. Each node is modeled as a "biomass peer" with a capacity; hyphal peers extend links toward high-capacity regions, branch when saturated, and become immobile superpeers at full utilization. The protocol layers these stigmergic transitions on top of Newscast-style gossip to move biomass toward the highest-capacity peers and dynamically maintain a near-optimal number of well-connected superpeers.

Evaluation shows Myconet converges to approximately optimal superpeer counts across power-law and uniform capacity distributions, reaches ~95% utilization, and self-heals quickly after catastrophic loss of 30-50% of superpeers. It outperforms or matches comparable approaches (SG-1, ERASP) while providing stronger topology stability and resistance to targeted attack on superpeers.

## Key Ideas
- Biomass peers + hyphal peers + immobile (superpeer) peers with state transitions.
- Stigmergy over Newscast gossip for local-only self-organization.
- Extension, branching, and absorption rules tuned to heterogeneous capacities.
- Near-optimal superpeer count and high utilization under realistic distributions.
- Resilience: rapid reconvergence after catastrophic peer loss.

## Connections
- [[Gossip Protocols]]
- [[Self-Adaptive Systems]]
- [[Multi-Agent Systems]]
- [[Peer Sampling Service]]
- [[Large Population Models]]

## Conceptual Contribution
- **Claim:** Fungal mycelium growth — biomass flowing along hyphae toward productive regions — is a productive metaphor for self-organising superpeer overlays, yielding topologies that are near-optimal in superpeer count, highly utilised, and resilient to targeted attack.
- **Mechanism:** Models each peer with a capacity and three states (biomass, hyphal extending/branching, immobile superpeer); state transitions driven by local biomass comparisons with neighbours obtained via Newscast gossip; branching hyphae explore new capacity, immobile hyphae absorb biomass up to saturation. Simulation on 10^3–10^6 peers with power-law and uniform capacity distributions shows convergence in ~30-35 rounds and recovery from 50% catastrophic peer loss.
- **Concepts introduced/used:** [[Stigmergy]], [[Mycelium Model]], [[Hyphal Peer]], [[Biomass]], [[Superpeer Overlay]], [[Newscast Gossip]], [[Self-Organising Topology]], [[Catastrophic Failure Recovery]]
- **Stance:** empirical / engineering (bio-inspired)
- **Relates to:** Uses the peer-sampling/gossip substrate formalised in [[Gossiping in Distributed Systems]] and [[Gossip-based Aggregation in Large Dynamic Networks]]; exemplifies the structural/ensemble self-organisation advocated by [[Self-Adaptation Self-Expression Self-Awareness ASCENS]] and the bio-inspired cognition of [[Computational Boundary of a Self]].

## Tags
#bio-inspired #p2p #superpeer #self-organization
