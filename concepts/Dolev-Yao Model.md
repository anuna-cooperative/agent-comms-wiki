## Dolev-Yao Model

The standard symbolic threat model for cryptographic-protocol analysis (Dolev & Yao 1983). The attacker controls the network entirely: it can intercept, drop, modify, and inject any message; it can compose and decompose terms it observes; but it *cannot* break cryptographic primitives — encryption is a perfect black box. Treats messages as terms in a free algebra modulo cryptographic equations rather than as bit strings. Both [[BAN Logic]] and [[Spi Calculus]] (and [[ProVerif]] / Tamarin) adopt the Dolev-Yao threat model.

## In this vault
- [[BAN Logic]]
- [[Spi Calculus]]
- [[Crypto Protocol Verification]]
- [[ProVerif]]
