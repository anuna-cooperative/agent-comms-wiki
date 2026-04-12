# Ripple Effect Protocol: Coordinating Agent Populations

**Reference:** Chopra, Sharma, Ahmad, Muscariello, Pandey, Raskar (2025). *arXiv:2510.16572* (Project Iceberg, MIT / Cisco). Source file: `2510.16572v1.pdf`

## Summary
REP is a coordination protocol for populations of LLM agents that augments existing messaging (A2A, ACP, SLIM) with *sensitivity sharing*: agents broadcast not only their decisions but lightweight signals expressing how those decisions would change under counterfactual environmental shifts. Neighbours aggregate these sensitivities into shared coordination variables, letting groups converge faster and more stably than with decision-only exchange.

The protocol separates cognition (local LLM policy) from coordination (aggregation + optional consensus). Experiments on the Beer Game (bullwhip reduction of 41.8%), Fishbanks (sustainability +25%), and movie-scheduling show 41-100% coordination-accuracy gains over A2A baselines and scale from 10 to 200 agents.

## Key Ideas
- Sensitivity = textual or numeric derivative of a decision w.r.t. environment.
- Four-step round: receive, decide+sensitivity, aggregate neighbors, optional median consensus.
- Modality-agnostic aggregator phi (numeric gradient or LLM-synthesized textual update).
- Transport-agnostic: works over SLIM, A2A, ACP.
- Mitigates information cascades / bullwhip effects in open agent networks.

## Connections
- [[Agent-to-Agent Protocol]]
- [[Multi-Agent Systems]]
- [[Gossip Protocols]]
- [[LLM Agents]]
- [[Levels Of Social Orchestration]]

## Conceptual Contribution
- **Claim:** Agent populations coordinate faster and more stably when they share not just decisions but *sensitivities* - counterfactual derivatives of decisions w.r.t. the environment.
- **Mechanism:** A transport-agnostic four-step round (receive, decide+sensitivity, aggregate, optional median consensus) layered atop [[Agent-to-Agent Protocol]]/ACP/SLIM, validated on Beer Game (bullwhip -41.8%), Fishbanks, and movie scheduling up to 200 agents.
- **Concepts introduced/used:** [[Sensitivity Sharing]], [[Coordination Variables]], [[Information Cascades]], [[Gossip Protocols]], [[Multi-Agent Systems]], [[LLM Agents]], [[Agent-to-Agent Protocol]], [[Emergent Communication]]
- **Stance:** engineering
- **Relates to:** Realises the structured-coordination vision of [[Why AI Agents Communicate In Human Language]] and instantiates an L4 Navigate-level protocol from [[Levels Of Social Orchestration]]; extends aggregation intuitions from [[Gossip Protocols]].

## Tags
#coordination #multi-agent-systems #llm-agents #protocols
