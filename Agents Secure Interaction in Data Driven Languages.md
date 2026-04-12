# Agents Secure Interaction in Data Driven Languages

**Reference:** Mahdi Zargayouna, Flavien Balbo, Serge Haddad. *INRETS / LAMSADE / LSV-CNRS*. Source file: `ladspaper9.pdf`

## Summary
The authors focus on a distinct class of Multi-Agent Systems where agents coordinate indirectly through a shared, data-driven space (like Linda tuple spaces or Klaim) rather than via point-to-point ACL messaging. They argue existing data-driven coordination languages conflate security with the data layer, leaving no principled way to separate agent-level access-control policies from the shared space. They propose LACIOS (Language for Agent Contextual Interaction in Open Systems), which introduces *properties* (predicate-based descriptions) and symbolic matching as a richer alternative to tuple templates.

Security in LACIOS is handled as an orthogonal layer of access-control rules expressed in the same language as agent behavior: global rules restrict who may see what, and local rules let each agent hide or expose parts of its own state. The paper gives syntax and informal semantics for spawn/add/update/look primitives and discusses a prototype implementation in Java-LACIOS.

## Key Ideas
- Tuple-space / data-driven coordination separated from message-passing MAS.
- Properties + symbolic descriptions replace rigid tuples.
- Security as an orthogonal layer of global/local access rules.
- Unified language for behavior and security policies.
- Enables fine-grained contextual perception in open MAS.

## Connections
- [[Multi-Agent Systems]]
- [[Distributed Security]]
- [[Agent-Oriented Programming]]
- [[Agent Communication Languages]]

## Conceptual Contribution
- **Claim:** Data-driven coordination languages (Linda, Klaim, SecSpaces, SecOS) lack a principled separation between application logic and security; a richer, property-based description model with orthogonal access-control rules fixes this without abandoning the shared-space paradigm.
- **Mechanism:** Introduces LACIOS with four primitives (spawn, add, update, look), replaces rigid tuples with descriptions (property→value maps) and symbolic descriptions parameterised by variables; specifies global access rules controlling perception/retrieval and local rules enabling contextual self-hiding by agents; defines process syntax and sketches a Java-LACIOS implementation.
- **Concepts introduced/used:** [[Data-Driven Coordination]], [[Tuple Spaces]], [[Properties]], [[Symbolic Descriptions]], [[Access Control Rules]], [[Coordination-Security Separation]], [[Open Multi-Agent Systems]]
- **Stance:** engineering / formal-semantic
- **Relates to:** Extends the Linda/Klaim lineage with a security concern that parallels [[DAgents Security Book Chapter]] and [[Agent Tcl Flexible Secure Mobile Agents]] but at the coordination-language level rather than the mobile-code level; offers a stigmergic alternative to the message-centric view of [[Multiagent Systems Sycara]].

## Tags
#coordination-languages #tuple-spaces #security #lacios
