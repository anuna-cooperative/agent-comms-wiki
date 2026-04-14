# An Unsolvable Problem of Elementary Number Theory

**Reference:** Church, Alonzo (1936). "An unsolvable problem of elementary number theory." *American Journal of Mathematics* 58(2), 345–363. [DOI 10.2307/2371045](https://doi.org/10.2307/2371045). Scan: [archive.org via JSTOR mirror](https://www.jstor.org/stable/2371045).

## Summary
Church's 1936 paper is one of the two founding documents of computability theory (the other being Turing 1936). It formulates and defends what came to be called **Church's thesis**: the identification of the informal notion of an *effectively calculable* function of positive integers with the precisely defined class of **λ-definable** functions (equivalently, the general recursive functions of Herbrand–Gödel–Kleene, as Church and Kleene had shown earlier that year). Against that identification, Church exhibits a problem of elementary number theory that no effectively calculable procedure can solve, thereby producing the first concrete *undecidable* problem in mathematics.

The technical core is a diagonal construction inside the λ-calculus. Church shows that the set of λ-terms having a normal form is not recursive; equivalently, there is no effective procedure that, given a λ-term, decides whether it is convertible to a normal form. By encoding this into ordinary number theory via Gödel numbering, he obtains an unsolvable problem expressible as a question about positive integers. In the paper's final sections he applies the technique to the **Entscheidungsproblem** of first-order logic: the decision problem for provability in pure predicate calculus is itself undecidable. (Turing 1936, submitted independently, reaches the same conclusion via the halting problem.)

The paper is historically decisive because it provides (i) the first mathematically rigorous definition of effective calculability, (ii) the first proof of an unsolvable mathematical problem, and (iii) the first proof of the undecidability of first-order logic. Every subsequent undecidability result — Post's correspondence problem, Hilbert's 10th, word problems in groups, Rice's theorem — is methodologically descended from this paper.

## Key Ideas
- **Church's thesis:** effectively calculable = λ-definable = general recursive. The informal notion is identified with a precise mathematical class.
- **λ-definability and the equivalence** (with Kleene) of λ-definability and Herbrand–Gödel general recursiveness.
- **Undecidability of normal-form existence** for λ-terms — the first explicit undecidable problem.
- **Undecidability of the Entscheidungsproblem**: no algorithm decides validity in first-order logic.
- **Diagonal / self-referential construction** as the standard technique for undecidability.
- Gödel-numbering of λ-terms brings the result back into elementary number theory.

## Connections
- [[Lambda Calculus]]
- [[Recursive Function]]
- [[Computability]]
- [[Halting Problem]]
- [[Universal Turing Machine]]
- [[First-Order Logic]]
- [[Über formal unentscheidbare Sätze der Principia Mathematica und verwandter Systeme I]]
- [[General Recursive Functions of Natural Numbers]]
- [[Recursive Predicates and Quantifiers]]
- [[Recursively Enumerable Sets of Positive Integers and Their Decision Problems]]
- [[Classes of Recursively Enumerable Sets and Their Decision Problems]]

## Conceptual Contribution
- **Claim:** There exist problems of elementary number theory for which no effective procedure exists; in particular, the decision problem for first-order logic is unsolvable.
- **Mechanism:** Identify *effectively calculable* with *λ-definable*. Diagonalise over λ-terms to produce a set whose characteristic function is not λ-definable. Transport the result into first-order logic via arithmetisation, yielding undecidability of the Entscheidungsproblem.
- **Concepts introduced/used:** [[Lambda Calculus]], [[Recursive Function]], Church's thesis, Entscheidungsproblem, [[Computability]], [[First-Order Logic]]
- **Stance:** foundational theorem paper (mathematical logic / computability)
- **Relates to:** Independent and contemporaneous with Turing 1936; together they establish the computability frontier that [[Classes of Recursively Enumerable Sets and Their Decision Problems|Rice 1953]] later generalises; provides the undecidability backdrop against which [[Über formal unentscheidbare Sätze der Principia Mathematica und verwandter Systeme I|Gödel 1931]] is read today.

## Tags
#computability #undecidability #lambda-calculus #foundational #church-thesis #entscheidungsproblem
