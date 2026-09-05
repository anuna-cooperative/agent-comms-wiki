# Kiko: Programming Agents to Enact Interaction Protocols

**Reference:** Samuel H. Christie V, Munindar P. Singh & Amit K. Chopra (2023). *Proc. 22nd International Conference on Autonomous Agents and Multiagent Systems (AAMAS 2023)*, London, May 29 – June 2, 2023. IFAAMAS, 10 pages. Posted as arXiv:2606.26156v1 [cs.MA], 23 June 2026. [URL](https://arxiv.org/abs/2606.26156). Software and appendix: <https://gitlab.com/masr/bspl/-/tree/kiko>

## Summary
Kiko is a protocol-based programming model for agents that enact [[BSPL]] information protocols. Its diagnosis is that existing agent programming offers poor abstractions for *decision making*: JADE hard-wires FIPA's ordering-based protocols, Jason and JaCaMo give cognitive abstractions but no protocols, commitment-based approaches lean on centralised commitment stores or do not operationalise asynchrony, and agent-oriented methodologies leave protocols as informal UML diagrams. Kiko's answer is that the messages an agent sends *are* its public decisions, so the programmer's job should reduce to writing *decision makers*: functions that are handed the set of messages the agent is currently enabled to send and choose which of them to complete and emit.

The enabling abstraction is the *form*: a prototype message instance whose ⌜in⌝ parameters are already bound from the agent's history (its causal dependencies are met) and whose ⌜out⌝ parameters are left for the decision maker to fill. A generic *protocol adapter* computes the enabled forms from the agent's local store, invokes decision makers on events, and validates each returned set of instances as an *emission attempt*: either every instance in the set is emitted or none is, so a decision maker that tries to send both `Buy` and `Reject` for one enactment is rejected outright rather than partially honoured. The adapter also validates receptions for integrity, and because BSPL constrains only emission, no ordering, reliability or central coordination is required of the transport; the implementation runs over UDP and treats reception as idempotent. Worked patterns include correlation across concurrent enactments, cross-enactment decisions (buy the cheapest of several quotes), playing roles in several unrelated protocols at once, atomic emission sets spanning protocols, reception-order freedom (a `Rescind` may overtake the `Quote` it depends on and simply disables the matching `Buy`), loose coupling under protocol change, and single-form decision makers as a convenient special case.

The formal part models an agent as a history plus input and output channels and gives a transition semantics with three rules: Recv (receive a message not already in the history if it passes the receive-check), Tx (delivery, whose non-application models loss) and Decide (compute enabled forms, apply a decision maker, emit if the send-check passes). Theorem 1 (soundness) states that every reachable state of a Kiko multiagent system simulates some reachable enactment of the protocol, so compliance holds regardless of what the decision makers choose; Theorem 2 shows that an optimised Decide rule that checks only the internal compatibility of the chosen set is equivalent to the full check, since forms are drawn from the enabled set and decision makers preserve their bindings; Theorem 3 (completeness) states that for any reachable enactment there exist decision makers that realise it, assuming all sent messages are received. The discussion relates Kiko to its predecessors in the same programme (Stellar, which introduced forms but used per-message handlers; Protocols over Things; Bungie; Mandrake), invokes the end-to-end argument for building over simple transports, and sketches norm-based forms, accountability, concurrent decision makers as actors, and microservices as directions.

## Key Ideas
- **Messages are decisions.** A protocol constrains decision making, not message ordering; an agent's programming interface should be the set of valid decisions currently open to it.
- **Forms.** Enabled message prototypes with ⌜in⌝ bound and ⌜out⌝ unbound, derived incrementally per enactment context (MAS identifier plus key bindings) from the local store.
- **Decision makers.** Programmer-written functions from sets of forms to sets of instances; invoked on communication events by default, or on custom events via an internal queue, so no polling.
- **Atomic emission sets.** An attempt is emitted in full or rejected in full; partial emission of a consistent subset is ruled out as arbitrary. This is the feature the authors call unique to Kiko.
- **Adapter architecture.** Local Store, Enablement, Checker, Emitter and Receiver; the adapter is generic and understands information protocols, so the communication service is fully abstracted from business logic.
- **Unordered, lossy transport suffices.** BSPL constrains only emission and reception is idempotent, so UDP without ordering or reliability enacts protocols correctly; this is offered as compatibility with the end-to-end argument, and as something ordering-based protocol approaches cannot claim.
- **Formal definitions.** Association, instance, form, context, consistency, out- and nil-compatibility, derivation, enablement, decision maker, send-check and receive-check (Definitions 2 to 13).
- **Soundness, optimisation, completeness.** Reachable states simulate protocol enactments (Thm 1); the internal-compatibility-only Decide is equivalent (Thm 2); any reachable enactment is realisable by some decision makers under delivery (Thm 3).
- **Loose coupling.** Because coupling is by information, adding an indirect bank-transfer path to Purchase leaves the seller's decision logic unchanged; the adapter derives the `Deliver` form once payment arrives by either route.
- **Lineage.** Stellar (forms, message handlers), Protocols over Things and Mandrake (fault tolerance), Bungie (extensible application-level protocols), Tosca and Clouseau (commitments compiled to information protocols).

## Connections
- [[BSPL]]
- [[Information Protocols]]
- [[Enactability]]
- [[BSPL - The Blindingly Simple Protocol Language]]
- [[Semantics and Verification of Information-Based Protocols]]: defines the reachable enactments that Kiko's states are shown to simulate
- [[Interaction Protocols]]
- [[Agent-Oriented Programming]]
- [[AgentSpeak]]
- [[An Interaction-oriented Agent Framework for Open Environments]]: the JaCaMo-based commitment framework Kiko contrasts with
- [[Agents and Artifacts]]
- [[FIPA-ACL Specifications]]: the JADE/FIPA ordering-based incumbent
- [[Commitment-based Semantics]]
- [[Actor Model]]: proposed substrate for concurrent decision makers
- [[Multiparty Asynchronous Session Types]]: cited as a representative ordering-based protocol language
- [[Endpoint Projection]]
- [[CALM Theorem]]
- [[CBCL - Safe Self-Extending Agent Communication]]

## Conceptual Contribution
- **Claim:** Agents should be programmed as sets of decision makers over the messages a protocol currently enables them to send. Given an information protocol, this abstraction guarantees compliance by construction, supports realistic decision patterns that ordering-based models cannot express, and needs only an unordered, unreliable transport.
- **Mechanism:** Forms derived from the local store per enactment context; decision makers returning emission attempts checked atomically; a protocol adapter (store, enablement, checker, emitter, receiver) over UDP; an operational semantics (Recv, Tx, Decide) with soundness, an equivalent optimised check, and completeness relative to BSPL's reachable enactments.
- **Concepts introduced/used:** [[Information Protocols]], [[BSPL]], [[Enactability]], [[Agent-Oriented Programming]], [[Actor Model]], [[Interaction Protocols]]
- **Stance:** programming model / engineering, with formal guarantees
- **Relates to:** Completes the BSPL stack begun in [[BSPL - The Blindingly Simple Protocol Language]] and [[Semantics and Verification of Information-Based Protocols]] by giving the agent side a programming interface whose correctness is stated against that semantics. It occupies the place that per-role projected programs occupy in [[Choreographic Programming]] and per-role monitors occupy in [[Session Types]], but reaches it without [[Endpoint Projection]]: the adapter evaluates the global protocol against the agent's own history. The same "decide from local history, verify from the trace" shape appears in [[CBCL - Safe Self-Extending Agent Communication]]'s R5 verifier, which is why Kiko and its BSPL lineage are the nearest multiagent-systems precedent for that work.

## Tags
#agent-programming #interaction-protocols #bspl #information-protocols #decentralization #asynchrony #operational-semantics #aamas
