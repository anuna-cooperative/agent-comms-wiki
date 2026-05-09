# SPKI / SDSI: A Simple Distributed Security Infrastructure with Linked Local Names

**Reference:** Rivest, R. L. & Lampson, B. (1996). *SDSI — A Simple Distributed Security Infrastructure*. (Working document, MIT.) Followed by: Ellison, C., Frantz, B., Lampson, B., Rivest, R., Thomas, B. & Ylonen, T. (1999). *SPKI Certificate Theory*. RFC 2693, IETF. (Also: Clarke, D. E., Elien, J.-E., Ellison, C., Fredette, M., Morcos, A. & Rivest, R. L. (2001). *Certificate Chain Discovery in SPKI/SDSI*. Journal of Computer Security 9(4).) [Open access (RFC 2693)](https://datatracker.ietf.org/doc/html/rfc2693) · [SDSI 1.0 (Rivest-Lampson, MIT)](https://people.csail.mit.edu/rivest/sdsi10.html) · [Chain discovery (Elien MIT MS thesis 1998)](https://groups.csail.mit.edu/cis/theses/elien-masters.pdf)

## Summary
Rivest, Lampson, Ellison and the SPKI working group develop **SPKI/SDSI**, a public-key infrastructure that takes a sharply different stance from the X.509 / hierarchical-CA tradition: instead of a global namespace of certified identities rooted in a chain of certificate authorities, SPKI/SDSI gives each principal its *own local namespace* and certificates that bind keys to **authorisations** rather than identities. SDSI's central innovation is **linked local names**: `K_alice's friends` is a name in `K_alice`'s namespace; `K_alice's friends's secretary` is a chain of links — no global registry needed. Authority delegation is similarly local: a certificate `K_a → K_b : auth` issued by `K_a` grants authority `auth` to `K_b`, optionally with delegation rights. Authority is *what* matters, not *who* — a distinction Lampson summarised as "we're moving from authentication to authorization." The SPKI Certificate Theory (RFC 2693) formalises this: certificates are 5-tuples `<Issuer, Subject, Delegation, Authority, Validity>`; chain discovery (Clarke et al. 2001) gives a sound and complete algorithm for deriving "does this principal have this authority?" from a collection of certificates. The design directly anticipates modern decentralised identity / object-capability composition: SPKI/SDSI is the conceptual bridge between the [[Capability Security|object-capability]] tradition (E, Spritely) and the cryptographic-identity tradition (X.509, PGP). DIDs and Verifiable Credentials inherit substantial conceptual machinery from SPKI/SDSI; Macaroons (Birgisson et al. 2014) are SPKI-style attenuable capability tokens for HTTP APIs.

## Key Ideas
- *Authorization, not authentication*: certificates bind keys to *authorities* — what the principal is permitted to do — rather than to *identities*. The question "who *is* this key?" is replaced by "what is this key allowed to do?"
- *Local namespaces (SDSI)*: each principal has its own namespace; names are local identifiers like `K_alice's bob`, with no global resolution. *Linked local names* chain across namespaces: `K_alice's bob's friends` resolves through `K_alice`'s and then `K_bob`'s namespaces.
- *Delegation as a first-class certificate field*: a certificate may grant authority *with* or *without* the right to re-delegate; chains of delegated certificates are the principal authority-derivation mechanism.
- *5-tuple certificates*: `<Issuer, Subject, Delegation-flag, Authorization-S-expression, Validity>` (RFC 2693 §2.4 calls the field "Authorization", not "Authority"); the Authorization is an S-expression in a structured language (action, object, qualifier) that supports rich access-control specifications.
- *Chain discovery* (Clarke et al. 2001): given a goal `K_principal has authority A`, the chain-discovery algorithm searches the certificate collection for a derivation; sound and complete; polynomial in the size of the certificate collection for many practical fragments.
- *No mandatory identity binding*: certificates may bind keys to local names (SDSI-style) or directly to authorisations (SPKI-style) — *identity* is just one kind of *authority*. The system can be used without ever assigning a global "real name" to a key.
- *Capability composition*: SPKI authorities compose under intersection and chain; the resulting authority is the most-restrictive intersection along the chain. This is exactly the [[Capability Security|capability-security]] composition rule lifted to a certificate-based distributed setting.

## Connections
- [[SPKI]]
- [[SDSI]]
- [[Linked Local Names]]
- [[Capability Certificate]]
- [[Capability Security]]
- [[Robust Composition - Towards a Unified Approach to Access Control and Concurrency Control]]
- [[Capability Myths Demolished]]
- [[Capability-based Financial Instruments]]
- [[The Heart of Spritely - Distributed Objects and Capability Security]]
- [[The Confused Deputy - Hardy]]
- [[Certificate Authorities]]
- [[Decentralized Identifier]]
- [[Verifiable Credential]]
- [[PKI Layer Cake - Kaminsky Patterson Sassaman]]
- [[Authentication Protocol]]
- [[Macaroons]]

## Conceptual Contribution
- **Claim:** A distributed security infrastructure should bind cryptographic keys to *authorisations* (what they may do) rather than to *identities* (who they "really" are); each principal should have its own local namespace; authority delegation should be first-class with an explicit chain-discovery algorithm. The X.509 hierarchical-CA model is the wrong fit for most distributed-system access-control needs.
- **Mechanism:** 5-tuple certificate format (issuer / subject / delegation / authority / validity); local namespaces with linked-local-names resolution; sound and complete chain-discovery algorithm; authority composition under intersection.
- **Concepts introduced/used:** [[SPKI]], [[SDSI]], [[Linked Local Names]], [[Capability Certificate]], Authority-not-Identity, Chain Discovery.
- **Stance:** foundational systems-design paper / IETF specification.
- **Relates to:** Direct conceptual bridge between the [[Capability Security|object-capability]] tradition ([[Programming Semantics for Multiprogrammed Computations|Dennis & Van Horn 1966]], [[EROS - A Fast Capability System|EROS]], the E-language line in [[Robust Composition - Towards a Unified Approach to Access Control and Concurrency Control|Miller 2006]]) and the cryptographic-identity tradition (X.509, PGP). SPKI/SDSI explicitly takes the capability stance — *unforgeable name = capability* — and lifts it into a distributed cryptographic setting where the unforgeability comes from the public-key cryptography rather than from memory protection. The Macaroons paper (Birgisson, Politz, Erlingsson, Taly, Vrable & Lentczner 2014) is SPKI/SDSI's most-deployed modern descendant: HMAC-chained authority tokens with attenuation, used in production at Google and elsewhere. Modern decentralised-identity standards — W3C [[Decentralized Identifier|DIDs]], [[Verifiable Credential|Verifiable Credentials]], the Authorization Capabilities (zCaps) work — inherit substantial conceptual machinery from SPKI/SDSI even when they do not cite it directly. Within this vault, SPKI/SDSI is the missing distributed-cryptographic counterpart of the in-process capability work in [[Capability Myths Demolished]] and [[Robust Composition - Towards a Unified Approach to Access Control and Concurrency Control]] — it is what those frameworks *become* when keys cross machine boundaries. The Lowe/[[PKI Layer Cake - Kaminsky Patterson Sassaman]]-style critiques of X.509 PKI are simultaneously arguments *for* SPKI-style local-name systems: parser differentials and the trust-collapse-by-CA-misissuance problem largely vanish when certificates bind authority rather than identity.

## Tags
#capability-security #spki #sdsi #pki #distributed-security #authorisation #foundations
