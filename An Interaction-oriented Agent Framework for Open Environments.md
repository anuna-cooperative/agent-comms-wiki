# An Interaction-oriented Agent Framework for Open Environments (Mercurio)

**Reference:** Baldoni, Baroglio, Bergenti, Marengo, Mascardi, Patti, Ricci, Santi (2011). *AI*IA 2011 (Italian AI Association)*. Source file: `cbcl-ref/AI_IA2011.pdf`

## Summary
The authors propose Mercurio, an agent-programming framework for open multi-agent systems that unifies direct (speech-act) and indirect (environment-mediated) communication under a single social/observational semantics based on commitments. Mercurio has three levels — specification (constitutive and regulative rules over a domain model), programming abstractions (Agents and Artifacts in the A&A meta-model), and infrastructure (built on JaCaMo integrating Jason, CArtAgO, and MOISE).

Commitment-based protocols give a public, verifiable meaning to actions (replacing mentalistic ACL semantics); constitutive rules define what counts as what, while regulative rules impose temporal constraints on the social state. Artifacts reify interaction patterns and the social state itself, enabling the environment to monitor and detect violations. The framework thus conjugates MAS flexibility with software-engineering modularity and compositionality, targeting e-government, cross-business, and service-oriented applications.

## Key Ideas
- Commitment-based social semantics replaces mentalistic ACL semantics.
- Three levels: specification, programming abstractions, infrastructure.
- Separation of constitutive and regulative rules.
- Artifacts (A&A / CArtAgO) as first-class environment entities.
- JaCaMo stack (Jason + CArtAgO + MOISE) as reference infrastructure.

## Connections
- [[Agent Communication Languages]]
- [[FIPA-ACL]]
- [[Multi-Agent Systems]]
- [[Agent-Oriented Programming]]
- [[Self-Adaptive Systems]]
- [[Agents and Artifacts]]
- [[Commitment-based Semantics]]
- [[Interaction Protocols]]
- [[Public Semantics]]
- [[Verifiable Semantics]]

## Conceptual Contribution
- **Claim:** Open multi-agent systems need a single, publicly verifiable interaction semantics that unifies direct (speech-act) and indirect (environment-mediated) communication; commitments plus Agents-and-Artifacts supply it and can be layered onto an existing AOP stack.
- **Mechanism:** Mercurio stratifies into three levels. (1) Specification: a domain model plus constitutive rules ("what counts as what") and regulative rules (temporal constraints on the social state). (2) Programming abstractions: the A&A meta-model (agents + artifacts) where artifacts reify interaction patterns and the social state itself. (3) Infrastructure: the JaCaMo stack (Jason + CArtAgO + MOISE) runs the above so violations are environment-detectable and the social state is inspectable.
- **Concepts introduced/used:** [[Mercurio Framework]], [[Commitment-Based Protocol]], [[Constitutive Rules]], [[Regulative Rules]], [[Agents and Artifacts]], [[JaCaMo]], [[Jason]], [[CArtAgO]], [[MOISE]], [[Social State]]
- **Stance:** engineering
- **Relates to:** Concretely instantiates the social-semantic programme of [[Agent Communication Languages - Rethinking the Principles]] and the open-issue agenda of [[Trends in Agent Communication Language]] and [[The State of the Art in Agent Communication Languages]]; its environment-reified interaction complements the self-organisation of [[A Composite Self-organisation Mechanism in an Agent Network]].

## Tags
#commitments #artifacts #open-systems #multi-agent
