## Three-Party Handoff

A [[CapTP]] technique deployed in [[Capn Proto RPC|Cap'n Proto RPC]]: when client `A` calls server `B` and `B` returns a capability pointing to a *third* party `C`, the RPC layer arranges for `A` to talk directly to `C` for subsequent calls — eliminating the quadratic relay overhead that would arise if every call to the third-party capability had to round-trip through `B`. Crucial for the rich object-graph topologies natural to capability-secure systems.

## In this vault
- [[Capn Proto]]
- [[Capn Proto RPC]]
- [[CapTP]]
- [[Promise Pipelining]]
