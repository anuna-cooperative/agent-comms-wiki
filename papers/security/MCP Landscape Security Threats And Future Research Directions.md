# Model Context Protocol (MCP): Landscape, Security Threats, and Future Research Directions

**Reference:** Hou, Zhao, Wang, Wang (2025). Huazhong University of Science and Technology. *arXiv:2503.23278*. Source file: `2503.23278.pdf`. [URL](https://arxiv.org/abs/2503.23278)

## Summary
The first in-depth academic analysis of the **Model Context Protocol (MCP)** ecosystem. The authors trace the evolution from manual API wiring through OpenAI plugins and framework-specific tool abstractions (LangChain, LlamaIndex) to Anthropic's MCP, which they characterise as a **protocol-level standard** that decouples tool implementation from usage, enabling dynamic discovery, bi-directional channels, and schema negotiation.

Beyond the ecosystem survey, the paper contributes a **systematic threat taxonomy**: four attacker archetypes (malicious developers, external attackers, malicious users, security flaws) and 16 concrete threat scenarios spanning creation, deployment, operation, and maintenance of MCP servers. Real-world case studies validate the threat model against current servers, and the authors outline governance and scalability directions for MCP's sustainable growth.

## Key Ideas
- MCP as the first post-function-calling *protocol* standard for LLM tool access (vs platform-specific plugins).
- Lifecycle model for MCP servers: creation, deployment, operation, update, termination.
- Four attacker archetypes: malicious developers, external attackers, malicious users, security flaws.
- 16 threat scenarios including tool poisoning, installer spoofing, unauthorized access.
- Bi-directional communication channels distinguish MCP from one-way plugin interfaces.
- Remaining gaps: security, tool discoverability, remote deployment, governance.

## Connections
- [[Model Context Protocol]]
- [[Survey Of Agent Interoperability Protocols]]
- [[Survey Of AI Agent Protocols]]
- [[LLM Agents]]
- [[Tool Use]]
- [[AI Agents Under Threat]]
- [[MalTool Malicious Tool Attacks]]
- [[Agent Security]]

## Conceptual Contribution
- **Claim:** MCP represents a qualitative shift from hardcoded, per-application tool bindings to a composable, discoverable ecosystem of AI-native web services — but its rapid adoption has outrun academic analysis of its architecture, lifecycle, and security posture.
- **Mechanism:** Combines an architectural decomposition (host/client/server) and a five-phase server lifecycle with a threat-modelling exercise across 16 scenarios and 4 attacker archetypes, grounded in real MCP servers surveyed in the wild.
- **Concepts introduced/used:** [[Model Context Protocol]], [[Tool Use]], [[Agent Security]], [[LLM Agents]], [[Interoperability]], [[Agent Discovery]]
- **Stance:** survey / threat analysis
- **Relates to:** Deepens the MCP security discussion sketched in [[Survey Of Agent Interoperability Protocols]] and [[Survey Of AI Agent Protocols]]; its threat taxonomy complements [[MalTool Malicious Tool Attacks]] and [[AI Agents Under Threat]] by focusing specifically on the MCP protocol surface rather than individual tools.

## Tags
#mcp #agent-protocols #security #llm-agents #survey
