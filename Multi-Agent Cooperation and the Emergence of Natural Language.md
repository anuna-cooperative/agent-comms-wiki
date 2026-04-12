# Multi-Agent Cooperation and the Emergence of (Natural) Language

**Reference:** Angeliki Lazaridou, Alexander Peysakhovich, and Marco Baroni (2017). *ICLR 2017*. Source file: `1612.07182v2.pdf`

## Summary
Introduces a referential-game framework for studying emergent communication: a sender sees a target/distractor image pair and sends a single symbol from a fixed vocabulary; a receiver must identify the target using that symbol. The agents are blank-slate neural networks trained only by communication-success reward. The paper studies whether agents converge, whether the emergent symbols align with human-interpretable semantics, and how to nudge the system toward natural-language-compatible codes.

Two sender architectures (agnostic vs informed) are compared; the informed sender produces richer vocabulary usage. A supplementary supervised image-labelling objective is shown to ground agent symbols to human concepts, making them partially interpretable to crowd-workers.

## Key Ideas
- Referential games as minimal test-beds for emergent protocols
- Informed (feature-aware) sender yields more human-like symbol usage
- Symbol purity measured against conceptual (McRae) categories
- Mixing self-play with supervised labelling grounds emergent codes to natural language
- Foundational for later emergent-communication literature

## Connections
- [[Emergence of Grounded Compositional Language in Multi-Agent Populations]]
- [[A Scalable Communication Protocol for Networks of LLMs]]
- [[Multi-Agent Systems]]

## Conceptual Contribution
- **Claim:** Two neural-network agents playing a referential game (sender/receiver over image pairs) can develop a symbolic code from scratch; with architectural and supervisory nudges, that code can be made to align with human-interpretable object categories.
- **Mechanism:** Lewis-style signalling game with REINFORCE training; contrast *agnostic* vs *informed* sender architectures; analyse symbol-to-category purity; then mix supervised image-labelling with self-play to ground emergent symbols in human vocabulary (AlphaGo-inspired). Crowdsourced evaluation shows humans can guess the correct image 68% of the time from emitted symbols.
- **Concepts introduced/used:** [[Emergent Communication]], [[Referential Games]], [[Lewis Signalling Games]], [[Grounding in Human Language]], [[Cheap Talk]], [[Symbol-Category Purity]]
- **Stance:** empirical / deep-learning
- **Relates to:** Companion/precursor to [[Emergence of Grounded Compositional Language in Multi-Agent Populations]] (physical grounding, >2 agents). Feeds the emergent-protocol thesis of [[A Scalable Communication Protocol for Networks of LLMs]]. Contrasts with stipulated-semantics ACLs ([[KQML as an Agent Communication Language]], [[FIPA-ACL]]).

## Tags
#emergent-communication #referential-games #deep-rl #language-emergence
