# Authentication in Distributed Systems: Theory and Practice

**Reference:** Lampson, B., Abadi, M., Burrows, M., & Wobber, E. (1992). *Authentication in Distributed Systems: Theory and Practice.* ACM Transactions on Computer Systems (TOCS) 10(4): 265–310. November 1992. (DEC SRC Report 83, 1992.) [URL (Microsoft Research)](https://www.microsoft.com/en-us/research/publication/authentication-in-distributed-systems-theory-and-practice/) · [DOI](https://doi.org/10.1145/138873.138874)

## Summary
The ABLP paper (named for Abadi–Burrows–Lampson–Plotkin's later refinement, but originating here) introduces the **speaks-for calculus**: a clean formal vocabulary for distributed authentication, delegation, and *who is entitled to assert what on whose behalf*. The setting: a distributed system in which principals (users, processes, machines, services) send requests that must be authorised. The traditional access-control question — *is this principal allowed to perform this action on this object?* — presupposes a prior question the paper answers: *who is the principal whose request this is?* That prior question becomes hard once requests pass through delegation chains (a user logs in to a workstation, which authenticates to a file server, which calls a database service on the user's behalf): authentication is no longer one-to-one between principal and request but a *chain of compound principals*.

The technical heart of the paper is the *speaks-for relation* `A ⇒ B`: principal `A` speaks for principal `B` means that any statement `A` makes can be treated as if `B` had made it. Speaks-for is reflexive, transitive, and closed under conjunction and group membership. From `A ⇒ B` and `A says s`, the system derives `B says s`. Compound principals are built from atomic ones via *conjunction* (`A ∧ B says s` requires both to assert `s`), *quoting* (`A | B says s` means `A` is making a statement on behalf of `B`, but `A` retains responsibility), *roles* (`A as R` is `A` acting in role `R`), and *for-channel* (`A for K` is `A` speaking over channel/key `K`). The calculus is implementable: speaks-for facts are encoded in signed certificates, the access-control matrix grants rights to principals at any level of compoundness, and authentication reduces to checking a chain of certificates.

For the agent communication and security agenda this vault tracks, the speaks-for calculus is the formal vocabulary for *delegated commitments* and *signed credentials*. When agent `B` accepts a commitment from a process speaking on `A`'s behalf, the question "did `A` really commit?" is answered by the speaks-for chain witnessed by the credential. The paper is the philosophical and engineering ancestor of [[SPKI-SDSI|SPKI/SDSI]] (Rivest–Lampson–Ellison's capability-style PKI, which Lampson designed using the speaks-for vocabulary), [[Decentralized Identifiers|DIDs and Verifiable Credentials]], object-capability *facets*, and modern attribute-based authorisation. For [[CBCL - Safe Self-Extending Agent Communication|CBCL]], speaks-for is the natural answer to "who signed this commitment?" — the dialect contract specifies which principals may emit which verdicts under which delegation rules, and the speaks-for chain provides the proof.

## Key Ideas
- *Principals are first-class*: a principal is anything that can make a statement — users, processes, machines, services, public keys, roles, groups, conjunctions, quotations. The system reasons uniformly about all of them.
- *The says operator*: `A says s` is the primitive — principal `A` has asserted statement `s`. Authentication delivers `says` judgements; authorisation uses them.
- *The speaks-for relation*: `A ⇒ B` means everything `A` says, `B` says. Reflexive, transitive, closed under conjunction. The *delegation* primitive.
- *Compound principals*: built by conjunction (`A ∧ B`), quoting (`A | B` — `A` speaking on behalf of `B`), roles (`A as R`), and for-channel (`A for K`). A workstation acting on behalf of a user over a particular key is a compound principal at the leaf of an authentication chain.
- *Certificates as speaks-for witnesses*: a signed certificate stating `K ⇒ A` (this key speaks for that principal) is the wire-format proof of a speaks-for fact. Authentication is verifying a chain of such certificates.
- *Access control on compound principals*: the access-control list grants rights to principals at any level — `Alice as Admin`, `Workstation | Alice for K`, `Group(Engineers)`. The complex authorisation patterns of real systems become tractable.
- *Trusted Computing Base separation*: each principal has its own TCB; speaks-for chains let one principal *delegate* trust to another without fully merging TCBs.
- *Implementable*: the paper describes the Taos system (DEC SRC) implementing the calculus; the design influenced Windows NT's authentication architecture.

## Connections
- [[Speaks-For Calculus]]
- [[ABLP Logic]]
- [[Says Operator]]
- [[Compound Principal]]
- [[Delegation]]
- [[Authentication Protocol]]
- [[A Logic of Authentication]]
- [[Using Encryption for Authentication]]
- [[Spi Calculus]]
- [[SPKI-SDSI]]
- [[Decentralized Identifiers]]
- [[Verifiable Credential]]
- [[Capability Myths Demolished]]
- [[Capability-based Financial Instruments]]
- [[Programming Semantics for Multiprogrammed Computations]]
- [[EROS - A Fast Capability System]]
- [[The Confused Deputy - Hardy]]
- [[Robust Composition - Towards a Unified Approach to Access Control and Concurrency Control]]
- [[Distributed Electronic Rights in JavaScript]]
- [[The Heart of Spritely - Distributed Objects and Capability Security]]
- [[The Protection of Information in Computer Systems]]
- [[Enforceable Security Policies - Schneider]]
- [[Proof-Carrying Code - Necula]]
- [[An Ontology for Commitments in Multiagent Systems - Singh]]
- [[A Commitment-Based Approach to Agent Communication]]
- [[Infrastructure for AI Agents]]
- [[NDAI Agreements]]
- [[Trusted Machine Learning Models Unlock Private Inference]]
- [[Distributed Security]]
- [[Agent Security]]
- [[Multi-Agent Security]]
- [[CBCL - Safe Self-Extending Agent Communication]]

## Conceptual Contribution
- **Claim:** Distributed authentication and delegation can be cleanly formalised by the *speaks-for* relation `A ⇒ B` over a rich algebra of principals (atomic, conjunction, quoting, role, for-channel) together with the `says` operator. Authorisation reduces to checking that the speaker's principal-expression has been granted rights to perform the requested action.
- **Mechanism:** Define principals as a recursive algebra (atomic, `A ∧ B`, `A | B`, `A as R`, `A for K`). Define `A says s` (primitive) and `A ⇒ B` (speaks-for, reflexive-transitive-conjunctive). Encode speaks-for facts as signed certificates; authentication chains certificates from a trusted root to the requesting principal. Access-control lists grant rights to any principal expression; the request is authorised iff the *deduced* speaker's principal is on the ACL. Implement the calculus in the Taos distributed OS as a concrete proof of practicality.
- **Concepts introduced/used:** [[Speaks-For Calculus]], [[ABLP Logic]], [[Says Operator]], [[Compound Principal]], [[Quoting Principal]], [[Role Principal]], [[Delegation]], [[Access Control List]], [[Trusted Computing Base]].
- **Stance:** foundational technical paper / industry-grade reference design.
- **Relates to:** The formal vocabulary that makes [[SPKI-SDSI|SPKI/SDSI]] (Rivest–Lampson–Ellison) intelligible: SPKI is the speaks-for calculus packaged as a PKI. [[Decentralized Identifiers|DIDs]] and [[Verifiable Credential|VCs]] inherit the same algebraic structure. Object capabilities ([[Programming Semantics for Multiprogrammed Computations|Dennis–Van Horn]] / [[EROS - A Fast Capability System|EROS]] / [[Capability Myths Demolished|Miller]]) are a *dual* view of the same problem (rights attached to objects rather than chains of delegation); the [[The Heart of Spritely - Distributed Objects and Capability Security|Spritely / OCapN]] line composes both views. For agent communication, speaks-for is the natural vocabulary for *delegated commitments*: when an agent's process commits on the agent's behalf, the speaks-for chain witnesses authority. The pair with [[An Ontology for Commitments in Multiagent Systems - Singh|Singh 1999]] is direct: commitments without authority chains are weak, and authority chains without commitments are unactionable. [[CBCL - Safe Self-Extending Agent Communication|CBCL]]'s signed-verdict architecture is a speaks-for application: the dialect contract names which principals may emit which verdicts under which delegation rules. The cryptographic complement is [[A Logic of Authentication|BAN logic]] (1990) and [[Spi Calculus|Spi calculus]] (1997) — BAN reasons about protocol soundness, ABLP reasons about *who*.

## Tags
#authentication #lampson #abadi #speaks-for #ablp #delegation #distributed-security #foundations #capability #pki #classical
