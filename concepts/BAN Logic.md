## BAN Logic

The belief logic of Burrows, Abadi & Needham (1990) for analysing cryptographic authentication protocols. A small modal language with operators `P believes X`, `P sees X`, `P said X`, `P controls X`, `fresh(X)`, `P shares K with Q`. Inference rules (message-meaning, nonce-verification, jurisdiction) propagate beliefs as messages are received and decrypted. Verification proceeds by idealising the protocol, stating initial beliefs, and deriving the goal beliefs (typically: authenticated session-key agreement). The first widely-adopted formal method for protocol analysis; superseded by [[Spi Calculus]] / [[ProVerif]] for rigorous use, but still pedagogically dominant.

## In this vault
- [[A Logic of Authentication]]
- [[Crypto Protocol Verification]]
- [[Spi Calculus]]
- [[Dolev-Yao Model]]
- [[Needham-Schroeder Protocol]]
- [[Mentalistic Semantics]]
