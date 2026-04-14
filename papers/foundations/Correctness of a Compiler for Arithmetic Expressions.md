# Correctness of a Compiler for Arithmetic Expressions

**Reference:** John McCarthy and James Painter (1967). "Correctness of a Compiler for Arithmetic Expressions." In *Mathematical Aspects of Computer Science* (Proc. Symposia in Applied Mathematics, vol. 19), American Mathematical Society, pp. 33-41. [URL](http://jmc.stanford.edu/articles/mcpain/mcpain.pdf)

## Summary
The first published machine-checkable-style proof that a compiler is correct. McCarthy and Painter take a trivially small source language — arithmetic expressions over constants, variables, and binary `+` — and a trivially small target — a single-accumulator machine with `li`, `load`, `sto`, `add` — and prove by structural induction that `compile(e,t)` run on the target produces the same accumulator value as the source semantics `value(e, xi)`, while preserving the contents of low-numbered registers that hold the program's variables.

The paper is methodologically landmark rather than technically deep: it formalises abstract syntax with `isconst/isvar/issum` predicates and selectors `s1/s2`; defines source semantics denotationally via a recursive `value` function; gives the object language both analytic and synthetic syntaxes (so that the compiler can construct code while the interpreter can destructure it); introduces state vectors with `c(x,eta)` for contents and `a(x,alpha,eta)` for update; defines `outcome` as the fold of `step` over a program; and proves the decisive lemma `outcome(p1*p2, eta) = outcome(p2, outcome(p1, eta))`. Correctness is then stated as a partial-equality relation `zeta1 =_A zeta2` — agreement on all registers except those in the scratch set `A` — and proved by induction on expression structure.

## Key Ideas
- Compiler correctness as a theorem provable by structural induction over abstract syntax.
- Abstract syntax (predicates + selectors) as the mathematical object, with analytic/synthetic syntaxes mediating between interpreter and compiler.
- Denotational source semantics via a `value` function; operational target semantics via `step`/`outcome`.
- Partial equality `=_A` on state vectors — the scratch-register-agnostic equivalence needed to state the theorem.
- Proof template transferable to richer compilers and machines — the intended contribution is methodological.

## Connections
- [[Towards a Mathematical Science of Computation]] — the companion manifesto paper; this is its concrete proof-of-concept.
- [[Elephant 2000 - A Programming Language Based on Speech Acts]] — continues McCarthy's conviction that programs should have mathematical semantics strong enough to support correctness proofs.
- [[Foundations of Logic Programming - Lloyd]] — parallel project for declarative languages.
- [[Knowledge Representation]]

## Conceptual Contribution
- **Claim:** Compiler correctness is a rigorous mathematical theorem, provable by structural induction once source and target are given abstract-syntax formalisations and denotational/operational semantics respectively.
- **Mechanism:** Abstract analytic syntax with predicate/selector signatures; denotational `value(e,xi)`; single-accumulator machine with analytic/synthetic syntax pair; state vectors with `c` (contents) and `a` (update); `outcome(p,eta)` defined by fold; decisive concatenation lemma; partial-equality relation `=_A` on state vectors; structural induction on expressions.
- **Concepts introduced/used:** [[Abstract Syntax]], [[State Vector]], [[Compiler Correctness]], [[Structural Induction]], [[Program Verification]], [[Denotational Semantics]], [[Operational Semantics]].
- **Stance:** foundational
- **Relates to:** Realises the program set out in [[Towards a Mathematical Science of Computation]]; template for every subsequent verified-compiler result (CompCert and descendants); the logical-specification-of-programs stance that Elephant 2000 extends to speech-act-embedded programs.

## Tags
#foundational #mccarthy #compiler-correctness #program-verification #semantics
