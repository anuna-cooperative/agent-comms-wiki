## Threshold Signature

A signature scheme in which a `(t, n)` threshold of signers must collaborate to produce a single signature that verifies under one shared public key. BLS signatures (Boneh, Lynn & Shacham 2001) are the most widely deployed instance: signature aggregation is non-interactive (sum of group elements) and verification cost is roughly that of a single signature. The cryptographic primitive that makes [[HotStuff]]'s linear communication complexity possible: `2f+1` votes aggregate into a single constant-size [[Quorum Certificate]].

## In this vault
- [[HotStuff]]
- [[Quorum Certificate]]
