# Communicative Actions for Artificial Agents

**Reference:** Cohen, P. R. & Levesque, H. J. (1995). *Communicative Actions for Artificial Agents.* In *Proceedings of the First International Conference on Multi-Agent Systems (ICMAS-95)*, San Francisco, June 1995, pp. 65–72. AAAI Press. Reprinted in J. M. Bradshaw (ed.), *Software Agents* (AAAI Press / MIT Press 1997), ch. 19. [URL (AAAI PDF)](https://cdn.aaai.org/ICMAS/1995/ICMAS95-009.pdf)

## Summary
This paper is the *high-water mark of mentalistic ACL semantics*: the most explicit, systematic statement of the position that an agent communication act *is* a complex operator on the [[Belief-Desire-Intention|BDI]] states of sender and receiver, and that the *semantics* of an ACL performative is given by feasibility preconditions and rational effects expressed in modal logic over those mental states. Cohen and Levesque extend the [[Intention Is Choice with Commitment|Cohen–Levesque 1990]] modal logic of intention into a *logic of rational action* in which speech acts are first-class actions whose definitions are derivable from more basic actions of *attempting to bring about* a state of affairs, together with assumed Gricean rationality on the part of both agents. The standard FIPA-ACL semantics in the FIPA Communicative Act Library Specification (FIPA00037) is essentially a streamlined adaptation of the Cohen–Levesque framework.

The mechanism is precise. A speech act `e` performed by speaker `s` toward hearer `h` has a *feasibility precondition* (e.g. *s* believes *p*, *s* believes *h* does not know *p*, *s* intends *h* to come to know *p*) and a *rational effect* (e.g. *h* believes *p* because *h* believes *s* sincerely informed). The semantics of *inform*, *request*, *promise*, *commit*, *propose*, and other performatives are derived by *composition* from the more primitive *attempt*: a request is an attempt to bring about that the hearer perform an action and that the hearer believe the speaker wants the action performed; an inform is an attempt to bring about that the hearer come to believe `p` and to know the speaker believes `p`; and so on. The framework is mathematically beautiful and ontologically heavy: it requires every speech act to be *defined* in terms of nested beliefs and intentions of speaker and hearer, often to several levels of nesting.

This is precisely why [[ACL Rethinking Principles|Singh 1998]] writes the *Rethinking* critique. The Cohen–Levesque definitions are unverifiable in practice: *no external observer can check that an agent believed `p` when it sent `inform(p)`*; the inferential web that fixes whether the agent "really" performed an inform speaks entirely about the agent's mental state, which is exactly the inscrutable thing the protocol participants do not have access to. The paper is therefore the canonical *negative example* for [[CBCL - Safe Self-Extending Agent Communication|CBCL]] and the [[Commitment-based Semantics|commitment-based]] tradition: it shows what a fully worked-out [[Mentalistic Semantics|mentalistic semantics]] looks like, and *that* shows why the field has had to move on. The right way to read it in 2026 is as the high statement of a coherent but unverifiable position, *not* as a blueprint to implement.

## Key Ideas
- *Speech act = action on mental states*: a communicative act is a complex action whose semantics is given by feasibility preconditions and rational effects expressed over the BDI states of speaker and hearer.
- *Attempt as the primitive*: more elementary than the standard speech-act categories is the action of *attempting* — an agent attempts an action toward an end if and only if it performs the action with that goal and the belief that the action is the means.
- *Composition of performatives*: standard performatives (inform, request, promise, propose, confirm, agree, refuse) are derived by composing *attempt* with specific mental-state preconditions and goals.
- *Sincerity and competence as background assumptions*: the rational effects only follow if speaker and hearer are sincere (no lying) and competent (no false beliefs). When these fail, the framework's predictions silently fail too.
- *Joint intentions in conversation*: extends the 1990 framework with *joint intentions* — for conversational acts like agreement, both parties acquire a shared intention with mutual belief.
- *Verifiability is a known cost*: the paper acknowledges that the mental-state preconditions are not externally observable; it argues this is the price of a *real* semantics rather than a behavioural surrogate.
- *Closest formal ancestor of FIPA*: the FIPA-ACL CAL spec (FIPA00037) is a direct adaptation of this framework with light editorial smoothing.

## Connections
- [[Intention Is Choice with Commitment]]
- [[Cohen and Levesque]]
- [[Mentalistic Semantics]]
- [[Rational Action Semantics]]
- [[Belief-Desire-Intention]]
- [[BDI Logic]]
- [[Persistent Goal]]
- [[Joint Intentions]]
- [[Speech Act Theory]]
- [[How to Do Things with Words]]
- [[Speech Acts - An Essay in the Philosophy of Language]]
- [[Foundations Of Illocutionary Logic]]
- [[Logic and Conversation]]
- [[FIPA-ACL]]
- [[FIPA-ACL Specifications]]
- [[KQML]]
- [[KQML Overview]]
- [[KQML as an Agent Communication Language]]
- [[Agent Communication Languages]]
- [[ACL Rethinking Principles]]
- [[Agent Communication Languages - Rethinking the Principles]]
- [[Verifiable Semantics for ACLs]]
- [[Semantics and Conversations for an ACL]]
- [[Public Semantics]]
- [[Commitment-based Semantics]]
- [[Commitment Machines - Yolum and Singh]]
- [[A Commitment-Based Approach to Agent Communication]]
- [[An Ontology for Commitments in Multiagent Systems - Singh]]
- [[Articulating Reasons - Brandom]]
- [[Making It Explicit - Brandom]]
- [[Empiricism and the Philosophy of Mind - Sellars]]
- [[CBCL - Safe Self-Extending Agent Communication]]

## Conceptual Contribution
- **Claim:** Communicative acts can be given precise semantics by defining them as complex actions on the BDI states of sender and receiver, derived by composition from the primitive notion of *attempt* under shared rationality assumptions. The semantics of an ACL performative is its feasibility precondition and rational effect, expressed in modal logic over beliefs, goals, and intentions.
- **Mechanism:** Extend the [[Intention Is Choice with Commitment|Cohen–Levesque 1990]] modal logic of intention with a notion of *attempt* (an agent attempts an action toward an end iff it performs the action with that goal and the belief that the action serves the goal). Define each standard performative by composition: *inform(s,h,p)* requires *s* believes *p*, *s* believes *h* does not know *p*, *s* intends *h* to come to know *p*; the rational effect is that *h* comes to believe *p* by mutual recognition of *s*'s sincerity. Similar definitions for *request*, *promise*, *propose*, *agree*, *refuse*, with joint-intention machinery handling conversational acts.
- **Concepts introduced/used:** [[Attempt (Cohen-Levesque)]], [[Feasibility Precondition]], [[Rational Effect]], [[Mentalistic Semantics]], [[Joint Intentions]], [[Sincerity Condition]], [[Communicative Act Library]].
- **Stance:** foundational technical paper / formal-semantics manifesto.
- **Relates to:** The closest formal ancestor of the [[FIPA-ACL Specifications|FIPA Communicative Act Library]] (FIPA00037) — the FIPA spec is essentially a streamlined adaptation of this framework. It is the *negative example* against which the [[Public Semantics|public-semantics]] / [[Commitment-based Semantics|commitment-based]] line defines itself: [[ACL Rethinking Principles|Singh 1998]] argues precisely that the BDI preconditions are unverifiable and that ACL semantics should be grounded in *observable* social commitments instead. [[Commitment Machines - Yolum and Singh|Yolum & Singh 2002]], [[A Commitment-Based Approach to Agent Communication|Fornara & Colombetti 2004]], and [[An Ontology for Commitments in Multiagent Systems - Singh|Singh 1999]] develop the public alternative. [[CBCL - Safe Self-Extending Agent Communication|CBCL]] then operationalises that alternative as a verified, trace-checkable, self-extending wire format — explicitly *not* what Cohen and Levesque built. The philosophical critique of mentalistic semantics runs deeper, through [[Empiricism and the Philosophy of Mind - Sellars|Sellars]] / [[Articulating Reasons - Brandom|Brandom]] / [[Making It Explicit - Brandom|*MIE*]] — Cohen–Levesque takes mental states as pre-given semantic primitives, which is the move [[Inferentialism|inferentialism]] rejects.

## Tags
#cohen-levesque #mentalistic-semantics #bdi #speech-acts #acl #foundational #fipa-ancestor #classical-acl
