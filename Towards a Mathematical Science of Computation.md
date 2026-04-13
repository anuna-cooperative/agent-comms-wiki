# Towards a Mathematical Science of Computation

**Reference:** John McCarthy (1963). "Towards a Mathematical Science of Computation." In *Information Processing 1962: Proceedings of IFIP Congress 62*, North-Holland, pp. 21-28. (Version fetched is the 1996 revised reprint.) [URL](http://jmc.stanford.edu/articles/towards/towards.pdf)

## Summary
McCarthy's IFIP 1962 address sketches what a mathematical science of computation should look like, by analogy with physics: starting from basic assumptions, one should be able to deduce the important properties of the entities the science deals with. He identifies those entities as problems, procedures, data spaces, programs (which are symbolic expressions representing procedures in particular languages), and computers (viewed as finite automata, but from a stored-program-plus-unbounded-storage perspective rather than a finite-state one).

The paper enumerates the kinds of facts one would like to derive — procedure equivalence, termination, compiler correctness, program transformation preserving semantics, lower bounds — and argues that Goedel's incompleteness precludes a complete theory but a practically adequate one is feasible. McCarthy proposes an integer-free formalism, recursive definitions via conditional expressions (the paper is a locus classicus of `if p then a else b` as a mathematical notation), and recursion induction as a proof method. He closes by urging that debugging be replaced by machine-checked proofs of program correctness — a foundational statement of the program-verification agenda.

## Key Ideas
- Computation as a mathematical science with its own entities (problems, procedures, data spaces, programs, computers) distinct from automata theory.
- Conditional expressions `if p then a else b` and recursion as the basis of a formal notation for defining functions.
- Recursion induction as a proof technique for program equivalence.
- Compiler correctness as a target theorem for the formalism.
- Debugging should be supplanted by computer-checked correctness proofs — the founding manifesto of program verification.

## Connections
- [[Correctness of a Compiler for Arithmetic Expressions]] — the paired McCarthy–Painter paper that carries out the compiler-correctness proof sketched here.
- [[Elephant 2000 - A Programming Language Based on Speech Acts]] — Elephant's insistence that programs refer directly to past events and future commitments continues McCarthy's project of giving programs a mathematical semantics amenable to proof.
- [[Foundations of Logic Programming - Lloyd]] — shares the model-theoretic semantics-for-programs stance.
- [[First Order Theories of Individual Concepts and Propositions]]
- [[Knowledge Representation]]

## Conceptual Contribution
- **Claim:** Computation admits a mathematical science in the physics sense: basic assumptions from which properties of procedures, programs, and computers can be deduced, with program-correctness proofs replacing debugging.
- **Mechanism:** Abstract syntax of programs; conditional expressions and recursion as a core notation; state vectors for machines; recursion induction; an integer-free formalism avoiding the Mostowski-style reliance on arithmetic coding.
- **Concepts introduced/used:** [[Conditional Expressions]], [[Recursion Induction]], [[Abstract Syntax]], [[State Vector]], [[Compiler Correctness]], [[Program Verification]], [[Data Spaces]].
- **Stance:** foundational
- **Relates to:** Grounds the semantic-correctness agenda that Elephant 2000 later inherits; complements [[Correctness of a Compiler for Arithmetic Expressions]]; the appeal to mathematical logic rather than automata foreshadows the logicist program in [[Ascribing Mental Qualities to Machines]] and [[Circumscription - A Form of Nonmonotonic Reasoning]].

## Tags
#foundational #mccarthy #program-verification #semantics #lisp-prehistory #compiler-correctness
