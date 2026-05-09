# Memo Programming Language

A domain-specific probabilistic programming language for cognitive-science models of theory of mind, by Chandra, Chen, Tenenbaum & Ragan-Kelley (OOPSLA 2025). `memo` programs express recursive reasoning patterns — agent A *thinks* about agent B *thinking* about A, and so on — concisely; the compiler reduces them to recursive probabilistic programmes over which efficient inference (variable elimination, importance sampling) can be performed. Used in [[Pact - A Choreographic Language for Agentic Ecosystems]] as the analysis target for endpoint-projected choreographies: a Pact protocol compiles to a `memo` model whose inference yields a level-ℓ bounded-rational decision policy.

## In this vault
- [[Theory of Mind]]
- [[Bounded Rationality]]
- [[Pact - A Choreographic Language for Agentic Ecosystems]]
