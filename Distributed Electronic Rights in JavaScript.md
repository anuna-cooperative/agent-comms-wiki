# Distributed Electronic Rights in JavaScript

## Reference

Miller, Mark S.; Van Cutsem, Tom; Tulloh, Bill. "Distributed Electronic Rights in JavaScript." In *Programming Languages and Systems - 22nd European Symposium on Programming (ESOP 2013)*. LNCS 7792, pp. 1-20, Springer, 2013. [URL](https://research.google/pubs/distributed-electronic-rights-in-javascript/)

## Summary

This ESOP 2013 paper reports on the effort to turn JavaScript into the ubiquitous distributed object-capability fabric for smart contracts and *erights* (electronic rights). JavaScript already has ubiquity, a memory-safe object model, and first-class functions with lexical closure; what it lacks, the authors argue, is the three missing ingredients for robustly composing mutually suspicious code across machines: a secure subset, a promise-based distributed object model, and persistent resilience. These are provided respectively by **SES** (Secure EcmaScript, an ocap subset of ES5), the **Q** promise library (distributed-JS with eventual-send `!`), and **NodeKen** (distributed orthogonal persistence on Node.js, built atop the Ken system). Together they form *Dr. SES* - Distributed Resilient Secure EcmaScript.

The paper walks through the whole stack. SES freezes primordials, whitelists globals, and makes `def(obj)` produce *defensively consistent* tamper-proof records. `confine(src, endowments)` safely evaluates untrusted JS with a supplied endowments record, giving first-class mobile-code capability security. The Q library adds `!` (eventual-send) so that `p!getX()` sends a message to whatever `p` will designate when resolved - this is promise pipelining, generalised to remote and failed promises. NodeKen provides "every message ever sent will be delivered in order exactly once," allowing programmers to ignore partition and crash.

The demonstration is a 42-line escrow exchange contract: two mutually suspicious parties wish to swap goods/money via an untrusted escrow agent, and the Dr. SES code expresses the contract clearly and executes safely across distributed JS event loops. This paper is the crucial bridge between Miller's E tradition and the modern web - its ideas flow directly into the TC39 proxies proposal, ECMAScript frozen realms, hardened-JS / LavaMoat, Agoric's Zoe, and the MetaMask / secure-ECMAScript supply-chain work.

## Key Ideas

- **Dr. SES** = SES + Q + NodeKen: secure ocap JS + distributed promises + orthogonal persistence.
- **SES**: ocap subset of ES5 - frozen primordials, whitelisted globals, powerless-by-default imports, `def()` for defensive consistency, `confine()` for safe mobile code.
- **Eventual-send `!`**: `target!method(args)` is a non-blocking message-send returning a promise; distribution-transparent.
- **Promise pipelining** as the basic async composition: chained `.then` on a remote promise reduces round-trips.
- **Defensively consistent objects**: maintain invariants despite malicious clients.
- **WeakMap for rights amplification**: identity-keyed tables let a facet holder recover the full object.
- **Escrow exchange in 42 lines**: demonstrates that non-trivial smart contracts become pedagogically small under the right fabric.
- **NodeKen / Ken**: survives crashes and partitions by orthogonal checkpointing, so distributed programmers can reason as if messages were reliable.

## Connections

- [[The Heart of Spritely - Distributed Objects and Capability Security]] - Spritely's ocapN and Goblins are the Guile-side reincarnation of Dr. SES principles.
- [[E Language]] - Dr. SES is E's design translated into JavaScript.
- [[CapTP]] - Q's eventual-send over the wire is a CapTP-spirit protocol.
- [[Capability Security]], [[Object Capability Security]]
- [[Ambient Authority]] - SES's frozen-globals / powerless-imports directly attacks ambient authority in JS.
- [[Confused Deputy]] - `confine()` with explicit endowments is an anti-confused-deputy idiom.
- [[Principle of Least Authority]] - endowments are POLA made concrete.
- [[Distributed Security]]
- [[Security Kernel Lambda Calculus]]
- [[A Universal Modular Actor Formalism for Artificial Intelligence]]
- [[Actor Model]]
- [[Vat Model]] - each JS event loop is a vat.
- [[Promise Pipelining]] - Q is the mass-market pipelining library.

## Conceptual Contribution

> JavaScript can be made into a distributed object-capability fabric for smart contracts by layering three disciplines on top of ES5: SES (an ocap subset that freezes ambient authority away), Q (eventual-send promises with pipelining), and NodeKen (orthogonal persistence for exactly-once messaging). In this fabric, a 42-line program can express a secure escrow exchange between mutually suspicious parties - and the language's existing ubiquity does the rest.

## Tags

#capability-security #ocap #javascript #ses #dr-ses #smart-contracts #promise-pipelining #q-library #nodeken #mark-miller #van-cutsem #ecmascript #esop-2013 #erights #distributed-objects
