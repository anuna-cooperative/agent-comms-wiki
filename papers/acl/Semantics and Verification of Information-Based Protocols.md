# Semantics and Verification of Information-Based Protocols

**Reference:** Munindar P. Singh (2012). *Proc. 11th International Conference on Autonomous Agents and Multiagent Systems (AAMAS 2012)*, Valencia, Spain, June 4–8, 2012. IFAAMAS. [PDF](https://www.csc2.ncsu.edu/faculty/mpsingh/papers/mas/AAMAS-12-BSPL.pdf). [Semantic Scholar](https://www.semanticscholar.org/paper/81ed0830582db728710ad0aa2911563c4cff730c)

## Summary
The sequel to [[BSPL - The Blindingly Simple Protocol Language]] gives BSPL the formal semantics its flexibility demands, defines three correctness properties, and implements verifiers for them. A protocol denotes a set of enactments over a *universe of discourse* of roles and message schemas. Each role has a history of the messages it has emitted or received; a history vector collects one per role. Viability is the local rule from the 2011 paper made precise: a role may emit a message only if it knows the bindings of every ⌜in⌝ parameter for the enactment's key and knows no binding for any ⌜out⌝ or ⌜nil⌝ parameter; reception is always viable and extends knowledge. The intension of a protocol is the set of history vectors that are viable, respect the fundamental causality constraint that a reception is preceded by the corresponding emission, and are covered by the intensions of the protocol's references.

Three properties are then defined on the intension. A protocol is *enactable* if its intension is non-empty, that is, some viable path binds all public parameters. It is *safe* if no history vector binds the same parameter twice for the same key: safety is the distributed integrity property, and the paper's diagnosis is that across roles it holds precisely when every pair of conflicting ⌜out⌝ emissions is gated by a causally prior branching point controlled by a single role. It is *live* if from any reachable state the enactment can still legally complete; liveness entails enactability but not the converse. The small examples fix intuitions: Local Conflict is safe but not enactable, Abrupt Cancel (a race between buyer and seller on `outcome`) is enactable but not safe, Purchase Unsafe drops the private parameter that made accept and reject exclusive, and Purchase No Ship is enactable but not live because after `accept` nothing can ever bind `outcome`.

For verification, a protocol's causal structure is expressed as a set of declarative temporal precedence constraints, and each property is decided by checking the (un)satisfiability of the conjunction of that causal structure with a property-specific formula using a temporal reasoner. The paper reports the clause counts for Purchase and its variants and for the FIPA Request protocol, and lists cheaper design-flaw checks (deadwood messages, parameters that can never be bound or used). The related-work discussion positions BSPL against AUML, message sequence charts and choreography description languages, all of which take a procedural stance on ordering, and notes that both of Desai and Singh's enactability failures, blindness and nonlocal choice, yield an empty intension and are thereby caught. The LoST middleware (local state transfer) is cited as the architecture that enforces the local constraints at runtime.

## Key Ideas
- **Semantics by enactments.** A protocol's meaning is its intension: the set of viable, causally consistent history vectors covered by its references. Local views and asynchrony are built into the model rather than abstracted away.
- **Viability is local.** Emission requires knowing all ⌜in⌝ bindings and no ⌜out⌝ or ⌜nil⌝ binding for the enactment key; the semantics of a protocol depends only on the specification, never on imagined internal policies of the agents.
- **Declarative force of ⌜out⌝.** An ⌜out⌝ binding is not a report but a declaration (Austin), which is why it may occur only once per key and why a `means` clause can attach a commitment to it.
- **Enactability, safety, liveness.** Non-empty intension; at most one binding per parameter per key across all roles; completion always remains possible. Liveness entails enactability.
- **Safety across roles needs a same-role branching point.** Two conflicting ⌜out⌝ emissions by different roles are safe only if a causally prior conflict controlled by one role makes them exclusive; the private `response` parameter in Purchase is the canonical example.
- **Causal structures.** The partial-order structure of a protocol as a set of temporal constraints, mappable to a finite-state machine only with an explosion in states, so reasoning is done declaratively instead.
- **Verification by satisfiability.** Each property is a formula conjoined with the causal structure and handed to a temporal reasoner; validated on Purchase variants and FIPA Request.
- **Blindness and nonlocal choice both yield empty intensions**, so the enactability check subsumes the earlier diagnostics of Desai and Singh.
- **Design-flaw checks.** Deadwood messages, never-bound private parameters, never-used private parameters, protocols with public ⌜in⌝ parameters (empty intension).

## Connections
- [[BSPL]]
- [[Information Protocols]]
- [[Enactability]]
- [[BSPL - The Blindingly Simple Protocol Language]]
- [[Kiko - Programming Agents to Enact Interaction Protocols]]: the operational semantics whose soundness is stated relative to the reachable enactments defined here
- [[Interaction Protocols]]
- [[Commitment-based Semantics]]
- [[Speech Act Theory]]: the declarative force of ⌜out⌝ bindings
- [[FIPA-ACL Specifications]]: FIPA Request as a verification benchmark
- [[Knowledge of Choice]]
- [[Realizability and Verification of MSC Graphs]]
- [[Deciding Choreography Realizability]]
- [[Message Sequence Charts - A Survey]]
- [[Multiparty Compatibility in Communicating Automata]]
- [[Endpoint Projection]]
- [[CBCL - Safe Self-Extending Agent Communication]]

## Conceptual Contribution
- **Claim:** An information-based protocol language can be given a formal semantics that respects the locality of each role, the flow of causality across roles and the asynchrony between them, and its central correctness properties (enactability, safety, liveness) can be formulated declaratively and verified mechanically.
- **Mechanism:** Universe of discourse, role histories, history vectors, viability, and intension by cover; Definitions of enactability (non-empty intension), safety (key uniqueness in every history vector) and liveness (completion always possible); causal structure as temporal precedence clauses; verification by (un)satisfiability with a temporal reasoner; evaluation on Purchase variants and FIPA Request.
- **Concepts introduced/used:** [[Enactability]], [[Information Protocols]], [[BSPL]], [[Realizability]], [[Knowledge of Choice]], [[Interaction Protocols]]
- **Stance:** formal semantics / verification
- **Relates to:** Enactability is the multiagent-systems analogue of the [[Realizability]] problem for message sequence charts and choreographies ([[Realizability and Verification of MSC Graphs]], [[Deciding Choreography Realizability]]) and of [[Knowledge of Choice]] in [[Choreographic Programming]]: all ask whether independently acting endpoints can jointly produce exactly the specified global behaviour. BSPL's answer is stated over local knowledge rather than channel orderings, which is also the reading that the CBCL role layer's causal-locality condition takes ([[CBCL - Safe Self-Extending Agent Communication]], [[Endpoint Projection]]).

## Tags
#interaction-protocols #bspl #information-protocols #formal-semantics #verification #enactability #safety #liveness #aamas
