## Transformation Function

The fundamental construct of [[Operational Transformation]]: `T(o₁, o₂)` returns the version of operation `o₁` that should be applied to a state where `o₂` has already executed, so that the *intended effect* of `o₁` is preserved. For text editing, `T(insert("X", 5), insert("Y", 3))` returns `insert("X", 6)` — position adjusted because the prior insertion shifted indices. Required to satisfy the **TP1** property (`T(o₁, o₂) ∘ o₂ = T(o₂, o₁) ∘ o₁`) and, in the general multi-replica case, **TP2** (the analogous property for triples). TP2 satisfaction has historically been the source of most subtle OT bugs.

## In this vault
- [[Concurrency Control in Groupware Systems]]
- [[Operational Transformation]]
- [[CCI Model]]
