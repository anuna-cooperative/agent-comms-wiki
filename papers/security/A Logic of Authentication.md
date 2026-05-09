# A Logic of Authentication

**Reference:** Burrows, M., Abadi, M. & Needham, R. (1990). *A Logic of Authentication*. ACM Transactions on Computer Systems, 8(1), pp. 18–36. (Earlier DEC SRC Research Report 39, 1989.) [ACM DOI](https://doi.org/10.1145/77648.77649) · [Open access PDF (Stanford)](https://web.stanford.edu/class/cs259/WWW04/papers/ban1990.pdf)

## Summary
Burrows, Abadi and Needham introduce **BAN logic** — a *belief logic* for reasoning about the authentication properties of cryptographic protocols. The setting is the symbolic [[Dolev-Yao Model|Dolev-Yao]] world: principals communicate by exchanging cryptographic messages over an untrusted network. BAN provides a small modal language whose primary modality is `P believes X` ("principal P believes X") together with auxiliary operators (`P sees X`, `P said X`, `P controls X`, `fresh(X)`, `P has K`, `K is shared between P and Q`). Its inference rules (the *message-meaning rule*, *nonce-verification rule*, *jurisdiction rule*, *freshness rule*, etc.) capture how beliefs propagate as messages are received and decrypted — for instance, if `P` believes `K` is a key shared with `Q` and `P` sees `{X}_K` and `P` believes `X` is fresh, then `P` may conclude that `Q` recently sent `X`. Verification proceeds by *idealising* the protocol (replacing each message by the abstract belief-statement it is intended to convey), making explicit assumptions about initial beliefs, and then deriving the goal beliefs (typically, that the principals share a fresh authenticated session key). The paper analyses Kerberos, the original [[Needham-Schroeder Protocol|Needham-Schroeder]] protocol, the Andrew Secure RPC handshake, and several others — finding errors and clarifying intended semantics. BAN was a watershed: the first widely-adopted formal method for authentication-protocol analysis. Its limitations (no explicit attacker model, the idealisation step is informal, soundness is debatable for unintended uses) drove the development of more rigorous frameworks — notably the [[Spi Calculus]] (process-calculus equivalence-based) and the symbolic provers [[ProVerif]] / Tamarin — but the belief-logic style remains in widespread teaching use as the most intuitive entry to protocol verification.

## Key Ideas
- *Belief modalities*: `P |≡ X` (P believes X), `P ⊲ X` (P sees / receives X), `P |~ X` (P once said X), `P ⇒ X` (P has jurisdiction over X — i.e. is an authority on it).
- *Cryptographic primitives appear in formulas*: `{X}_K` (X encrypted with K), `<X>_Y` (X with secret Y), `(X, Y)` (concatenation), with associated extraction rules.
- *Inference rules as belief-derivation*: e.g. *message-meaning* — if `P` believes `K` is shared with `Q` and sees `{X}_K`, then `P` believes `Q` once said `X`. *Nonce-verification* — if `P` believes `Q` once said `X` and `P` believes `X` is fresh, then `P` believes `Q` currently believes `X`. *Jurisdiction* — if `P` believes `Q` controls `X` and `P` believes `Q` believes `X`, then `P` believes `X`.
- *Idealisation*: each protocol message is rewritten into an abstract form that makes its intended belief-meaning explicit (typically, the protocol designer has to do this — and the soundness of the analysis depends on the idealisation being faithful).
- *Goal beliefs*: an authentication protocol is correct (in BAN) iff the participants reach the intended *mutual* beliefs about a fresh session key (`P |≡ P ↔K Q`, `Q |≡ P ↔K Q`, often with belief-about-belief: `P |≡ Q |≡ P ↔K Q`).
- *Found bugs in real protocols*: BAN-style analysis of Needham-Schroeder shared-key protocol revealed that one party could not prove freshness of a session key — the bug Lowe later exploited symbolically.

## Connections
- [[BAN Logic]]
- [[Crypto Protocol Verification]]
- [[Dolev-Yao Model]]
- [[Spi Calculus]]
- [[Needham-Schroeder Protocol]]
- [[ProVerif]]
- [[Mentalistic Semantics]]
- [[Belief]]
- [[Speech Act Theory]]
- [[Knowledge and Common Knowledge in a Distributed Environment]]
- [[Verifiable Semantics for ACLs]]
- [[ACL Rethinking Principles]]

## Conceptual Contribution
- **Claim:** Authentication properties of cryptographic protocols can be derived in a small modal *belief logic* whose inference rules capture how beliefs propagate when messages are received and decrypted; verifying a protocol becomes (i) idealising it as a sequence of abstract belief-statements, (ii) stating initial beliefs, and (iii) deriving the goal beliefs. This is rigorous enough to find real bugs in deployed protocols.
- **Mechanism:** Modal language with believes / sees / said / controls / fresh / shares-key operators; ~20 inference rules covering message-meaning, nonce-verification, jurisdiction, freshness, and decomposition; idealisation step from concrete protocol messages to belief-statements; standard goal beliefs for authentication and key establishment.
- **Concepts introduced/used:** [[BAN Logic]], Belief Modality, Idealisation (of protocols), Nonce-Verification Rule, Jurisdiction Rule, [[Crypto Protocol Verification]], [[Mentalistic Semantics]] (in the cryptographic setting).
- **Stance:** foundational technical paper — the first widely-adopted formal method for cryptographic-protocol analysis.
- **Relates to:** Conceptually parallel to the [[Mentalistic Semantics|mentalistic-semantics]] family in the ACL literature ([[KQML as an Agent Communication Language|KQML]], [[FIPA-ACL]]) — both treat communication as belief-update under explicit modal operators. BAN is *exactly* what one gets if one specialises mentalistic ACL semantics to cryptographic-protocol exchanges. The critique that struck mentalistic ACLs ([[ACL Rethinking Principles|Singh's]] argument that beliefs cannot be observed by third parties) hits BAN in the same way: the idealisation step is informal, and "soundness" presupposes the very mental-state assumptions one cannot verify externally. The [[Spi Calculus]] (Abadi & Gordon 1997) is BAN's process-calculus counterpoint — equivalence-based rather than belief-based, with the attacker built in as an arbitrary context. The Lowe attack on Needham-Schroeder, derivable from a careful BAN analysis but missed by the original 1978 informal argument, is the canonical worked example demonstrating why formal protocol verification matters and why even rigorous methods need more rigorous successors. BAN's belief modalities also share semantic ground with [[Knowledge and Common Knowledge in a Distributed Environment|Halpern & Moses 1990]] — both apply epistemic logic to distributed/multi-agent systems, with BAN specialising to authentication and Halpern–Moses staying general.

## Tags
#crypto-protocol-verification #ban-logic #belief-logic #burrows #abadi #needham #security #foundations
