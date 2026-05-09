# Decentralized Identifiers (DIDs) v1.0 + Verifiable Credentials Data Model 1.1

**Reference:** Sporny, M., Longley, D., Sabadello, M., Reed, D., Steele, O. & Allen, C. (2022). *Decentralized Identifiers (DIDs) v1.0: Core architecture, data model, and representations*. W3C Recommendation, 19 July 2022. Companion: Sporny, M., Noble, G., Longley, D., Burnett, D. C., Zundel, B. & den Hartog, K. (2022). *Verifiable Credentials Data Model v1.1*. W3C Recommendation, 3 March 2022. (Citation-only — W3C specifications.) [Open access — DID Core v1.0](https://www.w3.org/TR/did-core/) · [Verifiable Credentials Data Model 1.1](https://www.w3.org/TR/vc-data-model/) · [DID Method Registry](https://www.w3.org/TR/did-spec-registries/) · [DIDComm v2 (DIF)](https://identity.foundation/didcomm-messaging/spec/)

## Summary
The W3C **Decentralized Identifiers** (DID) and **Verifiable Credentials** (VC) specifications standardise an identity infrastructure designed to be independent of any centralised registry, identity provider, or certificate authority. A **DID** is a globally unique URI of the form `did:method:identifier` — for example `did:key:z6Mk...` (a key-based DID), `did:web:example.com:alice` (a DNS-anchored DID), `did:ion:...` (a Bitcoin-anchored DID via Sidetree). The portion before the colon (`method`) names a *DID method* — an algorithm for resolving the DID to a *DID document* containing public keys, service endpoints, and authentication mechanisms. DID methods can be registry-free (the DID itself encodes the public key), DNS-anchored, blockchain-anchored, or web-anchored; over 100 methods exist. **Verifiable Credentials** are signed assertions — JSON-LD or JWT documents — issued by one DID-identified party (the *issuer*) about another DID-identified party (the *subject*), and presented to a third party (the *verifier*) via a *verifiable presentation*. The data model supports selective disclosure (revealing only some claims via BBS+ signatures or zk-SNARK predicates), zero-knowledge proofs of possession, and revocation via status lists. Together DIDs and VCs supply a complete decentralised identity stack: principals control their own identifiers (DIDs), accumulate signed credentials from trusted issuers (VCs), and present subsets to verifiers as needed. The architecture is the modern realisation of substantial machinery from [[SPKI-SDSI|SPKI/SDSI]] (local namespaces, authority-not-identity, attenuable delegation) and the PGP web-of-trust (peer-issued credentials), repackaged as W3C standards with first-class support for selective disclosure and zero-knowledge predicates. For agent communication, DIDs are the emerging standard for *agent identity* across ecosystems (DIDComm, Hyperledger Aries, [[Agent-to-Agent Protocol|A2A]] agent cards) and VCs supply the corresponding mechanism for cross-platform agent-trust assertions.

## Key Ideas
- *DID as a self-sovereign URI*: `did:method:identifier` where `method` names a resolution algorithm; the identifier need not be assigned by any central authority. Over 100 DID methods are registered, ranging from registry-free (`did:key`, the DID *is* the public key) to blockchain-anchored (`did:ion`, `did:ethr`, `did:cheqd`) to DNS-anchored (`did:web`).
- *DID document*: the resolution result — a JSON-LD or JSON-encoded structure containing `verificationMethod` (public keys for various purposes), `authentication` (which keys can authenticate as the DID subject), `assertionMethod`, `keyAgreement`, `capabilityDelegation`, `capabilityInvocation`, and `service` endpoints (where to find services controlled by the DID subject).
- *Verifiable Credentials data model*: a signed JSON-LD or JWT document with `issuer`, `credentialSubject`, `issuanceDate`, `expirationDate`, claims, and proof. Supports selective disclosure (BBS+) and zk-SNARK predicates for privacy-preserving credentials.
- *Verifiable Presentations*: a holder packages a subset of held VCs into a presentation, possibly with selective disclosure, and presents it to a verifier with a proof of possession (anchored to a key in the holder's DID document).
- *Capability-style delegation*: the `capabilityDelegation` and `capabilityInvocation` verification relations in DID documents support [[SPKI-SDSI]]-style authority-not-identity authorisation; the related W3C Authorization Capabilities (zCaps) specification gives a full SPKI-flavoured capability layer.
- *Decoupling identity from any single registry*: DIDs are deliberately designed to support migration between methods (a `did:web` can be re-rooted as `did:ion`), revocation via status-list credentials, and rotation of keys without changing the DID itself.
- *DIDComm*: the messaging protocol for DID-identified agents — JSON-LD over HTTP/WebSocket/Bluetooth, with end-to-end encryption between DID-controlled keys, supports both routing through mediators and direct connections. The standard transport for [[Agent-to-Agent Protocol|A2A]]-style agent interoperability.

## Connections
- [[Decentralized Identifier]]
- [[Verifiable Credential]]
- [[DID Method]]
- [[DID Document]]
- [[Verifiable Presentation]]
- [[DIDComm]]
- [[SPKI]]
- [[SDSI]]
- [[SPKI-SDSI]]
- [[Capability Certificate]]
- [[Capability Security]]
- [[Macaroons]]
- [[Certificate Authorities]]
- [[Agent-to-Agent Protocol]]
- [[Agent Network Protocol]]
- [[Agent Cards]]
- [[Linked Local Names]]
- [[IPFS Content-Addressed Versioned P2P File System]]

## Conceptual Contribution
- **Claim:** A modern identity infrastructure should let principals control their own identifiers (DIDs), accumulate signed credentials from trusted issuers (VCs), and present subsets selectively to verifiers — independent of any centralised identity provider, registry, or certificate authority. Identity, authority, and credential issuance should be decomposable, attenuable, and privacy-respecting.
- **Mechanism:** DID URI scheme `did:method:identifier` with method-specific resolution to a DID document; DID document with multiple keys per verification relation (authentication / assertion / capability delegation / etc.); Verifiable Credential / Verifiable Presentation data model with selective disclosure and zero-knowledge proof support; DIDComm messaging for inter-DID communication.
- **Concepts introduced/used:** [[Decentralized Identifier]], [[Verifiable Credential]], [[DID Method]], [[DID Document]], [[Verifiable Presentation]], [[DIDComm]], Self-Sovereign Identity.
- **Stance:** W3C Recommendation; standardisation outcome of two decades of decentralised-identity research.
- **Relates to:** Modern repackaging of substantial machinery from [[SPKI-SDSI]] (local namespaces → DID methods, authority-not-identity → VC capability claims, attenuable delegation → zCap chains) plus the PGP web-of-trust (peer-issued credentials) — with first-class support for selective disclosure and zero-knowledge predicates. The W3C Authorization Capabilities (zCaps) work is the explicit SPKI-style capability layer on top of DIDs/VCs; together they form a complete capability-based decentralised security infrastructure. In the agent-communication setting, DIDs are emerging as the standard for *agent identity* across heterogeneous LLM-agent ecosystems: [[Agent-to-Agent Protocol|A2A]] agent cards reference DIDs, [[Agent Network Protocol|ANP]] uses DIDs for discovery, Hyperledger Aries / DIDComm is the established interop substrate, and several MAS research platforms have switched from custom identifier schemes to DIDs. Where [[Agent Cards]] supply *what* an agent claims about itself, DIDs and VCs supply *who issued the claim, when, with what authority, and how to verify it* — closing the gap between LLM-agent advertising and verifiable trust assertions. The conceptual link to [[IPFS Content-Addressed Versioned P2P File System|IPFS]]-style content-addressing is direct: DID documents and VCs can be content-addressed, anchored to immutable records, and resolved through P2P infrastructure independent of any centralised resolver.

## Tags
#decentralized-identity #did #verifiable-credentials #w3c #self-sovereign-identity #capability-security #foundations
