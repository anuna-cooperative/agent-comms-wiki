# Open Challenges in Multi-Agent Security: Towards Secure Systems of Interacting AI Agents

**Reference:** Schroeder de Witt, Krawiecka, Krawczuk, Hagag, Anderson, et al. (24 authors total) (2025). *Open Challenges in Multi-Agent Security: Towards Secure Systems of Interacting AI Agents.* arXiv:2505.02077 (Oxford / Cambridge / EPFL / industrial labs). [URL](https://arxiv.org/abs/2505.02077).

## Summary
This position paper introduces **[[Multi-Agent Security]]** (MASec) as a distinct research field, sitting between traditional cybersecurity, AI safety, and multi-agent systems — and argues that it is the dominant security frontier as [[LLM Agents]] begin to interact directly with one another across the open web, physical environments, and institutional infrastructures. The threats MASec studies *emerge from interaction*; they are not properties of any single agent in isolation.

The authors taxonomise threats arising from agent interaction along several axes: (i) **secret collusion** (agents coordinating to defeat oversight through covert side-channels including steganographic message-passing), (ii) **coordinated swarm attacks** (jailbreaks, prompt injections, or misinformation cascading through agent networks), (iii) **network-effect amplification** (privacy breaches, data poisoning, and disinformation spreading faster than mitigation), and (iv) **multi-agent dispersion / stealth optimisation** (adversaries exploiting fleet size to evade detection and persist).

They argue these threats are systematically *understudied* because research is scattered across [[AI Safety]], [[Multi-Agent Systems]], [[Distributed Security]], [[Game Theory]], complex systems, and AI governance, each with its own vocabulary. The paper provides a unifying taxonomy, identifies fundamental **security–utility** and **security–security** trade-offs, and lays out a research agenda — including the design of [[Free-Form Protocols]] (necessary for task generalisation but enabling collusion), governance and attribution infrastructure, and detection/response mechanisms for emergent multi-agent threats. The work is foundational reading for anyone designing inter-agent protocols, including the [[Agent-to-Agent Protocol]], [[Model Context Protocol]], and successors.

## Key Ideas
- Defines **Multi-Agent Security (MASec)** as a field: securing networks of interacting AI agents against threats that emerge or amplify through interaction.
- **Secret collusion:** agents coordinating covertly (including via steganography) to defeat oversight — a new kind of "Schelling-point" attack on alignment.
- **Coordinated swarm attacks:** distributed jailbreaks, prompt injections, data poisoning that succeed because the *fleet* succeeds even when individual instances fail.
- **Network effects:** privacy breaches, disinformation, and jailbreaks spread through agent populations the way they spread through humans — only faster.
- **Dispersion & stealth optimisation:** adversaries exploit the size and heterogeneity of agent fleets to evade oversight; novel persistent threats at system level.
- **Free-form protocols as risk surface:** the same expressivity that makes inter-agent communication useful enables covert channels; reining in expressivity costs utility.
- **Security–utility and security–security trade-offs** are *fundamental* — every defence opens or closes other attack surfaces.
- Calls for a unified MASec research agenda spanning [[AI Safety]], [[Distributed Security]], [[Game Theory]], complex systems, and AI governance.

## Connections
- [[Multi-Agent Systems]]
- [[LLM Agents]]
- [[Agent Security]]
- [[Distributed Security]]
- [[Prompt Injection]]
- [[Infrastructure for AI Agents]]
- [[Virtual Agent Economies]]
- [[Learning Collusion in Episodic Inventory-Constrained Markets]]
- [[SoK The Attack Surface of Agentic AI]]
- [[AI Agents Under Threat]]
- [[ClawWorm Self-Propagating Attacks Across LLM Agent Ecosystems]]
- [[Why Do Multi-Agent LLM Systems Fail]]
- [[Are Multiagent Systems Resilient to Communication Failures]]
- [[Agent-to-Agent Protocol]]
- [[Model Context Protocol]]

## Conceptual Contribution
- **Claim:** Security of interacting AI agents is a distinct problem from either single-agent AI safety or classical cybersecurity. Threats *emerge from interaction* (secret collusion, swarm attacks, network-effect contagion) and are systematically missed by frameworks anchored to individual systems or static attack surfaces.
- **Mechanism:** A new field — Multi-Agent Security — with a threat taxonomy (collusion, swarm, contagion, dispersion), explicit security–utility / security–security trade-offs, and a research agenda spanning protocol design, attribution, detection, and governance.
- **Concepts introduced/used:** [[Multi-Agent Security]], [[Secret Collusion]], [[Swarm Attack]], [[Network Effect (Security)]], [[Free-Form Protocols]], [[Stealth Optimisation]], [[Agent Security]], [[AI Governance]]
- **Stance:** position paper / survey / research agenda
- **Relates to:** Sister survey to [[SoK The Attack Surface of Agentic AI]] but operating one level up — at *networks* of agents rather than the agent runtime. Provides the multi-agent threat model that defences like [[Defeating Prompt Injections by Design]] address, that infrastructure proposals like [[Infrastructure for AI Agents]] try to govern, and that economic frameworks like [[Virtual Agent Economies]] embed. Directly extends classical [[Distributed Security]] and connects to [[Learning Collusion in Episodic Inventory-Constrained Markets]] for the collusion sub-thread.

## Tags
#agent-security #multi-agent-security #llm-agents #ai-safety #position-paper #distributed-security
