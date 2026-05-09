## Lowe Attack

Gavin Lowe's (1995) man-in-the-middle attack on the [[Needham-Schroeder Protocol|Needham-Schroeder public-key authentication protocol]], discovered by formal model-checking with FDR (Lowe 1996, TACAS). A dishonest principal `I` who has been engaged by an honest `A` can interpose himself between `A` and an honest `B`: the second message of the protocol — `{N_A, N_B}_pubA` — does not include `B`'s identity, allowing `I` to forward `B`'s response to `A` and then impersonate `A` to `B`. The fix is to include `B` in the second message. The attack is the canonical worked example for why informal correctness arguments in cryptographic-protocol design are insufficient.

## In this vault
- [[Using Encryption for Authentication]]
- [[Needham-Schroeder Protocol]]
- [[Crypto Protocol Verification]]
- [[BAN Logic]]
- [[Spi Calculus]]
