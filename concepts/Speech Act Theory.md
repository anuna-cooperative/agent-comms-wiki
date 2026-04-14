# Speech Act Theory

Philosophy-of-language framework (Austin, Searle, Vanderveken) in which utterances perform actions (illocutionary acts) — the semantic backbone of most [[Agent Communication Languages]].

## Sources
- [[Foundations Of Illocutionary Logic]] — Searle & Vanderveken
- [[Three Models for the Description of Language]] — Chomsky, foundations
- [[Agent Communication And Institutional Reality]]

## Applied in
- [[KQML]]
- [[FIPA-ACL]]
- [[Verifiable Semantics for ACLs]]
- [[ACL Rethinking Principles]]

## Lineage

```mermaid
graph TD
  A["Austin (1962)<br/>How to Do Things with Words"] --> A1[Locutionary]
  A --> A2[Illocutionary]
  A --> A3[Perlocutionary]
  A2 --> S["Searle (1969, 1975)<br/>Speech Acts · Taxonomy of Illocutionary Acts"]
  S --> S1[Assertives]
  S --> S2[Directives]
  S --> S3[Commissives]
  S --> S4[Expressives]
  S --> S5[Declarations]
  G["Grice (1975)<br/>Logic and Conversation"] -.cooperative principle.-> S
  S --> V["Searle & Vanderveken (1985)<br/>Foundations of Illocutionary Logic"]
  V --> M["McCarthy (1989)<br/>Elephant 2000"]
  V --> KQML[KQML performatives]
  V --> FIPA[FIPA-ACL performatives]
  M --> FIPA
  KQML --> ACL[[Agent Communication Languages]]
  FIPA --> ACL
```

Papers: [[How to Do Things with Words]] · [[Speech Acts - An Essay in the Philosophy of Language]] · [[A Taxonomy of Illocutionary Acts]] · [[Logic and Conversation]] · [[Foundations Of Illocutionary Logic]] · [[Elephant 2000 - A Programming Language Based on Speech Acts]]
