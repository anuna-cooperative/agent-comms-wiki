## SDSI

**Simple Distributed Security Infrastructure** (Rivest & Lampson 1996), unified with SPKI in RFC 2693. SDSI's central innovation is **local namespaces** with [[Linked Local Names]]: each principal has its own namespace, and names like `K_alice's bob's friends` resolve through chains across local namespaces — no global registry. Combined with SPKI authority certificates, it gives a complete distributed access-control infrastructure free of mandatory global identity.

## In this vault
- [[SPKI-SDSI]]
- [[SPKI]]
- [[Linked Local Names]]
- [[Capability Certificate]]
