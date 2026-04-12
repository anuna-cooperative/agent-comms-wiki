# An Overview of KQML: A Knowledge Query and Manipulation Language

**Reference:** KQML Advisory Group — Tim Finin, Don McKay, Rich Fritzson (and Hans Chalupsky, Stuart Shapiro, Gio Wiederhold) (1992/1993). *Technical report, DARPA Knowledge Sharing Effort*. Source file: `kqmloverview.pdf`. URL: https://www.csee.umbc.edu/csee/research/kqml/papers/

## Summary
This foundational technical report introduces KQML, the language and protocol designed under the DARPA-sponsored Knowledge Sharing Effort to enable interoperability among heterogeneous intelligent agents and knowledge-based systems. It identifies the canonical module types — End User Applications (EUAs), Knowledge-Based Systems (KBs), Knowledge Base Repositories (KBRs), Databases (DBs), and Active Sensors (ASs) — and enumerates the fifteen possible interfaces between them, selecting KB-to-KB knowledge interchange as the central target.

KQML is organized as three layers: a content layer (domain content in KIF or other logic), a message layer (performatives like `tell`, `ask-one`, `subscribe`, `advertise`, `register`), and a communication layer (sender, receiver, reply-ids, transport). The report details performatives, facilitators/routers (SKTP), ontology/topic matching, and a Prolog-based implementation. It set the vocabulary and architectural template for nearly all subsequent agent-communication work.

## Key Ideas
- Three-layer design: content, message, communication.
- Performatives as named speech-act-like primitives (tell, ask, subscribe, advertise).
- Facilitators/mediators (SKTP) for routing and knowledge-based-service discovery.
- Module taxonomy: EUA, KB, KBR, DB, AS.
- Separation of content language (KIF) from communication language (KQML).

## Connections
- [[KQML]]
- [[FIPA-ACL]]
- [[Agent Communication Languages]]
- [[Ontologies]]
- [[Speech Act Theory]]
- [[Performatives]]
- [[Facilitators]]
- [[KIF]]
- [[Mentalistic Semantics]]
- [[Conceptualization]]

## Conceptual Contribution
- **Claim:** Large heterogeneous knowledge-based systems need a standard high-level language and protocol for interchange that separates domain content (ontologies/KIF) from communicative intent (performatives) and from transport — KQML provides this missing middle layer.
- **Mechanism:** Defines module taxonomy (EUA, KB, KBR, DB, AS) and their 15 interfaces; proposes KQML's three-layer architecture (content / message / communication); specifies performatives (tell, ask-one/all, stream, subscribe, advertise, register, broker, recruit, recommend) inspired by speech acts; specifies SKTP (facilitator) protocol for routing, ontology matching, and service discovery; gives a Prolog reference implementation.
- **Concepts introduced/used:** [[KQML]], [[Performatives]], [[Facilitator]], [[SKTP]], [[Content Language]], [[KIF]], [[Knowledge Sharing Effort]], [[Ontology Matching]], [[Speech Acts]]
- **Stance:** engineering / foundational
- **Relates to:** The language critiqued in [[ACL Rethinking Principles]] and [[Verifiable Semantics for ACLs]] for its mentalistic informal semantics; its performatives are inherited by [[FIPA-ACL]] and the conversation work in [[Coordinating Agents Using ACL Conversations]]; its ontology-sharing aspirations are addressed by [[Ontolingua Portable Ontology Specifications]].

## Tags
#kqml #knowledge-sharing #darpa #performatives
