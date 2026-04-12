# Why do AI agents communicate in human language?

**Reference:** Zhou, Feng, Julaiti, Yang (2025). *arXiv:2506.02739*. Source file: `2506.02739v1.pdf`. [URL](https://arxiv.org/abs/2506.02739)

## Summary
The authors argue that natural language, inherited from single-agent LLM pretraining, is fundamentally misaligned with the needs of multi-agent coordination. Because LLMs are trained to maximize likelihood over discrete token sequences, their internal representations are high-dimensional and continuous, but their outputs are forced into a sparse, ambiguous, non-differentiable symbolic form that loses information when used as an inter-agent channel.

They formalize this as a semantic misalignment problem: cascading encode/decode cycles across agents accumulate lossy projection errors and prevent gradient flow. The paper calls for a new multi-agent modeling paradigm where agents coordinate via structured, learnable representations shaped by role persistence, state tracking, and explicit coordination graphs, rather than free-form natural-language dialogue.

## Key Ideas
- Natural language is a lossy, non-differentiable projection of LLM hidden states.
- Cascading communication rounds accumulate semantic error.
- Protocol-induced misbehavior: naive-literal interpretation and action-state decoupling.
- Advocates structured message schemas, role-consistent embeddings, coordination graphs.
- Critique of AutoGen, MetaGPT, CAMEL-style NL-based multi-agent frameworks.

## Connections
- [[Agent Communication Languages]]
- [[Multi-Agent Systems]]
- [[LLM Agents]]
- [[Ripple Effect Protocol]]

## Conceptual Contribution
- **Claim:** Natural language is an accidental, lossy, non-differentiable channel for inter-[[LLM Agents]] coordination; multi-agent AI needs a purpose-built representational substrate.
- **Mechanism:** Formalises repeated encode/decode cycles as error-accumulating projections from continuous hidden states to sparse tokens; diagnoses "protocol-induced misbehavior" (naive-literal reading, action-state decoupling); prescribes structured schemas, role-consistent embeddings, and explicit coordination graphs.
- **Concepts introduced/used:** [[Semantic Misalignment]], [[Emergent Communication]], [[Coordination Graphs]], [[Multi-Agent Systems]], [[LLM Agents]], [[Agent Communication Languages]], [[Differentiable Protocols]]
- **Stance:** critique
- **Relates to:** Provides the theoretical motivation that [[Ripple Effect Protocol]] and [[Levels Of Social Orchestration]] operationalise; contrasts with the symbolic, performative-centric designs of [[KQML]] and [[FIPA-ACL]] by rejecting symbolic channels entirely.

## Tags
#llm-agents #multi-agent-systems #representation-learning #critique
