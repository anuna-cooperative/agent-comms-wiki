# A Composite Self-organisation Mechanism in an Agent Network

**Reference:** Ye, D., Zhang, M., Bai, Q. (2011). *WISE 2011, LNCS 6997, Springer*. Source file: `WISE2011-2.pdf`. [URL](https://doi.org/10.1007/978-3-642-24434-6_19)

## Summary
The authors propose a decentralized self-organization mechanism that lets agents in a collaborative task-allocation network dynamically adapt their weighted relations (peer-to-peer and subordinate-superior) to improve overall profit. The mechanism combines two components: a Dezert-Smarandache-theory-based trust model that fuses direct experience and neighbor opinions to select candidate partners, and a multi-agent Q-learning algorithm that learns which relation-adaptation actions (enhance/weaken the relation type) pay off.

Unlike prior approaches that assume crisp binary relations, this model uses weighted relation strengths in [0,1], allowing gradual rather than sudden social change. Agents aim to minimize communication, computation, and management cost while maximizing subtask benefit. Reward matrices defined over action pairs couple the two learners so that joint optimal adaptations emerge.

## Key Ideas
- Weighted relations replace crisp relations for realism.
- DSmT trust model fuses self and witness evidence.
- Multi-agent Q-learning for joint relation adaptation.
- Profit = benefit − (communication + computation + management costs).
- Decentralized, resilient to single-node failures.

## Connections
- [[Self-Adaptive Systems]]
- [[Trust and Reputation]]
- [[Multi-Agent Systems]]
- [[Gossip Protocols]]
- [[Peer Sampling Service]]
- [[Negotiation]]

## Conceptual Contribution
- **Claim:** Decentralised task-allocation networks self-organise more effectively when agents adapt weighted (rather than binary) relations via a composite mechanism that fuses a DSmT-based trust model with multi-agent Q-learning.
- **Mechanism:** Each pair of agents maintains peer-to-peer and subordinate-superior weights in [0,1]. Candidate partners for a subtask are selected using Dezert-Smarandache-theory fusion of direct experience and neighbour opinions (handling conflicting/paradoxical evidence). A multi-agent Q-learning algorithm with coupled reward matrices learns enhance/weaken adaptation actions on those weights, optimising profit = subtask benefit − (communication + computation + management) cost.
- **Concepts introduced/used:** [[Self-Organisation]], [[Weighted Relation]], [[Dezert-Smarandache Theory]], [[Multi-Agent Q-Learning]], [[Trust Fusion]], [[Relation Adaptation]], [[Task Allocation Network]]
- **Stance:** engineering
- **Relates to:** Operationalises ideas surveyed in [[Review on Computational Trust and Reputation Models]] (witness + direct evidence fusion); complements gossip-style information exchange in [[Gossip-based Aggregation in Large Dynamic Networks]]; the decentralised resilience theme echoes [[Theory of Self-Reproducing Automata]].

## Tags
#self-organization #multi-agent #q-learning #trust
