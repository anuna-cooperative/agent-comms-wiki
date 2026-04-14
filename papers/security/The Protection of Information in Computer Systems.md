# The Protection of Information in Computer Systems

**Reference:** Jerome H. Saltzer, Michael D. Schroeder (1975). *Proceedings of the IEEE*, 63(9):1278-1308. Source file: `saltzer-schroeder-1975.pdf`. [URL](https://www.cl.cam.ac.uk/teaching/1011/R01/75-protection.pdf)

## Summary
The foundational tutorial on information protection in computer systems, concentrating on the architectural structures (hardware and software) necessary to support protection. Organised as three sections: (I) basic principles, functions and elementary protection/authentication mechanisms; (II) descriptor-based protection architectures and the relation between capability systems and access-control-list systems; (III) state of the art and research projects.

The paper is most remembered for its eight design principles (economy of mechanism, fail-safe defaults, complete mediation, open design, separation of privilege, least privilege, least common mechanism, psychological acceptability). It gives precise definitions for *principal*, *capability* ("an unforgeable ticket"), *access control list*, *domain*, *protected subsystem*, *confinement*, and distinguishes *discretionary* from *nondiscretionary* controls. Saltzer and Schroeder frame the tension between capability-oriented (ticket-oriented) and list-oriented systems that still shapes modern access control.

## Key Ideas
- Three categories of violation: unauthorized information release, unauthorized modification, unauthorized denial of use
- Eight design principles for protection mechanisms (least privilege, fail-safe defaults, complete mediation, etc.)
- Functional taxonomy: unprotected / all-or-nothing / controlled sharing / user-programmed sharing
- Capability ("ticket-oriented") vs. access-control-list ("list-oriented") as dual descriptor structures
- Protected subsystems as encapsulated domains with controlled entry points
- Authentication vs. authorization distinction; the notion of principal as the unit of accountability
- Confinement problem: preventing a borrowed program from leaking the data it accesses

## Connections
- [[Object Capability Security]]
- [[Capability Security]]
- [[Principle of Least Authority]]
- [[Ambient Authority]]
- [[Confused Deputy]]
- [[End-to-End Arguments in System Design]]
- [[Distributed Security]]
- [[LangSec]]

## Conceptual Contribution
- **Claim:** Protection is not a bag of techniques but an architectural discipline; a small set of design principles (especially least privilege, fail-safe defaults, complete mediation, economy of mechanism) together with the capability/ACL descriptor abstraction is sufficient to organise the design space of secure systems.
- **Mechanism:** Descriptor-based protection: every access to a protected object passes through a descriptor (capability or ACL entry) managed by a reference monitor. Protected subsystems encapsulate data with domain-specific procedures callable only at designated entry points. Principals are authenticated once; authorization is then mediated per access.
- **Concepts introduced/used:** [[Principle of Least Authority]] (least privilege), [[Capability Security]], [[Object Capability Security]], [[Ambient Authority]] (as an antipattern), [[Confused Deputy]] (implicit in the delegation discussion), access control list, protected subsystem, confinement, complete mediation, fail-safe defaults, separation of privilege, economy of mechanism, psychological acceptability.
- **Stance:** engineering / systems — normative architectural guidance grounded in Multics experience.
- **Relates to:** Provides the vocabulary used by [[Object Capability Security]] and [[Capability Security]] work (Dennis & Van Horn, Hydra, KeyKOS, EROS, Capsicum). Its least-privilege principle underlies [[Principle of Least Authority]], and its critique of pervasive authority is the ancestor of [[Ambient Authority]] and [[Confused Deputy]] analyses. The architectural posture prefigures [[End-to-End Arguments in System Design]] (Saltzer again) and is philosophically aligned with [[LangSec]]'s call for narrow, verifiable interfaces. Fundamental to [[Distributed Security]].

## Tags
#security #capabilities #access-control #design-principles #systems
