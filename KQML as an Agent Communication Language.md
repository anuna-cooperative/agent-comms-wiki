# KQML as an Agent Communication Language

**Reference:** Tim Finin, Richard Fritzson, Don McKay, and Robin McEntire (1994). *CIKM '94 (Proceedings of the Third International Conference on Information and Knowledge Management)*. Source file: `191246.191322.pdf`

## Summary
Foundational paper on the Knowledge Query and Manipulation Language (KQML), developed under the ARPA Knowledge Sharing Effort. KQML is both a message format and a message-handling protocol for run-time knowledge sharing among intelligent agents. It builds on speech-act theory: each message (a *performative*) carries an illocutionary force (ask, tell, subscribe, advertise, recommend, broker, recruit, etc.) atop a content language (often KIF) and an ontology reference.

The paper describes the three-layer structure (content / message / communication), facilitator agents that provide matchmaking, brokering and content-based routing, and implementations including routers, facilitators, and KRIL interface libraries. KQML became the reference point against which later ACLs (notably FIPA-ACL) were designed.

## Key Ideas
- Performatives as speech-act-inspired message types
- Separation of content language, message layer, and transport
- Facilitators for advertise/subscribe, brokering, recruitment, routing
- Reserved performatives: ask-if/ask-all, tell, stream-all, subscribe, monitor, advertise, recruit
- KIF + ontologies as the assumed content layer

## Connections
- [[KQML]]
- [[FIPA-ACL]]
- [[Agent Communication Languages]]
- [[Speech Act Theory]]
- [[Ontologies]]
- [[Multi-Agent Systems]]
- [[A Scalable Communication Protocol for Networks of LLMs]]

## Conceptual Contribution
- **Claim:** Interoperable knowledge sharing among heterogeneous intelligent agents requires a three-layer communication language (content / message / communication) whose message layer is built from speech-act-inspired *performatives*, and whose runtime infrastructure provides facilitator agents for matchmaking and brokering.
- **Mechanism:** Specify ~30 reserved performatives (ask-if, tell, subscribe, advertise, recruit, broker-one, …) that wrap a content expression (typically KIF) with an ontology reference and transport metadata; implement via routers, facilitators, and per-application KRIL interface libraries; demonstrate advertise/subscribe, content-based routing, and recruitment patterns.
- **Concepts introduced/used:** [[KQML]], [[Performatives]], [[Speech Act Theory]], [[Facilitator Agents]], [[Mentalistic Semantics]], [[KIF]], [[Ontologies]], [[Agent Communication Languages]]
- **Stance:** engineering / standard-proposal
- **Relates to:** Foundational reference against which [[FIPA-ACL]], [[A Common Ontology Of ACLs]], [[ACL Rethinking Principles]], and [[Agent Communication Languages - Rethinking the Principles]] argue (over mentalistic vs commitment-based semantics). Performatives-as-protocol anticipates Agora's Protocol Documents in [[A Scalable Communication Protocol for Networks of LLMs]] and the MCP/A2A/ANP layer of modern LLM agents ([[Model Context Protocol]], [[Agent-to-Agent Protocol]], [[Agent Network Protocol]]).

## Tags
#kqml #acl #agent-communication #speech-acts #knowledge-sharing
