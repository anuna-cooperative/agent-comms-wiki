## Linked Local Names

[[SDSI]]'s mechanism for distributed naming without a global registry: a name like `K_alice's bob's friends` is resolved by chaining lookups across local namespaces — first `K_alice` looks up "bob" in her namespace and finds `K_bob`, then `K_bob` looks up "friends" in his namespace, and so on. No central authority needed. The conceptual ancestor of [[Decentralized Identifier|DID]]-style namespacing in modern decentralised-identity standards.

## In this vault
- [[SDSI]]
- [[SPKI-SDSI]]
- [[Decentralized Identifier]]
