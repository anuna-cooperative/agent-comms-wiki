# D'Agents: Security in a Multiple-Language, Mobile-Agent System

**Reference:** Robert S. Gray, David Kotz, George Cybenko, Daniela Rus (1998). *Mobile Agents and Security* (G. Vigna, ed.), Springer LNCS. Source file: `gray-security-book.pdf`. URL: https://doi.org/10.1007/3-540-68671-1_9

## Summary
This chapter describes the security architecture of D'Agents (formerly Agent Tcl), a mobile-agent system whose agents can be written in Tcl, Java, or Scheme. The authors frame mobile-agent security as four interrelated problems: protecting the host machine from malicious agents, protecting agents from each other, protecting an agent from a malicious machine, and limiting aggregate resource consumption across groups of machines.

For machine and inter-agent protection, D'Agents relies on PGP-based cryptographic authentication of owners, identity-based resource managers that enforce access-control policies, and secure execution environments (Safe Tcl, Java security managers, Scheme 48 modules) separated cleanly from policy. For group-of-machine protection they plan an electronic-cash market approach; for agent-from-host attacks they survey partial techniques (detection via audit trails, encrypted computation, trusted reference machines) since full prevention requires hardware support they do not assume.

## Key Ideas
- Four interrelated mobile-agent security problems.
- Separation of enforcement mechanism from policy.
- Multi-language support with a uniform C/C++ server library.
- Cryptographic authentication + per-identity resource managers.
- Open problem: protecting agents from malicious hosts without trusted hardware.

## Connections
- [[Distributed Security]]
- [[Multi-Agent Systems]]
- [[Agent-Oriented Programming]]
- [[Capability Security]]
- [[LangSec]]

## Conceptual Contribution
- **Claim:** Mobile-agent security comprises four distinct but interrelated problems (protecting machine, protecting other agents, protecting agent from host, protecting group of machines); solving them requires layered mechanisms that cleanly separate enforcement from policy and span multiple execution languages.
- **Mechanism:** Architectural description of D'Agents' four-level stack (transport, server, interpreter, agents); PGP-based owner authentication; language-specific enforcement modules (Safe Tcl, Java security manager, Scheme 48) routed through a language-independent resource manager; planned e-cash market approach for aggregate-resource protection; survey of partial techniques (audit trails, encrypted computation) for the agent-from-host problem.
- **Concepts introduced/used:** [[Mobile Agent]], [[Four Security Problems]], [[Mechanism vs Policy]], [[Safe Tcl]], [[Resource Manager Agent]], [[PGP Authentication]], [[Audit Trail]], [[Encrypted Computation]]
- **Stance:** engineering / survey
- **Relates to:** Extends the earlier [[Agent Tcl Flexible Secure Mobile Agents]] with a mature security story; shares threat concerns with [[AI Agents Under Threat]] and [[Distributed Security]]; policy/mechanism separation echoes the sandboxing principles of [[Extensible Distributed Coordination]] and [[Agents Secure Interaction in Data Driven Languages]].

## Tags
#mobile-agents #security #dagents #tcl
