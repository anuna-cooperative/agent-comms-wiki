# x401: HTTP Proof Requirement Protocol

**Reference:** Buchner, D. (Proof) & Agarwal, B. (Circle), eds. (2025). *x401: HTTP Proof Requirement Protocol*, v0.2.0 (Draft). Reviewers from Okta, OpenAI, Visa & MATTR. [Latest spec](https://x401.proof.com/spec/latest/).

## Summary
**x401** is an HTTP-native protocol that lets a protected resource demand a *cryptographic proof of credentials* — proof of personhood, residency, membership, or organisational standing — before granting access, without bolting onto the traditional HTTP authentication schemes. Where an ordinary server answers an unauthorised request with `401 Unauthorized` plus a `WWW-Authenticate` challenge, an x401 verifier answers with a route-scoped `PROOF-REQUIRED` header carrying a base64url-encoded *proof request* describing exactly which credential claims the route needs. The requester — a browser, wallet, or autonomous agent — obtains a matching [[Verifiable Presentation]] and retries the route with it, optionally trading a one-time proof for a reusable access token.

The protocol is deliberately a thin coordination layer rather than a new credential format: it composes with the **W3C Digital Credentials API**, **OpenID4VP**, and **OAuth 2.0** instead of replacing them, so the actual presentation can be invoked natively by the user agent, relayed to a remote wallet, or generated remotely and returned by reference. x401 also draws a sharp line between *proof of credentials* and *payment*: it keeps `402 Payment Required` for the money case and explicitly refuses to overload credential proofs as payment proofs, leaving it complementary to agent payment rails (e.g. the x402 payment scheme and [[Agent Payments Protocol|AP2]]) rather than competing with them. The editing organisations (Proof, Circle) and reviewer roster (Okta, OpenAI, Visa, MATTR) place it squarely in the emerging stack for letting AI agents transact and authenticate across the open web.

## Key Ideas
- **Route-scoped proof requirements:** a resource declares, per route, which credential claims it requires — the proof requirement travels with the HTTP response, not out of band.
- **Four protocol legs:** (1) *Proof Declaration* — verifier returns a `PROOF-REQUIRED` header with a base64url-encoded request; (2) *Presentation Acquisition* — the agent obtains a presentation natively, via wallet relay, or by remote generation; (3) *Proof Delivery* — the agent retries the route with the presentation inline or by reference; (4) *Token Exchange* — optionally swap a verified proof for a reusable access token.
- **Composes, doesn't reinvent:** built on the W3C Digital Credentials API, OpenID4VP, and OAuth 2.0; the credential cryptography lives in [[Verifiable Credential|VCs]]/[[Verifiable Presentation|VPs]] and [[Decentralized Identifier|DIDs]], not in x401 itself.
- **Agent-native acquisition paths:** an agent can invoke the credential request directly, relay it to a remote wallet, or accept a remotely generated result — making the protocol usable by headless autonomous agents, not just interactive browsers.
- **Strict separation from payment:** `402 Payment Required` stays the payment signal; x401 credentials are never overloaded as payment proofs, keeping authorisation-by-credential and payment as orthogonal concerns.
- **Draft, multi-stakeholder:** v0.2.0 Draft, edited by Proof and Circle with reviewers from identity (Okta, MATTR), AI (OpenAI), and payments (Visa).

## Connections
- [[Decentralized Identifiers]]
- [[Verifiable Presentation]]
- [[Verifiable Credential]]
- [[Decentralized Identifier]]
- [[DID Document]]
- [[SPKI-SDSI]]
- [[Capability Security]]
- [[Authentication Protocol]]
- [[Agent Payments Protocol]]
- [[Agent Infrastructure]]
- [[Agent-to-Agent Protocol]]
- [[Model Context Protocol]]
- [[OpenID4VP]]
- [[OAuth 2.0]]
- [[W3C Digital Credentials API]]
- [[HTTP 402 Payment Required]]

## Conceptual Contribution
- **Claim:** Access control on the open web should be expressible as a per-route *proof requirement* — "show me a credential proving X" — declared in-band over HTTP, so that any client, including an autonomous agent, can discover the requirement, fetch a matching presentation, and proceed, all without coupling credential proof to payment or to a single identity provider.
- **Mechanism:** A four-leg HTTP exchange (Proof Declaration via a `PROOF-REQUIRED` header carrying a base64url proof request → Presentation Acquisition → Proof Delivery, inline or by reference → optional Token Exchange) layered over the W3C Digital Credentials API, OpenID4VP, and OAuth 2.0, deliberately disjoint from the `402 Payment Required` payment path.
- **Concepts introduced/used:** [[Verifiable Presentation]], [[Verifiable Credential]], [[Decentralized Identifier|DID]], [[OpenID4VP]], [[OAuth 2.0]], [[W3C Digital Credentials API]], [[Agent Infrastructure]]
- **Stance:** specification / protocol design (draft standard)
- **Relates to:** Operationalises the [[Decentralized Identifiers]] credential stack as an HTTP authorisation handshake; sits in the [[Agent Infrastructure]] *attribution* layer alongside [[Model Context Protocol]] and [[Agent-to-Agent Protocol]]; complements the payment side handled by [[Agent Payments Protocol]] and the x402 payment scheme; inherits the authority-not-identity instinct of [[SPKI-SDSI]].

## Tags
#identity #verifiable-credentials #agent-infrastructure #http #protocol #ocap #did
