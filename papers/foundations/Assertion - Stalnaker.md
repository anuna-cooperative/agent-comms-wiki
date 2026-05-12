# Assertion

**Reference:** Stalnaker, R. C. (1978). *Assertion.* In P. Cole (ed.), *Syntax and Semantics 9: Pragmatics* (pp. 315–332). New York: Academic Press. Reprinted in Stalnaker, *Context and Content* (Oxford UP 1999). [PhilPapers record](https://philpapers.org/rec/STAA-2) · [SEP: pragmatics](https://plato.stanford.edu/entries/pragmatics/) · [SEP: presupposition](https://plato.stanford.edu/entries/presupposition/)

## Summary
Stalnaker's "Assertion" gives the canonical *update-semantics* account of what a speech act of asserting does, framed in terms of a *common ground* of mutually accepted propositions shared between conversational participants and a *context set* of possible worlds compatible with that common ground. To assert a proposition `p` is, *prima facie*, to propose that `p` be added to the common ground — equivalently, to propose that the context set be narrowed to its intersection with the set of worlds in which `p` is true. The hearer either accepts (the context set is updated) or challenges (the proposal stalls, the common ground is unchanged). The picture is symmetric, trace-checkable, and pragmatic: it tells you what an assertion *does* without taking a stand on the speaker's inner mental state.

The paper develops three *essential effects* of assertion. (1) An assertion of `p` adds `p` to the common ground unless it is challenged. (2) The proposition asserted should be *determinate* — true or false at every world in the context set; if not, the context set must be re-coordinated first (anticipating the *accommodation* mechanism worked out in Lewis 1979). (3) The proposition asserted should *partition* the context set non-trivially: not be common-ground-true already, not be common-ground-false already, and not be context-incoherent. This third effect is the seed of [[Maxim of Quantity|Gricean]] informativeness as a built-in feature of the dynamics rather than a separately stated maxim. The framework anticipates the entire *dynamic semantics* tradition (Heim, Kamp, Veltman) and is the operational counterpart of [[Logic and Conversation|Grice 1975]]: where Grice gives maxims governing rational conversation, Stalnaker gives the update mechanics conversation operates on.

For agent communication, Stalnaker is the philosopher who most directly anticipates *trace-checkable assertion semantics*. The common ground is a publicly observable object — what has been said and accepted — and assertion is a *publicly observable update operation* on it. There is no need to inspect any agent's beliefs; the semantic content of an assertion is given by the update it proposes, and conformance with that semantics is checkable from a transcript. The natural pairing in this vault is with [[ACL Rethinking Principles|Singh 1998]] on social-agency semantics, [[A Commitment-Based Approach to Agent Communication|Fornara & Colombetti]] on commitment-based operational semantics, and ultimately [[CBCL - Safe Self-Extending Agent Communication|CBCL]] — the common ground / context-set apparatus is precisely the kind of shared, monotone, trace-checkable object that monotone-verdict commitment protocols want.

## Key Ideas
- *Common ground*: the body of propositions mutually accepted (not necessarily believed) for purposes of conversation. The mathematical reflex is the *context set* — the set of worlds compatible with the common ground.
- *Assertion as context-set update*: an assertion of `p` proposes narrowing the context set to the intersection with `[[p]]`. If accepted, the update goes through; if challenged, it stalls.
- *Three essential effects of assertion* (the "essential effect" inventory): (i) the asserted proposition should be added to the common ground on acceptance; (ii) it must be determinate over the context set (true or false at each world); (iii) it must partition the context set non-trivially (informative).
- *Diagonalisation / two-dimensional accommodation*: when an assertion's content varies across worlds in the context set, the hearer can use the *diagonal proposition* — the function picking out, at each world, the content the assertion would have at that world — to recover a determinate update. This is the engine behind much of dynamic semantics' treatment of indexicals and modals.
- *Pragmatic presupposition*: a speaker presupposes `q` iff, in uttering an assertion, the speaker takes `q` to be in the common ground. Presupposition is a property of *speakers in contexts*, not of *sentences in models* — the move that allows accommodation to be modelled cleanly.
- *Context set is a public object*: the framework is symmetric across participants — neither side has privileged access. Trace-checkability falls out.

## Connections
- [[Common Ground]]
- [[Context Set]]
- [[Update Semantics]]
- [[Dynamic Semantics]]
- [[Pragmatic Presupposition]]
- [[Accommodation]]
- [[Logic and Conversation]]
- [[How to Do Things with Words]]
- [[Speech Acts - An Essay in the Philosophy of Language]]
- [[Speech Act Theory]]
- [[Articulating Reasons - Brandom]]
- [[Making It Explicit - Brandom]]
- [[Inferentialism]]
- [[Public Semantics]]
- [[Mentalistic Semantics]]
- [[Commitment-based Semantics]]
- [[Deontic Scorekeeping]]
- [[Convention - Lewis]]
- [[Languages and Language - Lewis]]
- [[Knowledge and Common Knowledge in a Distributed Environment]]
- [[ACL Rethinking Principles]]
- [[A Commitment-Based Approach to Agent Communication]]
- [[Commitment Machines - Yolum and Singh]]
- [[Flexible Protocol Specification and Execution]]
- [[CBCL - Safe Self-Extending Agent Communication]]

## Conceptual Contribution
- **Claim:** Assertion is best modelled as a publicly observable *update operation* on the *common ground* of mutually accepted propositions. The semantic content of an assertion is determined by which possible worlds it eliminates from the *context set*, with no recourse to the speaker's inner mental state required.
- **Mechanism:** The common ground is the body of propositions the participants mutually accept for purposes of conversation; the context set is its set-theoretic reflex (worlds compatible with the common ground). An assertion of `p` proposes intersecting the context set with `[[p]]`. The three essential effects (informativeness, determinacy, acceptance-by-default) govern well-formed assertion; diagonalisation handles cases where content varies across the context set.
- **Concepts introduced/used:** [[Common Ground]], [[Context Set]], [[Update Semantics]], [[Diagonal Proposition]], [[Pragmatic Presupposition]], [[Accommodation]], [[Essential Effect of Assertion]].
- **Stance:** foundational philosophical paper / canonical dynamic-pragmatic theory.
- **Relates to:** Operational counterpart of [[Logic and Conversation|Grice 1975]] — where Grice supplies maxims of rational conversation, Stalnaker supplies the *mechanics* (context-set update) that conversation manipulates. Genealogically the foundation of the *dynamic semantics* tradition (Heim FCS, Kamp DRT, Veltman update semantics). For agent communication, the framework is the direct philosophical antecedent of [[Public Semantics|public-semantics]] / [[Commitment-based Semantics|commitment-based]] approaches: the common ground is a publicly observable, monotone, trace-checkable object — exactly the kind of state [[ACL Rethinking Principles|Singh's]] social-agency semantics, [[A Commitment-Based Approach to Agent Communication|Fornara & Colombetti]]'s operational commitment semantics, and [[CBCL - Safe Self-Extending Agent Communication|CBCL]]'s ledger want. The deeper philosophical pair is [[Making It Explicit - Brandom|Brandom]]: Stalnaker's common-ground update is one of the two canonical formal models of [[Deontic Scorekeeping|deontic scorekeeping]] (the other being argumentation-style commitment stores after Hamblin).

## Tags
#stalnaker #assertion #common-ground #context-set #update-semantics #dynamic-semantics #pragmatics #foundations #public-semantics
