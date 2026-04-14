# Emergence of Grounded Compositional Language in Multi-Agent Populations

**Reference:** Igor Mordatch and Pieter Abbeel (2018). *AAAI-18*. Source file: `11492-13-15020-1-2-20201228.pdf`. [URL](https://ojs.aaai.org/index.php/AAAI/article/view/11492)

## Summary
Proposes a multi-agent environment and differentiable training procedure in which agents develop an abstract compositional communication protocol purely from the need to coordinate on non-linguistic goals (move-to-location, look-at, etc.) in a 2D world with landmarks. Agents emit streams of discrete symbols (Gumbel-Softmax relaxed) along with physical actions; symbols acquire stable, interpretable meanings corresponding to goal types, landmarks, and agent identities.

The emergent language exhibits syntactic ordering, vocabulary-size regularization via a Dirichlet-process-inspired penalty, and non-verbal strategies (pointing, guiding) when symbols are disabled. The paper is a foundational piece in the modern "emergent communication" literature.

## Key Ideas
- Communication emerges from cooperative multi-agent RL with shared reward
- Gumbel-Softmax makes discrete symbol channels differentiable
- Vocabulary-size penalty (DP-style) prevents symbol proliferation and encourages compositionality
- Non-verbal channels (gaze, position) substitute when verbal is unavailable
- Symbols ground to concepts: GOTO, color, landmark/agent identity

## Connections
- [[Multi-Agent Cooperation and the Emergence of Natural Language]]
- [[Multi-Agent Systems]]
- [[A Scalable Communication Protocol for Networks of LLMs]]

## Conceptual Contribution
- **Claim:** A basic compositional language with coherent vocabulary and rudimentary syntax can emerge from scratch among agents in a physically-grounded, cooperative multi-agent environment, driven purely by the need to coordinate on shared goals.
- **Mechanism:** N agents with private goals share a continuous 2D environment and emit discrete symbol streams; policies are trained end-to-end with differentiable communication (Gumbel-Softmax), shared reward, plus a Dirichlet-process-inspired vocabulary-sparsity penalty and an auxiliary goal-prediction reward. Non-verbal strategies (pointing, gaze) emerge when symbolic channel is unavailable.
- **Concepts introduced/used:** [[Emergent Communication]], [[Grounded Compositional Language]], [[Symbol Grounding Problem]], [[Compositionality]], [[Gumbel-Softmax]], [[Multi-Agent Reinforcement Learning]], [[Referential Games]], [[Language Games]], [[Non-verbal Communication]], [[Vocabulary Size Penalty]], [[Dirichlet Process]]
- **Stance:** empirical / computational-simulation
- **Relates to:** Companion to [[Multi-Agent Cooperation and the Emergence of Natural Language]] (also referential games but 2-player, image-based). Contrasts with the pre-designed [[KQML as an Agent Communication Language]] and [[FIPA-ACL]] approaches: here semantics emerge from task pressure rather than being stipulated. Resonates with the emergent-protocol behaviour Agora exhibits in [[A Scalable Communication Protocol for Networks of LLMs]].

## Tags
#emergent-communication #multi-agent-rl #grounded-language #compositionality
