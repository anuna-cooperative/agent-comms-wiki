# Choreographic Programming

A programming paradigm in which a single global program describes the joint behaviour of all participants in a distributed protocol, and a mechanical *endpoint projection* derives the local program for each participant. Choreographic languages are designed so that well-typed choreographies are deadlock-free by construction — every `send` is matched by a corresponding `recv` in the projected counterpart. Originating in WS-CDL and formalised in the π-calculus / session-types community (Carbone, Honda, Yoshida), the paradigm has since been embedded in production languages (Choral for Java, ChoRus for Rust, HasChor for Haskell, Bates et al.'s census-polymorphic projection at PLDI 2025) and extended towards adversarial settings via cryptographic primitives (Sarkar & Russo; Veiga). Structurally adjacent to the [[Commitment-Based Protocol]] tradition: both specify protocols globally and project to local roles, but choreographic semantics is operational/communicational while commitment-based semantics is normative/social.

## In this vault
- [[Endpoint Projection]]
- [[Structured Communication-Centred Programming for Web Services]] — Carbone, Honda & Yoshida ESOP 2007 / TOPLAS 2012, the foundational paper
- [[Multiparty Asynchronous Session Types]] — Honda, Yoshida & Carbone POPL 2008, multiparty generalisation
- [[Introduction to Choreographies]] — Montesi 2023 (Cambridge), the canonical textbook
- [[On the Monitorability of Session Types]] — Bartolo Burlò, Francalanza & Scalas ECOOP 2021, runtime monitoring
- [[Session Types]]
- [[Pact - A Choreographic Language for Agentic Ecosystems]]
- [[Commitment-Based Protocol]]
- [[Commitment Machines]]
- [[Flexible Protocol Specification and Execution]]
- [[Algebraic Effects]]
