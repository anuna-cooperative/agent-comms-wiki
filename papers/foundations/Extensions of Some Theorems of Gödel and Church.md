# Extensions of Some Theorems of Gödel and Church

**Reference:** Rosser, J. Barkley (1936). "Extensions of some theorems of Gödel and Church." *Journal of Symbolic Logic* 1(3), 87–91. [DOI 10.2307/2269028](https://doi.org/10.2307/2269028). Open scan: [JSTOR](https://www.jstor.org/stable/2269028).

## Summary
A five-page paper that sharpens Gödel's first incompleteness theorem and Church's undecidability theorem by replacing the hypothesis of **ω-consistency** with the weaker hypothesis of **simple consistency**. Gödel 1931 constructed, for an ω-consistent, effectively axiomatised theory `P` interpreting arithmetic, a sentence `G ≡ "I am not provable in P"`; Gödel could prove `G` is unprovable from simple consistency alone, but needed ω-consistency to exclude `¬G` being provable. Rosser shows that by a clever modification of the self-referential sentence one can drop this stronger hypothesis.

The technical device — now universally known as the **Rosser trick** — replaces the Gödel sentence with a **Rosser sentence** `R` that says, informally, "for every proof of me, there is a smaller proof of my negation." Formally, if `Bew(y, x)` is the proof predicate, `R` encodes `∀y. Bew(y, ⌜R⌝) → ∃z ≤ y. Bew(z, ⌜¬R⌝)`. Analysing the two cases — `R` provable or `¬R` provable — now requires only simple consistency: from either provability claim together with consistency one extracts a contradiction by a primitive recursive comparison of proof lengths. Hence for any consistent, effectively axiomatised, sufficiently strong theory, `R` is independent. The same idea extends Church's 1936 result: the set of theorems is not recursive, given only simple consistency.

Rosser's paper is short, elegant, and methodologically paradigmatic: replacing an *ω*-style hypothesis by a *simple* hypothesis via a bounded-quantifier device is now a stock move in proof theory and recursion theory. The Rosser sentence itself is the standard presentation of the first incompleteness theorem in modern textbooks; Gödel's original form is cited for historical reasons but Rosser's is what students actually prove.

## Key Ideas
- **Rosser sentence** `R`: "every proof of me is matched by a smaller proof of my negation."
- **Weakening hypothesis** from ω-consistency to simple consistency in Gödel's first theorem.
- **Rosser trick**: bounded quantifiers comparing proof lengths resolve the two cases without ω-consistency.
- Corresponding **sharpening of Church's undecidability theorem**: theoremhood is not recursive under simple consistency alone.
- Methodological template: `ω`-style hypotheses can often be replaced by `simple` hypotheses via bounded-quantifier comparisons.

## Connections
- [[Consistency and Completeness]]
- [[First-Order Logic]]
- [[Computability]]
- [[Halting Problem]]
- [[Über formal unentscheidbare Sätze der Principia Mathematica und verwandter Systeme I]]
- [[An Unsolvable Problem of Elementary Number Theory]]
- [[Recursive Predicates and Quantifiers]]
- [[Recursively Enumerable Sets of Positive Integers and Their Decision Problems]]
- [[Classes of Recursively Enumerable Sets and Their Decision Problems]]

## Conceptual Contribution
- **Claim:** Gödel's first incompleteness theorem and Church's theorem on the undecidability of first-order logic hold under the weaker hypothesis of simple consistency; ω-consistency is not needed.
- **Mechanism:** Replace the Gödel sentence `G ≡ ¬∃y. Bew(y, ⌜G⌝)` with the Rosser sentence `R ≡ ∀y. Bew(y, ⌜R⌝) → ∃z ≤ y. Bew(z, ⌜¬R⌝)`. Using only simple consistency, analyse supposed proofs of `R` or `¬R` by comparing proof-length witnesses via bounded quantifiers; derive a contradiction in each case.
- **Concepts introduced/used:** Rosser sentence, Rosser trick, simple vs. ω-consistency, bounded-quantifier self-reference, [[Consistency and Completeness]]
- **Stance:** foundational technical paper (mathematical logic)
- **Relates to:** Directly strengthens [[Über formal unentscheidbare Sätze der Principia Mathematica und verwandter Systeme I|Gödel 1931]] and [[An Unsolvable Problem of Elementary Number Theory|Church 1936]]; the bounded-quantifier device is a methodological template reused throughout recursion theory and [[Recursive Predicates and Quantifiers|Kleene 1943]]'s hierarchy work.

## Tags
#foundational #incompleteness #rosser #mathematical-logic #consistency #self-reference
