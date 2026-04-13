# Circumscription — A Form of Nonmonotonic Reasoning (and Applications to Common Sense)

**Reference:** John McCarthy (1986). "Applications of Circumscription to Formalizing Common Sense Knowledge." *Artificial Intelligence* 28(1): 89-116. (Fetched version is the author-hosted PDF titled *Circumscription — A Form of Nonmonotonic Reasoning*, the technical core of the 1986 AIJ paper.) [URL](http://jmc.stanford.edu/articles/circumscription/circumscription.pdf)

## Summary
McCarthy's landmark treatment of the *qualification problem*: any common-sense rule (e.g. "a rowboat can be used to cross a river") is subject to an open-ended list of possible defeaters (no oars, a leak, cannibals, a sea monster) that cannot plausibly be enumerated in advance. Standard first-order logic is monotonic — adding premises never removes conclusions — so it cannot support the everyday inference "no defeater mentioned, therefore none present."

Circumscription is a formally specified *rule of conjecture* that licenses jumping to the conclusion that the objects (or tuples) shown to satisfy a predicate P are the *only* ones that do. Adding a sentence "There is a bridge upstream" then legitimately retracts the original conclusion — non-monotonicity is thus built in at the rule-of-conjecture level, not by weakening the logic itself. The paper explains predicate circumscription, shows how domain circumscription (minimal inference) is a special case, works through the missionaries-and-cannibals puzzle to show how circumscription blocks sea-monster-style pedantry, and connects the technique to default reasoning (Reiter), to `THNOT` in MICROPLANNER (Sussman et al.), and to McCarthy's broader project of formalising common-sense knowledge in logic.

Together with *Ascribing Mental Qualities to Machines* and *First Order Theories of Individual Concepts and Propositions*, this is one of the three pillars of McCarthy's logicist programme. Its non-monotonic commitment is directly inherited by the CBCL proposal (partial-understanding messages) and by Elephant 2000's treatment of commitments and speech-act preconditions.

## Key Ideas
- The qualification problem: common-sense rules have unbounded implicit preconditions that cannot be enumerated.
- Monotonicity of FOL is the obstacle; circumscription is a rule of conjecture over FOL, not a modification of its proof theory.
- Predicate circumscription: the tuples shown to satisfy P are all the tuples that do.
- Domain circumscription (minimal inference) subsumed as a special case.
- Non-monotonicity at the level of conjecture rather than entailment — new facts retract conjectures without breaking soundness of FOL.
- "Common-sense knowledge must be expressed in a form that says a boat crosses rivers *unless* something prevents it" — ontology must admit prevention-entities.

## Connections
- [[Ascribing Mental Qualities to Machines]] — philosophical companion; circumscription is the formal tool for the ascriptive logicist programme argued for there.
- [[First Order Theories of Individual Concepts and Propositions]] — shares the methodology of extending expressive power without abandoning first-order logic.
- [[Common Sense Reasoning]]
- [[Knowledge Representation]]
- [[Elephant 2000 - A Programming Language Based on Speech Acts]] — Elephant's commitments and speech-act preconditions are governed by defeasible, common-sense rules of exactly the kind circumscription was designed to formalise.
- [[Foundations of Logic Programming - Lloyd]] — negation-as-failure in logic programming is a close cousin of circumscription.
- [[Common Business Communication Language]] — CBCL's ADJECTIVE construct and partial-understanding fallback are predicated on non-monotonic reading.

## Conceptual Contribution
- **Claim:** Common-sense reasoning requires non-monotonic inference, and this can be supplied to ordinary first-order logic by a rule of conjecture (circumscription) without modifying the logic itself.
- **Mechanism:** Predicate circumscription schema: from a set of facts A mentioning P, conjecture that the only tuples satisfying P are those whose satisfaction follows from A. Domain circumscription as minimal-model inference. Combination with ordinary FOL rules of inference. Explicit introduction into the ontology of prevention-entities ("something wrong with the boat").
- **Concepts introduced/used:** [[Circumscription]], [[Non-monotonic Reasoning]], [[Qualification Problem]], [[Default Reasoning]], [[Minimal Model]], [[Common Sense Reasoning]], [[Rule of Conjecture]].
- **Stance:** foundational
- **Relates to:** One of the three McCarthy pillars alongside [[Ascribing Mental Qualities to Machines]] and [[First Order Theories of Individual Concepts and Propositions]]; provides the defeasibility semantics that [[Elephant 2000 - A Programming Language Based on Speech Acts]] needs for commitment revision and [[Common Business Communication Language]] needs for partial-understanding messaging.

## Tags
#foundational #mccarthy #non-monotonic #common-sense #knowledge-representation #logic
