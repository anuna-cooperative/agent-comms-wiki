# An Axiomatic Basis for Computer Programming

**Reference:** Hoare, C. A. R. (1969). *An Axiomatic Basis for Computer Programming.* Communications of the ACM 12(10): 576–580, 583. October 1969. [URL (MIT-hosted PDF)](http://sunnyday.mit.edu/16.355/Hoare-CACM-69.pdf) · [ACM DOI](https://doi.org/10.1145/363235.363259)

## Summary
The founding paper of *axiomatic semantics* and the source of [[Hoare Logic|Hoare logic]] — the contract-based reasoning method whose direct descendants include Eiffel-style design-by-contract, separation logic, refinement types, F*, Dafny, Lean's `decreasing_by`, and every behavioural-spec system that talks about programs in terms of *preconditions* and *postconditions*. Hoare proposes that the meaning of a program be given not by operational trace but by a *partial-correctness assertion* of the form `{P} S {Q}`: if `P` holds before executing `S`, and `S` terminates, then `Q` holds after. The axiomatic semantics consists of axiom schemes and inference rules for each programming-language construct: an assignment axiom (`{Q[E/x]} x := E {Q}`), composition (`{P} S₁ {R}`, `{R} S₂ {Q}` ⊢ `{P} S₁; S₂ {Q}`), conditional, while-loop with loop invariant, and rule of consequence (strengthen `P`, weaken `Q`). The system gives programmers a calculus for reasoning about programs symbolically, without enumeration.

Two methodological commitments distinguish the paper. First, Hoare deliberately treats the *axioms* as defining the programming language: the semantics of `:=` is the assignment axiom, full stop. Implementations that fail to satisfy the axiom are bugs in the implementation, not in the axiom. This is the cornerstone of the *abstract specification* view of programming-language semantics. Second, Hoare takes *partial correctness* (correctness *given* termination) as the unit of reasoning, separating it from *termination* (which he discusses as a separate problem). This separation pays off massively later: partial correctness is recursively axiomatisable in a way total correctness is not, and the loop-invariant rule becomes the central engine of program verification.

For the verification line in this vault, Hoare 1969 is the *root of the tree*: every contract-based, behavioural-spec, certificate-bearing technology — [[An Axiomatic Basis for Computer Programming - Hoare|Hoare logic]] itself, [[Assigning Meanings to Programs|Floyd's inductive assertions]] (1967, the direct ancestor with which Hoare credits in §1), [[Proof-Carrying Code - Necula|PCC]], [[Enforceable Security Policies - Schneider|EM]] enforcement, dependent-typed proof assistants — sits downstream. The pair *axiomatic semantics + proof-carrying-code* is the conceptual spine of how [[CBCL - Safe Self-Extending Agent Communication|CBCL]] turns dialect contracts into machine-checkable assertions: a dialect contract is a Hoare-style pre/post over the wire-format trace, and the Lean proof of its well-formedness is the PCC-style certificate.

## Key Ideas
- *Partial-correctness Hoare triple*: `{P} S {Q}` means "if `P` holds before executing `S`, and `S` terminates, then `Q` holds after." The fundamental unit of reasoning.
- *Axiomatic definition of programming-language constructs*: each construct is *defined* by its axiom or rule (assignment, composition, conditional, loop, consequence). The axioms *are* the semantics; implementations must conform.
- *Assignment axiom*: `{Q[E/x]} x := E {Q}` — to know `Q` holds after assigning `E` to `x`, ensure `Q[E/x]` (substitute `E` for `x` in `Q`) holds before. The backward substitution rule is the surprising core of the system.
- *Composition rule*: `{P} S₁ {R}` and `{R} S₂ {Q}` together give `{P} S₁; S₂ {Q}`. The middle assertion `R` is the *bridging condition*.
- *Conditional rule*: `{P ∧ B} S₁ {Q}` and `{P ∧ ¬B} S₂ {Q}` give `{P} if B then S₁ else S₂ {Q}`.
- *While-loop rule (loop invariant)*: `{I ∧ B} S {I}` gives `{I} while B do S {I ∧ ¬B}`. The *loop invariant* `I` is the central object of program verification and the place programmer ingenuity is needed.
- *Rule of consequence*: `P ⇒ P'`, `{P'} S {Q'}`, `Q' ⇒ Q` together give `{P} S {Q}`. Lets one strengthen preconditions and weaken postconditions to fit context.
- *Partial vs total correctness*: Hoare separates the two; partial correctness is recursively axiomatisable, total correctness requires a separate *variant function* / termination argument.
- *Axioms specify abstract machines*: real machine arithmetic differs from the axiomatic integer arithmetic (overflow, finite precision); Hoare flags this explicitly and treats it as a design problem rather than a flaw of the method.

## Connections
- [[Hoare Logic]]
- [[Axiomatic Semantics]]
- [[Hoare Triple]]
- [[Loop Invariant]]
- [[Inductive Assertions]]
- [[Assigning Meanings to Programs]]
- [[Design by Contract]]
- [[Separation Logic]]
- [[Refinement Types]]
- [[Proof-Carrying Code - Necula]]
- [[Enforceable Security Policies - Schneider]]
- [[Curry-Howard Correspondence]]
- [[Linear Logic]]
- [[Verifiable Semantics for ACLs]]
- [[Classes of Recursively Enumerable Sets and Their Decision Problems]]
- [[Rice's Theorem]]
- [[Towards a Mathematical Science of Computation]]
- [[Correctness of a Compiler for Arithmetic Expressions]]
- [[A Proof Method for Cyclic Programs]]
- [[An Application of a Method for Analysis of Cyclic Programs]]
- [[Foundations of Logic Programming - Lloyd]]
- [[LangSec]]
- [[The Halting Problems of Network Stack Insecurity]]
- [[Making Smart Contracts Smarter]]
- [[Distributed Security]]
- [[CBCL - Safe Self-Extending Agent Communication]]

## Conceptual Contribution
- **Claim:** The meaning of a program can be given axiomatically by inference rules over assertions of the form `{P} S {Q}` (Hoare triples), with each programming-language construct *defined* by its rule. Program verification reduces to deriving the triple `{P} program {Q}` in the resulting calculus.
- **Mechanism:** Define partial correctness `{P} S {Q}` as "if `P` holds and `S` terminates then `Q` holds." Give axioms / rules for each construct: assignment (backward substitution), composition, conditional, while-loop (with loop invariant), and rule of consequence. Separate termination as a distinct concern handled by a variant function. The resulting calculus is sound, in principle complete for partial correctness over a sufficiently expressive assertion language, and treats programming-language semantics as a *specification* rather than a description of execution traces.
- **Concepts introduced/used:** [[Hoare Triple]], [[Loop Invariant]], [[Assignment Axiom]], [[Rule of Consequence]], [[Partial Correctness]], [[Total Correctness]], [[Variant Function]], [[Weakest Precondition]] (worked out later by Dijkstra).
- **Stance:** foundational technical paper.
- **Relates to:** Roots of contract-based verification; direct ancestor of [[Proof-Carrying Code - Necula|PCC]] (the proofs PCC ships are essentially Hoare-style derivations of safety predicates), of [[Verifiable Semantics for ACLs|verifiable ACL semantics]] (FP/RE pairs are Hoare-style pre/post over communicative actions), and of [[Making Smart Contracts Smarter|smart-contract verification]]. Builds explicitly on [[Assigning Meanings to Programs|Floyd 1967]] (inductive assertions on flowcharts). The unification of Floyd-Hoare logic with proof theory is the [[Curry-Howard Correspondence|Curry–Howard correspondence]] that motivates dependently typed proof assistants (Coq, Lean, Agda) where Hoare triples become dependent function types. For agent communication, the framework is the formal vocabulary for *protocol contracts* and *dialect specifications*: a protocol step is a Hoare triple over the public commitment-state, and a CBCL dialect contract is a Hoare-style specification whose proof of soundness is shipped PCC-style.

## Tags
#hoare-logic #axiomatic-semantics #verification #formal-methods #foundations #hoare-triple #loop-invariant #1969 #classical
