# Edge Intelligence: Paving the Last Mile of Artificial Intelligence With Edge Computing

**Reference:** Zhi Zhou, Xu Chen, En Li, Liekang Zeng, Ke Luo, Junshan Zhang (2019). *Proceedings of the IEEE*, Vol. 107, No. 8, pp. 1738-1762. Source file: `Edge_Intelligence_Paving_the_Last_Mile_of_Artificial_Intelligence_With_Edge_Computing.pdf`

## Summary
A comprehensive survey of Edge Intelligence (EI), the fusion of AI with edge computing that pushes deep-learning training and inference out of centralized cloud datacenters toward the network edge, where the data is generated. The authors motivate EI through the explosion of IoT data, latency/bandwidth limits of cloud AI, and growing privacy concerns. They propose a six-level rating scheme for EI — from cloud-only (Level 0) through various hybrid cloud-edge splits to fully on-device training and inference (Level 6) — and argue the right level is application dependent.

The paper surveys architectures (centralized, decentralized, hybrid distributed training), key performance indicators (training loss, convergence, privacy, communication cost, latency, energy), enabling techniques, and frameworks for DNN training and inference at the edge. It frames EI as a "last mile" extension that unlocks IoT/AR/VR/autonomous applications by co-locating intelligence with data.

## Key Ideas
- Six-level rating of EI based on amount and path length of data offloading.
- Cloud-edge-device synergy reduces latency and energy vs. pure cloud or pure on-device.
- Distributed DNN training modes: centralized, decentralized, hybrid.
- Privacy-preserving rationale: raw data stays at edge.
- EI is a cross-cutting discipline bridging AI, systems, and networking.

## Connections
- [[Edge Intelligence]]
- [[LLM Agents]]
- [[Multi-Agent Systems]]
- [[Self-Adaptive Systems]]
- [[Edge Intelligence]]
- [[Gossip Protocols]]
- [[Large Population Models]]

## Conceptual Contribution
- **Claim:** AI training and inference should be distributed across a cloud-edge-device hierarchy rather than centralised in the cloud; the optimal split is application-dependent and can be described by a six-level rating.
- **Mechanism:** Systematic survey structured around motivations (latency, privacy, bandwidth, data locality), a six-level EI taxonomy, three distributed-training architectures (centralised, decentralised, hybrid), six KPIs, and enabling techniques (federated learning, gradient compression, DNN splitting, knowledge transfer, gossip training).
- **Concepts introduced/used:** [[Edge Intelligence]], [[Cloud-Edge-Device Hierarchy]], [[Federated Learning]], [[Gossip Training]], [[DNN Splitting]], [[Gradient Compression]], [[Knowledge Transfer Learning]], [[Six-Level EI Rating]]
- **Stance:** survey
- **Relates to:** Ties into [[Edge Intelligence]] hub and shares gossip-training mechanisms with [[Gossip-based Aggregation in Large Dynamic Networks]] and [[Gossip-Based Computation of Aggregate Information]]; motivates on-device LLM agents relevant to [[LLM Agents]] and [[A Scalable Communication Protocol for Networks of LLMs]].

## Tags
#edge-computing #deep-learning #iot #survey
