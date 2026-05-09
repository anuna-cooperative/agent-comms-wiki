# Flexible Protocol Specification and Execution: Applying Event Calculus Planning Using Commitments

**Reference:** Yolum, P. & Singh, M.P. (2002). *Proceedings of the 1st International Joint Conference on Autonomous Agents and Multiagent Systems (AAMAS '02)*, pp. 527–534. ACM, Bologna. Source file: `yolum-singh-2002-flexible-protocol.pdf`. [URL](https://www.csc2.ncsu.edu/faculty/mpsingh/papers/mas/aamas-02-protocols.pdf)

## Summary
Yolum and Singh argue that finite-state-machine and Petri-net protocol formalisms over-constrain multi-agent interactions because they fix legal sequences of message *tokens* without regard to what those messages *mean*. They develop a commitment-based alternative in which each protocol action is reified as an operation on social commitments — `Create`, `Discharge`, `Cancel`, `Release`, `Assign`, `Delegate` — and the rules for how commitments evolve are formalised in a variant of the [[Event Calculus]] (Kowalski-Sergot, in Shanahan's planner formulation). Base-level commitments `C(x,y,p)` and conditional commitments `CC(x,y,p,q)` become event-calculus fluents whose Initiates/Terminates clauses constitute the protocol specification.

The running example is the NetBill e-commerce protocol. Three reasoning postulates capture how a base-level commitment is discharged when its content holds, how a conditional commitment resolves into a base-level commitment when its precondition fires, and how `CC` is consumed when its consequent already holds. An abductive event-calculus planner (Shanahan) is then used to *generate* protocol runs from an initial state to a goal state, allowing agents to skip steps, reorder messages, or repair exceptions at runtime — provided every base-level commitment created during the run is eventually discharged. The result satisfies Singh's three social-semantic desiderata: meaningful (content captured), verifiable (compliance checkable from public commitment trace), and declarative (specifies what each action achieves, not how to sequence actions).

## Key Ideas
- *Commitment as fluent in event calculus*: `C(x,y,p)` and `CC(x,y,p,q)` represented by the EC predicates `Initiates`, `Terminates`, `HoldsAt`, `Happens`, etc.
- Six commitment operations (`Create`, `Discharge`, `Cancel`, `Release`, `Assign`, `Delegate`) compiled into Initiates/Terminates clauses.
- Three postulates link content fluents to commitment fluents: discharging on content satisfaction, conditional-commitment resolution, and conditional consumption when consequent already true.
- A protocol run is a sequence of `Happens` events; *complete* iff no base-level commitment is left holding — incomplete runs identify non-compliant agents.
- Abductive planning (Shanahan) generates legal protocol runs from initial-state + goal-state descriptions, restoring autonomy/flexibility lost in FSM models.
- Skipping steps and reordering (e.g. send-goods-before-accept) is supported because preconditions are over commitment state, not over a path through an FSM.
- Permissions encoded via action preconditions; prohibitions encoded as commitments-not-to-bring-about.

## Connections
- [[A Commitment-Based Approach to Agent Communication]]
- [[Agent Communication And Institutional Reality]]
- [[ACL Rethinking Principles]]
- [[Verifiable Semantics for ACLs]]
- [[Commitment-Based Protocol]]
- [[Commitment-based Semantics]]
- [[Conversation Protocols]]
- [[Event Calculus]]
- [[Commitment Machines]]
- [[Commitment Machines - Yolum and Singh]]
- [[An Interaction-oriented Agent Framework for Open Environments]]
- [[Intention Is Choice with Commitment]]

## Conceptual Contribution
- **Claim:** Multi-agent protocols should be specified by the *meaning* of their actions — concretely, by how each action transforms the agents' social commitments — rather than by legal token sequences; doing so simultaneously delivers meaningful, verifiable, and declarative semantics, and lets agents skip, reorder, or repair steps via runtime planning while still being held to their obligations.
- **Mechanism:** Reify commitments as event-calculus fluents and define the six manipulation operations (Create/Discharge/Cancel/Release/Assign/Delegate) as Initiates/Terminates clauses; add three reasoning postulates governing base-level discharge and conditional-commitment resolution; use Shanahan's abductive event-calculus planner to compute runs (sets of `Happens` clauses with a partial order) from initial states to goal states under the protocol's preconditions; declare a run *complete* iff no base-level commitment is left holding, providing an objective compliance criterion.
- **Concepts introduced/used:** [[Commitment]], [[Conditional Commitment]], [[Commitment-Based Protocol]], [[Commitment-based Semantics]], [[Event Calculus]], [[Abductive Planning]], [[Public Semantics]], [[Verifiable Semantics]], [[Conversation Protocols]], [[Interaction Protocols]], [[NetBill Protocol]], [[Commitment Machines]]
- **Stance:** formal-semantic / engineering
- **Relates to:** Direct response to FSM- and Petri-net-based protocol traditions critiqued in [[ACL Rethinking Principles]]; supplies the operational machinery whose mentalistic counterpart (KQML/FIPA-SL) is shown unverifiable in [[Verifiable Semantics for ACLs]]. Companion to Singh's social-agency programme and to the institutional-reality strand of [[Agent Communication And Institutional Reality]]. Conditional-commitment treatment derives from Colombetti's earlier work and is contemporaneous with [[A Commitment-Based Approach to Agent Communication]] (Fornara & Colombetti AAMAS-02 / AAI-04), which gives a complementary object-oriented account of the same primitives (those authors note Yolum-Singh as the closest relative). Commitment-machine compilation to FSMs is the subject of the authors' parallel ATAL-01 paper. Empire of mentalistic semantics from [[Intention Is Choice with Commitment]] is the foil — here intentions/persistence are *not* needed because the protocol semantics is exhausted by the public commitment trace.

## Tags
#acl #commitments #event-calculus #protocol-specification #planning #verifiability #foundational
