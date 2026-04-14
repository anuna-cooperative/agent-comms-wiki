# Human-Level Play in the Game of Diplomacy by Combining Language Models with Strategic Reasoning (Cicero)

**Reference:** Meta Fundamental AI Research Diplomacy Team (FAIR), Anton Bakhtin, Noam Brown, Emily Dinan, Gabriele Farina, Colin Flaherty, Daniel Fried, Andrew Goff, Jonathan Gray, Hengyuan Hu, et al. (2022). *Science 378(6624):1067–1074*. Source file: `downloads/cicero.pdf`. [URL](https://www.science.org/doi/10.1126/science.ade9097)

## Summary
Presents **Cicero**, the first AI to reach human-level performance in the no-press-restricted, seven-player, natural-language negotiation game of Diplomacy. The system couples a controllable dialogue model with a planning-and-reinforcement-learning engine: the planner computes intended *actions* for Cicero and its opponents using regret-minimisation and a value network; the dialogue model is then conditioned on those intentions to generate messages that are simultaneously strategically grounded, honest-by-construction with respect to the chosen plan, and stylistically indistinguishable from human play.

Cicero infers other players' beliefs and intentions from their messages and prior actions, filters candidate utterances through classifiers trained to reject nonsense / inconsistent / ungrounded lines, and commits to moves consistent with what it said. Across 40 online games it more than doubled the average human score and ranked in the top 10% of repeat players — the strongest demonstration to date that language models can carry out intentional, strategically grounded communication with humans in a mixed cooperation/competition environment.

## Key Ideas
- Grounded dialogue: natural-language messages conditioned on explicit planned *intents*
- Regret-minimisation planner with neural value function jointly optimises for Cicero and opponents
- Intent inference: read beliefs/plans from incoming dialogue, fold into the planner
- Multi-stage message filtering (nonsense, inconsistency, grounding, value) to enforce honesty and stylistic naturalness
- First demonstration of human-level performance in a language-negotiation strategy game

## Connections
- [[LLM Agents]]
- [[A Scalable Communication Protocol for Networks of LLMs]]
- [[Negotiation]]
- [[Cheap Talk]]
- [[Grounding]]
- [[Agent Communication Languages]]
- [[Joint Intentions]]
- [[Multi-Agent Systems]]
- [[Honesty Constraint]]

## Conceptual Contribution
- **Claim:** Intentional, honest, strategically grounded natural-language communication between an AI and humans is achievable by explicitly separating the *planning* layer (what to do) from the *dialogue* layer (what to say), and conditioning the latter on the former with heavy filtering — rather than hoping a pure language model will learn strategic intent end-to-end.
- **Mechanism:** An intent-conditioned dialogue model is trained on human Diplomacy games with extracted action annotations. At play time, a piKL-based planner runs regret minimisation over candidate joint actions using a neural value network; Cicero's chosen intent is fed to the dialogue model. Generated messages pass through nonsense/consistency/grounding/value filters and a final policy check that the outgoing message is consistent with Cicero's actually intended move. Incoming messages are parsed into inferred opponent intents that feed back into the planner.
- **Concepts introduced/used:** [[LLM Agents]], [[Negotiation]], [[Joint Intentions]], intent-conditioned generation, regret minimisation / piKL, [[Cheap Talk]], [[Honesty Constraint]], [[Grounding]]
- **Stance:** empirical / machine learning
- **Relates to:** Cited in [[A Scalable Communication Protocol for Networks of LLMs]] as an exemplar of LLM-mediated negotiation between autonomous agents — Agora pushes the same idea from a closed seven-player game into an open, decentralised network and from ad-hoc utterances to hash-addressed [[Protocol Documents]]. Instantiates the speech-act / sincerity-condition programme of [[Foundations Of Illocutionary Logic]] and [[Sincerity Condition]] inside a modern deep-learning agent. Contrasts with emergent-language approaches like [[Multi-Agent Cooperation and the Emergence of Natural Language]] by using a pretrained human-language model.

## Tags
#llm-agents #negotiation #diplomacy #language-models #grounded-dialogue
