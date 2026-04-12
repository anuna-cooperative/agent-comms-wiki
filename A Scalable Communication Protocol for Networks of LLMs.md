# A Scalable Communication Protocol for Networks of Large Language Models

**Reference:** Samuele Marro, Emanuele La Malfa, Jesse Wright, Guohao Li, Nigel Shadbolt, Michael Wooldridge, Philip Torr (2024). *arXiv:2410.11905v1 (Oxford / Eigent AI)*. Source file: `2410.11905v1.pdf`. [URL](https://arxiv.org/abs/2410.11905)

## Summary
Introduces **Agora**, a meta-protocol for inter-agent communication in large heterogeneous networks of LLM-powered agents. Agora frames the design space as the *Agent Communication Trilemma* — versatility, efficiency, portability — and argues no single format (natural language, structured APIs like REST, or semantic-web RDF) can satisfy all three simultaneously.

Agora's trick is to use different formats for different traffic volumes: rare/novel messages flow as natural language handled by LLMs; frequent patterns are formalised into *Protocol Documents* (PDs) negotiated between agents and then served by cheap LLM-written routines. A 100-agent demo shows emergent self-organising protocols and ~5x cost reduction over natural-language-only communication.

## Key Ideas
- Agent Communication Trilemma: versatility vs efficiency vs portability
- Protocol Documents (PDs): hash-identified, agent-negotiated, machine-readable specs
- Hybrid hierarchy: NL bootstrap -> PD negotiation -> LLM-written routines -> traditional protocols
- Fully decentralised, hash-addressed storage (IPFS-compatible)
- Emergent protocols among 100 heterogeneous LLM agents without central coordination

## Connections
- [[KQML as an Agent Communication Language]]
- [[KQML]]
- [[FIPA-ACL]]
- [[Agent Communication Languages]]
- [[LLM Agents]]
- [[Multi-Agent Cooperation and the Emergence of Natural Language]]
- [[Agents Framework - Zhou et al]]
- [[Ontologies]]

## Conceptual Contribution
- **Claim:** No single communication format can simultaneously satisfy versatility, efficiency, and portability (the *Agent Communication Trilemma*) at scale; a *meta-protocol* that dynamically mixes natural language, structured data, and LLM-written routines can sidestep the trilemma.
- **Mechanism:** Agora uses hash-identified *Protocol Documents* (PDs) — plain-text, implementation-agnostic specs — negotiated on demand between LLM agents. Frequent traffic is handled by cheap LLM-written routines implementing a PD; rare or novel traffic falls back to LLMs with natural language. Decentralised, content-addressed (IPFS-style) PD distribution; demonstrated on a 100-agent heterogeneous network showing emergent protocols and ~5× cost reduction.
- **Concepts introduced/used:** [[Agent Communication Trilemma]], [[Protocol Documents]], [[Meta-protocol]], [[Emergent Protocols]], [[Emergent Communication]], [[LLM Agents]], [[Content-addressed Storage]], [[Negotiated Protocols]], [[Negotiation]], [[Agent Communication Languages]]
- **Stance:** engineering / systems
- **Relates to:** Modern successor to [[KQML as an Agent Communication Language]] and [[FIPA-ACL]], replacing stipulated performatives with negotiated PDs. Echoes the emergent-language findings of [[Multi-Agent Cooperation and the Emergence of Natural Language]] and [[Emergence of Grounded Compositional Language in Multi-Agent Populations]] at the protocol-document level. Overlaps the design space of [[Model Context Protocol]], [[Agent-to-Agent Protocol]], [[Agent Network Protocol]]. Its bottom-up spirit mirrors [[The Extensible Language - Graham]].

## Tags
#llm-agents #agent-communication #protocols #emergent-protocols
