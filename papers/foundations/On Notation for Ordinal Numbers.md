# On Notation for Ordinal Numbers

**Reference:** Kleene, Stephen C. (1938). "On notation for ordinal numbers." *Journal of Symbolic Logic* 3(4), 150–155. [DOI 10.2307/2267778](https://doi.org/10.2307/2267778). Open scan via [project Euclid / JSTOR](https://www.jstor.org/stable/2267778).

## Summary
In six pages Kleene introduces the system that came to be called **Kleene's `O`** — a set of natural numbers that serve as **notations** for the *constructive* (computable) ordinals, together with a partial order `<_O` on these notations that corresponds to the ordering of the ordinals they denote. The construction is inductive: the number `1` is a notation for `0`; if `a` is a notation for `α`, then `2^a` is a notation for `α + 1`; if `e` is an index of a total recursive function `φ_e` whose values `φ_e(0), φ_e(1), …` are notations for an increasing sequence of ordinals with limit `λ`, then `3 · 5^e` is a notation for `λ`. Closing under these clauses gives `O`; the ordinals with at least one notation form an initial segment of the countable ordinals, later shown (Church–Kleene) to be exactly the constructive ordinals, with supremum `ω^{CK}_1`.

The paper is short but consequential. It provides the first systematic way to *compute with* transfinite ordinals — each ordinal below `ω^{CK}_1` is represented by a natural number, and the ordering between notations is semi-decidable. Effective transfinite induction, effective transfinite recursion, and hierarchies indexed by recursive ordinals all become possible. Multiple incompatible notations for the same ordinal are unavoidable, and `O` itself is not recursive (membership is Π¹_1-complete), but this is a feature: the impossibility of canonicalising ordinal notations is itself a theorem.

Kleene's `O` underwrites essentially all subsequent **effective descriptive set theory** and **hyperarithmetical theory**: the hyperarithmetical sets are exactly those reducible to jumps iterated along notations in `O`; the analytical hierarchy is indexed by recursive ordinals in the same sense; the Church–Kleene ordinal `ω^{CK}_1` becomes a fundamental constant of computability theory.

## Key Ideas
- **Kleene's `O`**: a set of natural numbers that notate constructive ordinals, built inductively from `1`, successor (`2^a`), and limit-of-recursive-sequence (`3 · 5^e`).
- **Constructive ordinals** = ordinals with at least one notation in `O`; their supremum is the Church–Kleene ordinal `ω^{CK}_1`.
- **Non-uniqueness**: many notations denote the same ordinal; there is no effective canonical form.
- **Ordering `<_O`**: semi-decidable relation between notations corresponding to `<` on ordinals.
- Provides the substrate for **effective transfinite recursion** and the hyperarithmetical hierarchy.
- Membership in `O` is Π¹_1-complete — a key early use of the analytical hierarchy.

## Connections
- [[Recursive Function]]
- [[Computability]]
- [[General Recursive Functions of Natural Numbers]]
- [[Recursive Predicates and Quantifiers]]
- [[On Definable Sets of Positive Integers]]
- [[Recursively Enumerable Sets of Positive Integers and Their Decision Problems]]
- [[Classes of Recursively Enumerable Sets and Their Decision Problems]]

## Conceptual Contribution
- **Claim:** The constructive (countable, computable) ordinals admit a recursive notation system in which successor and limit operations are effective, enabling computation with transfinite indices.
- **Mechanism:** Inductive definition: `1 ∈ O` (zero); if `a ∈ O` notates `α` then `2^a ∈ O` notates `α+1`; if `φ_e` is total recursive and `φ_e(n) <_O φ_e(n+1)` for all `n`, then `3 · 5^e ∈ O` notates `sup_n |φ_e(n)|`. Closure of these rules yields `O`; the ordering `<_O` is defined by parallel induction.
- **Concepts introduced/used:** Kleene's `O`, constructive ordinal, Church–Kleene ordinal `ω^{CK}_1`, effective transfinite recursion, [[Recursive Function]]
- **Stance:** foundational technical paper (recursion theory)
- **Relates to:** Extends the recursion-theoretic toolkit of [[General Recursive Functions of Natural Numbers|Kleene 1936]] into the transfinite; provides the indexing structure on which hyperarithmetical theory and the analytical hierarchy of [[On Definable Sets of Positive Integers|Mostowski 1946]] are later built; one of the reference points for the hierarchy classification gestured at in [[Classes of Recursively Enumerable Sets and Their Decision Problems|Rice 1953]].

## Tags
#recursion-theory #ordinals #foundational #kleene #constructive-ordinals
