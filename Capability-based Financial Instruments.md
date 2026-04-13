# Capability-based Financial Instruments

## Reference

Miller, Mark S.; Morningstar, Chip; Frantz, Bill. "Capability-based Financial Instruments." In *Proceedings of the 4th International Conference on Financial Cryptography (FC 2000)*, Anguilla, BWI, February 20-24, 2000. LNCS 1962, pp. 349-378, Springer, 2001. [URL](https://papers.agoric.com/assets/pdf/papers/capability-based-financial-instruments.pdf)

## Summary

Also called the "Ode" paper (after its original filename `ode.pdf`), this paper bridges three previously disjoint communities: object-oriented programming, capability-based secure operating systems, and financial cryptography. The authors argue that each community has been strong where the others were weak - objects give composition and abstraction, capability OSs give mutually-protected shared platforms for untrusted code, and financial cryptography gives mutually-suspicious multiparty protocols - and that a unified abstraction, the **Granovetter diagram**, captures the core of all three.

The Granovetter diagram (named after sociologist Mark Granovetter's work on how social topology evolves by introduction) shows three objects - Alice, Bob, Carol - where Alice holds references to both Bob and Carol and sends Bob a `foo` message containing her reference to Carol, thereby introducing Bob to Carol. This single operator is at once an object message send, a capability-security introduction (only connectivity begets connectivity), a cryptographic capability-transport step, an SPKI certificate-style authorisation delegation, a multi-player game-theoretic move, and the basic step for transferring a financial bearer right.

The paper presents the E programming language, its cryptographic transport protocol Pluribus (the predecessor of CapTP), and a worked example: a *covered call option* implemented in ~20 lines of E as a smart contract between five mutually-suspicious parties, implemented automatically as a cryptographic protocol. This is arguably the first paper to describe smart contracts in recognisably modern form, and it predates the blockchain era entirely. It is foundational for Agoric and for all later Miller work on eights/erights.

## Key Ideas

- **Granovetter operator**: the unit of object-capability computation - Alice holds refs to Bob and Carol; Alice sends Carol-ref to Bob; Bob now has Carol.
- **Only connectivity begets connectivity**: authority can change only by this three-party introduction step.
- **Six perspectives** on the Granovetter operator: object computation, capability security, cryptographic protocol, public-key infrastructure, multi-player game rule, financial bearer instrument.
- **Smart contracts as object code**: a covered-call option is just an object with references to the underlying asset, the strike-price payment, and its counterparties.
- **Rights = sendable messages**: a right is exercised by sending a message to an object that embodies it; secure transfer of a right = secure transfer of a reference.
- **Pluribus**: E's cryptographic capability transport, turning local object semantics into distributed multiparty protocols.
- **Bearer instruments** classified along axes: exclusive/non-exclusive, fungible/specific, exercisable, assayable.

## Connections

- [[The Heart of Spritely - Distributed Objects and Capability Security]] - Spritely's goblin/ocapN inherits the same Granovetter-diagram semantics.
- [[E Language]] - this paper is the first major presentation of E to the financial-crypto world.
- [[CapTP]] - Pluribus here is the direct predecessor of CapTP.
- [[Capability Security]] and [[Object Capability Security]]
- [[Ambient Authority]] - this paper is emphatic that ambient-authority systems cannot express financial rights safely.
- [[Confused Deputy]]
- [[Principle of Least Authority]]
- [[Distributed Security]]
- [[Security Kernel Lambda Calculus]]
- [[A Universal Modular Actor Formalism for Artificial Intelligence]]
- [[Actor Model]]
- [[Vat Model]]
- [[Promise Pipelining]]

## Conceptual Contribution

> The Granovetter operator - "Alice has refs to Bob and Carol; Alice passes Carol to Bob" - is simultaneously the unit of object computation, the unit of capability-security authority change, the unit of cryptographic capability transport, and the unit of secure electronic-rights transfer. Recognising these as one operator lets us implement smart financial contracts as ordinary object code, with cryptographic enforcement generated automatically by a distributed capability language.

## Tags

#capability-security #smart-contracts #financial-cryptography #granovetter #e-language #pluribus #ocap #erights #mark-miller #foundational #distributed-objects #bearer-instruments
