## Capability Certificate

A signed certificate binding a public key (the *subject*) to an *authority* (a description of what actions the subject is permitted) — the SPKI-style realisation of [[Capability Security]] in a distributed cryptographic setting. Composes by chain (concatenated delegations, with authority intersected at each step) and by attenuation (a delegate can issue a sub-certificate granting strictly fewer rights). Modern descendants: Macaroons (Birgisson et al. 2014), zCaps (W3C Authorization Capabilities), object-capability tokens in cap-secure RPC.

## In this vault
- [[SPKI]]
- [[SDSI]]
- [[SPKI-SDSI]]
- [[Capability Security]]
- [[Macaroons]]
