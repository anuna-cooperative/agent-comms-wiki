# KQML - A Language and Protocol for Knowledge and Information Exchange

**Reference:** Finin, Fritzson, McKay, McEntire (1994). *AAAI Technical Report WS-94-02* (ARPA Knowledge Sharing Effort). Source file: `741.pdf`

## Summary
This paper describes the design of the Knowledge Query and Manipulation Language (KQML), an agent communication language developed under the ARPA Knowledge Sharing Effort. KQML is both a message format and a message-handling protocol supporting run-time knowledge sharing among cooperating intelligent agents. Its core contribution is an extensible set of *performatives* (speech-act-style operations such as tell, ask-if, ask-all, subscribe, advertise, broker, recruit) that define what an agent may do with another agent's knowledge and goal stores.

KQML is organised as three layers - content, message, and communication - where the message layer carries a performative and metadata while the content layer is treated as opaque (often KIF). The paper introduces *facilitators* - special agents that coordinate others via content-based routing, brokering, recruiting, and matchmaking - and describes KRILs (KQML Router Interface Libraries) for embedding KQML into Lisp, Prolog, C, and SQL applications.

## Key Ideas
- Performative-based messaging grounded in speech act theory.
- Three-layer architecture: content, message, communication.
- Facilitators for content-based routing, brokering, recruiting.
- KRILs as embedding libraries for existing systems.
- Prototype uses: ARPA Rome Planning Initiative, CAD/CAM, intelligent databases.

## Connections
- [[Speech Act Theory]]
- [[FIPA-ACL]]
- [[Agent Communication Languages]]
- [[Ontologies]]
- [[Multi-Agent Systems]]

## Conceptual Contribution
- **Claim:** Knowledge sharing among heterogeneous intelligent agents is best realised by a layered, performative-based message protocol whose content is opaque and whose routing is mediated by special facilitator agents.
- **Mechanism:** Defines a three-layer architecture (content / message / communication), a set of extensible performatives grounded in [[Speech Act Theory]], facilitators for brokering/recruiting/matchmaking, and KRIL embedding libraries for Lisp/Prolog/C/SQL.
- **Concepts introduced/used:** [[KQML]], [[Performatives]], [[Facilitators]], [[Content Languages]], [[KIF]], [[Speech Act Theory]], [[Ontologies]], [[Multi-Agent Systems]], [[Agent Communication Languages]]
- **Stance:** foundational / engineering
- **Relates to:** Direct philosophical descendant of [[Foundations Of Illocutionary Logic]] and sibling proposal to [[Common Business Communication Language]]; becomes the ancestor that [[FIPA-ACL]], [[Agent Communication And Institutional Reality]], [[A Common Ontology Of ACLs]], and the modern surveys ([[Survey Of AI Agent Protocols]], [[Survey Of Agent Interoperability Protocols]]) all build on or critique.

## Tags
#kqml #acl #speech-acts #foundational #agent-communication
