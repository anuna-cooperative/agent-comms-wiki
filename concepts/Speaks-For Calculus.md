# Speaks-For Calculus

Lampson–Abadi–Burrows–Wobber's (1992) formalism for distributed authentication, delegation, and *who is entitled to assert what on whose behalf*. The primitives are `says` (principal `A` asserts statement `s`, written `A says s`) and `speaks-for` (`A ⇒ B` — anything `A` says, `B` says). The principal algebra is rich: atomic principals (users, processes, keys), conjunction `A ∧ B`, quoting `A | B` (`A` speaking on behalf of `B`), roles `A as R`, and for-channel `A for K`. Speaks-for facts are witnessed by signed certificates; authentication is checking chains of certificates from a trusted root. Access control then grants rights to principals at any level of compoundness. The calculus is the formal vocabulary underlying [[SPKI-SDSI|SPKI/SDSI]], [[Decentralized Identifiers|DIDs and Verifiable Credentials]], modern attribute-based authorisation, and any system that needs to reason about *delegated commitment*.

## In this vault
- [[Authentication in Distributed Systems - Lampson Abadi Burrows Wobber]] — the founding paper
- [[A Logic of Authentication]] — [[BAN Logic]] (1990) for protocol-level reasoning
- [[Spi Calculus]] — pi-calculus with cryptography
- [[SPKI-SDSI]] — capability-style PKI built on speaks-for
- [[Decentralized Identifiers]]
- [[Capability Myths Demolished]]
- [[Programming Semantics for Multiprogrammed Computations]] — the [[Object Capability]] dual view
- [[The Heart of Spritely - Distributed Objects and Capability Security]]
- [[An Ontology for Commitments in Multiagent Systems - Singh]] — delegated commitments
- [[Distributed Security]]
- [[Agent Infrastructure]]
- [[CBCL - Safe Self-Extending Agent Communication]] — signed-verdict architecture
