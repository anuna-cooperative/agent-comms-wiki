# Information-Driven Interaction-Oriented Programming: BSPL, the Blindingly Simple Protocol Language

**Reference:** Munindar P. Singh (2011). *Proc. 10th International Conference on Autonomous Agents and Multiagent Systems (AAMAS 2011)*, Taipei, Taiwan, May 2–6, 2011, pp. 491–498. IFAAMAS. [URL](https://dl.acm.org/doi/10.5555/2031678.2031687). [PDF](https://www.csc2.ncsu.edu/faculty/mpsingh/papers/mas/AAMAS-11-IBIOP.pdf)

## Summary
Singh introduces BSPL, a declarative language for multiagent interaction protocols built from exactly two constructs: a message schema (a single message is an atomic protocol) and the composition of existing protocols. The paper's programme is *interaction-oriented programming* (IOP): treat the protocol as an engineering abstraction in its own right, specify it in terms of the information it needs in order to proceed and the information it produces when enacted, and let agents be independently designed and operated, judged only by their participation in the specified interactions. BSPL states no constraints on the ordering or occurrence of messages. Every ordering and exclusion requirement that a traditional protocol notation would express with control-flow or choice operators is instead *derived* from the information model of the messages.

The mechanism is parameter adornment. Each protocol and each message carries parameters, and each parameter is adorned ⌜in⌝ (its binding must come from outside, that is from a prior message), ⌜out⌝ (its binding originates here, with declarative force) or ⌜nil⌝ (the sender must not know a binding at emission time). Some parameters are marked as the *key*: a key binding identifies an enactment, and any parameter may be bound at most once per key binding. From these follow BSPL's three commitments to the relational view of protocols as tables of enactments: uniqueness (one enactment per key), integrity (every public parameter bound in a complete enactment) and immutability (bindings never change, which is what makes the design robust to asynchrony). Ordering emerges as ⌜out⌝-before-⌜in⌝ on a shared parameter; mutual exclusion emerges as two messages both adorning the same parameter ⌜out⌝ for the same key; conventional orderings that carry no information (pay before delivery) are captured by introducing a token parameter. Composition renames parameters through references, so the foreign-exchange case study (bilateral price discovery composed with itself into multilateral price discovery, from Desai et al.) needs no access to the constituents' internals, unlike the AUML nesting and data-flow-axiom approaches it is compared against.

The semantics is sketched rather than formalised (that is the work of [[Semantics and Verification of Information-Based Protocols]]). A role's history is the sequence of messages it has sent or received; a history vector collects one history per role; it is *quiescent* when every sent message has been received and *viable* when every emission was made by a role that knew all ⌜in⌝ bindings and no ⌜out⌝ or ⌜nil⌝ binding at the time. A protocol's intension is its set of quiescent viable history vectors. Three conflict kinds organise correctness: ⌜out⌝–⌜in⌝ (ordering, handled by causality), ⌜nil⌝–⌜in⌝ and ⌜nil⌝–⌜out⌝ (knowledge, local to one role) and ⌜out⌝–⌜out⌝ (occurrence, which has no general solution but can be checked to be under one role's control). Meaning is deliberately separated from structure: a `means` clause may attach a commitment to a message, and BSPL is offered as the operational substrate that commitment-based approaches such as [[Commitment Machines - Yolum and Singh]] previously lacked.

## Key Ideas
- **Two constructs only.** A protocol is one message schema or a composition of protocols; there is no distinction between atomic and composite protocols, and no sequence, choice or loop operator.
- **Information orientation and explicit causality.** Every causal dependency is an information dependency: a message can be sent only when its ⌜in⌝ parameters are already bound in the sender's local history. There are no hidden flows of causality because there are no hidden flows of information.
- **Adornments ⌜in⌝ / ⌜out⌝ / ⌜nil⌝ and keys.** Adornments are relative to the protocol, not to a role. A top-level enactable protocol adorns all public parameters ⌜out⌝; a protocol with a public ⌜in⌝ parameter is not enactable on its own and must be composed.
- **Uniqueness, integrity, immutability.** Enactments are immutable tuples keyed by the key parameters; a parameter bound twice for the same key is an integrity violation, which is how exclusive choice is expressed.
- **Shared-nothing enactment.** No global state or repository is needed: everything relevant to the social state of an interaction is in the parameter bindings of the messages exchanged. Each agent acts from its local history alone.
- **Ordering and exclusion are derived.** ⌜out⌝ precedes ⌜in⌝ on the same parameter; two ⌜out⌝ adornments of the same parameter make the messages mutually exclusive; ⌜nil⌝ forces a message before a role learns a binding.
- **Specification patterns.** Duplicating a parameter, generating an identifier, local (hidden) parameters, standing offers with composite keys (Insurance Claims), flexible sourcing of ⌜out⌝ parameters, in-out polymorphism (an unadorned parameter accepts either direction), forwarding, mixed initiative, and digressions in the sense of Yolum and Singh.
- **Composition without breaking encapsulation.** Multilateral price discovery is a composition of the generalised bilateral protocol with itself, with adornments in the two references doing the coordination work that Desai et al.'s data-flow axioms and Odell et al.'s AUML nesting required.
- **Comparison with procedural notations.** Choreographies (WS-CDL, message sequence charts), AUML and RASA specify orderings directly; BSPL avoids the enactability failures Desai and Singh call blindness because the only way to state an ordering is a causally sound ⌜out⌝-to-⌜in⌝ flow. Nonlocal choice is not automatically avoided but is analysable.
- **Meaning stays separate.** `means` clauses attach commitments to messages; BSPL supplies the operational underpinning that meaning-based protocol approaches assumed.
- **Named future work.** Multiple keys, compositional verification of enactability, multicast (several agents playing one role) and discovery protocols with late role binding. Kohei Honda is thanked in the acknowledgements, a direct line to the [[Session Types]] tradition.

## Connections
- [[BSPL]] (concept hub)
- [[Information Protocols]]
- [[Enactability]]
- [[Interaction Protocols]]
- [[Semantics and Verification of Information-Based Protocols]]: the formal semantics and verifier for this language
- [[Kiko - Programming Agents to Enact Interaction Protocols]]: the programming model built on it
- [[Commitment Machines - Yolum and Singh]]
- [[Flexible Protocol Specification and Execution]]
- [[Commitment-Based Protocol]]
- [[Commitment-based Semantics]]
- [[ACL Rethinking Principles]]: the same author's earlier argument for public, protocol-based ACL semantics
- [[FIPA-ACL Specifications]]: the ordering-based interaction protocols BSPL positions itself against
- [[Coordinating Agents Using ACL Conversations]]
- [[Endpoint Projection]]
- [[Session Types]]
- [[Multiparty Asynchronous Session Types]]
- [[Choreographic Programming]]
- [[Knowledge of Choice]]
- [[Realizability and Verification of MSC Graphs]]: the nonlocal-choice problem BSPL inherits from message sequence charts
- [[Message Sequence Charts - A Survey]]
- [[Declarative Specification]]
- [[CALM Theorem]]: monotone local knowledge as the basis for coordination-free enactment
- [[CBCL - Safe Self-Extending Agent Communication]]: the nearest contemporary relative; see the contrast on [[BSPL]]

## Conceptual Contribution
- **Claim:** Multiagent protocols can be specified without any control-flow constructs. Modelling messages by the information they require and produce, with adornments and keys, yields all necessary ordering and exclusion constraints, supports shared-nothing asynchronous enactment from local knowledge, composes without breaking encapsulation, and leaves meaning to a separate layer.
- **Mechanism:** Message schemas with ⌜in⌝/⌜out⌝/⌜nil⌝ parameter adornments and key parameters; protocol composition by reference with parameter renaming; a relational reading of enactments (uniqueness, integrity, immutability); a sketched semantics of quiescent viable history vectors; a conflict taxonomy (ordering, knowledge, occurrence); a foreign-exchange case study against Desai et al.'s commitment-protocol formalisation.
- **Concepts introduced/used:** [[Information Protocols]], [[BSPL]], [[Enactability]], [[Interaction Protocols]], [[Declarative Specification]], [[Commitment-based Semantics]], [[Knowledge of Choice]], [[Realizability]]
- **Stance:** language design / foundational
- **Relates to:** Continues Singh's programme from [[ACL Rethinking Principles]] (public, verifiable protocol semantics instead of mental states) and supplies the operational layer under [[Commitment Machines - Yolum and Singh]] and [[Flexible Protocol Specification and Execution]]. It is the multiagent-systems counterpart to [[Multiparty Asynchronous Session Types]] and [[Choreographic Programming]]: where those derive per-role behaviour from a global type by [[Endpoint Projection]] and presuppose a compiler and ordered channels, BSPL has no projection step at all, because every role acts directly on the global protocol using only its own history over an unordered transport. [[CBCL - Safe Self-Extending Agent Communication]] later arrives at a similar causal, coordination-free protocol layer from the LangSec side, with content-addressed predecessors and signatures in place of parameter keys.

## Tags
#interaction-protocols #bspl #information-protocols #declarative #causality #decentralization #asynchrony #aamas
