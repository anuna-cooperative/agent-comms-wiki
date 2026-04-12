# A Survey of Agent Interoperability Protocols: MCP, ACP, A2A, and ANP

**Reference:** Ehtesham, Singh, Gupta, Kumar (2025). *arXiv:2505.02279*. Source file: `2505.02279v1.pdf`. [URL](https://arxiv.org/abs/2505.02279)

## Summary
This survey examines four emerging agent communication protocols targeting different interoperability tiers: the Model Context Protocol (MCP) for JSON-RPC tool invocation and context delivery; the Agent Communication Protocol (ACP) for REST-native multi-part performative messaging; the Agent-to-Agent Protocol (A2A) for peer-to-peer Agent-Card-based task outsourcing; and the Agent Network Protocol (ANP) for decentralized discovery using DIDs and JSON-LD.

The authors contrast architectures, discovery mechanisms, security models, and communication patterns, then recommend a phased adoption roadmap (MCP for tool access, then ACP for messaging, A2A for collaborative execution, ANP for open marketplaces). A timeline traces ancestry from KQML (1993) and FIPA-ACL (2000) through RAG, ReAct, function-calling up to modern agent protocols.

## Key Ideas
- Phased adoption roadmap: MCP -> ACP -> A2A -> ANP.
- MCP core primitives: Tools, Resources, Prompts, Sampling under JSON-RPC 2.0.
- A2A introduces Agent Cards, Tasks, Artifacts for enterprise-scale delegation.
- ANP uses DIDs and JSON-LD for decentralized, internet-scale agent discovery.
- Security threats tabulated across creation/operation/update lifecycle phases.

## Connections
- [[Model Context Protocol]]
- [[Agent-to-Agent Protocol]]
- [[Agent Network Protocol]]
- [[KQML]]
- [[FIPA-ACL]]
- [[LLM Agents]]

## Conceptual Contribution
- **Claim:** Modern agent interoperability is best understood as a four-tier stack (MCP for tools, ACP for messaging, A2A for delegation, ANP for open discovery) and should be adopted in that phased order.
- **Mechanism:** Structured comparison of architectures, discovery, security, and message patterns; historical timeline rooting each protocol in [[KQML]]/[[FIPA-ACL]] ancestry; lifecycle threat table.
- **Concepts introduced/used:** [[Model Context Protocol]], [[Agent-to-Agent Protocol]], [[Agent Network Protocol]], Agent Communication Protocol, [[KQML]], [[FIPA-ACL]], [[Agent Cards]], [[Decentralized Identifiers]], [[JSON-RPC]], [[Tool Use]], [[LLM Agents]]
- **Stance:** survey
- **Relates to:** Complements the broader [[Survey Of AI Agent Protocols]] with a narrower, adoption-oriented roadmap. Its security-threat lifecycle connects directly to [[AI Agents Under Threat]] and [[MalTool Malicious Tool Attacks]].

## Tags
#agent-protocols #interoperability #llm-agents #survey
