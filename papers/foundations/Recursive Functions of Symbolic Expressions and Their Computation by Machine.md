# Recursive Functions of Symbolic Expressions and Their Computation by Machine, Part I

**Reference:** John McCarthy (1960). "Recursive Functions of Symbolic Expressions and Their Computation by Machine, Part I." *Communications of the ACM* 3(4): 184-195. (Author-hosted LaTeX reformatting with minor notational changes.) Source file: `mccarthy-recursive.pdf`. [URL](http://jmc.stanford.edu/articles/recursive/recursive.pdf)

## Summary
The Lisp paper. McCarthy describes a programming system — LISP, for LISt Processor — developed for the IBM 704 at MIT, originally designed to support the *advice taker* of [[Programs with Common Sense]] by giving it a substrate for manipulating symbolic (declarative and imperative) sentences. The system evolved into a representation of *partial recursive functions over a class of symbolic expressions* (S-expressions) whose elegance transcended its motivating application. The paper presents S-expressions, a small set of elementary S-functions (`atom`, `eq`, `car`, `cdr`, `cons`), conditional expressions (newly introduced here), recursive function definitions via a λ-calculus-flavored notation, and the universal S-function `apply` that plays the role of a universal Turing machine and the practical role of an interpreter — the now-iconic code-is-data `eval`/`apply` kernel.

The paper then translates this formalism into IBM 704 list structures (the famous CAR/CDR naming reflecting the 704's address and decrement register fields), describes the main features of the LISP system (garbage collection, interpreter, compiler sketch, free storage), and gives a recursive-function interpretation of flow charts — i.e., a semantics for imperative programs via recursive functions, anticipating much later work on denotational semantics. Conditional expressions, submitted by McCarthy as a letter to CACM and "demoted to a letter" by its editor (notes the footnote), were the notation Algol 60 then rejected in favour of `if ... then ... else`.

Lisp is simultaneously an AI implementation vehicle and a theory of computation — and the paper's code-is-data property (programs are S-expressions) is what seeded the Lisp extensibility tradition (macros, embedded DSLs) that later runs through [[The Extensible Language - Graham]], [[Code as Data]], [[Macros as Language Extension]], and [[Creating Languages in Racket]]. McCarthy closes promising a Part II on symbolic applications and a companion paper applying the recursive-function formalism to mathematical logic and theorem proving — the latter effectively becoming [[Correctness of a Compiler for Arithmetic Expressions]] and [[Towards a Mathematical Science of Computation]].

## Key Ideas
- S-expressions: uniform tree/list data structure for both programs and data (code-is-data).
- Five primitive functions (`atom`, `eq`, `car`, `cdr`, `cons`) suffice to define all computable functions over S-expressions.
- Conditional expressions `(p1 → e1, ..., pn → en)` as a first-class construct — introduced to computer science here.
- Recursive function definitions and λ-notation for anonymous functions.
- Universal function `apply` — a meta-circular evaluator — plays the role of a universal Turing machine *and* a working interpreter.
- Partial functions are inherent to computation (non-termination) and must be handled explicitly.
- Flow charts reinterpreted as recursive function applications — an early denotational-style semantics for imperative programs.
- Garbage collection (the concept of automatic reclamation of unreferenced list cells) introduced in the implementation notes.

## Connections
- [[Programs with Common Sense]] — Lisp was originally designed to support the advice taker.
- [[Some Philosophical Problems from the Standpoint of Artificial Intelligence]]
- [[Epistemological Problems of Artificial Intelligence]]
- [[Towards a Mathematical Science of Computation]] — continues the theory-of-computation programme.
- [[Correctness of a Compiler for Arithmetic Expressions]] — first proof of program correctness uses Lisp-like semantics.
- [[First Order Theories of Individual Concepts and Propositions]]
- [[Ascribing Mental Qualities to Machines]]
- [[Circumscription - A Form of Nonmonotonic Reasoning]]
- [[Generality in Artificial Intelligence]]
- [[Elephant 2000 - A Programming Language Based on Speech Acts]]
- [[Common Business Communication Language]]
- [[The Extensible Language - Graham]] — Graham's manifesto for the Lisp extensibility culture.
- [[Code as Data]] — the homoiconicity principle first made concrete here.
- [[Macros as Language Extension]] — macros exploit the S-expression representation of programs.
- [[Creating Languages in Racket]] — modern Racket inherits `eval`/`apply` as the DSL substrate.
- [[Lisp]]
- [[Knowledge Representation]]
- [[Common Sense Reasoning]]

## Conceptual Contribution
- **Claim:** Partial recursive functions over symbolic expressions can be defined with five primitive operators (`atom`, `eq`, `car`, `cdr`, `cons`) plus conditional expressions and recursion, yielding a language in which programs are themselves symbolic expressions and a single universal function `apply` serves as both a universal Turing machine and a working interpreter — giving a uniform substrate for AI, programming, and the theory of computation.
- **Mechanism:** S-expressions (atomic symbols + dotted pairs, list sugar); five primitives; conditional expression `(p → e, ...)`; recursive function definitions; λ-notation; universal `apply(f, args)`; IBM 704 list-structure implementation; garbage collection; recursive-function semantics of flow charts.
- **Concepts introduced/used:** [[Lisp]], [[S-expression]], [[Conditional Expression]], [[Recursive Function]], [[Code as Data]], [[Homoiconicity]], [[eval apply]], [[Garbage Collection]], [[Meta-circular Evaluator]].
- **Stance:** foundational
- **Relates to:** The implementation substrate that [[Programs with Common Sense]] anticipated. Its code-is-data property seeds the extensibility tradition — [[The Extensible Language - Graham]], [[Macros as Language Extension]], [[Creating Languages in Racket]] — and its `apply` formalism is the ancestor of denotational semantics used in [[Correctness of a Compiler for Arithmetic Expressions]] and [[Towards a Mathematical Science of Computation]].

## Tags
#foundational #mccarthy #lisp #programming-languages #ai-history #code-as-data #1960 #recursive-functions
