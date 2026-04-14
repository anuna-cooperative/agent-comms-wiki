# The Heart of Spritely: Distributed Objects and Capability Security

**Reference:** Christine Lemmer-Webber, Randy Farmer, Juliana Sims (2025). *Spritely Institute whitepaper, May 21 2025*. Source file: `spritely-core.pdf`. [URL](https://files.spritely.institute/papers/spritely-core.pdf) · [Project](https://spritely.institute/goblins/)

## Summary
The second paper in Spritely's three-part design series, this whitepaper lays out the technical core of **Goblins** — a distributed, transactional, object-programming environment built around **object capability security** (OCap). The thesis: secure peer-to-peer applications should feel *like ordinary programming*, not like a separate security discipline, and capability security makes that achievable. The operative slogan is *"If you don't have it, you can't use it"* — authority is conveyed only by holding a reference, never ambient.

The paper works through (1) capability security as ordinary reference-passing, motivated against Access Control Lists and the confused-deputy problem; (2) Goblins itself — a distributed object programming model with promise pipelining, vats as containers of synchronous turns, turns as cheap local transactions, and time-travel debugging; (3) **OCapN** — a new cross-implementation protocol for secure distributed object communication; (4) portable encrypted storage for capabilities; (5) library/application safety implications. Implementations exist for Guile and Racket Schemes, with a roadmap toward language-heterogeneous object invocation.

Goblins is the modern distillation of a three-decade lineage running through Mark Miller's **E language**, the CapTP protocol, Jonathan Rees's capability-kernel argument, and Carl Hewitt's actor formalism. It reframes agent communication as *object-reference passing over the network*, offering an alternative substrate to the ACL/RPC-stack approach that dominates modern LLM-agent protocols.

## Key Ideas
- **Principle of Least Authority (POLA)**: grant each piece of code only the authority it needs, no more
- **Object capability security**: authority = unforgeable object reference. Lexical scoping + no ambient authority + no global mutable state
- **Confused-deputy problem**: why ACLs fail when a privileged program is tricked into acting for an attacker
- **Vat**: an isolated synchronous execution context; objects live inside vats; vats communicate asynchronously
- **Turn**: an atomic event loop iteration inside a vat; turns are transactional — errors roll back the turn's local state
- **Promise pipelining** (from CapTP): chain calls on a reference before the prior call resolves, reducing round trips
- **Time-travel distributed debugging**: replay turns deterministically across the network
- **OCapN (Object Capability Network)**: protocol for secure, cross-language distributed object invocation
- **Revocation and accountability** as programmable patterns over references
- *"If you don't have it, you can't use it"* — the design-level simplification capability security provides

## Connections
- [[Security Kernel Lambda Calculus]] — Rees's lexical-scope-as-capability-kernel argument, directly cited
- [[Capability Security]]
- [[A Universal Modular Actor Formalism for Artificial Intelligence]] — vats descend from Hewitt actors
- [[Actor Model]]
- [[Programming Erlang Second Edition]] — sibling message-passing tradition
- [[Communicating Sequential Processes]] — contrast in concurrency model
- [[Agent Tcl Flexible Secure Mobile Agents]] — earlier capability-aware mobile agents
- [[DAgents Security Book Chapter]]
- [[Sandboxing]]
- [[Distributed Security]]
- [[LangSec]]
- [[End-to-End Arguments in System Design]] — design-principle neighbour
- [[Principled Design Of The Modern Web Architecture]] — architectural contrast (REST/ACL vs OCap)
- [[Agent-to-Agent Protocol]] — OCapN is a capability-secure alternative
- [[Model Context Protocol]]
- [[Agent Network Protocol]]
- [[Inter-Agent Trust Models - A Comparative Study]] — Constraint trust realised at the language level
- [[Constraint Trust]]
- [[MalTool Malicious Tool Attacks]] — OCap would structurally preclude many of these attacks
- [[AI Agents Under Threat]]
- [[ClawWorm Self-Propagating Attacks Across LLM Agent Ecosystems]] — the *flat context trust model* ClawWorm exploits is precisely what OCap eliminates
- [[Flat Context Trust Model]]
- [[Principle of Least Authority]]
- [[Ambient Authority]]
- [[Confused Deputy]]
- [[Vat Model]]
- [[Turn (Goblins)]]
- [[Promise Pipelining]]
- [[OCapN]]
- [[CapTP]]
- [[E Language]]
- [[Time-Travel Debugging]]

## Conceptual Contribution
- **Claim:** Secure peer-to-peer applications become routine when authority is conveyed *only* by holding an unforgeable object reference — no ambient authority, no global mutable state, lexical scope as the capability kernel — and when the network distribution of such references is itself designed as an ordinary message-passing object system.
- **Mechanism:** Goblins realises the E-language tradition in Scheme (Guile, Racket): objects live in vats; each vat runs atomic turns that serve as cheap local transactions; asynchronous inter-vat invocation uses promise pipelining to collapse round-trips; persistence, upgrade, and cross-language interop are handled by OCapN — a capability-preserving transport protocol. Time-travel debugging exploits the turn-level determinism.
- **Concepts introduced/used:** [[Object Capability Security]], [[Principle of Least Authority]], [[Ambient Authority]], [[Confused Deputy]], [[Vat Model]], [[Turn (Goblins)]], [[Promise Pipelining]], [[OCapN]], [[CapTP]], [[E Language]], [[Time-Travel Debugging]], [[Capability Revocation]]
- **Stance:** engineering / foundational design doc
- **Relates to:** A modern engineering culmination of the capability-security thread rooted in [[Security Kernel Lambda Calculus]] (Rees 1995, explicitly cited) — lexical scope as a capability kernel, extended into a full distributed system. The vat model is a direct descendant of [[A Universal Modular Actor Formalism for Artificial Intelligence]] (Hewitt 1973) and sibling to [[Programming Erlang Second Edition]] but with security-by-reference as a first-class concern. Frames a structural alternative to the modern LLM-agent protocol stack: where [[Agent-to-Agent Protocol]] / [[Model Context Protocol]] / [[Agent Network Protocol]] layer trust on top of ACL/RPC primitives, OCapN encodes trust in the reference graph itself. The **flat context trust model** that [[ClawWorm Self-Propagating Attacks Across LLM Agent Ecosystems]] exploits and that [[MalTool Malicious Tool Attacks]], [[AI Agents Under Threat]] catalogue is precisely the ambient-authority failure capability security is designed to prevent — making Goblins / OCapN a serious candidate substrate for [[Inter-Agent Trust Models - A Comparative Study]]'s *Constraint* trust dimension.

## Tags
#capability-security #distributed-objects #ocap #spritely #goblins #pola #e-language #peer-to-peer #security-engineering
