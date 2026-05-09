# Cap'n Proto: Capability-Secure RPC and Serialization

**Reference:** Varda, K. (2013–present). *Cap'n Proto: Cap'n Proto Is Insanely Fast Data Interchange Format and Capability-Based RPC System*. https://capnproto.org/. (Citation-only — open-source project + RFCs; key design documents: *Cap'n Proto RPC Specification* and the *Three-Party Handoff* design note.) [Open access — RPC spec](https://capnproto.org/rpc.html) · [project home](https://capnproto.org/) · [rpc.capnp source (GitHub)](https://github.com/capnproto/capnproto/blob/master/c%2B%2B/src/capnp/rpc.capnp)

## Summary
Kenton Varda (formerly principal author of Google's Protocol Buffers v2) develops **Cap'n Proto** as the modern engineering realisation of capability-secure RPC. The project has two parts. The **serialisation format** is a zero-copy binary encoding designed so that messages can be read directly out of the wire bytes without parsing — `O(1)` field access, no decode pass, the on-the-wire layout *is* the in-memory layout. This is a substantial improvement over Protocol Buffers, which require parsing into a separate object representation. The **RPC protocol** (Cap'n Proto RPC, conceptually descended from the [[The Heart of Spritely - Distributed Objects and Capability Security|CapTP]] of E and Spritely) carries *capabilities* — references to remote objects that the receiver may invoke — alongside ordinary data. Two design moves make the RPC protocol practically deployable as a capability-secure substrate. **Promise pipelining**: when the client invokes a method that returns a capability, it can immediately invoke methods on the *promised* return value before the original call has completed; the RPC layer collapses the chain into a single round-trip. **Three-party handoff**: when the server returns a capability that points to a *third* party, the client can shortcut subsequent calls directly to the third party rather than continuing to relay through the original server — supporting the rich object-graph topologies natural to capability-secure systems without quadratic relay overhead. Cap'n Proto's RPC protocol is *the* modern realisation of CapTP and the cleanest available substrate for object-capability systems crossing machine boundaries; it underpins Cloudflare Workers' inter-worker capability passing, Sandstorm.io's grain isolation model, and an increasing number of capability-secured agent and microservice systems.

## Key Ideas
- *Zero-copy serialisation*: messages are encoded so that the on-the-wire byte layout *is* the in-memory layout — `O(1)` field access, no parsing pass. Substantial throughput / latency win over Protocol Buffers.
- *Capabilities as first-class wire values*: an RPC parameter or return value can be a *capability* — a reference to a remote object the receiver may invoke. The RPC layer handles capability lifecycle (reference counting across the wire), revocation, and forwarding.
- *Promise pipelining*: when a method returns a capability, the client can invoke methods on the promised return *before* the call completes. The RPC layer batches the dependent calls into the original request; a chain of N pipelined calls becomes one round-trip rather than N. Inherits the [[The Heart of Spritely - Distributed Objects and Capability Security|CapTP]] *promise-pipelining* technique.
- *Three-party handoff*: when client `A` calls server `B` and `B` returns a capability pointing to a *third* party `C`, the RPC layer arranges for `A` to talk directly to `C` for subsequent calls — eliminating the quadratic relay overhead that would arise if every call to the third-party capability had to round-trip through `B`. Crucial for the rich object-graph topologies of capability-secure systems.
- *Reference counting and revocation across the wire*: the RPC layer maintains capability reference counts on both ends; capabilities can be revoked unilaterally by the holder of the underlying object, and revocation propagates correctly even in the presence of promise pipelining and three-party handoff.
- *No security model imposed by the format itself*: Cap'n Proto can be used as a plain serialisation format (without RPC); the capability layer is opt-in. This makes it deployable in heterogeneous environments where some peers participate in the capability protocol and others do not.
- *Production deployment*: Cloudflare Workers, Sandstorm.io, and an increasing number of capability-aware microservice systems use Cap'n Proto's RPC layer in production; it is the *de facto* modern CapTP.

## Connections
- [[Capn Proto RPC]]
- [[Three-Party Handoff]]
- [[CapTP]]
- [[The Heart of Spritely - Distributed Objects and Capability Security]]
- [[Capability Security]]
- [[Robust Composition - Towards a Unified Approach to Access Control and Concurrency Control]]
- [[Distributed Electronic Rights in JavaScript]]
- [[Capability-based Financial Instruments]]
- [[Promise Pipelining]]
- [[Trustworthy Proxies - Virtualizing Objects with Invariants]]
- [[Capability Revocation]]
- [[Capability Bounding]]
- [[Capability Myths Demolished]]
- [[Macaroons]]
- [[SPKI-SDSI]]

## Conceptual Contribution
- **Claim:** Capability-secure RPC can be made fast enough for production microservice deployment by combining zero-copy serialisation (removing the parse pass) with first-class wire-level capabilities (so capability passing is a primitive of the RPC layer, not a layer above it). Two design moves — *promise pipelining* (collapse dependent-call chains into one round-trip) and *three-party handoff* (let `A` talk directly to `C` after `B` returns a `C`-capability) — eliminate the principal performance objections to capability-secure RPC.
- **Mechanism:** Zero-copy binary message format; capability table per RPC connection, with reference counts maintained on both ends; promise-pipelining mechanism collapsing dependent calls; three-party handoff protocol; revocation propagation across the capability graph.
- **Concepts introduced/used:** [[Capn Proto RPC]], [[Three-Party Handoff]], [[Promise Pipelining]] (CapTP heritage), Zero-Copy Serialisation, Capability Reference Counting.
- **Stance:** systems engineering / open-source project + design notes.
- **Relates to:** Direct modern descendant of [[CapTP]] — the capability transport protocol of E (Miller, [[Robust Composition - Towards a Unified Approach to Access Control and Concurrency Control|2006]]) and [[The Heart of Spritely - Distributed Objects and Capability Security|Spritely]] (Lemmer-Webber, Farmer & Sims 2025). Promise pipelining and three-party handoff are not new to Cap'n Proto — they are CapTP's signature techniques — but Cap'n Proto is their first widely-deployed engineering realisation in a format performant enough for general microservice use. Conceptual sibling of [[Macaroons]] and [[SPKI-SDSI]] capability certificates: all three are answers to "how do you do capability security across machine boundaries?" with different trade-offs (Cap'n Proto = stateful RPC; Macaroons = stateless tokens; SPKI = certificate chains). For agent communication, Cap'n Proto's three-party handoff is precisely the mechanism that makes capability-secure delegation between LLM agents practical: agent `A` can grant agent `B` access to a capability backed by service `C`, and `B` can then talk directly to `C` without `A` mediating each call. The Sandstorm.io / Cloudflare Workers deployment patterns are the closest production analogue of what capability-secure multi-agent systems need.

## Tags
#capability-security #captp #capn-proto #rpc #serialisation #varda #spritely-lineage
