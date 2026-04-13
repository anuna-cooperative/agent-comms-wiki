# Generality in Artificial Intelligence

**Reference:** John McCarthy (1987). "Generality in Artificial Intelligence." *Communications of the ACM* 30(12): 1030-1035. Rewritten and expanded version of McCarthy's 1971 ACM Turing Award Lecture of the same title (the original 1971 version was never published to his satisfaction). Source file: `mccarthy-generality.pdf`. [URL](http://jmc.stanford.edu/articles/generality/generality.pdf)

## Summary
McCarthy's Turing Award reflection, revised sixteen years later. He opens by admitting that the original 1971 Turing lecture was "overambitious" — he could not then state his thoughts on generality in a satisfactory written form — and that the problem of generality in AI is "almost as unsolved as ever," though with more ideas now available. The paper is his summary diagnosis of why AI programs in 1987 still lack general intelligence and a short catalogue of research directions that might help.

The lead diagnosis: AI programs have no general database of common-sense knowledge that any program could draw on. A small addition to what a program is supposed to do typically requires a complete rewrite starting with the data structures; modifying search strategies is even harder. The key missing piece is a *language* for expressing general common-sense knowledge that can be included in a database shared across programs. McCarthy then surveys candidate approaches — Friedberg-style program-modification learning (too unstructured), GPS and SOAR (domain-independent problem solving, but failed to be truly general), rule-based expert systems, neural networks, first-order logic plus situation calculus, circumscription and non-monotonic reasoning, frames, scripts — and evaluates each against the generality criterion.

The paper culminates in a re-statement of McCarthy's logicist agenda: generality will come from treating common-sense knowledge as a formal database in first-order logic (augmented with circumscription for defaults and with concepts-as-individuals for propositional attitudes), designed so that programs *consult* this database rather than having it compiled into their structure. It is the closest thing to a mature manifesto of McCarthy's research programme and is continually cited as the articulation of what "logicist AI" means.

## Key Ideas
- *Generality* is the unsolved problem of AI: small changes to a problem should require small changes to the program, and a shared common-sense database should be useable by any program that needs it.
- The primary obstacle is that existing AI programs bake their knowledge into data structures and control flow rather than consulting a shared declarative database.
- Friedberg-style program-mutation learning is representationally general but practically barren.
- GPS / SOAR separate goals and subgoals from the domain but fail on problems whose solutions require common-sense knowledge not reducible to state-transformation rules.
- Expert systems are narrow by design.
- The logicist approach — first-order logic + situation calculus + circumscription + concepts-as-individuals — is defended as the most promising route to a language for general common-sense knowledge.
- The frame problem, qualification problem, and ramification problem are all facets of the generality problem.
- Elaboration tolerance: the measure of a representation's generality is how small the elaborations required by new information are.

## Connections
- [[Programs with Common Sense]] — the 1959 origin of the programme this paper summarises.
- [[Recursive Functions of Symbolic Expressions and Their Computation by Machine]]
- [[Some Philosophical Problems from the Standpoint of Artificial Intelligence]]
- [[Epistemological Problems of Artificial Intelligence]]
- [[Circumscription - A Form of Nonmonotonic Reasoning]]
- [[Circumscription - Applications to Formalizing Common Sense Knowledge]]
- [[Ascribing Mental Qualities to Machines]]
- [[First Order Theories of Individual Concepts and Propositions]]
- [[Towards a Mathematical Science of Computation]]
- [[Correctness of a Compiler for Arithmetic Expressions]]
- [[Elephant 2000 - A Programming Language Based on Speech Acts]]
- [[Common Business Communication Language]]
- [[Common Sense Reasoning]]
- [[Knowledge Representation]]
- [[Non-monotonic Reasoning]]
- [[Circumscription]]
- [[Epistemic Logic]]
- [[The Knowledge Level]] — Newell's parallel statement of the same ambition.
- [[The Society of Mind]] — Minsky's alternative (procedural, multi-agent) answer to the generality problem.
- [[Formal Verification]]

## Conceptual Contribution
- **Claim:** The central unsolved problem of AI is *generality* — how to write programs whose small extensions require only small modifications, and how to share a database of common-sense knowledge across programs. The most promising route is logicist: first-order logic, situation calculus, circumscription, and concepts-as-individuals, combined so that programs consult a declarative common-sense database rather than embedding knowledge in code.
- **Mechanism:** Argumentative / programmatic. Surveys candidate approaches (program-mutation learning, GPS/SOAR, production rules, frames, logic) against a generality criterion (small change of problem → small change of program; database usable across programs). Re-asserts the logicist stack as the best match.
- **Concepts introduced/used:** [[Generality]], [[Elaboration Tolerance]], [[Common Sense Database]], [[Frame Problem]], [[Qualification Problem]], [[Ramification Problem]], [[Logicist AI]], [[Circumscription]], [[Concepts as Individuals]].
- **Stance:** manifesto / methodological
- **Relates to:** Summarises and defends the programme whose parts are worked out in [[Programs with Common Sense]], [[Some Philosophical Problems from the Standpoint of Artificial Intelligence]], [[Epistemological Problems of Artificial Intelligence]], [[Circumscription - A Form of Nonmonotonic Reasoning]], [[Circumscription - Applications to Formalizing Common Sense Knowledge]], [[Ascribing Mental Qualities to Machines]], and [[First Order Theories of Individual Concepts and Propositions]]. Methodologically parallel to [[The Knowledge Level]]; counterposed to [[The Society of Mind]].

## Tags
#foundational #mccarthy #turing-award #generality #knowledge-representation #logicist #methodology #1987
