# Open Challenges in Multi-Agent Security: Towards Secure Systems of Interacting AI Agents

**Reference:** Christian Schroeder de Witt, Klaudia Krawiecka, Igor Krawczuk, Ben Hagag, William L. Anderson, Peter Belcak, Ben Bucknall, Xiaohong Cai, Ayush Chopra, Doron Cohen, Ron F. Del Rosario, Andis Draguns, Annie Gray, Keren Katz, Vasilios Mavroudis, Jaron Mink, Sumeet Ramesh Motwani, Jonathan Petit, Leif-Sebastian Rembeck, Chandler Smith, John Sotiropoulos, Steven Young, Sarah Scheffler, and Mary Llewellyn (2025; revised 2026). *Open Challenges in Multi-Agent Security: Towards Secure Systems of Interacting AI Agents.* arXiv:2505.02077v2, 29 April 2026; first submitted 4 May 2025. [Abstract](https://arxiv.org/abs/2505.02077) · [PDF](https://arxiv.org/pdf/2505.02077v2) · [HTML](https://arxiv.org/html/2505.02077v2).

## Summary
This position paper frames **[[Multi-Agent Security]]** (MASec) as the study of threats that emerge or amplify through interactions among AI agents, humans, and institutions. Interactions include direct messages and indirect influence through shared environments, memory, or state. Its scope includes distributed and decentralised deployments: securing each component does not establish the security of their composition. The field connects [[AI Safety]], [[Distributed Security]], [[Game Theory]], multi-agent learning, complex systems, and [[AI Governance]].

The revised paper develops an attacker model and a non-exhaustive threat taxonomy rather than a single attack or defence. An attacker may be an external operator, an internally misaligned agent, or a changing coalition. Relevant properties include delegated autonomy, graph position, influence radius, control over goals, and access to shared memory. Threats range from privacy loss and covert collusion to resource exploitation, heterogeneous and swarm attacks, attacks on overseers, cascades, mixed-motive conflict, physical harms, and sociotechnical manipulation. Adversarial stealth and emergent behaviour cut across these categories.

The research agenda centres on engineering interaction environments, preserving trust boundaries and provenance, designing secure protocols, monitoring and containment, attribution, and evaluating entire interacting systems. Security, utility, privacy, and coordination can conflict: restricting messages or connectivity may suppress attacks while undermining useful cooperation. The governance discussion argues that component-level certification and accountability are insufficient when harms arise through composition or emergence, and that adoption of shared security infrastructure is itself a collective-action problem. This is a survey and agenda drawing on prior case studies, not a demonstrated end-to-end secure architecture.

## Key Ideas
- **Interactions are the unit of security analysis.** Agents can influence one another through tools, shared memory, environments, and transformed data as well as explicit messages (§§1, 3).
- **Attacker coalitions can evolve.** Threat models should specify source of intent, autonomy, graph position, propagation reach, goal control, and shared-state access; a single corrupted node need not remain the relevant adversarial unit (§3.1).
- **Safety does not automatically compose.** Complementary agents can divide a harmful workflow into individually permitted steps; local safeguards may miss the aggregate objective (§3.2.5).
- **Provenance is not truth.** Signatures and hash-chained logs establish lineage and integrity, but cannot establish that originating content is accurate or benign. Summarisation and multimodal transformations complicate provenance further (§4.2).
- **Covert channels survive superficial rewriting.** The paper reports prior work in which paraphrasing damages cooperation while leaving semantic channels for [[Secret Collusion]] (§4.2.1).
- **Cryptographic tools need semantic integration.** Commitments, private computation, and proofs are candidate building blocks; deciding what an agent should protect or disclose in free-form interaction remains open (§§4.2.1–4.2.3).
- **Protocol security spans several layers.** [[Agent-to-Agent Protocol]] and [[Model Context Protocol]] introduce metadata, discovery, and tool risks alongside classical replay and downgrade threats (§4.2.1).
- **Defence must cover the network.** Monitoring, authenticated and authorised interactions, isolation, adaptive containment, and multi-agent adversarial testing must account for topology and cross-agent propagation (§§4.3–4.7).
- **Governance must address composition.** Diffuse responsibility, public-good underinvestment, weakest-link effects, and coordination problems obstruct ecosystem-wide security (§5).

## Threat Taxonomy (v2)
The paper treats the following categories as overlapping and non-exhaustive (§3.2):

| Threat family | Interaction-level concern |
| --- | --- |
| Privacy and information integrity | Context sharing, inference, and propagation expose or distort information. |
| Collusion and exfiltration | Apparently ordinary messages conceal coordination or sensitive data. |
| Exploitation | Resource and information asymmetries enable free-riding or coercion. |
| Swarm attacks | Many agents pool probing, inference, or traffic to overcome individual limits. |
| Heterogeneous attacks | Complementary capabilities and safeguards enable harmful task decomposition. |
| Overseer attacks | Supervisory agents and safety pipelines become attack targets. |
| Cascade attacks | Local compromise propagates into systemic failure. |
| Conflict and mixed-motive threats | Incentive conflicts produce escalation and collective-action failures. |
| Physical and embodied security | Agent interactions extend risks into physical environments. |
| Sociotechnical threats | Coordinated manipulation harms people, institutions, and shared environments. |

Adversarial stealth and multi-agent emergence are cross-cutting challenges (§3.4), rather than additional peer categories in v2.

## Reading and Design Implications
For inter-agent infrastructure, this paper motivates explicit trust boundaries, records of delegation and data transformation, and tests of complete workflows under coalition attacks. These are design implications of its agenda, not guarantees supplied by the paper. In particular, a signed assertion can support attribution without proving its content true, and a traceable commitment does not by itself prevent collusion or make liability unambiguous.

The paper's legal and governance discussion should be read as research framing rather than a statement of applicable law. Its defensive proposals generally identify open integration and evaluation problems, especially for free-form communication.

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
- **Mechanism:** A cross-disciplinary framing of Multi-Agent Security with explicit attacker models, an interaction-level threat taxonomy, security–utility / security–security trade-offs, and a research agenda spanning environment engineering, provenance, protocol design, attribution, detection, testing, and governance.
- **Concepts introduced/used:** [[Multi-Agent Security]], [[Secret Collusion]], [[Swarm Attack]], [[Network Effect (Security)]], [[Free-Form Protocols]], [[Stealth Optimisation]], [[Agent Security]], [[AI Governance]]
- **Stance:** position paper / survey / research agenda
- **Relates to:** Sister survey to [[SoK The Attack Surface of Agentic AI]] but operating one level up — at *networks* of agents rather than the agent runtime. Provides the multi-agent threat model that defences like [[Defeating Prompt Injections by Design]] address, that infrastructure proposals like [[Infrastructure for AI Agents]] try to govern, and that economic frameworks like [[Virtual Agent Economies]] embed. Directly extends classical [[Distributed Security]] and connects to [[Learning Collusion in Episodic Inventory-Constrained Markets]] for the collusion sub-thread.

## Source Verification
- Reviewed on 27 October 2026 using `ar-crawl session`, comparing the existing note with the arXiv abstract record and versioned HTML for v2. The original v1 HTML was also inspected to distinguish the revisions.
- The index and concept-map entry already existed; this ingestion updates that note rather than creating a duplicate.
- Evidence and completion checks are recorded in Elephant theory `wiki-paper-2505-02077` (`3166a2dee2c092a1cdfa4385164a55614afe4e55e4a3c991ac213130d5e0a4e8`).

## Tags
#agent-security #multi-agent-security #llm-agents #ai-safety #position-paper #distributed-security
