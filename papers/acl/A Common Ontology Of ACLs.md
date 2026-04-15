# A Common Ontology of Agent Communication Languages: Modeling Mental Attitudes and Social Commitments using Roles

**Reference:** Boella, Damiano, Hulstijn, van der Torre (2006). *Applied Ontology 3(1-3)*. Source file: `ao07b.pdf`. [URL](https://icr.uni.lu/leonvandertorre/papers/ao07b.pdf)

## Summary
The authors propose a common ontology that bridges two dominant semantic traditions for Agent Communication Langua mental-attitude-based semantics (FIPA-ACL) and social-commitment-based semantics (Singh, Colombetti). The unifying device is the *role*: each agent plays role instances in dialogue sessions, and both beliefs/intentions and commitments are attributed to role instances rather than to private mental states, sidestepping the unverifiability problem.

They develop Role-SL, a BDI logic extended with roles and dialogue sessions, and show translation schemes from FIPA speech acts and from action/propositional commitment semantics into this role-based ontology. The framework accommodates mixed dialogues (e.g., persuasion intertwined with negotiation) that neither tradition handles cleanly alone.

## Key Ideas
- Roles as first-class carriers of public mental attitudes.
- Role-SL: extension of FIPA-SL with role instances and dialogue sessions.
- Mappings from FIPA-ACL and commitment-based ACLs into one ontology.
- Public beliefs/intentions sidestep mental-state unverifiability.
- Distinguishes action commitments (request/propose) from propositional (assert/challenge).

## Connections
- [[FIPA-ACL]]
- [[Speech Act Theory]]
- [[Agent Communication And Institutional Reality]]
- [[Agent Communication Languages]]
- [[Ontologies]]

## Conceptual Contribution
- **Claim:** Mental-attitude and social-commitment ACL semantics can be unified under a common ontology by attributing both to *roles* instantiated in dialogue sessions, rather than to private agent minds.
- **Mechanism:** Extends FIPA-SL into Role-SL (BDI + roles + dialogue sessions); provides translation schemes from FIPA speech acts and from action/propositional commitment semantics; handles mixed dialogues (persuasion + negotiation).
- **Concepts introduced/used:** [[Roles]], [[BDI]], [[Commitment-based Semantics]], [[Mental Attitudes]], [[Mentalistic Semantics]], [[Public Semantics]], [[Verifiable Semantics]], [[Dialogue Sessions]], [[FIPA-ACL]], [[Speech Act Theory]], [[Ontologies]], [[Agent Communication Languages]]
- **Stance:** formal-semantic
- **Relates to:** Bridges the two traditions typified by [[FIPA-ACL]] (mentalist) and [[Agent Communication And Institutional Reality]] (commitment-based); uses ontology machinery catalogued in [[Handbook On Ontologies]].

## Tags
#acl #ontology #commitments #roles #semantics
