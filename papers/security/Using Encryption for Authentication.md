# Using Encryption for Authentication in Large Networks of Computers

**Reference:** Needham, R. M. & Schroeder, M. D. (1978). *Using Encryption for Authentication in Large Networks of Computers*. Communications of the ACM, 21(12), pp. 993–999. (With critical follow-up: Lowe, G. (1995). *An Attack on the Needham–Schroeder Public-Key Authentication Protocol*. Information Processing Letters 56(3), pp. 131–133, and Lowe (1996) *Breaking and Fixing the Needham–Schroeder Public-Key Protocol Using FDR*, TACAS '96.) [ACM DOI](https://doi.org/10.1145/359657.359659) · [Open access PDF (UT Austin)](https://www.cs.utexas.edu/~mok/cs386C/papers/NeedhamSchroeder78.pdf) · [Lowe attack (1995) DOI](https://doi.org/10.1016/0020-0190(95)00144-2)

## Summary
Needham and Schroeder describe two foundational authentication protocols for large untrusted networks: a *symmetric-key* protocol relying on a trusted authentication server (which became the basis of Kerberos), and a *public-key* protocol that establishes mutual authentication and a shared session-secret between two principals using only public-key encryption. The symmetric protocol uses nonces to prevent replay and a server `S` that knows long-term keys for every principal; messages 1–3 obtain a fresh session key `K_AB` from `S`, message 4 challenges `B` with a nonce, message 5 returns the nonce decremented as proof of session-key possession. The public-key protocol is shorter — three messages exchanging two nonces under the partners' public keys, with mutual authentication established by demonstrating the ability to decrypt and return the partner's nonce. The paper became a touchstone of the cryptographic-protocol literature, both for what it got right (the use of nonces, the trusted-third-party authentication server, the layered structure of session establishment) and — famously — for what it got wrong. In 1995 Gavin Lowe found that the public-key protocol is vulnerable to a *man-in-the-middle attack*: a dishonest principal `I` can interpose himself between `A` and `B`, convincing `B` that `A` initiated a session with him when in fact `A` initiated a session with `I`. The flaw is invisible in the original informal argument; Lowe found it by formal model-checking with FDR, and the fix (include `B`'s identity in the second message) is a one-line change. The Needham-Schroeder–Lowe story became the canonical case-study for *why formal protocol verification matters*: a protocol that "looked correct" for 17 years and was widely cited contained a fundamental flaw that was systematically discovered the moment a formal tool was applied.

## Key Ideas
- *Trusted authentication server (Kerberos lineage)*: in the symmetric-key protocol, an online server `S` shares a long-term key with every principal and brokers session-key establishment between any pair. This pattern became the architectural foundation of Kerberos and (with adjustments) of every realistic enterprise SSO system.
- *Nonces for freshness*: each principal includes a nonce in their request so that replay of an old session-key message can be detected. The *use* of nonces is correct; their interpretation in BAN-style analysis is more subtle than the original informal argument suggested.
- *Public-key symmetric-style authentication*: the public-key protocol shows authentication can be done without an online server given only certificates of long-term public keys — three messages, two nonces, mutual authentication.
- *The Lowe attack*: in the original public-key protocol, message 2 from `B` to `A` returns `{N_A, N_B}_pubA` (A's nonce together with B's nonce, encrypted with A's public key). If `A` is talking to a dishonest `I`, then `I` can re-encrypt and forward to `B`, who responds to `I` thinking he is responding to `A` — and `I` can pose as `A` to `B` for the duration of the session. The attack is a strict man-in-the-middle: `A` and `B` reach inconsistent beliefs about who they are talking to.
- *The Lowe fix*: include `B`'s identity in message 2 — `{N_A, N_B, B}_pubA` — so that `A` can verify the message was intended *for him from B specifically* and the substitution attack is detected.
- *Methodological lesson*: informal correctness arguments — even by careful authors over careful protocols — are unreliable for cryptographic protocols. Formal verification ([[BAN Logic]], [[Spi Calculus]], [[ProVerif]], FDR) is necessary, not optional.

## Connections
- [[Needham-Schroeder Protocol]]
- [[Lowe Attack]]
- [[Replay Attack]]
- [[BAN Logic]]
- [[A Logic of Authentication]]
- [[Spi Calculus]]
- [[ProVerif]]
- [[Crypto Protocol Verification]]
- [[Dolev-Yao Model]]
- [[PKI Layer Cake - Kaminsky Patterson Sassaman]]
- [[Authentication Protocol]]
- [[Nonce]]
- [[Kerberos]]

## Conceptual Contribution
- **Claim:** Cryptographic authentication in large networks can be built from a small set of primitives — long-term keys, nonces for freshness, a trusted third party (or public-key infrastructure) — combined into protocols of three to five messages. *(And the now-canonical second claim, supplied by Lowe 1995/1996: even careful informal arguments for such protocols cannot be trusted; formal verification is required.)*
- **Mechanism:** Two protocol designs — symmetric-key with online server, public-key with PKI — using nonces for freshness and explicit role identifiers. Lowe's contribution: model-checking the public-key protocol with FDR, finding the man-in-the-middle attack, and supplying the one-message fix.
- **Concepts introduced/used:** [[Needham-Schroeder Protocol]], [[Nonce]], [[Replay Attack]], Trusted Third Party, Public-Key Authentication, [[Lowe Attack]], Man-in-the-Middle Attack.
- **Stance:** foundational protocol design + canonical worked example for protocol verification.
- **Relates to:** Direct ancestor of Kerberos and of every enterprise authentication-and-key-distribution system. Provides the *worked example* that motivates [[BAN Logic]] (Burrows, Abadi & Needham 1990 — Needham himself); the original protocol's analysis under BAN already revealed weaknesses missed in the 1978 informal argument. Lowe's 1995/96 attack and FDR analysis launched the *formal-methods-for-protocols* programme that produced the [[Spi Calculus]] (Abadi & Gordon 1997) and the symbolic provers [[ProVerif]] / Tamarin. The Lowe attack is structurally a [[Parser Differential|parser-differential]] attack at the protocol level — `A` and `B` parse the protocol-state differently, with `I` exploiting the difference — directly analogous to the [[PKI Layer Cake - Kaminsky Patterson Sassaman]] attack on certificate parsing in PKIs. Within the agent-communication literature, NS is the canonical example proving that *informal* speech-act-based protocol correctness arguments — including most ACL conformance arguments — are insufficient: a [[KQML]] or [[FIPA-ACL]] interaction protocol with the same structural flaw would have the same vulnerability, and ACL conformance methodologies need the same kind of formal underpinning.

## Tags
#crypto-protocols #authentication #needham #schroeder #lowe #replay-attack #security #foundations
