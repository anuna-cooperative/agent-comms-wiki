# On Computable Numbers, with an Application to the Entscheidungsproblem

**Reference:** Turing, Alan M. (1936). "On computable numbers, with an application to the Entscheidungsproblem." *Proceedings of the London Mathematical Society*, series 2, vol. 42, pp. 230–265 (read 1936, published 1937); correction in vol. 43 (1937), pp. 544–546. [DOI 10.1112/plms/s2-42.1.230](https://doi.org/10.1112/plms/s2-42.1.230). Scan: [cs.virginia.edu/~robins](https://www.cs.virginia.edu/~robins/Turing_Paper_1936.pdf).

## Summary
Turing's 1936 paper is, with [[An Unsolvable Problem of Elementary Number Theory|Church 1936]], one of the two founding documents of computability theory. Its purpose is to make precise the informal idea of an *effective procedure*, and then to settle Hilbert's **Entscheidungsproblem** — the question of whether there is a mechanical decision procedure for validity in first-order logic. Turing's answer is negative, and the machinery he builds to reach it defines the field.

The central construction is the abstract computing machine (Turing's "a-machine", now the **Turing machine**): a device with a finite set of internal *m-configurations*, a two-way infinite tape divided into squares, and a head that reads and writes symbols and moves one square at a time according to a finite table of behaviour. A real number is **computable** when its digits can be written out by such a machine. Turing then shows how to encode any machine's table as a single integer — its *standard description* / *description number* — and constructs a **universal machine** that, given the description number of any machine M, reproduces M's behaviour. This is the theoretical origin of the stored-program computer: one machine that runs any program supplied as data.

From here the negative results follow by a **diagonal argument**. Turing distinguishes *circle-free* machines (which go on printing digits forever) from *circular* ones, and proves that no machine can decide, of an arbitrary machine's description number, whether it is circle-free — the ancestor of the modern **halting problem**. Applying the same self-referential technique to logic, he shows there can be no general effective procedure deciding whether a first-order formula is provable, so the Entscheidungsproblem is unsolvable. An appendix argues that Turing-computability coincides with Church's **λ-definability** (and hence with Herbrand–Gödel–Kleene general recursiveness), the equivalence that grounds the Church–Turing thesis.

## Key Ideas
- **Turing machine (a-machine):** finite m-configurations + unbounded tape + read/write head governed by a finite behaviour table — a precise model of effective calculation.
- **Computable numbers/functions:** reals (and functions) whose digits an a-machine can generate; the computable reals are countable.
- **Standard description / description number:** an arithmetic encoding of a machine's table, letting machines take other machines as input.
- **Universal Turing Machine (U):** a single machine that simulates any machine from its description number — the conceptual root of the stored-program computer.
- **Circle-free vs circular machines**, and the **undecidability of circle-freeness** by diagonalisation — ancestor of the [[Halting Problem]].
- **Undecidability of the Entscheidungsproblem:** no effective procedure decides validity/provability in first-order logic.
- **Church–Turing equivalence:** Turing-computability = λ-definability = general recursiveness (appendix).

## Connections
- [[Computability]]
- [[Universal Turing Machine]]
- [[Halting Problem]]
- [[Diagonalization]]
- [[First-Order Logic]]
- [[Recursive Function]]
- [[Lambda Calculus]]
- [[An Unsolvable Problem of Elementary Number Theory]]
- [[Über formal unentscheidbare Sätze der Principia Mathematica und verwandter Systeme I]]
- [[Classes of Recursively Enumerable Sets and Their Decision Problems]]
- [[General Recursive Functions of Natural Numbers]]
- [[Über eine elementare Frage der Mannigfaltigkeitslehre]]
- [[Theory of Self-Reproducing Automata]]

## Conceptual Contribution
- **Claim:** The informal notion of effective calculability is captured exactly by the Turing machine; there is no machine that decides circle-freeness, and consequently the Entscheidungsproblem for first-order logic is unsolvable.
- **Mechanism:** Model computation as a finite-state machine over an unbounded tape; arithmetise machines as description numbers so a *universal* machine can simulate any machine; diagonalise over description numbers to produce a problem no machine can decide, then transport that undecidability into first-order provability.
- **Concepts introduced/used:** [[Universal Turing Machine]], [[Computability]], [[Halting Problem]], [[Diagonalization]], Church–Turing thesis, Entscheidungsproblem, [[First-Order Logic]]
- **Stance:** foundational theorem paper (mathematical logic / computability)
- **Relates to:** Independent of and contemporaneous with [[An Unsolvable Problem of Elementary Number Theory|Church 1936]], with which it is equated in the appendix; extends the self-reference lineage of [[Über eine elementare Frage der Mannigfaltigkeitslehre|Cantor 1891]] and [[Über formal unentscheidbare Sätze der Principia Mathematica und verwandter Systeme I|Gödel 1931]]; the undecidability frontier it opens is generalised by [[Classes of Recursively Enumerable Sets and Their Decision Problems|Rice 1953]] and its universal machine anticipates [[Theory of Self-Reproducing Automata|von Neumann's]] universal construction.

## Tags
#computability #undecidability #turing-machine #foundational #entscheidungsproblem #halting-problem
