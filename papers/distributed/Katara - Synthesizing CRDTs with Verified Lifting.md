# Katara: Synthesizing CRDTs with Verified Lifting

**Reference:** Shadaj Laddad, Conor Power, Mae Milano, Alvin Cheung & Joseph M. Hellerstein (2022). [arXiv:2205.12425](https://arxiv.org/abs/2205.12425), v2, 21 September 2022. [PDF](https://arxiv.org/pdf/2205.12425).

## Summary

Katara synthesizes verified state-based [[CRDTs]] from sequential data types and user-specified operation orderings. These constraints define conflict semantics; arbitrary sequential behavior cannot simply be preserved under concurrent replication.

The search composes join-semilattices for state and synthesizes updates, queries, and inductive invariants. Restricted grammars ensure convergence by construction; SMT verification establishes agreement with the ordered sequential specification over unbounded executions.

## Key Ideas

- Separate convergence from behavioral correctness.
- Use bounded checking to prune candidates before unbounded verification.
- Make semantic compromises explicit through operation orderings.

## Connections

- [[A Comprehensive Study of Convergent and Commutative Replicated Data Types]] — foundational model.
- [[Logic and Lattices for Distributed Programming]] — compositional lattice structures.
- [[CRDT Emulation, Simulation, and Representation Independence]] — complementary behavioral verification.

## Conceptual Contribution

- **Claim:** Automate verified CRDT design.
- **Mechanism:** Verified lifting and syntax-guided synthesis.
- **Concepts introduced/used:** [[CRDTs]], join-semilattices.
- **Stance:** synthesis / verification.
- **Relates to:** Constructing replicated implementations with explicit semantics.

## Tags

#crdts #program-synthesis #verification #distributed-systems
