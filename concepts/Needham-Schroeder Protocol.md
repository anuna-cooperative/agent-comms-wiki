## Needham-Schroeder Protocol

The 1978 authentication protocol family of Needham & Schroeder. **Symmetric-key version** uses a trusted authentication server holding long-term keys for all principals; basis of Kerberos. **Public-key version** uses three messages and two nonces between the principals directly. Famous as the canonical case-study for cryptographic-protocol verification: Lowe (1995/1996) found a [[Lowe Attack|man-in-the-middle attack]] on the public-key version using FDR model-checking, 17 years after publication, with a one-line fix (include responder's identity in message 2). The story launched the modern protocol-verification field.

## In this vault
- [[Using Encryption for Authentication]]
- [[Lowe Attack]]
- [[BAN Logic]]
- [[Spi Calculus]]
- [[ProVerif]]
- [[Crypto Protocol Verification]]
