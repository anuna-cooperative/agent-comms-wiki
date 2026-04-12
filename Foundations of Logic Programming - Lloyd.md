# Foundations of Logic Programming (Chapter 1: Preliminaries)

**Reference:** J. W. Lloyd (1987). *Springer-Verlag, Second Extended Edition*. Source file: `2022-08-18 13-38-01-Lloyd.pdf`

## Summary
The opening chapter of Lloyd's canonical textbook on the mathematical foundations of logic programming. It introduces first-order theories, syntax (alphabets, terms, well-formed formulas, clauses, Horn clauses), interpretations and models, and Herbrand semantics as the preferred route for reasoning about logical consequence of a program.

Lloyd motivates logic programming as Kowalski's insight that "algorithm = logic + control": a definite program is a set of Horn clauses (the logic), and the inference strategy (SLD-resolution, search order) is the control. He distinguishes "system" languages (committed-choice, concurrent) from "application" languages (PROLOG-style), and sets up the semantic machinery — Herbrand interpretations, models, logical consequence, unsatisfiability — needed for the rest of the book.

## Key Ideas
- Algorithm = Logic + Control (Kowalski's principle)
- Horn clauses as the executable fragment of first-order logic
- Herbrand universe and base; Herbrand interpretations suffice for clause sets
- Definite programs vs normal programs (negation)
- SLD-resolution as refutation procedure (developed in later chapters)

## Connections
- [[Agent-Oriented Programming]]
- [[Ensuring Trustworthy and Ethical Behaviour in Intelligent Logical Agents]]
- [[Agent Communication Languages]]

## Conceptual Contribution
- **Claim:** Logic — specifically first-order Horn-clause logic with SLD-resolution — can serve as a programming language, where a program is a set of definite clauses, a computation is resolution refutation, and the declarative semantics (Herbrand models, least fixpoint) coincides with the procedural semantics.
- **Mechanism:** Rigorously build up first-order theories, interpretations, Herbrand interpretations/bases, unification, and the T_P fixpoint operator; prove soundness and completeness of SLD-resolution; develop negation-as-failure, the Closed World Assumption, and semantics of normal programs; treat Prolog as the canonical realisation of the Kowalski slogan "algorithm = logic + control".
- **Concepts introduced/used:** [[Logic Programming]], [[Horn Clauses]], [[SLD Resolution]], [[Herbrand Universe]], [[Unification]], [[Negation as Failure]], [[Fixpoint Semantics]], [[Prolog]], [[Closed World Assumption]]
- **Stance:** formal / foundational textbook
- **Relates to:** Theoretical substrate for [[Agent-Oriented Programming]], [[ACRE Agent Conversation Reasoning Engine]], and [[Ensuring Trustworthy and Ethical Behaviour in Intelligent Logical Agents]] (all of which assume BDI agents implemented in logic-programming languages). The mentalistic-semantics side of ACLs ([[KQML as an Agent Communication Language]], [[FIPA-ACL]]) presupposes Lloyd-style logical machinery.

## Tags
#logic-programming #prolog #foundations #first-order-logic
