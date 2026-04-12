# Assigning Meanings to Programs

**Reference:** Robert W. Floyd (1967). *Proceedings of Symposia in Applied Mathematics*, Vol. 19, pp. 19-32 (AMS). Source file: `FloydMeaning.pdf`. URL: https://people.eecs.berkeley.edu/~necula/Papers/FloydMeaning.pdf

## Summary
Floyd's foundational paper establishes a rigorous, axiomatic basis for proving properties of programs — correctness, termination, equivalence — by attaching propositions (tags) to the edges of a flowchart. A *verification condition* for each command type guarantees that if the tag on its entrance edge is true when control arrives, then the tag on its exit edge is true when control leaves. Induction over execution then proves global properties like "if initial values satisfy R1, final values satisfy R2".

The paper defines completeness and consistency of a semantic definition, gives general axioms (axioms 1-4 and corollaries), and derives verification conditions for assignment, conditional branch, join, start, and halt in a simple flowchart language, then extends the approach to fragments of ALGOL. It is a foundational work in axiomatic semantics, directly inspiring Hoare logic.

## Key Ideas
- Interpretation = mapping from flowchart edges to propositions.
- Verification condition per command type enforces local soundness.
- Global correctness by induction over execution steps.
- Semantic definition should be complete and consistent.
- Termination proofs by showing a well-founded quantity strictly decreases.

## Connections
- [[Language Workbenches]]
- [[Agent-Oriented Programming]]
- [[Verifiable Semantics]]
- [[Code as Data]]

## Conceptual Contribution
- **Claim:** A programming language's semantics can be defined independently of any implementation by attaching propositions to flowchart edges and constructing per-command verification conditions; global program properties then follow by induction.
- **Mechanism:** Flowchart interpretation as a map from edges to propositions; four general axioms governing verification conditions; derivation of V_c for assignment, branch, join, start, halt; extension to an ALGOL subset (conditional, goto, for, compound, declarations); termination via well-founded decreasing quantities.
- **Concepts introduced/used:** [[Axiomatic Semantics]], [[Verification Condition]], [[Strongest Verifiable Consequent]], [[Consistency and Completeness]], [[Inductive Assertions]], [[Termination Proof]]
- **Stance:** foundational / formal-semantic
- **Relates to:** Direct ancestor of Hoare logic and of every verifiable-semantics move in the vault, including [[Verifiable Semantics for ACLs]] which transports Floyd/Hoare-style program semantics into the ACL-conformance question. Foundational for [[Foundations of Logic Programming - Lloyd]] and reasoning tools in [[A Modular Approach to Metatheoretic Reasoning for Extensible Languages]].

## Tags
#formal-semantics #program-verification #hoare-logic #foundations
