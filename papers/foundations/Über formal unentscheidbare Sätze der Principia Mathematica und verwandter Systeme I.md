# Über formal unentscheidbare Sätze der Principia Mathematica und verwandter Systeme I

**Reference:** Gödel, Kurt (1931). "Über formal unentscheidbare Sätze der *Principia Mathematica* und verwandter Systeme I" ["On formally undecidable propositions of *Principia Mathematica* and related systems I"]. *Monatshefte für Mathematik und Physik* 38, 173–198. English translation in van Heijenoort (ed.), *From Frege to Gödel* (Harvard 1967), and in Gödel, *Collected Works* I (Oxford 1986). Scan: [monatshefte-fuer-mathematik @ archive.org](https://archive.org/details/MonatsheftefrMathematikUndPhysik-Gdel1931); English: [Meltzer/Braithwaite 1962](https://www.research.ed.ac.uk/files/413620/godel1931.pdf).

## Summary
Gödel's 1931 paper proves the two **incompleteness theorems** that permanently reshaped mathematical logic. The **first theorem** states that for any ω-consistent, effectively axiomatised formal system `P` strong enough to formalise elementary arithmetic, there exists a sentence `G` in the language of `P` such that neither `G` nor `¬G` is provable in `P`. The **second theorem** states that if `P` is consistent, then `P` cannot prove its own consistency statement `Con(P)`. Together they show that Hilbert's programme — to secure classical mathematics by a finitary consistency proof of a sufficiently strong formal system — cannot succeed in its original form.

The technical machinery is the one mathematicians still use. Gödel introduces **Gödel numbering**, an injective encoding of formulas and proofs as natural numbers, which allows syntactic notions ("`x` is the Gödel number of a proof of the formula with Gödel number `y`") to be expressed as arithmetic predicates. He then establishes the **representability** of all primitive recursive predicates in `P` and constructs, via a fixed-point / diagonal lemma, a sentence `G` that is in effect self-referential: `G` says "I am not provable in `P`." An analysis of the two cases — `G` provable, `¬G` provable — using ω-consistency yields the first theorem. Formalising that analysis inside `P` itself yields the second.

The paper is the mathematical origin of self-reference as a tool, of arithmetisation of syntax, and of the technique — later generalised by Tarski, Church, Turing, and Kleene — for transferring undecidability phenomena between formal systems. It also establishes the class of **primitive recursive functions** as the workhorse notion of effectivity in the paper, the direct ancestor of Kleene's general recursive functions. The incompleteness theorems remain the single most cited and philosophically consequential results of twentieth-century logic.

## Key Ideas
- **Gödel numbering**: arithmetisation of syntax, turning formulas and proofs into natural numbers.
- **First incompleteness theorem**: every ω-consistent, effectively axiomatised, sufficiently expressive theory contains a true-but-unprovable sentence.
- **Second incompleteness theorem**: no such theory can prove its own consistency.
- **Diagonal / fixed-point lemma**: every arithmetic predicate has a self-referential instance.
- **Primitive recursive functions** as the effective-syntax layer (precursor to general recursive functions).
- **Representability**: every primitive recursive relation is definable in `P`.
- The shattering of Hilbert's programme in its finitist form.

## Connections
- [[Consistency and Completeness]]
- [[First-Order Logic]]
- [[Computability]]
- [[Recursive Function]]
- [[Halting Problem]]
- [[An Unsolvable Problem of Elementary Number Theory]]
- [[Extensions of Some Theorems of Gödel and Church]]
- [[General Recursive Functions of Natural Numbers]]
- [[Recursive Predicates and Quantifiers]]
- [[Recursively Enumerable Sets of Positive Integers and Their Decision Problems]]

## Conceptual Contribution
- **Claim:** No effectively axiomatised, ω-consistent theory that interprets arithmetic is complete; no such consistent theory proves its own consistency.
- **Mechanism:** Encode syntax as natural numbers (Gödel numbering). Represent primitive recursive predicates (including the proof relation `Bew`) inside the theory. Construct a self-referential sentence `G ≡ ¬∃y. Bew(y, ⌜G⌝)` via a diagonal lemma; analyse cases using ω-consistency for theorem I; formalise that analysis to obtain theorem II.
- **Concepts introduced/used:** Gödel numbering, primitive recursive functions, representability, diagonal lemma, ω-consistency, [[Consistency and Completeness]], [[First-Order Logic]]
- **Stance:** foundational theorem paper (mathematical logic)
- **Relates to:** The methodological parent of [[An Unsolvable Problem of Elementary Number Theory|Church 1936]] and Turing 1936; sharpened by [[Extensions of Some Theorems of Gödel and Church|Rosser 1936]] (dropping ω-consistency); the arithmetisation technique underwrites all later work on effectively axiomatised theories, including the hierarchies of [[Recursive Predicates and Quantifiers|Kleene 1943]] and [[On Definable Sets of Positive Integers|Mostowski 1946]].

## Tags
#foundational #incompleteness #godel #mathematical-logic #arithmetisation #self-reference
