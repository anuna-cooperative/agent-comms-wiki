## Crypto Protocol Verification

The formal analysis of cryptographic protocols for properties such as authentication, secrecy, key agreement, forward secrecy, and resistance to replay. Two principal traditions:

- **Belief-logic / symbolic** — [[BAN Logic]] (Burrows, Abadi & Needham 1990) and successors (GNY, SVO): reason about agents' beliefs as a protocol unfolds. Diagnostic; not always sound for arbitrary attackers.
- **Process-calculus / equivalence-based** — [[Spi Calculus]] (Abadi & Gordon 1997), applied π-calculus, and the modern symbolic provers ([[ProVerif]], Tamarin): security as observational equivalence under an arbitrary attacker context. Sound, automatable for restricted fragments.

Recent industrial use: TLS 1.3, Signal, EAP, FIDO/WebAuthn, post-quantum protocols all have machine-checked symbolic analyses by Tamarin and/or ProVerif.

## In this vault
- [[BAN Logic]]
- [[A Logic of Authentication]]
- [[Spi Calculus]]
- [[Needham-Schroeder Protocol]]
- [[ProVerif]]
- [[Dolev-Yao Model]]
