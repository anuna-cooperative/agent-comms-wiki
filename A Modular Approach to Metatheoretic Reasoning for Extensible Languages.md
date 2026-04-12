# A Modular Approach to Metatheoretic Reasoning for Extensible Languages

**Reference:** Dawn Michaelson, Gopalan Nadathur, and Eric Van Wyk (2023). *arXiv:2312.14374v1*. Source file: `2312.14374v1.pdf`

## Summary
Addresses the problem of proving metatheoretic properties (e.g. type preservation, information-flow non-interference) for languages composed from a host and a library of independently developed extensions. The authors propose decomposing proofs around language fragments and introducing a priori constraints — notably *projection constraints* that let extensions describe how their constructs behave at a distance — so that complete soundness proofs for any composed language can be automatically stitched together from per-extension partial proofs.

The framework distinguishes *foundational* properties (known to the host, like type preservation) from *auxiliary* properties (introduced by a later extension, like a security analysis). The paper develops the machinery in a relational logic with rule-based specifications and motivates the Extensibella and Sterling tool systems.

## Key Ideas
- Modular metatheory: per-extension partial proofs composed automatically
- Projection constraints let extensions reason about unknown other extensions at a distance
- Foundational vs auxiliary properties require different modularity treatments
- Relational rule-based specifications with fixed-point semantics
- Connects language-workbench practice to formal metatheory

## Connections
- [[Language Workbenches]]
- [[Creating Languages in Racket]]
- [[The Extensible Language - Graham]]
- [[Extensibility in Programming Language Design - Standish]]

## Conceptual Contribution
- **Claim:** Metatheoretic properties (type preservation, information-flow soundness, etc.) of an *extensible* language — built by composing a host language with a library of independently-developed extensions — can be proven modularly: each extension supplies a partial proof, and the host + projection-constraints framework guarantees these partial proofs compose soundly without a closed-world assumption.
- **Mechanism:** Distinguish *foundational* properties (known at host-language design time; each extension contributes a local proof obligation) from *auxiliary* properties (introduced later by some extension; proofs must use *projection relations* to reason about other extensions' constructs "at a distance"). Formalise the framework via a rule-based logic with least-fixed-point semantics; sketch realisation in the Extensibella and Sterling systems.
- **Concepts introduced/used:** [[Metatheoretic Reasoning]], [[Modular Proofs]], [[Projection Relations]], [[Foundational vs Auxiliary Properties]], [[Language Workbenches]], [[Type Preservation]], [[Attribute Grammars]], [[Closed World Assumption]], [[Fixpoint Semantics]], [[Relational Logic]]
- **Stance:** formal / programming-language theory
- **Relates to:** Supplies the metatheoretic rigour that [[Creating Languages in Racket]] and [[The Extensible Language - Graham]] implicitly assume but don't prove. Directly addresses the theoretical obstacles Standish flagged in [[Extensibility in Programming Language Design - Standish]] for orthophrase-style extensions. The modular-composition instinct parallels Event-B refinement in [[Formalise Blockchain Interoperability Patterns]].

## Tags
#language-design #metatheory #extensibility #formal-methods
