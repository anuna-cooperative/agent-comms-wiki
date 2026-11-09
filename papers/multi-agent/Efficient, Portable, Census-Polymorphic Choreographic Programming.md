# Efficient, Portable, Census-Polymorphic Choreographic Programming

**Reference:** Mako Bates, Shun Kashiwa, Syed Jafri, Gan Shen, Lindsey Kuper & Joseph P. Near (2025). PLDI 2025. [DOI](https://doi.org/10.1145/3729296). [arXiv:2412.02107v2](https://arxiv.org/abs/2412.02107v2), 23 April 2025; first submitted December 2024. [PDF](https://arxiv.org/pdf/2412.02107).

## Summary

Library-level [[Choreographic Programming]] embeds global distributed programs in existing languages. This paper addresses redundant communication for conditionals, dependence on monadic host-language features, and fixed participant counts.

**Conclaves** restrict execution to participant subsets; **multiply-located values** represent identical values available at multiple locations. Together they enable efficient, type-safe conditionals. **Census polymorphism** abstracts over participant counts, while [[Endpoint Projection]] as dependency injection supports implementation without monads.

## Key Ideas

- Implementations: MultiChor (Haskell), ChoRus (Rust), and ChoreoTS (TypeScript).
- Soundness and completeness of projection yield deadlock freedom for the formalized calculus.
- Case studies include a multi-server key-value store and secure computation.
- Census polymorphism concerns participant-count abstraction; it does not itself establish support for arbitrary runtime membership changes.

## Connections

- [[Choreographic Programming]]
- [[Endpoint Projection]]
- [[HasChor - Functional Choreographic Programming]] — the library approach extended here.
- [[ChoRus - Library-Level Choreographic Programming in Rust]] — related Rust implementation work.
- [[Knowledge of Choice]] — compare how information availability governs branching.

## Conceptual Contribution

- **Claim:** Library-level choreography can combine efficient branching, portability, and participant-count abstraction.
- **Mechanism:** Conclaves, multiply-located values, census polymorphism, and injected projection operations.
- **Concepts introduced/used:** [[Choreographic Programming]], [[Endpoint Projection]], census polymorphism.
- **Stance:** programming languages / formal distributed programming.
- **Relates to:** Connects the vault's HasChor and ChoRus notes to a common language-independent design.

## Tags

#choreographic-programming #endpoint-projection #distributed-systems #polymorphism #pldi
