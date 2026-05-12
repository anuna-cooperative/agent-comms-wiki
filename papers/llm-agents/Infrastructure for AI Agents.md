# Infrastructure for AI Agents

**Reference:** Chan, Wei, Huang, Rajkumar, Perrier, Lazar, Hadfield & Anderljung (2025). *Infrastructure for AI Agents.* TMLR (accepted). arXiv:2501.10114 (Centre for the Governance of AI; Oxford; ANU; Toronto). [URL](https://arxiv.org/abs/2501.10114).

## Summary
The paper proposes the concept of **agent infrastructure**: the technical systems and shared protocols, *external* to any individual agent, that mediate how agents interact with each other, with humans, and with institutions. The argument is by analogy to the Internet: a network of capable agents requires its own equivalent of TLS, DNS, X.509, BGP, and HTTP — because most safety properties of multi-agent ecosystems cannot be obtained by behavioural training of any individual model.

Chan et al. identify **three functions** agent infrastructure should serve. (1) **Attribution** — binding actions, properties, and credentials to specific agents and to the humans or institutions accountable for them, via agent IDs, attestations, and audit logs. (2) **Interaction shaping** — efficient inter-agent communication protocols, agreement formation, [[Mechanism Design|mechanism design]] for resource allocation, and reputation systems. (3) **Detection and remediation** — monitoring for harmful behaviour and providing mechanisms to roll back, contain, or compensate for damage.

For each function the paper sketches research directions, candidate adoption paths, relationships to existing internet infrastructure, and open problems. The framing is deliberately *governance-first*: infrastructure exists not to make agents more capable but to keep their externalities tractable as deployment scales. The paper is now the standard citation for the agent-governance / agent-infrastructure thread underlying [[Model Context Protocol]], [[Agent-to-Agent Protocol]], [[Agent Network Protocol]], and emerging "agent passport" / verifiable-credential proposals.

## Key Ideas
- **Agent infrastructure as governance layer:** external technical systems mediating agent interactions — distinct from training-time alignment.
- **Three functions:** attribution; interaction shaping; detection & remediation. Each maps to concrete research directions.
- **Attribution:** agent IDs, verifiable credentials, attestations, audit logs, principal-binding (which human/org owns this agent).
- **Interaction shaping:** inter-agent communication protocols; standardised agreement primitives; mechanism design; reputation.
- **Detection & remediation:** anomaly detection on agent traffic; rollback mechanisms; insurance / compensation rails; "kill switch" governance.
- **Analogy to Internet protocols (HTTPS, DNS, BGP, X.509):** infrastructure adoption is path-dependent, requires standardisation bodies, and trades expressivity for safety properties.
- **Open questions:** who issues credentials, how privacy interacts with attribution, how to bootstrap adoption, what is enforceable cross-jurisdiction.

## Connections
- [[LLM Agents]]
- [[Multi-Agent Systems]]
- [[Open Challenges in Multi-Agent Security]]
- [[Virtual Agent Economies]]
- [[NDAI Agreements]]
- [[Trusted Machine Learning Models Unlock Private Inference]]
- [[Agent Security]]
- [[Mechanism Design]]
- [[Model Context Protocol]]
- [[Agent-to-Agent Protocol]]
- [[Agent Network Protocol]]
- [[Survey Of AI Agent Protocols]]
- [[Survey Of Agent Interoperability Protocols]]
- [[LLM Agent Communication Protocol Requires Urgent Standardization]]
- [[Trust and Reputation]]
- [[Distributed Security]]

## Conceptual Contribution
- **Claim:** Many of the safety, accountability, and interoperability properties society will need from AI agents are *not* properties of any individual model — they live in the *infrastructure* between agents. Just as the Internet's safety depends on TLS / DNS / BGP rather than on any single application, agent ecosystems will depend on agent-level analogues: attribution, interaction shaping, and detection-and-remediation infrastructure.
- **Mechanism:** A three-function taxonomy (attribution / interaction-shaping / detection-and-remediation) with a catalogue of candidate primitives — agent IDs, verifiable credentials, inter-agent protocols, certification regimes, reputation systems, rollback mechanisms — plus analysis of adoption pathways relative to existing internet infrastructure.
- **Concepts introduced/used:** [[Agent Infrastructure]], [[Agent ID]], [[Verifiable Agent Credentials]], [[Inter-Agent Protocols]], [[Action Attribution]], [[Agent Reputation]], [[Agent Rollback]], [[AI Governance]]
- **Stance:** governance / position paper / research-agenda
- **Relates to:** Provides the governance scaffolding within which [[Open Challenges in Multi-Agent Security]] threats must be addressed; the institutional counterpart to [[Virtual Agent Economies]]'s economic framing; concrete protocols proposed include [[Model Context Protocol]], [[Agent-to-Agent Protocol]], [[Agent Network Protocol]] — surveyed alongside in [[Survey Of AI Agent Protocols]] and [[Survey Of Agent Interoperability Protocols]]. The attribution leg connects to [[NDAI Agreements]] (TEEs as a particular attribution / commitment substrate) and [[Trusted Machine Learning Models Unlock Private Inference]] (capable models as a trust substrate).

## Tags
#agent-infrastructure #ai-governance #llm-agents #multi-agent #attribution #protocols #tmlr
