# Compliance Checking in the PolicyMaker Trust Management System

**Reference:** Matt Blaze, Joan Feigenbaum & Martin Strauss (1998). *Compliance Checking in the PolicyMaker Trust Management System*. Financial Cryptography '98, LNCS 1465. [Open access](https://www.comp.nus.edu.sg/~cs6203/guidelines/topic7/policymaker-compliance-checking.pdf)

## Summary

PolicyMaker treats trust management as a proof problem: given a request, a local policy, and signed credentials, determine whether those assertions prove that the request is authorized. Policy and credentials are programs supplied by independent principals; the compliance checker repeatedly invokes them with accumulated assertions until it derives acceptance or reaches a fixed point.

The paper's central result is a warning about expressiveness. Compliance checking is undecidable for unrestricted assertion programs and remains NP-hard under substantial restrictions. The authors therefore identify boundedness conditions under which their checker terminates and give algorithms whose behavior is robust even when some supplied assertions are malformed or adversarial. Examples including certification paths and multi-approver banking policies show why authorization is richer than identity verification.

## Key Ideas

- **Trust management:** authorization combines local policy with credentials issued across administrative domains.
- **Compliance as proof:** output is yes exactly when assertions establish the requested action.
- **Programmable assertions:** policy and credentials share a general assertion language and evaluation interface.
- **Expressiveness cost:** unrestricted compliance is undecidable; restricted forms can remain NP-hard.
- **Bounded assertions:** local boundedness gives a practical termination condition.
- **Monotonic accumulation:** the checker adds acceptance records rather than retracting them.

## Connections

- [[Security Policy Languages and Enforcement]]
- [[SecPAL - The Role of Abduction in Declarative Authorization Policies]]
- [[SPKI-SDSI]]
- [[Authentication in Distributed Systems - Lampson Abadi Burrows Wobber]]
- [[GUARDTs - Decentralized Access Control for Replicated Data Types]]
- [[ruma-state-res event_auth.rs]]

## Conceptual Contribution

- **Claim:** Distributed authorization should be evaluated as proof from local policy and credentials, but the assertion language must be restricted if compliance is to be decidable and efficient.
- **Mechanism:** Fixed-point compliance checking over policy and credential assertions, with boundedness promises for termination.
- **Concepts introduced/used:** [[PolicyMaker]], [[Trust Management]], [[Compliance Checking]], [[Credential]], [[Local Policy]], [[Bounded Assertion]]
- **Stance:** trust-management semantics and complexity analysis
- **Relates to:** Establishes the proof-oriented authorization problem later Datalog-based languages make more tractable.

## Tags

#trust-management #authorization #policy-language #credentials #compliance #complexity
