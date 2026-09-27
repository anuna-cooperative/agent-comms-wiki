# Langshaw: Declarative Interaction Protocols Based on Sayso and Conflict

**Reference:** Munindar P. Singh, Samuel H. Christie V & Amit K. Chopra (2026). Preprint, arXiv:2606.29601v1 [cs.PL], 28 June 2026. North Carolina State University (Singh, Christie) and Lancaster University (Chopra). [URL](https://arxiv.org/abs/2606.29601). [PDF](https://arxiv.org/pdf/2606.29601).

## Summary
Langshaw is a declarative language for specifying multiagent interaction protocols, named for J. L. Austin's middle name and built directly on his doctrine that *saying makes it so*. The authors' diagnosis is that existing protocol languages fall into two traps: procedural notations (AUML and the like) over-constrain enactment by fixing message orders, while information-oriented languages such as [[BSPL - The Blindingly Simple Protocol Language|BSPL]] and Winikoff et al.'s [[HAPN]] recover flexibility and concurrency but at the cost of being unwieldy to write and to read for meaning. Langshaw's response is to specify a protocol in terms of *communicative actions* over a shared set of attributes, and to add two novel primitives that carry the social content directly: **sayso**, which declares which role has the priority (the social authority) to set each attribute, and a pair of conflict constructs, **nono** and **nogo**, which capture symmetric and asymmetric incompatibilities between actions. From these, all the ordering and coordination that a message-level protocol needs is *derived* rather than stated, so the specification stays close to the stakeholders' intuitions.

A Langshaw multiagent system is conceived as operating over *one social artifact* — the locus of a single social state, which is nothing but the set of social actions performed so far. Agents playing roles perform synchronous, concurrent actions that update this artifact, subject to two disciplines: causality (an action may occur only in a state that already holds the information it relies on) and local consistency (only different roles may take conflicting actions). Each action carries attributes, some designated keys that distinguish enactments; **sayso** is a ranking over roles for each attribute, so that when several roles concurrently attempt to bind the same attribute the highest-ranked attempt dominates and updates the state while the others become no-ops. A **nono** marks two actions as mutually exclusive for the same key (in the paper's Purchase example, `Accept` and `Reject`), and a **nogo** marks an asymmetric conflict, `a ↛ b`, in which once `a` is in the social state `b` may no longer be performed, though `b` may precede or occur simultaneously with `a` (e.g. `Reject ↛ Instruct`). A protocol is **safe** if no reachable state lets two agents produce an inconsistent state through conflicting concurrent attempts, and **live** if every enactment can always still reach its completion criterion (a disjunction of attribute bindings); non-liveness arises from too little sayso or from saysos that induce a cyclic information dependency among actions.

The paper gives Langshaw a synchronous formal semantics via **semantic tableaux**, where each node is a social state and each transition is a set of jointly feasible concurrent actions; inference rules (Attempt, Abide, Unsocial, Feasible, Dominates, Joint, Communication) define which sets may fire, and safety and liveness are decided by asserting the negated property at the root and checking every branch for contradiction. Because a naive tableau explodes over all interleavings, Section 5 reduces it by grouping actions into jointly feasible sets using graph colouring (a Brélaz approximation to minimum colouring), and proves the reduced tableau is closed for a property exactly when the full one is. Synchrony, however, is unrealistic for agents deployed over the asynchronous Internet, so Section 6 shows how to **compile a Langshaw protocol into a BSPL protocol** for asynchronous messaging: roles map to BSPL roles, attributes to parameters, actions to message schemas (with multiple *morphs* filtered to the correct adornment combinations), nonos and nogos to ⌜nil⌝ parameters that disable the conflicting action until the relevant information arrives, and — crucially — **sayso is realised by delegation**: because a lower-priority role cannot bind an attribute until the higher-priority role has ceded authority, the compiler adds a delegation parameter (e.g. `item@Seller`) so that the asymmetric, socially grounded priority of sayso replaces the arbitrary priorities of classical concurrency control. The authors prove the compiler correct, so a Langshaw specification's simplicity is preserved while its enactment gains the flexibility of asynchronous, information-driven messaging.

## Key Ideas
- **Sayso: social authority over attributes.** For each attribute, a ranking over roles states who may make it so. Concurrent attempts to bind the same attribute are resolved by sayso — the higher-ranked role dominates and the loser's attempt is a no-op — rather than by an arbitrary tie-break. This is Austin's "saying makes it so" turned into a protocol primitive.
- **Two conflict constructs.** A **nono** is a symmetric incompatibility (two actions cannot both hold for one key); a **nogo** `a ↛ b` is asymmetric (once `a` holds, `b` is disabled, but `b` may precede or coincide with `a`). Together they express the coordination a purely information-oriented language would have to encode indirectly.
- **One social artifact, one social state.** The MAS is modelled as a single locus whose state is just the set of performed social actions. Enacting a protocol means updating this state under causality (act only on present information) and local consistency (only different roles may conflict).
- **Declarative, meaning-carrying syntax.** `Protocol → Name Roles Attrs Dos Saysos [Nogos] [Nonos]`; a protocol lists roles (`who`), attributes and a completion criterion (`what`), typed actions (`do`), the sayso rankings, and optional nogo/nono conflicts — no explicit message ordering.
- **Safety and liveness as design properties.** Safety rules out inconsistent states from conflicting concurrent attempts; liveness guarantees every enactment can still complete. Both are consequences of getting the saysos and conflicts right; too little sayso, or cyclic sayso dependencies, break liveness.
- **Synchronous tableau semantics.** Nodes are social states, edges are jointly feasible concurrent action sets; rules Attempt / Abide / Unsocial / Feasible / Dominates / Joint / Communication define legal transitions, and properties are verified by negation-and-contradiction over branches.
- **Tableau reduction by graph colouring.** Jointly feasible sets are computed via a Brélaz colouring approximation to tame the interleaving explosion; the reduced tableau is closed for a property iff the full tableau is (Theorem 2).
- **Bridging synchrony and asynchrony.** Synchrony makes specification and reasoning tractable; a proven-correct compiler turns the synchronous spec into an asynchronous, message-oriented protocol so it can actually run over the Internet.
- **Sayso compiles to delegation.** In the target BSPL protocol, a role may bind an attribute only after a higher-sayso role delegates the authority (an added `attribute@role` parameter). The asymmetry of delegation encodes the social priority of sayso, unlike the arbitrary priorities of traditional concurrency control (Mattern 1990).
- **Conflicts compile to ⌜nil⌝ disabling.** Nonos and nogos become ⌜nil⌝ parameters on the affected message schemas, disabling an action until the relevant information is (not) known — echoing Singh's 1996 idea of gating an action on received information.

## Connections
- [[Sayso]]
- [[BSPL]]
- [[Information Protocols]]
- [[Interaction Protocols]]
- [[Enactability]]
- [[BSPL - The Blindingly Simple Protocol Language]]: Langshaw's compilation target and closest ancestor
- [[Semantics and Verification of Information-Based Protocols]]: the safety/liveness/enactability programme Langshaw restates at the language level
- [[Kiko - Programming Agents to Enact Interaction Protocols]]: same authors' agent-side programming model over the BSPL protocols Langshaw produces
- [[Argus - Programming with Communication Protocols in a Belief-Desire-Intention Architecture]]: the BDI successor in the same programme
- [[HAPN]]: the other information-oriented protocol notation Langshaw contrasts with
- [[Speech Act Theory]]: Austin's "saying makes it so" is the basis of sayso
- [[How to Do Things with Words]]: the Austinian source of the declarative/performative reading
- [[Declarations]]: the illocutionary category that sayso operationalises
- [[Foundations Of Illocutionary Logic]]
- [[Delegated Authority]]: what sayso becomes under compilation
- [[Delegation]]: the BSPL mechanism realising sayso
- [[Semantic Tableaux]]: the proof method for the synchronous semantics
- [[Safety Property]]
- [[Liveness Property]]
- [[Declarative Specification]]
- [[Commitment-based Semantics]]
- [[Commitment Machines - Yolum and Singh]]
- [[An Ontology for Commitments in Multiagent Systems - Singh]]
- [[FIPA-ACL Specifications]]: the ordering-based interaction protocols Langshaw positions itself against
- [[Flexible Protocol Specification and Execution]]
- [[Multiparty Asynchronous Session Types]]: the ordering/projection-based alternative in the session-types tradition
- [[Endpoint Projection]]
- [[Choreographic Programming]]
- [[Realizability]]

## Conceptual Contribution
- **Claim:** A multiagent interaction protocol can be specified declaratively in terms of communicative actions plus two social primitives — sayso (who may set each attribute) and conflict (nono/nogo) — from which all needed coordination is derived; this specification can be given a formal synchronous semantics with decidable safety and liveness, and can be compiled correctly into an asynchronous message-oriented protocol so it runs over the open Internet without losing flexibility.
- **Mechanism:** A single social-artifact model whose state is the set of performed actions under causality and local consistency; a syntax of roles/attributes/actions/saysos/nogos/nonos with a completion criterion; sayso as per-attribute role rankings resolving concurrent binding attempts by dominance; nono (symmetric) and nogo (asymmetric `a ↛ b`) conflicts; a semantic-tableau semantics (Attempt, Abide, Unsocial, Feasible, Dominates, Joint, Communication) with safety/liveness by negation-and-contradiction; tableau reduction via Brélaz graph colouring (closure preserved); and a proven-correct compiler to [[BSPL]] realising sayso by delegation parameters and conflicts by ⌜nil⌝ adornments.
- **Concepts introduced/used:** [[Sayso]], [[Information Protocols]], [[BSPL]], [[Enactability]], [[Interaction Protocols]], [[Declarations]], [[Delegated Authority]], [[Semantic Tableaux]], [[Declarative Specification]]
- **Stance:** language design / formal semantics
- **Relates to:** Sits atop the BSPL stack of [[BSPL - The Blindingly Simple Protocol Language]] and [[Semantics and Verification of Information-Based Protocols]] as a higher-level, meaning-carrying front end that compiles down to information protocols, and complements [[Kiko - Programming Agents to Enact Interaction Protocols]] and [[Argus - Programming with Communication Protocols in a Belief-Desire-Intention Architecture]], which program the agent side of those protocols. Where the session-types and choreography traditions ([[Multiparty Asynchronous Session Types]], [[Choreographic Programming]]) derive per-role behaviour from a global type by [[Endpoint Projection]] over ordered channels, Langshaw derives coordination from social authority and conflict over a shared social state and then compiles to an unordered, information-driven transport. Its use of Austin's declarative force ([[How to Do Things with Words]], [[Declarations]]) as an explicit social-priority primitive is what distinguishes sayso from the arbitrary tie-breaks of classical concurrency control.

## Tags
#interaction-protocols #bspl #information-protocols #declarative #sayso #speech-acts #formal-semantics #safety #liveness #asynchrony #multiagent
