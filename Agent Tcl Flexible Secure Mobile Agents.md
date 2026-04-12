# Agent Tcl: A Flexible and Secure Mobile-Agent System

**Reference:** Robert S. Gray (1996). *Proceedings of the 1996 USENIX Tcl/Tk Workshop*, pp. 9-23. Source file: `gray-security.pdf`

## Summary
Gray introduces Agent Tcl, a mobile-agent system built on the Tcl scripting language plus Safe Tcl that supports migration with a single `agent_jump` instruction, transparent inter-agent communication, and pluggable transport mechanisms. The paper argues that Tcl's simplicity and ease of embedding make it more accessible than Telescript's object-oriented language while the Safe Tcl extension provides the sandboxing needed for secure execution — a better balance than the ARA, Tacoma, or SodaBot alternatives.

The architecture has four layers (transport, server, interpreter, agents) and supports PGP-signed agents, resource-manager-based authorization, direct-connection and message-passing communication, and a flat namespace of named agents. Gray details how the Tcl core was modified to capture complete interpreter state (stack, procedure frames, variables) for transparent migration at arbitrary points, and outlines a plan to add Java and Scheme as additional agent languages.

## Key Ideas
- Single-instruction migration (`agent_jump`) that transparently captures/restores state.
- Safe Tcl for sandboxed execution with policy decoupled from mechanism.
- Layered architecture supporting multiple languages and transports.
- Security approach: PGP-signed code + resource managers + Safe Tcl.
- Explicit interpreter stack rewrite to enable mid-execution migration.

## Connections
- [[Distributed Security]]
- [[Multi-Agent Systems]]
- [[Agent-Oriented Programming]]
- [[Capability Security]]
- [[LangSec]]

## Conceptual Contribution
- **Claim:** A mobile-agent system can be both simple and secure by building on an interpreted scripting language (Tcl) augmented with Safe Tcl sandboxing, exposing migration as a single instruction that transparently captures/restores complete interpreter state.
- **Mechanism:** Modifies the Tcl core to use an explicit command stack (replacing recursive Tcl_Eval) so full execution state is capturable; primitives agent_begin/submit/jump/send/receive/meet/accept provide uniform mobility and messaging; security via PGP-signed agents + per-identity resource managers + Safe Tcl trusted/untrusted dual interpreters with link substitution.
- **Concepts introduced/used:** [[Mobile Agent]], [[agent_jump]], [[State Capture]], [[Safe Tcl]], [[Sandboxing]], [[Explicit Command Stack]], [[Flat Namespace]], [[Resource Managers]]
- **Stance:** engineering
- **Relates to:** Precursor to [[DAgents Security Book Chapter]] which formalises the security model; contemporary alternative to Telescript/ARA/Tacoma (discussed in the D'Agents chapter); shares interpreter-level security philosophy with [[Agents Secure Interaction in Data Driven Languages]].

## Tags
#mobile-agents #tcl #sandboxing #migration
