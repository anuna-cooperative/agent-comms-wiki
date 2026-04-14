# Beyond Self-Talk: A Communication-Centric Survey of LLM-Based Multi-Agent Systems

**Reference:** Yan, Zhou, Zhang, Zhang, Zhou, Miao, Li, Li, Zhang (2025). *arXiv:2502.14321*. Source file: `2502.14321.pdf`. [URL](https://arxiv.org/abs/2502.14321)

## Summary
This review argues that prior surveys of LLM-based Multi-Agent Systems (LLM-MAS) over-emphasise application domains and agent architectures while neglecting the *communication layer* that actually enables collaboration. The authors propose a two-level analytical framework separating **system-level communication** (architecture, goals, and protocols — how agents are organised) from **system-internal communication** (strategies, paradigms, objects, and content — what messages carry and how they are interpreted).

Drawing on classical communication theory's source/channel split, they decompose LLM-MAS workflows into speaker/listener, message format, negotiation paradigm, and coordination protocol, then survey representative works under each cell. The review highlights communication efficiency, security vulnerabilities, and benchmark inadequacy as primary open problems.

## Key Ideas
- Communication as the missing analytical layer in LLM-MAS surveys.
- Two-level framework: system-level (architecture, goal, protocol) vs system-internal (strategy, paradigm, object, content) communication.
- Adoption of Shannon-style source/channel abstractions to describe LLM agent exchanges.
- Brain / Perception / Action model of LLM agents as the atomic communication node.
- Open issues: scalability, security of inter-agent channels, multimodal message formats, benchmarking.

## Connections
- [[Survey Of Agent Interoperability Protocols]]
- [[Survey Of AI Agent Protocols]]
- [[Multi-Agent Collaboration Mechanisms - Survey of LLMs]]
- [[LLM Agents]]
- [[Agent Communication Languages]]
- [[Model Context Protocol]]
- [[Agent-to-Agent Protocol]]
- [[Agent Network Protocol]]

## Conceptual Contribution
- **Claim:** The analytical primitive for understanding LLM-MAS is *communication*, not architecture; a two-level framework (system-level vs system-internal) captures how message protocol choices shape emergent collective behaviour.
- **Mechanism:** Repurposes classical communication-theory distinctions (source/channel, architecture/content) as a taxonomy, then classifies and compares LLM-MAS workflows under each axis, exposing gaps in current designs.
- **Concepts introduced/used:** [[LLM Agents]], [[Multi-Agent Systems]], [[Agent Communication Languages]], [[Interoperability]]
- **Stance:** survey
- **Relates to:** Complements [[Survey Of Agent Interoperability Protocols]] by analysing communication patterns inside MAS, whereas that survey focuses on inter-agent wire protocols. Shares the communication-first lens with [[KQML Language And Protocol]] and [[FIPA-ACL]] but reframed for LLM agents.

## Tags
#llm-agents #multi-agent-systems #survey #communication #agent-protocols
