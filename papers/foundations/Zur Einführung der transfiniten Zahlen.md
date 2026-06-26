# Zur Einführung der transfiniten Zahlen

**Reference:** von Neumann, John (1923). "Zur Einführung der transfiniten Zahlen." *Acta Litterarum ac Scientiarum Regiae Universitatis Hungaricae Francisco-Josephinae, Sectio Scientiarum Mathematicarum* (Szeged) 1, 199–208. English ("On the Introduction of Transfinite Numbers") in van Heijenoort, *From Frege to Gödel*, Harvard 1967, 346–354.

## Summary
The paper that gives ordinals a concrete set-theoretic identity. Cantor had introduced ordinals as *order types* — abstract equivalence classes of well-ordered sets sharing the same order structure — which left them mathematically real but representationally vague. Writing at twenty, von Neumann proposes instead to pick a **canonical representative** for each: an ordinal simply *is* the set of all ordinals below it. So 0 = ∅, 1 = {∅}, 2 = {∅, {∅}}, 3 = {∅, {∅}, {∅, {∅}}}, …, and the first infinite ordinal ω = {0, 1, 2, …}. Each ordinal is a transitive set well-ordered by the membership relation ∈; "less than" *is* "is a member of." These are the **von Neumann ordinals**, still the standard definition.

The construction does real work beyond tidiness. Because each ordinal is built explicitly from its predecessors as sets, ordinals can be defined *within* axiomatic set theory rather than presupposed, and von Neumann justifies **definition by transfinite recursion** — defining a function on all ordinals by specifying its value at α in terms of its values below α — which Cantor had used but not rigorously grounded. Von Neumann's later 1925/1928 axiomatization carries the idea further, distinguishing **classes** from **sets** (the precursor of NBG/von Neumann–Bernays–Gödel set theory) and proposing a limitation-of-size principle and the axiom of foundation, under which all sets sit in the **cumulative hierarchy** *V* indexed by exactly these ordinals.

For this vault the paper closes a loop. It is the *classical, set-theoretic* account of the ordinals whose *constructive, computable* counterpart is the Church–Kleene system of ordinal notations — the same objects approached from the standpoint of what a machine can name and recurse over. And it is of a piece with von Neumann's lifelong habit, visible across his work here, of finding the minimal concrete structure that lets an informal mathematical notion be manipulated rigorously.

## Key Ideas
- **Von Neumann ordinals:** each ordinal is the set of all smaller ordinals; ∈ is the well-ordering, so "<" = "∈".
- **Canonical representatives:** replace Cantor's abstract order types with concrete sets — 0 = ∅, n+1 = n ∪ {n}, ω = {0,1,2,…}.
- **Ordinals internal to set theory:** definable from the axioms rather than assumed; transitive sets well-ordered by membership.
- **Transfinite recursion** rigorously justified: define f(α) from {f(β) : β < α}.
- **Classes vs. sets** (in the 1925 sequel): the NBG lineage, limitation of size, axiom of foundation.
- **Cumulative hierarchy *V*** is indexed by the ordinals so defined.

## Connections
- [[Set Theory]]
- [[Ordinals]]
- [[Transfinite Numbers]]
- [[Cumulative Hierarchy]]
- [[On Notation for Ordinal Numbers]]
- [[Untersuchungen über die Grundlagen der Mengenlehre I]]
- [[Über eine elementare Frage der Mannigfaltigkeitslehre]]
- [[Theory of Self-Reproducing Automata]]
- [[Probabilistic Logics and the Synthesis of Reliable Organisms from Unreliable Components]]
- [[The Independence of the Continuum Hypothesis]]

## Conceptual Contribution
- **Claim:** Every ordinal can be canonically realised as a set — the set of its predecessors — so ordinals become objects definable inside axiomatic set theory rather than abstract order types taken on faith.
- **Mechanism:** Define an ordinal as a transitive set well-ordered by ∈; build them by α+1 = α ∪ {α} and unions at limits; ground definition-by-transfinite-recursion on this representation.
- **Concepts introduced/used:** [[Ordinals]], [[Transfinite Numbers]], [[Cumulative Hierarchy]], [[Set Theory]]
- **Stance:** foundational construction paper (set theory)
- **Relates to:** Gives the classical set-theoretic ordinals whose computable analogue is [[On Notation for Ordinal Numbers|Church–Kleene]]; supplies the ordinal scaffolding for the cumulative hierarchy built on [[Untersuchungen über die Grundlagen der Mengenlehre I|Zermelo's]] axioms; shares its author with [[Theory of Self-Reproducing Automata]] and [[Probabilistic Logics and the Synthesis of Reliable Organisms from Unreliable Components]].

## Tags
#set-theory #ordinals #transfinite #von-neumann #cumulative-hierarchy #foundational
