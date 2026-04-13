# Programs with Common Sense

**Reference:** John McCarthy (1959). "Programs with Common Sense." In *Proceedings of the Teddington Conference on the Mechanization of Thought Processes*, pp. 75-91. London: Her Majesty's Stationery Office. Reprinted in Marvin Minsky (ed.), *Semantic Information Processing*, MIT Press, 1968, and in McCarthy's *Formalizing Common Sense* (Ablex, 1990). Source file: `mccarthy-mcc59.pdf`. [URL](http://jmc.stanford.edu/articles/mcc59/mcc59.pdf)

## Summary
The founding manifesto for knowledge representation and for logic-based AI. McCarthy proposes the *advice taker* — a program that reasons by manipulating sentences in a formal language (essentially predicate calculus), takes in *advice* in the form of declarative sentences, and deduces its actions from its premises together with imperative sentences about what is wanted. The central criterion he names is that the program "will have common sense" just in case it automatically deduces for itself a sufficiently wide class of immediate consequences of anything it is told and of what it already knows.

The paper distinguishes teaching a machine by imperative sentences (fast, no prior knowledge needed) from teaching by declarative sentences (exploits prior knowledge, robust to order, robust to context changes), and stakes AI on the declarative side. It lists five conditions for human-level intelligence — generality of representation, simple expression of behavior changes, improvability of the improving mechanism, concepts of partial success, and the ability to form reusable subroutines — and then sketches the advice taker as a concrete attempt at the second. The paper closes with a famous worked example: getting from home to the airport, formalised in a predicate-calculus-like language with premises such as `at(I, desk)`, `at(desk, home)`, and action axioms, so that the advice taker can chain them into a plan. A discussion appendix (Bar-Hillel, Oliver Selfridge, Yehoshua Bar-Hillel again, McCarthy's replies) is one of the earliest recorded methodological debates in AI.

Every subsequent McCarthy paper — *Recursive Functions* (1960), *Situation Calculus* (1969), *Epistemological Problems* (1977), *Circumscription* (1980), *Ascribing Mental Qualities* (1979) — is in some sense an attempt to repair, extend, or defend a weakness of the advice-taker programme first stated here. It is also the point of origin for the entire declarative / symbolic tradition that the ACL design literature inherits.

## Key Ideas
- A program has *common sense* iff it automatically deduces a sufficiently wide class of immediate consequences of what it is told plus what it already knows.
- Knowledge should be represented as *sentences in a formal language* (predicate calculus), not baked into procedures.
- Declarative vs imperative instruction: declarative scales, imperative is fast; the advice taker chooses declarative.
- To learn something, a program must first be capable of being *told* it.
- Five pre-conditions for general intelligence: arbitrary behavior representable, simple expressibility of changes, improvable improvement mechanism, partial-success concepts, reusable subroutines.
- Worked airport example — the first substantive formalisation of a situated plan in logic.

## Connections
- [[Recursive Functions of Symbolic Expressions and Their Computation by Machine]] — Lisp, the implementation vehicle proposed for the advice taker.
- [[Some Philosophical Problems from the Standpoint of Artificial Intelligence]] — 1969 elaboration, introducing situation calculus to repair the action formalisation.
- [[Epistemological Problems of Artificial Intelligence]] — 1977 diagnosis of what has and has not worked.
- [[Circumscription - A Form of Nonmonotonic Reasoning]] — needed to make advice-taker inference non-monotonic.
- [[Ascribing Mental Qualities to Machines]]
- [[First Order Theories of Individual Concepts and Propositions]]
- [[Generality in Artificial Intelligence]]
- [[Towards a Mathematical Science of Computation]]
- [[Correctness of a Compiler for Arithmetic Expressions]]
- [[Elephant 2000 - A Programming Language Based on Speech Acts]]
- [[Common Business Communication Language]]
- [[Common Sense Reasoning]]
- [[Knowledge Representation]]
- [[The Knowledge Level]] — Newell's characterisation of the advice-taker programme as operating at the knowledge level.
- [[The Society of Mind]] — Minsky's later (and more sceptical) response to the logicist programme.
- [[Epistemic Logic]]

## Conceptual Contribution
- **Claim:** An intelligent agent can be built by representing its world as sentences in a formal (predicate-calculus) language, letting it take *advice* in declarative form, and deducing actions as logical consequences of its premises together with sentences about what it wants — the criterion of intelligence being how wide a class of immediate consequences it can automatically derive.
- **Mechanism:** The *advice taker* architecture: formal-language knowledge base; declarative input ("I am at my desk"); imperative input ("I want to be at the airport"); rules of inference (predicate-calculus-style); action-producing deductions; interaction with humans that add or retract premises.
- **Concepts introduced/used:** [[Advice Taker]], [[Common Sense Reasoning]], [[Declarative Knowledge]], [[Knowledge Representation]], [[Logicist AI]], [[Planning]], [[Situated Action]].
- **Stance:** foundational / programmatic
- **Relates to:** The origin document of the declarative / logicist tradition that [[Knowledge Representation]] and [[Common Sense Reasoning]] formalise. The advice-taker agenda is continued in [[Some Philosophical Problems from the Standpoint of Artificial Intelligence]] (situation calculus to model action), [[Epistemological Problems of Artificial Intelligence]] (methodological self-review), and [[Circumscription - A Form of Nonmonotonic Reasoning]] (non-monotonicity to handle the qualification problem inherent in declarative advice). [[Elephant 2000 - A Programming Language Based on Speech Acts]] and [[Common Business Communication Language]] are late-career revivals of the advice-taker vision applied to agent communication.

## Tags
#foundational #mccarthy #advice-taker #knowledge-representation #logicist #ai-history #1959
