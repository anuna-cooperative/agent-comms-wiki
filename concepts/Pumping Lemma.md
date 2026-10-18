# Pumping Lemma

Pumping lemmas state necessary repetition properties of regular and context-free languages. They are commonly used to prove that a language lies outside one of these classes. Satisfying a pumping property alone does not establish membership in the class.

## Regular languages

For every regular language L, there is a length p such that every string w in L with length at least p can be split as w = xyz, where |xy| ≤ p and |y| > 0, and xyⁱz belongs to L for every integer i ≥ 0.

The proof uses the [[Pigeonhole Principle]]: a DFA with p states visits p + 1 states while reading the first p symbols, counting the initial state. A state repeats, so the intervening loop can be traversed any number of times. For example, pumping the initial a's in aᵖbᵖ breaks the equal counts required by {aⁿbⁿ | n ≥ 0}, proving that language nonregular.

## Context-free languages

The context-free version splits a sufficiently long string as uvxyz, with |vxy| ≤ p and |vy| > 0, such that uvⁱxyⁱz remains in the language for every i ≥ 0. Its usual proof finds a repeated nonterminal along a sufficiently long path in a parse tree. This is a different lemma from the finite-state version.

## Relevance to LangSec

Pumping arguments can establish that an input language needs a stronger recognition model than a proposed validator supplies. [[Security Applications Of Formal Language Theory]] uses the context-free pumping lemma in its PKCS#1 analysis (§5, Lemma 2). This is distinct from its requirement for [[Parser Equivalence]] across components (§10, Principle 2). Matching computational power alone does not establish equivalent recognition or interpretation.

## Sources

- [Cornell: Pumping lemma](https://www.cs.cornell.edu/courses/cs2800/2016sp/lectures/lec36-pumping.html) — regular-language statement, example, and pigeonhole proof.
- [Sassaman et al.: Security Applications of Formal Language Theory](https://langsec.org/papers/langsec-tr.pdf) — context-free pumping argument and parser equivalence principle.

## In this vault

- [[Myhill-Nerode Theorem]]
- [[Recognizer]]
- [[Chomsky Hierarchy]]
- [[LangSec]]
