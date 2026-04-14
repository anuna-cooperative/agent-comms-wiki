# Recursively Enumerable Sets of Positive Integers and Their Decision Problems

**Reference:** Post, Emil L. (1944). "Recursively enumerable sets of positive integers and their decision problems." *Bulletin of the American Mathematical Society* 50(5), 284–316. Open scan: [projecteuclid.org](https://projecteuclid.org/euclid.bams/1183506427) / [ams.org](https://www.ams.org/journals/bull/1944-50-05/S0002-9904-1944-08111-1/).

## Summary
Post's 1944 paper is the programmatic manifesto of modern recursion theory. Writing in a remarkable, informal expository voice, Post sets aside the technical frameworks of his predecessors and asks a simple structural question: among the **recursively enumerable (r.e.) sets** — those arising as ranges of partial recursive functions — which can be solved (are recursive) and which cannot, and what is the *structure* of the unsolvable ones? He introduces the central reducibility notions, exhibits several families of non-recursive r.e. sets of different kinds, and poses the question that dominated recursion theory for the next dozen years.

Post defines **many-one reducibility** (`A ≤_m B`: a total recursive `f` with `x ∈ A ↔ f(x) ∈ B`), its injective restriction **one-one reducibility** (`A ≤_1 B`), and **truth-table reducibility**, alongside Turing's relative computability. He defines a set to be **creative** if, roughly, one can effectively produce, for any r.e. set `W_e` disjoint from the set, a witness outside both — showing that the complement cannot be enumerated. The halting problem `K` is creative; every creative set is m-complete for r.e. sets (i.e. "maximally unsolvable" under `≤_m`). To show that m-unsolvability is not the whole story, Post constructs **simple sets**: r.e. sets whose complements are infinite but contain no infinite r.e. subset. Simple sets are not creative and their construction uses the first real **priority argument** in the literature — finite-injury in embryo.

The paper closes with **Post's problem**: does there exist a non-recursive r.e. set that is not Turing-complete — i.e. an r.e. Turing-degree strictly between `0` and `0'`? Post could not answer it. The problem was solved affirmatively by Friedberg and Muchnik in 1956 via the finite-injury priority method, launching modern degree theory. Every notion here — reducibility, creative sets, simple sets, the priority technique, the question of intermediate degrees — became foundational. Rice's 1953 theorem is a direct descendant: Rice's index sets are all m-complete for r.e. sets, hence creative, hence undecidable.

## Key Ideas
- **Recursively enumerable set**: range of a partial recursive function; equivalently Σ⁰_1.
- **Many-one, one-one, and truth-table reducibilities**, distinct from Turing reducibility, organising r.e. sets into degree-like structures.
- **Creative sets**: r.e. sets whose complements cannot be effectively enumerated in the strongest sense; equivalent to m-complete r.e. sets; `K` is creative.
- **Simple sets**: r.e. sets with infinite complement containing no infinite r.e. subset — not m-complete, so "less unsolvable" than creative sets.
- **Priority argument (embryonic)**: construction of simple sets by meeting infinitely many requirements with finite injury.
- **Post's problem**: existence of an r.e. set of intermediate Turing degree — open in 1944, solved 1956.
- Programmatic style: readable English prose, motivating the entire subject.

## Connections
- [[Recursive Function]]
- [[Computability]]
- [[Halting Problem]]
- [[Universal Turing Machine]]
- [[General Recursive Functions of Natural Numbers]]
- [[Recursive Predicates and Quantifiers]]
- [[On Definable Sets of Positive Integers]]
- [[Classes of Recursively Enumerable Sets and Their Decision Problems]]
- [[An Unsolvable Problem of Elementary Number Theory]]
- [[Über formal unentscheidbare Sätze der Principia Mathematica und verwandter Systeme I]]

## Conceptual Contribution
- **Claim:** The class of r.e. sets has rich internal structure under various reducibilities; there exist m-complete (creative) r.e. sets and non-m-complete non-recursive (simple) r.e. sets; whether there are r.e. sets of intermediate Turing degree is open.
- **Mechanism:** Introduce m-, 1-, and tt-reducibilities; prove `K` is creative and creative sets are m-complete; construct simple sets by a finite-injury priority argument enumerating r.e. sets `W_e` and injecting a witness from each into the set while protecting the complement's infinity; raise the existence of intermediate Turing degrees as the central open problem.
- **Concepts introduced/used:** r.e. set, many-one / one-one / truth-table reducibility, creative set, simple set, priority argument, Post's problem, [[Halting Problem]]
- **Stance:** programmatic / foundational paper (recursion theory)
- **Relates to:** Extends the undecidability of [[An Unsolvable Problem of Elementary Number Theory|Church 1936]] and [[Über formal unentscheidbare Sätze der Principia Mathematica und verwandter Systeme I|Gödel 1931]] into a *structural* theory of unsolvable problems; furnishes the reducibilities and completeness notions that [[Classes of Recursively Enumerable Sets and Their Decision Problems|Rice 1953]] uses; its priority argument is the engine of all subsequent degree theory.

## Tags
#recursion-theory #foundational #r-e-sets #post #reducibility #creative-sets #simple-sets #priority-argument
