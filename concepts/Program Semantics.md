## Program Semantics

The mathematical definition of what a program means — operational (how it runs), denotational (what value it computes), or axiomatic (what properties it guarantees). Verifiable ACL semantics require programs whose meaning is pinned down precisely enough for conformance to be checked.

## In this vault
- [[Verifiable Semantics for ACLs]]
- [[Operational Semantics]]
- [[Hoare Logic]]

## Language, semantics, and concurrency lineage

```mermaid
graph TD
  CH["Chomsky (1956)<br/>Three Models for the Description of Language"] --> GRAM[Formal grammars]
  MC["McCarthy (1960)<br/>Recursive Functions of Symbolic Expressions"] --> LISP[LISP / λ-calculus lineage]
  MC --> MS["McCarthy (1962)<br/>Towards a Mathematical Science of Computation"]
  MS --> CC["McCarthy & Painter (1966)<br/>Correctness of a Compiler for Arithmetic Expressions"]
  FL["Floyd (1967)<br/>Assigning Meanings to Programs"] --> AX[Axiomatic / inductive assertions]
  NAUR["Naur<br/>Proof Method for Cyclic Programs"] --> AX
  NAUR --> APP[Application of cyclic-program method]
  CC --> AX
  AX --> HOARE["Hoare (1978)<br/>Communicating Sequential Processes"]
  HEW["Hewitt (1973)<br/>Actor Formalism"] --> CONC[Concurrent message-passing]
  HOARE --> CONC
  CONC --> PI[π-calculus / process calculi]
  LISP --> BK["Backus (1978)<br/>Can Programming Be Liberated from the von Neumann Style"]
  BK --> FP[Functional programming]
  AX --> PS((Program Semantics))
  PI --> ACL[[Agent Communication Languages]]
  FP --> ACL
```

Papers: [[Three Models for the Description of Language]] · [[Recursive Functions of Symbolic Expressions and Their Computation by Machine]] · [[Towards a Mathematical Science of Computation]] · [[Correctness of a Compiler for Arithmetic Expressions]] · [[Assigning Meanings to Programs]] · [[A Proof Method for Cyclic Programs]] · [[An Application of a Method for Analysis of Cyclic Programs]] · [[Communicating Sequential Processes]] · [[Can Programming Be Liberated from the von Neumann Style]] · [[A Universal Modular Actor Formalism for Artificial Intelligence]]
