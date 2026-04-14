# Some Philosophical Problems from the Standpoint of Artificial Intelligence

**Reference:** John McCarthy and Patrick J. Hayes (1969). "Some Philosophical Problems from the Standpoint of Artificial Intelligence." In B. Meltzer and D. Michie (eds.), *Machine Intelligence 4*, Edinburgh University Press, pp. 463-502. Source file: `mccarthy-mcchay69.pdf`. [URL](http://jmc.stanford.edu/articles/mcchay69/mcchay69.pdf)

## Summary
The paper that introduces *situation calculus*, names the *frame problem*, and divides AI cleanly into an *epistemological* part (what can in principle be inferred from what is knowable about the world) and a *heuristic* part (how to search that space efficiently). McCarthy and Hayes argue that a program capable of acting intelligently in the world must have a *general representation of the world*, and that designing such a representation forces the AI researcher to confront traditional philosophical problems — causality, ability, knowledge, free will, counterfactuals — with unusual rigor, because the representation has to be complete enough to drive actual deduction.

The paper is in four parts. Part 1 is philosophical: metaphysically vs *epistemologically* adequate representations, a proposed resolution of free will in a deterministic universe (via the existence of alternatives that the agent *can* bring about in its coarser theory), and a treatment of counterfactuals. Part 2 is the formal core: *situations* as complete states of the universe, *fluents* as functions on situations, *actions* as functions from situation to situation with `result(a, s)`, and a method of constructing first-order sentences true exactly when a strategy achieves a goal. Part 3 surveys open problems, most famously the *frame problem*: how to state concisely what *does not* change when an action is performed, without writing an axiom for every (action, fluent) pair. Part 4 reviews philosophical logic in relation to AI.

This is the paper that makes temporal / action reasoning a first-class topic in AI. Its ontology of situations, fluents, actions, and `result` is the direct ancestor of every subsequent theory of action — STRIPS, event calculus, fluent calculus, BDI temporal logics, ConGolog, planning formalisms, and the temporal backbone of [[Ensuring Trustworthy and Ethical Behaviour in Intelligent Logical Agents]]. The epistemological/heuristic distinction is picked up again in [[Epistemological Problems of Artificial Intelligence]] (1977) and shapes the methodology of logicist AI.

## Key Ideas
- *Epistemological* vs *metaphysical* adequacy of representations: a representation is epistemologically adequate if an observer can in practice express what they can come to know, not just what is ultimately true.
- Situation calculus: *situations* as complete states, *fluents* as situation-parametrised functions/predicates (e.g., `at(x, s)`), *actions* as functions `result(a, s)`.
- The frame problem: stating concisely what is *unchanged* by an action; a foundational difficulty for any action-based formalism.
- The qualification problem (in embryo): actions have open-ended preconditions that cannot all be enumerated — later treated in [[Circumscription - A Form of Nonmonotonic Reasoning]].
- `can`, `causes`, and `knows` reduced to first-order formulations over situations and strategies, including strategies with loops and knowledge acquisition.
- Free will and counterfactuals reinterpreted via alternative strategies available in an agent's coarser (epistemologically adequate) theory — not by denying determinism.
- Division of AI into epistemological and heuristic parts; the paper concentrates on the former.

## Connections
- [[Programs with Common Sense]] — the 1959 predecessor; this paper repairs its treatment of action and time.
- [[Recursive Functions of Symbolic Expressions and Their Computation by Machine]]
- [[Epistemological Problems of Artificial Intelligence]] — continues the epistemological-adequacy programme.
- [[Circumscription - A Form of Nonmonotonic Reasoning]] — formal answer to the qualification problem raised here.
- [[Ascribing Mental Qualities to Machines]]
- [[First Order Theories of Individual Concepts and Propositions]]
- [[Generality in Artificial Intelligence]]
- [[Towards a Mathematical Science of Computation]]
- [[Correctness of a Compiler for Arithmetic Expressions]]
- [[Elephant 2000 - A Programming Language Based on Speech Acts]]
- [[Common Business Communication Language]]
- [[Common Sense Reasoning]]
- [[Knowledge Representation]]
- [[Non-monotonic Reasoning]]
- [[Epistemic Logic]]
- [[The Knowledge Level]]
- [[The Society of Mind]]
- [[Frame Problem]]
- [[Situation Calculus]]
- [[Ensuring Trustworthy and Ethical Behaviour in Intelligent Logical Agents]] — A-ILTL's temporal obligations inherit the situation-calculus transition structure.
- [[BDI]] — BDI logics (Rao & Georgeff, Cohen & Levesque) build their belief/desire/intention modalities on top of situation-calculus-style branching time.
- [[BDI Logic]]

## Conceptual Contribution
- **Claim:** AI requires an epistemologically adequate representation of the world, which forces the AI researcher to solve philosophical problems (causality, ability, knowledge, counterfactuals, free will) formally; *situation calculus* — situations, fluents, actions with `result(a, s)` — provides a first-order representation in which strategies achieving goals can be proved correct.
- **Mechanism:** First-order logic with sorted terms for situations, fluents, and actions; the `result` function; axioms expressing action effects and successor-state relations; proof-of-strategy construction; explicit treatment of knowledge strategies (plans involving learning what one does not yet know); methodological division of AI into epistemological and heuristic parts.
- **Concepts introduced/used:** [[Situation Calculus]], [[Fluent]], [[Frame Problem]], [[Qualification Problem]], [[Epistemological Adequacy]], [[Metaphysical Adequacy]], [[Counterfactual]], [[Action Formalism]], [[Planning]], [[Knowing How vs Knowing That]].
- **Stance:** foundational
- **Relates to:** Names the *frame problem* that every subsequent action formalism must address; furnishes the ontology that [[BDI]] logics and [[Ensuring Trustworthy and Ethical Behaviour in Intelligent Logical Agents]] inherit for their temporal/intentional semantics; sets up the qualification problem that [[Circumscription - A Form of Nonmonotonic Reasoning]] later solves; methodologically complements [[Ascribing Mental Qualities to Machines]] and [[First Order Theories of Individual Concepts and Propositions]]; the epistemological-adequacy criterion reappears explicitly in [[Epistemological Problems of Artificial Intelligence]].

## Tags
#foundational #mccarthy #situation-calculus #frame-problem #knowledge-representation #action #planning #philosophy-of-ai #1969
