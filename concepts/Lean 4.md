# Lean 4

de Moura and Ullrich's dependently-typed proof assistant and functional programming language; a rewrite of Lean 3 with macro-based metaprogramming, an efficient compiler, and a self-hosted toolchain. Lean 4 is used both for mathematical formalisation (the mathlib library) and for verified-software engineering: theorems about a model can be discharged interactively, and code can be *extracted* from definitions to runnable programs whose behaviour matches the proven specification. [[CBCL - Safe Self-Extending Agent Communication]] is formalised in Lean 4 (≈5,400 lines, 380+ declarations across 19 files post-paper, zero `sorry` gaps, only the standard axioms `propext` / `Classical.choice` / `Quot.sound`); the verified parser binary `cbcl-parse` is extracted from those proofs.

## In this vault
- [[CBCL - Safe Self-Extending Agent Communication]]
