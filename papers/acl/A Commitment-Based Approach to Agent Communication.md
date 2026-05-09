# A Commitment-Based Approach to Agent Communication

**Reference:** Fornara, N. & Colombetti, M. (2004). *Applied Artificial Intelligence* 18(9–10): 853–867. DOI: [10.1080/08839510490509054](https://doi.org/10.1080/08839510490509054). The journal article is paywalled; the open-access AAMAS-02 conference precursor — *Operational Specification of a Commitment-Based Agent Communication Language* (pp. 535–542) — captures the same model and is the locally archived source. Source file: `fornara-colombetti-aamas02.pdf`. [URL](https://people.lu.usi.ch/fornaran/papers/AAMAS02_fornara_colombetti.pdf)

## Summary
Fornara and Colombetti develop an object-oriented operational semantics for an Agent Communication Language grounded entirely in social commitments, intended for open environments populated by self-interested, heterogeneous agents who cannot be assumed to share an honest mental architecture. A `Commitment` is an abstract data type with fields `Identifier`, `Debtor`, `Creditor`, `State` ∈ {empty, cancelled, precommitment, conditional, active, fulfilled, violated}, `Content` (a temporal proposition), `Condition` (another temporal proposition), and `Time-out`. Its evolution is given by an explicit finite-state machine driven by two kinds of transitions: agent-invoked methods (`mc`, `mp`, `ap`, `cc`, `cp`, `rp`) and event-driven *update rules* triggered when the truth value of the content or condition resolves.

The authors' key innovation over the Yolum-Singh treatment is the *precommitment* state, which models the social situation a directive speech act creates: the speaker cannot directly commit the hearer, so a `request` instantiates a precommitment whose debtor is the hearer; the hearer either `accept`s it (turning it into an active or conditional commitment), `reject`s it, fulfills it implicitly by performing the action, or lets the time-out elapse. This machinery yields uniform commitment-based definitions for Searle's main illocutionary categories — assertives (`inform`, `informIf`, `informRef`), commissives (`promise`, `conditionalPromise`), and directives (`request`, `conditionalRequest`, `accept`, `reject`, `yes/noQuestion`, `whQuestion`) — and lets a `propose` act be defined compositionally as a conditional request conjoined with a conditional promise. A worked auction-style proposal protocol is given as an interaction diagram whose state contents are computed from the speech-act definitions, and whose soundness is checked by requiring that all final-state commitments be empty, fulfilled, or violated.

## Key Ideas
- *Commitment-as-object*: a commitment is an abstract data type with a state in {`e`, `c`, `p`, `cc`, `a`, `f`, `v`} whose dynamics are described by an explicit FSM.
- *Temporal proposition* class: the content/condition of a commitment is a sentence + time interval + ∀/∃ mode + state, resolved by a domain "notifier" — separating *what is committed* from *when and how its truth is observed*.
- *Precommitment* models directive speech acts: a request creates `C(p, hearer, speaker, P|Q)` that the hearer can `accept` (`ap`), `reject` (`rp`), implicitly fulfil (update rule 5), or let time out.
- *Conditional commitment* with a temporal condition becomes active when the condition is satisfied and is automatically cancelled if the condition fails.
- Five update rules link the truth-state of content and condition propositions to commitment-state transitions (active→fulfilled/violated, conditional→active/cancelled, precommitment→fulfilled).
- Searle's taxonomy of illocutionary acts is recovered by composition: `inform`, `promise`, `request`, `accept/reject`, `yes/noQuestion`, `whQuestion`, `propose`.
- *Soundness of an interaction protocol* is checked by an interaction diagram in which every final state's commitments are empty, fulfilled, or violated — a structural correctness criterion for negotiation protocols.
- The notion of a *conversational commitment* (a meta-commitment to react to interlocutor speech acts) is sketched as the principled justification for the time-out field.

## Connections
- [[Flexible Protocol Specification and Execution]]
- [[Agent Communication And Institutional Reality]]
- [[ACL Rethinking Principles]]
- [[Verifiable Semantics for ACLs]]
- [[A Common Ontology Of ACLs]]
- [[Commitment-based Semantics]]
- [[Commitment-Based Protocol]]
- [[Conversation Protocols]]
- [[Speech Act Theory]]
- [[Speech Acts]]
- [[A Taxonomy of Illocutionary Acts]]
- [[Speech Acts - An Essay in the Philosophy of Language]]
- [[FIPA-ACL]]
- [[KQML]]
- [[Directives]]
- [[Precommitment]]
- [[Conditional Commitment]]
- [[Temporal Proposition]]

## Conceptual Contribution
- **Claim:** Speech-act semantics for an ACL should be specified *operationally* — as state-machine transitions over a public commitment data type — so that meaning is independent of any agent's internal mental architecture, observable to third parties, and compositional across the speech-act taxonomy; in particular, the directive family requires a dedicated *precommitment* state because no agent can unilaterally commit another.
- **Mechanism:** Define an abstract `Commitment` class with seven explicit states and a transition FSM driven by methods (mc/mp/ap/cc/cp/rp) plus five event-driven update rules that read truth-states of `Temporal Proposition` objects; define each Searle category by a single-line operation on commitment objects (`inform := mc(a,b,P,T)`, `request := mp(a,b,P,T)`, `propose := conditionalRequest ∧ conditionalPromise`, etc.); validate interaction protocols structurally via a state-content interaction diagram in which final-state commitments must all be empty/fulfilled/violated.
- **Concepts introduced/used:** [[Commitment]], [[Social Commitment]], [[Precommitment]], [[Conditional Commitment]], [[Temporal Proposition]], [[Commitment-Based Protocol]], [[Commitment-based Semantics]], [[Public Semantics]], [[Verifiable Semantics]], [[Speech Act Theory]], [[Directives]], [[Conversation Protocols]], [[Interaction Protocols]], [[Open Multi-Agent Systems]], [[Conversational Commitment]]
- **Stance:** formal-semantic / engineering
- **Relates to:** Closest neighbour is [[Flexible Protocol Specification and Execution]] (Yolum & Singh, AAMAS-02) — the authors explicitly compare the two approaches: where Yolum-Singh use the [[Event Calculus]] and an abductive planner over create/discharge/cancel/release/assign/delegate, Fornara-Colombetti use an OO/FSM data type and add the precommitment apparatus to cover directives. Both belong to the social-semantics programme catalysed by [[ACL Rethinking Principles]] and formalised verifiability-style by [[Verifiable Semantics for ACLs]]; both are subsumed under the role-based unification of [[A Common Ontology Of ACLs]]. Repudiates the mentalistic line of [[FIPA-ACL]] / [[Intention Is Choice with Commitment]] for *interoperable* ACL semantics while keeping speech-act theory ([[Speech Acts - An Essay in the Philosophy of Language]], [[A Taxonomy of Illocutionary Acts]]) as the organising taxonomy. The 2004 Applied AI version this entry primarily cites elaborates the AAMAS-02 model with extended treatment of negotiation protocols and the soundness-via-conversational-commitment programme that the authors' later artificial-institutions work develops.

## Tags
#acl #commitments #precommitment #speech-acts #protocol-specification #operational-semantics #foundational
