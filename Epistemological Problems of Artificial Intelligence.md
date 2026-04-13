# Epistemological Problems of Artificial Intelligence

**Reference:** John McCarthy (1977). "Epistemological Problems of Artificial Intelligence." In *Proceedings of the 5th International Joint Conference on Artificial Intelligence (IJCAI-77)*, Cambridge, MA, pp. 1038-1044. IJCAI Computers and Thought Award Lecture. Source file: `mccarthy-epistemological.pdf`. [URL](http://jmc.stanford.edu/articles/epistemological/epistemological.pdf)

## Summary
McCarthy's IJCAI-77 invited lecture returns to the division of AI into epistemological and heuristic parts first drawn in [[Some Philosophical Problems from the Standpoint of Artificial Intelligence]], and explains, eight years later, what the epistemological part actually studies: *what kinds of facts about the world are available to an observer with given opportunities to observe, how these facts can be represented in the memory of a computer, and what rules permit legitimate conclusions to be drawn from them.* Heuristics — how to search the space of possibilities — is deliberately bracketed.

The paper defends first-order logic as the right epistemological medium, introducing a key move: treating *individual concepts as objects* inside first-order logic so that modal phenomena (knowledge, belief, necessity) can be axiomatised without leaving the first-order setting — a move fully developed in [[First Order Theories of Individual Concepts and Propositions]]. McCarthy then formulates a precise criterion for *epistemological adequacy*: a theory is epistemologically adequate iff a robot whose database contains it, and which emits `X` just in case "I should emit output X now" is a logical consequence of its database, could in principle achieve its goals — irrespective of how fast the program runs. A theory that satisfies this *but* has no feasible proof search is *heuristically inadequate*. Most existing AI formalisms, he argues, fail the epistemological criterion — they are too narrow, too procedural, or too entangled with implementation.

The body of the paper surveys concrete epistemological problems: partial information, the representation of other agents' knowledge, reasoning about one's own ability, defaults (anticipating circumscription), temporal projection, and knowing what vs knowing that. It is the most concise and programmatic statement of the logicist agenda McCarthy pursued from 1959 through the 1980s, and it is the methodological ancestor of [[The Knowledge Level]] — Newell's roughly contemporaneous reframing of the same distinction in terms of agents that are characterised solely by their knowledge and goals.

## Key Ideas
- *Epistemological* problems of AI — what can be known, how it is represented, what inferences are licensed — are studied separately from *heuristic* problems of search.
- First-order logic with *concepts as individuals* (not modal operators) is the proposed medium for expressing partial knowledge, belief, and necessity.
- Precise *epistemological adequacy* criterion: the theory suffices iff a robot emitting whatever sentences of the form "I should emit X now" are logical consequences of its database could achieve its goals given unbounded computation.
- *Heuristic adequacy* is a separate requirement; a theory may be epistemologically adequate but practically useless.
- Most current AI formalisms (MICROPLANNER, pattern-invocation systems, production rules) trade epistemological adequacy for heuristic adequacy — a premature optimisation.
- Defaults, counterfactuals, self-knowledge, knowing-what vs knowing-that are identified as open epistemological problems.
- The spectrum from logic-as-data through compiled / hardware-embedded knowledge — each step trades declarative generality for heuristic speed.

## Connections
- [[Programs with Common Sense]]
- [[Recursive Functions of Symbolic Expressions and Their Computation by Machine]]
- [[Some Philosophical Problems from the Standpoint of Artificial Intelligence]] — source of the epistemological/heuristic division refined here.
- [[Circumscription - A Form of Nonmonotonic Reasoning]] — later technical answer to the default-reasoning problems this paper names.
- [[Ascribing Mental Qualities to Machines]] — philosophical companion argued in parallel.
- [[First Order Theories of Individual Concepts and Propositions]] — formal execution of the concepts-as-individuals move sketched here.
- [[Generality in Artificial Intelligence]]
- [[Towards a Mathematical Science of Computation]]
- [[Correctness of a Compiler for Arithmetic Expressions]]
- [[Elephant 2000 - A Programming Language Based on Speech Acts]]
- [[Common Business Communication Language]]
- [[Common Sense Reasoning]]
- [[Knowledge Representation]]
- [[Non-monotonic Reasoning]]
- [[Epistemic Logic]]
- [[The Knowledge Level]] — Newell's parallel knowledge-level formulation.
- [[The Society of Mind]] — Minsky's opposing procedural / agent-based stance on the same questions.
- [[Formal Verification]] — the epistemological-adequacy criterion is structurally analogous to logical completeness for specifications.

## Conceptual Contribution
- **Claim:** AI should separate *epistemological* adequacy (can the theory in principle drive correct action?) from *heuristic* adequacy (can the proof search be carried out fast enough?); most current AI formalisms have sacrificed the former for the latter, and progress requires re-asserting the epistemological standard — via first-order logic augmented with concepts-as-individuals.
- **Mechanism:** The *robot-with-a-database* thought experiment: a system whose inputs become sentences in its database and which emits `X` iff `"I should emit X now"` is a logical consequence of its database. A theory is *epistemologically adequate* iff such a system could achieve its goals given unbounded time. This separates content of knowledge from efficiency of inference.
- **Concepts introduced/used:** [[Epistemological Adequacy]], [[Heuristic Adequacy]], [[Concepts as Individuals]], [[Knowledge Representation]], [[Default Reasoning]], [[Partial Information]], [[First-Order Logic]].
- **Stance:** methodological / foundational
- **Relates to:** The methodological backbone of the logicist programme — continued from [[Some Philosophical Problems from the Standpoint of Artificial Intelligence]] into [[First Order Theories of Individual Concepts and Propositions]] and [[Circumscription - A Form of Nonmonotonic Reasoning]]; its epistemological/heuristic distinction is the same divide that [[The Knowledge Level]] articulates from a different angle, and that [[The Society of Mind]] rejects by identifying knowledge with procedure.

## Tags
#foundational #mccarthy #epistemology #knowledge-representation #logicist #methodology #1977
