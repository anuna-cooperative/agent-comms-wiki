# Can Programming Be Liberated from the von Neumann Style? A Functional Style and Its Algebra of Programs

## Reference

Backus, J. (1978). "Can Programming Be Liberated from the von Neumann Style? A Functional Style and Its Algebra of Programs." 1977 ACM Turing Award Lecture. *Communications of the ACM*, 21(8), 613-641. [URL](https://www.cs.cmu.edu/~crary/819-f09/Backus78.pdf)

## Summary

In his Turing Award lecture, Backus — the inventor of Fortran — delivers a startling self-critique of conventional programming languages. He argues that languages from Fortran through Algol to Pascal are all essentially **von Neumann languages**: they inherit the word-at-a-time, stored-program architecture's assumptions (variables, assignment, statement sequencing, control flow through a single instruction pointer) and therefore suffer its bottlenecks. Programs written in this style are fat, inelegant, resist composition, and cannot be reasoned about algebraically because their meaning depends on an ever-changing hidden state.

As an alternative, Backus proposes **FP** — a functional programming language built from a small set of primitive functions and a handful of higher-order combining forms (composition, construction, condition, apply-to-all, insert). Programs are *expressions* that compose functions without mentioning variables or state. Crucially, FP comes equipped with an **algebra of programs**: equational laws that let one transform programs by substitution, exactly as one transforms algebraic expressions. A worked inner-product example shows the dramatic size and transparency gains: the FP version is a line of combinators; the Fortran version is a loop with state-manipulating assignments.

The lecture's impact has been enduring and multifaceted. FP itself did not become mainstream, but its argument animated Haskell, ML, and the broader functional turn; its algebraic equations seeded Bird-Meertens "squiggol" formalism and the point-free programming style; its critique of the von Neumann bottleneck anticipated dataflow, array languages (APL/J/K), and GPU/SIMD programming. Backus's central thesis — that programming needs a *mathematical theory* within which programs can be manipulated — is echoed in every modern effort to make software more composable, verifiable, and parallelizable.

## Key Ideas

- **Von Neumann bottleneck**: word-at-a-time traffic between CPU and store is inherited by conventional programming languages, making them conceptually as well as physically slow.
- **State and assignment as original sin**: they block algebraic reasoning and force programmers to think like the machine.
- **FP (Functional Programming)**: a variable-free, point-free language of functions and combining forms.
- **Combining forms**: composition, construction, condition, apply-to-all (map), insert (fold/reduce), while.
- **Algebra of programs**: equational laws enabling syntactic program transformation and optimization.
- **Two kinds of functions**: ordinary (first-order, operate on values) vs. combining forms (build new functions).
- **Program = expression**: no statements, no mutable variables, no sequencing — just function composition.
- **Mathematical semantics**: each program denotes a function; equivalence is extensional equality.

## Connections

- [[The Extensible Language - Graham]]
- [[Code as Data]]
- [[Recursive Functions of Symbolic Expressions and Their Computation by Machine]] — McCarthy's LISP is the other founding functional work.
- [[Algorithm = Logic + Control]] — Kowalski's parallel argument for separating meaning from machinery.
- [[A Universal Modular Actor Formalism for Artificial Intelligence]] — another push beyond stored-program orthodoxy.

## Conceptual Contribution

> Conventional programming languages inherit the architectural limits of the von Neumann machine — word-at-a-time state mutation — and pay for it in verbosity, error-proneness, and an inability to be manipulated algebraically. A functional style, freed of variables and assignment and equipped with a small set of combining forms, turns programs into objects of a *mathematical algebra* that can be transformed, optimized, and reasoned about by equational rewriting. The path to better software runs through better mathematics, not faster instruction pipelines.

## Tags

#functional-programming #backus #turing-lecture #von-neumann #algebra-of-programs #FP #foundational #program-transformation
