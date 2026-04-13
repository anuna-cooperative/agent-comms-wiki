# Algorithm = Logic + Control

## Reference

Kowalski, R. (1979). "Algorithm = Logic + Control." *Communications of the ACM*, 22(7), 424-436. [URL](https://www.doc.ic.ac.uk/~rak/papers/algorithm%20=%20logic%20+%20control.pdf)

## Summary

Kowalski argues that every algorithm can be cleanly decomposed into two orthogonal components: a **logic** component, which specifies *what* knowledge is to be used to solve the problem, and a **control** component, which specifies *how* that knowledge is applied. The logic determines meaning and correctness; the control determines efficiency. The thesis is that programs become easier to write, to prove correct, and to optimize when these two concerns are separated and each is expressed explicitly — ideally, with the logic invariant under changes in control strategy.

Using **Horn clauses** as the logical language, Kowalski shows that a problem's specification (e.g., "x is an ancestor of y") can be written once and then executed under different control regimes — top-down (backward chaining, as in Prolog) or bottom-up (forward chaining, as in database query evaluation) — without changing the logic. Different strategies produce different computational costs, but all produce the same answers because the meaning is governed by the logic alone. He illustrates with factorial, sorting, and path-finding, and crucially with Horn-clause definitions of recursive relations where choice of control dramatically affects termination and performance.

The paper is the manifesto of **logic programming**. It frames Prolog not as "predicate logic with a goto button" but as one control discipline over a logical program; it underwrites deductive databases, constraint logic programming, tabled evaluation, and answer-set programming; and it anticipates the modern separation of declarative specification from execution plan found in SQL optimizers, datalog engines, and differentiable programming. The slogan **"A = L + C"** remains a litmus test: a program whose logic and control are tangled is harder to understand than one where they are kept apart.

## Key Ideas

- **A = L + C**: an algorithm has a logic component (meaning) and a control component (execution strategy).
- **Logic determines correctness; control determines efficiency**: change control without changing meaning.
- **Horn clauses**: clausal form of predicate logic sufficient for programming, with tractable inference.
- **Top-down vs bottom-up**: backward-chaining (SLD resolution / Prolog) and forward-chaining (datalog / bottom-up) as control choices.
- **Declarative programming**: say what is true; let a general-purpose inference mechanism search for solutions.
- **Separation of concerns**: specifications, programs, and query plans all viewable through the same lens.
- **Clausal refutation**: problems stated as denials, solved by deriving contradiction, answer extracted from substitutions.

## Connections

- [[Foundations of Logic Programming - Lloyd]] — Lloyd's book formalizes the semantics Kowalski sketches.
- [[Logicist AI]]
- [[Horn Clauses]]
- [[A Universal Modular Actor Formalism for Artificial Intelligence]] — PLANNER had a similar logic/control split that Kowalski clarifies.
- [[Code as Data]] — logic programs are homoiconic data usable by other programs.

## Conceptual Contribution

> An algorithm is not a monolithic procedure but a pair: a *logic* specifying the problem's meaning and a *control* specifying the inference/execution strategy. Keeping them separate lets us prove programs correct against their logic while optimizing their control — and lets us trade control strategies (top-down, bottom-up, tabled, parallel) without changing the answers. This reframed programming itself as declarative specification + pluggable execution.

## Tags

#logic-programming #kowalski #horn-clauses #declarative #prolog #foundational #algorithms #separation-of-concerns
