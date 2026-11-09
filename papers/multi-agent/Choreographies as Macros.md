# Choreographies as Macros

**Reference:** Alexander Bohosian & Andrew K. Hirsch (2025). PLACES 2025, *EPTCS* 420, pp. 12–21. [DOI](https://doi.org/10.4204/EPTCS.420.2). [arXiv:2505.20845](https://arxiv.org/abs/2505.20845). [PDF](https://arxiv.org/pdf/2505.20845).

## Summary

**Choret** embeds [[Choreographic Programming]] in Racket using macros. Its central contribution is implementing traditional selection-and-merge [[Endpoint Projection]] at compile time while reusing the host language's infrastructure.

Selections communicate [[Knowledge of Choice]]; merging combines an endpoint's behavior across conditional branches. Racket's macro facilities support the multiple transformation passes needed to perform this translation inside an embedded language.

## Key Ideas

- The `chor` macro expands the choreography once per participant, tracking the current endpoint with a syntax parameter.
- `local-expand` exposes transformed subexpressions for analysis.
- `quote-syntax` preserves branch forms until merging can recognize them.
- Compile-time projection avoids interleaving projection work with execution.
- The paper presents syntax, projection rules, and implementation techniques; it does not supply a mechanized correctness development comparable to Pirouette's.

## Connections

- [[Choreographic Programming]]
- [[Endpoint Projection]]
- [[Knowledge of Choice]]
- [[Racket Macros]]
- [[Hygienic Macros]]
- [[Creating Languages in Racket]] — host-language extensibility background.
- [[Pirouette - Higher-Order Typed Functional Choreographies]] — stated inspiration.
- [[HasChor - Functional Choreographic Programming]] — comparison with runtime projection.

## Conceptual Contribution

- **Claim:** Embedded choreographies can retain traditional compile-time selection-and-merge projection.
- **Mechanism:** Staged macro expansion, syntax parameters, and preserved branch syntax.
- **Concepts introduced/used:** Choret, [[Endpoint Projection]], [[Racket Macros]].
- **Stance:** language implementation / embedded DSL design.
- **Relates to:** Connects the vault's language-extension and choreography literature.

## Tags

#choreographic-programming #racket #macros #endpoint-projection #embedded-languages #places
