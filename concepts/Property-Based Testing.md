# Property-Based Testing

Testing methodology in which assertions are written as *universally quantified* properties (e.g. "for all inputs `x`, `parse(serialize(x)) = x`") and a framework generates randomised inputs to falsify them. Originating with Claessen and Hughes's QuickCheck for Haskell (2000) and now ubiquitous (`proptest` for Rust, `Hypothesis` for Python). Particularly valuable in protocol-design and parser engineering, where property tests sit between unit tests (concrete examples) and machine-checked proofs (universal but expensive). [[CBCL - Safe Self-Extending Agent Communication]] uses `proptest` for round-trip and constraint properties as a complement to its Lean 4 proofs.

## In this vault
- [[CBCL - Safe Self-Extending Agent Communication]]
