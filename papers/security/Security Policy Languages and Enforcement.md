# Security Policy Languages and Enforcement

**Reference:** Scott D. Stoller & Yanhong A. Liu (2004). *Security Policy Languages and Enforcement*. MaBIT 2004 survey/position paper. [Open access](https://www3.cs.stonybrook.edu/~stoller/papers/MaBIT-2004.pdf)

## Summary

Stoller and Liu survey two complementary requirements for large security policies: decentralized administration through **trust management** and scalable administration through **role-based access control (RBAC)**. Traditional ACLs assume one administrative domain; trust-management languages instead express delegation across domains, while RBAC factors permissions through organizational roles.

The paper argues for Datalog and related declarative languages because they have a clear semantics, naturally express attributes, relations, recursion, and delegation, and support polynomial-time queries in the core language. It then turns from expressiveness to enforcement: straightforward interpreters are too slow, so policy implementations should be derived using program analysis and incrementalization. Expensive authorization queries are identified, their update dependencies analyzed, and cached results maintained at cost-effective locations.

## Key Ideas

- **Two scaling axes:** trust management decentralizes authority; RBAC organizes authority within institutions.
- **Beyond ACLs:** policy can depend on attributes and relations, not merely enumerated identities.
- **Datalog foundation:** declarative semantics, recursion, extensible relations, and tractable core queries.
- **Compliance and analysis:** the same semantics supports request checks and whole-policy meaning queries.
- **Incremental enforcement:** maintain expensive query results as relevant policy facts change.
- **Derivation from specifications:** analysis transforms clear executable policy into efficient enforcement code.

## Connections

- [[PolicyMaker Compliance Checking]]
- [[SecPAL - The Role of Abduction in Declarative Authorization Policies]]
- [[SPKI-SDSI]]
- [[Authentication in Distributed Systems - Lampson Abadi Burrows Wobber]]
- [[ruma-state-res event_auth.rs]]

## Conceptual Contribution

- **Claim:** A usable policy language must combine decentralized administration and organizational roles with an enforcement strategy derived from its declarative semantics.
- **Mechanism:** Datalog-style policy plus program analysis, dependency analysis, caching, and incremental maintenance.
- **Concepts introduced/used:** [[Trust Management]], [[Role-Based Access Control]], [[Datalog]], [[Policy Incrementalization]], [[Compliance Checking]]
- **Stance:** survey and implementation agenda
- **Relates to:** Connects the semantics/complexity concerns of PolicyMaker and SecPAL to the engineering problem of efficient enforcement.

## Tags

#security-policy #trust-management #rbac #datalog #incrementalization #authorization
