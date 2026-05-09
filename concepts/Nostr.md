# Nostr

"Notes and Other Stuff Transmitted by Relays" — a decentralised protocol for cryptographically signed messages distributed over a mesh of public WebSocket relays, originally designed by `fiatjaf` for censorship-resistant social messaging. Each event carries an Ed25519 (secp256k1 schnorr) signature and a typed `kind`, and any relay can be queried or written to without permission; clients subscribe to filters across multiple relays. The protocol's neutrality on payload semantics makes it a natural transport for agent communication: [[CBCL - Safe Self-Extending Agent Communication]] ships a `cbcl-nostr` transport binding, using Nostr relays for dialect propagation and Lightning Network micropayments for resource accounting.

## In this vault
- [[CBCL - Safe Self-Extending Agent Communication]]
- [[Gossip Protocols]]
