# KQML - A Language and Protocol for Knowledge and Information Exchange

**Reference:** Finin, Fritzson, McKay, McEntire (1994). *AAAI Technical Report WS-94-02, Workshop on Knowledge-Based Collaboration Systems*. Source file: `WS94-02-007.pdf`. [URL](https://cdn.aaai.org/Workshops/1994/WS-94-02/WS94-02-007.pdf)

## Summary
This is one of the canonical early KQML papers, describing the Knowledge Query and Manipulation Language as both a message format and a message-handling protocol for run-time knowledge sharing among intelligent agents. Developed as part of the ARPA Knowledge Sharing Effort (KSE), KQML is presented as an enabling technology for building large-scale, sharable, reusable knowledge bases and for letting independently developed systems interoperate at the knowledge level rather than at the level of raw RPC or ad-hoc protocols.

The paper introduces the core architectural commitments of KQML: an extensible set of performatives (reserved speech-act-like operations that agents perform on each other's knowledge and goal stores), a three-layer message structure (content, message/communication, and communication mechanics), and a special class of facilitator agents that coordinate interactions and provide services such as brokering, recruitment, and content-based routing. Performatives fall into seven categories (basic query, multi-response query, response, generic informational, generator, capability-definition, networking) including ask-one, ask-all, tell, untell, achieve, subscribe, advertise, broker, recommend, and recruit.

The authors sketch KQML's semantics informally in terms of effects on an agent's belief and intention stores (e.g., tell(S) is an assertion by the sender that S is in its virtual belief store; achieve(S) asks the recipient to add S to its intention store), and note ongoing work on formal semantics via definite clause grammars and on interoperability with KIF and Ontolingua ontologies.

## Key Ideas
- KQML as both message format and message-handling protocol; focused on pragmatics, secondarily on semantics.
- Three-layer message structure: content, communication/message, communication mechanics.
- Extensible performative set organized into seven categories.
- Facilitator agents: brokers, matchmakers, recruiters, content-based routers.
- Synchronous, asynchronous, streaming, and subscription interaction protocols.
- Performatives as speech-act-like operations on agents' belief and goal stores.
- Integration with KIF for content and shared ontologies for semantic grounding.
- Part of the ARPA Knowledge Sharing Effort (KSE): Interlingua, KRSS, SRKB, External Interfaces working groups.

## Connections
- [[KQML]]
- [[FIPA-ACL]]
- [[Agent Communication Languages]]
- [[Speech Act Theory]]
- [[Ontologies]]
- [[A Common Ontology Of ACLs]]
- [[ACL Design Principles]]

## Conceptual Contribution
- **Claim:** Heterogeneous intelligent systems can share knowledge at run time if they agree on a protocol of speech-act-like performatives over a common content language and shared ontology, coordinated by specialized facilitator agents.
- **Mechanism:** Defines an extensible parenthesized message syntax with reserved performative names and keyword/value arguments; layers communication (sender/receiver/identifier), message (performative, ontology, language), and content; routes messages through facilitators that implement brokering, matchmaking, and content-based subscription; gives informal speech-act semantics in terms of effects on virtual belief and intention stores.
- **Concepts introduced/used:** [[KQML]], [[Performatives]], [[Facilitator Agents]], [[KIF]], [[Speech Act Theory]], [[Ontologies]], [[Agent Communication Languages]]
- **Stance:** foundational
- **Relates to:** One of the defining sources for [[KQML]] and [[Agent Communication Languages]] in this vault; direct precursor to [[FIPA-ACL]]; establishes the performative/speech-act framing critiqued and refined in [[ACL Design Principles]], [[ACL Rethinking Principles]], and [[Agent Communication Languages - Rethinking the Principles]]; the facilitator concept informs [[Agent Discovery]] and [[Agent Hub]] patterns.

## Tags
#kqml #acl #speech-acts #agent-communication #multi-agent-systems #ontologies
