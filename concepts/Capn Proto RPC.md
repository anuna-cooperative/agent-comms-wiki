## Cap'n Proto RPC

Kenton Varda's modern realisation of [[CapTP|capability-transport-protocol]] design — capability-secure RPC built on top of [[Capn Proto|Cap'n Proto]]'s zero-copy serialisation. Carries capabilities as first-class wire values; supports [[Promise Pipelining|promise pipelining]] (collapse dependent-call chains into one round-trip) and [[Three-Party Handoff|three-party handoff]] (let the client talk directly to a third-party capability after introduction). The most-deployed modern descendant of E's CapTP.

## In this vault
- [[Capn Proto]]
- [[CapTP]]
- [[Three-Party Handoff]]
- [[Promise Pipelining]]
- [[Capability Security]]
