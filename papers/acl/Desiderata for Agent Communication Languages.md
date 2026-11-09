# Desiderata for Agent Communication Languages

**Reference:** James Mayfield, Yannis Labrou, and Tim Finin (1995). AAAI Technical Report SS-95-08, pp. 122–127. [Paper](https://cdn.aaai.org/Symposia/Spring/1995/SS-95-08/SS95-08-024.pdf).

## Summary

The authors propose seven groups of requirements for agent communication languages, then assess KQML against them. Their criteria span syntax, meaning, implementation, networking, interoperability, and reliability; designers must balance competing needs.

KQML separates content from communicative acts and transport metadata. Its flexibility supports heterogeneous agents, but the authors identify unfinished formal semantics, security, and authentication in the 1995 design.

## Key Ideas

- **Form:** declarative, readable, parsable, extensible syntax.
- **Content:** separate domain expressions from communicative acts.
- **Semantics:** unambiguous theoretical grounding, including time and location.
- **Implementation:** efficient interfaces and partial implementations.
- **Networking:** multiple delivery patterns and transport independence.
- **Environment:** discovery, interoperability, and legacy integration.
- **Reliability:** privacy, authentication, malformed-message handling, and error reporting.

## Connections

- [[Agent Communication Languages]]
- [[KQML]]
- [[KQML as an Agent Communication Language]]
- [[Speech Act Theory]]
- [[Performatives]]
- [[Facilitators]]
- [[Verifiable Semantics for ACLs]]
- [[ACL Rethinking Principles]]

## Conceptual Contribution

- **Claim:** ACL quality requires balancing semantic and operational requirements.
- **Mechanism:** A seven-category checklist applied to KQML.
- **Concepts introduced/used:** [[Agent Communication Languages]], [[KQML]], [[Performatives]], [[Ontologies]].
- **Stance:** design criteria / engineering assessment.
- **Relates to:** Read alongside [[Verifiable Semantics for ACLs]] and [[ACL Rethinking Principles]] when comparing approaches to message meaning.

## Tags

#acl #kqml #agent-communication #interoperability #speech-acts
