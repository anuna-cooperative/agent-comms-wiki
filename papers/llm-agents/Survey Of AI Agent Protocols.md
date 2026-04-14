# A Survey of AI Agent Protocols

**Reference:** Yang, Chai, Song, Qi, Wen, Li, Liao, Hu, Lin, Chang, Liu, Wen, Yu, Zhang (2025). *arXiv:2504.16736*. Source file: `2504.16736v2.pdf`. [URL](https://arxiv.org/abs/2504.16736)

## Summary
This survey offers the first comprehensive classification and analysis of emerging AI agent protocols for LLM-based agents. The authors propose a two-dimensional taxonomy: (object orientation) context-oriented vs inter-agent protocols, and (application scenario) general-purpose vs domain-specific, covering MCP, A2A, ANP, ACP, Agora, LMOS, agents.json, LOKA, PXP, CrowdES, and others.

The paper then evaluates these protocols across efficiency, scalability, security, reliability, extensibility, operability, and interoperability, and sketches a forward-looking agenda: protocols should evolve from static to adaptive, from rules to ecosystems, and from mere communication to collective intelligence infrastructure.

## Key Ideas
- Two-dimensional taxonomy of agent protocols (object orientation x application scenario).
- MCP as a universal context-oriented protocol with Host/Client/Server/Resource roles.
- Inter-agent layer splits into general-purpose (A2A, ANP, AITP, ACP, Agora) and domain-specific (robot, human-computer, system).
- Evaluation across 7 axes; case studies of MCP, A2A, ANP, Agora.
- Next-generation protocols need adaptability, privacy preservation, group interaction.

## Connections
- [[Model Context Protocol]]
- [[Agent-to-Agent Protocol]]
- [[Agent Network Protocol]]
- [[Agent Communication Languages]]
- [[LLM Agents]]

## Conceptual Contribution
- **Claim:** The zoo of emerging [[LLM Agents]] protocols can be organised along two orthogonal axes (context-oriented vs inter-agent; general-purpose vs domain-specific), and evaluated on a shared seven-axis rubric.
- **Mechanism:** Builds a taxonomy, then systematically compares [[Model Context Protocol]], [[Agent-to-Agent Protocol]], [[Agent Network Protocol]], ACP, Agora, LMOS, agents.json, LOKA, PXP, CrowdES against efficiency, scalability, security, reliability, extensibility, operability, interoperability, with case studies.
- **Concepts introduced/used:** [[Model Context Protocol]], [[Agent-to-Agent Protocol]], [[Agent Network Protocol]], [[Agent Communication Languages]], [[LLM Agents]], [[Multi-Agent Systems]], [[Interoperability]], [[Agent Discovery]]
- **Stance:** survey
- **Relates to:** Shares its subject with [[Survey Of Agent Interoperability Protocols]] but takes a broader taxonomic view; its forward-looking "protocols as ecosystems" framing converges with [[Levels Of Social Orchestration]] and motivates coordination layers like [[Ripple Effect Protocol]]. Historical continuity with [[KQML]] and [[FIPA-ACL]] is implicit.

## Tags
#agent-protocols #llm-agents #survey #interoperability
