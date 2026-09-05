# BSPL

The Blindingly Simple Protocol Language, Munindar Singh's declarative language for multiagent interaction protocols (AAMAS 2011) and the reference instance of [[Information Protocols]]. A BSPL protocol is a set of message schemas and references to sub-protocols; every parameter is adorned ⌜in⌝ (must already be known to the sender), ⌜out⌝ (bound, with declarative force, by this message) or ⌜nil⌝ (must not yet be known), and a subset of parameters forms the key that identifies an enactment. There are no sequence, choice or loop operators: ordering follows from ⌜out⌝-before-⌜in⌝ on a shared parameter, and exclusive choice from the rule that a parameter is bound at most once per key. Enactment is shared-nothing and asynchronous: each agent decides what it may send from its own history alone, over a transport that need be neither ordered nor reliable, with no central coordinator.

The programme runs from language ([[BSPL - The Blindingly Simple Protocol Language]]) through formal semantics and verification of [[Enactability]], safety and liveness ([[Semantics and Verification of Information-Based Protocols]]) to programming models for agents ([[Kiko - Programming Agents to Enact Interaction Protocols]], preceded by Stellar, Protocols over Things, Bungie and Mandrake in the same group). The LoST middleware (local state transfer, 2011) is the architectural style; Splee (2017) extends the language with sets and expressions; Tosca (2017) and Clouseau (2020) compile commitment specifications down to information protocols; Chopra, Christie and Singh's JAIR 2020 evaluation of protocol languages is the group's own comparative survey.

**Relation to session types and choreographies.** [[Multiparty Asynchronous Session Types]] and [[Choreographic Programming]] derive per-role behaviour from a global type by [[Endpoint Projection]] and presuppose a compiler, fixed roles and ordered channels. BSPL reaches decentralised enactment without a projection step: every role acts on the global protocol using only its local history, and enactability plays the part that projectability and [[Knowledge of Choice]] play on the session-type side. It shares the nonlocal-choice problem with message sequence charts ([[Realizability and Verification of MSC Graphs]]) but detects it as an empty intension.

**Relation to CBCL.** [[CBCL - Safe Self-Extending Agent Communication]]'s R5 causal protocols and its later role layer are the nearest contemporary relative: declarative, asynchronous, decentralised verification from local history with no ordering assumptions, in Singh's public-commitments tradition ([[ACL Rethinking Principles]]). The differences are what CBCL adds: dependencies are content-hash edges to concrete message instances rather than parameter values, the threat model is adversarial with roles bound by nomination and signature, the message language is bounded to DCFL, dialects install at runtime, and the local-to-global correspondence is a mechanised theorem rather than a tool-checked property. Any comparison with session types owes BSPL the same paragraph.

## In this vault
- [[BSPL - The Blindingly Simple Protocol Language]] (Singh, AAMAS 2011)
- [[Semantics and Verification of Information-Based Protocols]] (Singh, AAMAS 2012)
- [[Kiko - Programming Agents to Enact Interaction Protocols]] (Christie, Singh & Chopra, AAMAS 2023)
- [[Information Protocols]]
- [[Enactability]]
- [[Interaction Protocols]]
- [[Commitment Machines - Yolum and Singh]]
- [[Commitment-Based Protocol]]
- [[Commitment-based Semantics]]
- [[ACL Rethinking Principles]]
- [[Endpoint Projection]]
- [[Session Types]]
- [[Choreographic Programming]]
- [[Knowledge of Choice]]
- [[CALM Theorem]]
- [[CBCL - Safe Self-Extending Agent Communication]]
