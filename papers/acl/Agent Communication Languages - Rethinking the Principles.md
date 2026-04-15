# Agent Communication Languages: Rethinking the Principles

**Reference:** Singh, M. P. (1998). *IEEE Computer (December 1998)*. Source file: `singh-acl.pdf`. [URL](https://doi.org/10.1109/2.735849)

## Summary
Singh argues that mainstream ACLs like KQML and FIPA/Arcol are built on an untenable mentalistic semantics — grounding message meaning in the sender's beliefs and intentions — which cannot be verified from the outside and therefore cannot serve as a compliance standard. For true interoperability in heterogeneous multi-agent systems, he proposes shifting to a *social agency* model in which ACL semantics is defined in terms of public commitments, roles, and conventions rather than private mental states.

The paper maps the design space of ACLs along phissspective (private/public), type of meaning (personal/conventional), basis (semantic/pragmatic), context (fixed/flexible), coverage (of communicative acts), and construction autonomy (design/execution). It motivates "societies" of agents with published protocols, where compliance becomes testable and dialects can usefully coexist. The move from mental to social semantics underpins later work on commitment-based protocols.

## Key Ideass
- Mentalistic ACL semantics is non-verifiable => poor basis for standards.
- Social agency: commitments, roles, conventions as public meaning.
- Design/execution autonomy orthogonal and both important.
- Dialects are OK; idiolects are not.
- Protocols as flexible specifications, not fixed FSMs.

## Connections
- [[Agent Communication Languages]]
- [[FIPA-ACL]]
- [[KQML]]
- [[Speech Act Theory]]
- [[Multi-Agent Systems]]
- [[Commitment-based Semantics]]
- [[Mentalistic Semantics]]
- [[Public Semantics]]
- [[Verifiable Semantics]]
- [[Interaction Protocols]]
- [[Conversation Policy]]

## Conceptual Contribution
- **Claim:** Mentalistic ACL semantics (KQML, FIPA/ARCOL) cannot ground interoperability because compliance with sincerity and belief conditions is externally unverifiable; ACLs should be rebuilt on a social semantics of public commitments, roles and conventions.
- **Mechanism:** Singh maps the ACL design space along six axes — perspective (private/public), meaning type (personal/conventional), basis (semantic/pragmatic), context (fixed/flexible), coverage (communicative-act repertoire), and construction autonomy (design-time vs. run-time). He uses this scheme to argue that FIPA/KQML occupy an untenable region, and sketches a social-agency alternative in which agents belong to "societies" with published protocols, commitments are first-class, and dialects (but not idiolects) are tolerated.
- **Concepts introduced/used:** [[Social Agency]], [[Commitment-Based Semantics]], [[Mentalistic Semantics]], [[Conversation Policy]], [[Dialect vs Idiolect]], [[Design Autonomy]], [[Execution Autonomy]], [[ACL Verifiability]]
- **Stance:** critique
- **Relates to:** Directly targets the mentalistic stance of [[Agent-Oriented Programming]], [[KQML as an Agent Communication Language]], and [[FIPA-ACL]]; its social-semantic programme is operationalised by [[An Interaction-oriented Agent Framework for Open Environments]] (commitment-based Mercurio/JaCaMo) and cited approvingly by the surveys [[The State of the Art in Agent Communication Languages]] and [[Trends in Agent Communication Language]].

## Tags
#acl #social-agency #commitments #interoperability
