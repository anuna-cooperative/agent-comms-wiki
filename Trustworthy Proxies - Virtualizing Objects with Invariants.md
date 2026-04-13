# Trustworthy Proxies: Virtualizing Objects with Invariants

## Reference

Van Cutsem, Tom; Miller, Mark S. "Trustworthy Proxies: Virtualizing Objects with Invariants." In *Proceedings of the 27th European Conference on Object-Oriented Programming (ECOOP 2013)*, Montpellier, France, July 2013. LNCS 7920, pp. 154-178, Springer. [URL](http://soft.vub.ac.be/Publications/2013/vub-soft-tr-13-03.pdf)

## Summary

This ECOOP paper is the design rationale for the Proxy API that became standard in ECMAScript 6. Proxies are wrapper objects that virtualise an interface by intercepting all operations via trap functions - a technique essential for membranes, revocable references, access-control wrappers, profilers, taint tracking, higher-order contracts, and lazy/remote object references. The problem the paper addresses: in a language that also has *language invariants* (e.g., ES5's non-extensibility and non-configurability - "frozen" objects), can a proxy faithfully virtualise an object that has such invariants without giving up on the language's guarantee that those invariants hold?

The authors formalise the tension. A "universal, monotonic" language invariant (such as `Object.isFrozen(x) ⇒ x.p consistently designates the same value forever`) is what lets developers, compilers, and security reviewers *locally* reason about objects in a dynamic language. A naive proxy API breaks this: a proxy could return different values each time for a property of a target that is frozen, defeating the invariant. The paper's key contribution is the design of a Proxy API in which **proxies refer directly to a target object**, and the proxy machinery **verifies invariants after each trap call**, raising a `TypeError` if a trap would violate a target's invariant. This is called *invariant enforcement*. With it, the language-level frozen-object guarantee holds for proxies too, so clients can still blindly trust `Object.isFrozen`.

The paper introduces a formal calculus, λ_TP (lambda-TP), an extension of the lambda calculus with proxies and invariant enforcement, and uses it to prove that invariants are preserved. It then demonstrates several important ocap-flavoured access-control abstractions built on trustworthy proxies: revocable membrane references, read-only views, and contract wrappers. This design is foundational to the secure-EcmaScript / hardened-JS / Agoric-SES story, and is the plumbing beneath `Object.freeze`-based ocap disciplines in modern JS - including MetaMask's LavaMoat, Endo, and the Spritely-adjacent JavaScript tooling. It is the companion paper to *Distributed Electronic Rights in JavaScript* (ESOP 2013).

## Key Ideas

- **Proxies** = trap-based virtualisation; handlers intercept `get`, `set`, `has`, `delete`, etc.
- **Language invariants**: universal, monotonic properties of objects (non-extensibility, non-configurability, frozen) that clients and compilers rely on.
- **The trust problem**: naive proxies can claim to wrap a frozen target yet return inconsistent values; `isFrozen` would have to return `false` for all proxies, losing transparency.
- **Invariant enforcement**: proxy holds a direct reference to its target; after each trap, the runtime checks that the returned value is consistent with the target's invariants; inconsistency throws.
- **λ_TP calculus**: formal model of proxies + invariant enforcement in the lambda calculus.
- **Membranes**: with trustworthy proxies, one can build revocable membranes that transitively wrap all outgoing references and revoke the whole object subgraph atomically.
- **Foundational for SES/hardened-JS**: without trustworthy proxies, freezing is not sufficient to ground ocap claims across wrapper boundaries.
- **This design became ES6 Proxies** and the modern JS reflection API.

## Connections

- [[The Heart of Spritely - Distributed Objects and Capability Security]]
- [[E Language]] - membrane / facet patterns come straight from the E tradition.
- [[CapTP]] - remote object references across vats are naturally implemented as trustworthy proxies.
- [[Capability Security]], [[Object Capability Security]]
- [[Ambient Authority]] - membranes built on proxies are the main device for stripping ambient authority from mobile code.
- [[Confused Deputy]] - read-only views and attenuated proxies prevent confused-deputy scenarios.
- [[Principle of Least Authority]] - attenuated proxies *are* POLA at the reference level.
- [[Distributed Security]]
- [[Security Kernel Lambda Calculus]] - λ_TP is a close cousin, also a lambda calculus for ocap reasoning.
- [[Capability Revocation]] - revocable membranes are the definitive technique, enabled by this API.
- [[Promise Pipelining]] - remote promises in JS are implemented on top of proxy-like handlers.

## Conceptual Contribution

> A proxy API can be made *trustworthy* - able to virtualise objects that carry language-enforced invariants without letting the invariants be broken - if proxies hold direct references to their targets and the runtime verifies, after every trap, that the trap's behaviour is consistent with the target's invariants. This single design decision turns proxies from a mere interposition hack into a sound foundation for membranes, revocable references, contracts, and attenuated capabilities in JavaScript.

## Tags

#capability-security #proxies #javascript #ecmascript-6 #membranes #invariants #ecoop-2013 #van-cutsem #mark-miller #ocap #lambda-calculus #revocation #hardened-js
