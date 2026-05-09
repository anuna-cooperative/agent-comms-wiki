# Session Types

A type discipline for communicating processes — originating with Honda (1993) and developed extensively by Honda, Vasconcelos, Yoshida, and others — in which a process's communication behaviour is typed by a *session type*: a structured description of the sequence of messages that may flow on a channel, including alternation (`!`/`?`), choice (`+`/`&`), recursion, and delegation. Session types come in two flavours: *binary* (two participants per channel) and *multiparty* (a global type projected to per-role local types — directly analogous to choreographic [[Endpoint Projection]]). When a process can be source-checked, its session-type conformance is decidable statically; when it cannot, runtime monitors can enforce the type from observable message traces ([[On the Monitorability of Session Types]]). Structurally adjacent to the commitment-based protocol tradition: session types and Yolum-Singh-style commitment protocols are independently-developed formalisms for typing communicating agents against a publicly-observable global protocol.

## In this vault
- [[On the Monitorability of Session Types]]
- [[Choreographic Programming]]
- [[Endpoint Projection]]
- [[Commitment Machines - Yolum and Singh]]
- [[Flexible Protocol Specification and Execution]]
- [[Conversation Protocols]]
- [[Pact - A Choreographic Language for Agentic Ecosystems]]
