# General Recursive Functions of Natural Numbers

**Reference:** Kleene, Stephen C. (1936). "General recursive functions of natural numbers." *Mathematische Annalen* 112, 727–766. [DOI 10.1007/BF01565439](https://doi.org/10.1007/BF01565439). Open scan: [GDZ Göttingen](https://gdz.sub.uni-goettingen.de/id/PPN235181684_0112).

## Summary
Kleene's 1936 paper develops the theory of the **general recursive functions** — the class proposed by Herbrand in correspondence with Gödel and given a precise definition by Gödel in his 1934 Princeton lectures. Kleene formalises the Herbrand–Gödel scheme (systems of equations closed under substitution and replacement of equals) as the official definition of *effectively calculable* function in the recursion-theoretic tradition, and he proves the equivalence of this class with the λ-definable functions of Church and Kleene. After this paper, "general recursive," "λ-definable," and (shortly thereafter) "Turing computable" are known to name the same class of functions — the empirical content of Church's thesis.

The central technical result is the **normal form theorem**. Kleene shows that every general recursive function can be written as `φ(x) = U(μy. T(e, x, y) = 0)`, where `T` is a primitive recursive *Kleene T-predicate* encoding "y is the Gödel number of a computation of machine/equation-system `e` on input `x`," `U` is a primitive recursive result-extracting function, and `μy.` is the unbounded minimisation (least-`y`) operator. All of the apparent complexity of recursive definitions is thereby pushed into *one* unbounded search over a primitive-recursive predicate. The theorem provides a canonical form for every partial recursive function — the starting point of computability as a structural theory rather than a list of closure rules.

The paper also clarifies the role of partial functions, introduces the use of indices `e` as first-class objects (each function gets a Gödel number so one can reason about `φ_e`), and establishes the technology — T-predicate, μ-operator, index encoding, normal form — that Kleene and others use in every subsequent paper on recursion theory.

## Key Ideas
- **General recursive functions** (Herbrand–Gödel equation calculus) adopted as the working definition of effective calculability.
- **Equivalence** with λ-definable functions: Church's thesis gains an additional leg.
- **Kleene normal form theorem**: every partial recursive function `φ_e(x) = U(μy. T(e, x, y) = 0)`.
- **T-predicate** `T(e, x, y)`: a primitive recursive relation formalising "y codes a computation of `e` on `x`."
- **μ-operator** (unbounded minimisation) as the one non-primitive-recursive ingredient needed.
- **Indices** `e` for recursive functions — functions become numbers, enabling self-reference and universal machines.

## Connections
- [[Recursive Function]]
- [[Computability]]
- [[Lambda Calculus]]
- [[Universal Turing Machine]]
- [[Halting Problem]]
- [[An Unsolvable Problem of Elementary Number Theory]]
- [[Über formal unentscheidbare Sätze der Principia Mathematica und verwandter Systeme I]]
- [[Recursive Predicates and Quantifiers]]
- [[On Notation for Ordinal Numbers]]
- [[Recursively Enumerable Sets of Positive Integers and Their Decision Problems]]
- [[Classes of Recursively Enumerable Sets and Their Decision Problems]]

## Conceptual Contribution
- **Claim:** The general recursive functions coincide with the λ-definable functions and admit a single normal form `U(μy. T(e, x, y) = 0)` reducing all partial recursive computation to unbounded search over a primitive recursive predicate.
- **Mechanism:** Take Herbrand–Gödel equation calculus as primitive. Arithmetise derivations to get a primitive recursive "is-a-computation" predicate `T`. Use unbounded search (`μy`) to locate the first terminating computation; extract its result with a primitive recursive `U`. Cross-simulate with λ-calculus to prove equivalence.
- **Concepts introduced/used:** general recursive function, T-predicate, μ-operator, normal form, index, [[Recursive Function]], [[Computability]]
- **Stance:** foundational theorem paper (recursion theory)
- **Relates to:** Second leg (with [[An Unsolvable Problem of Elementary Number Theory|Church 1936]]) of Church's thesis; the normal form becomes the tool by which [[Recursive Predicates and Quantifiers|Kleene 1943]] constructs the arithmetical hierarchy and [[Recursively Enumerable Sets of Positive Integers and Their Decision Problems|Post 1944]] organises r.e. sets; supplies the machinery that [[Classes of Recursively Enumerable Sets and Their Decision Problems|Rice 1953]] takes for granted.

## Tags
#computability #recursion-theory #foundational #normal-form #kleene #church-thesis
