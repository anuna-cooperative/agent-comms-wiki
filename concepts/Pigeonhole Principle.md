# Pigeonhole Principle

If more than n objects are assigned to n containers, at least two objects share a container. Equivalently, no function from a larger finite set to a smaller one is [[Injective Function|injective]]: different inputs cannot all have different outputs.

## Recognition and input validation

For a deterministic finite-state recognizer, input prefixes are mapped to machine states. If more prefixes require distinct future acceptance behaviour than the machine has states, two of those prefixes must reach the same state. The machine then treats every common continuation identically, even when the language requires different answers. It must misclassify at least one input.

[[Myhill-Nerode Theorem]] makes this argument precise through distinguishable prefixes and gives the minimum number of states needed. The [[Pumping Lemma]] for regular languages also uses the pigeonhole principle: a sufficiently long computation must revisit a state, creating a repeatable loop.

This explains a mathematical limit relevant to [[LangSec]]: a validator must have sufficient recognition power for the intended input language. It does not establish [[Parser Equivalence]]; agreement between a validator and a consumer is a separate obligation. The connection here is a mathematical explanation, not an identified quotation from a LangSec talk.

## Sources

- [Cornell: Pumping lemma](https://www.cs.cornell.edu/courses/cs2800/2016sp/lectures/lec36-pumping.html) — explicit pigeonhole proof using repeated DFA states.
- [Carnegie Mellon: “Fooling Pigeon Set” is a horrible name](https://www.andrew.cmu.edu/user/dennisc2/fps) — connects the pigeonhole argument over distinguishable strings to Myhill–Nerode.

## In this vault

- [[Recognizer]]
- [[Chomsky Hierarchy]]
- [[LangSec]]
