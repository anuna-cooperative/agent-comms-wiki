## SPKI

**Simple Public Key Infrastructure** (Ellison et al. RFC 2693, 1999) — the IETF formalisation of the SPKI/SDSI design. Certificates bind keys to *authorisations* (5-tuples `<Issuer, Subject, Delegation, Authority, Validity>`) rather than to global identities. Authority delegation is first-class; chain discovery (Clarke et al. 2001) gives a sound and complete algorithm for deriving access decisions from collections of certificates. The cryptographic-identity counterpart of [[Capability Security|object-capability security]] in distributed systems.

## In this vault
- [[SPKI-SDSI]]
- [[SDSI]]
- [[Linked Local Names]]
- [[Capability Certificate]]
- [[Capability Security]]
- [[Macaroons]]
