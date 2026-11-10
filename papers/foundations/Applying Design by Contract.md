# Applying “Design by Contract”

**Reference:** Bertrand Meyer (1992). *Computer* 25(10), pp. 40–51, October 1992. [Author-hosted PDF](https://se.inf.ethz.ch/~meyer/publications/computer/contract.pdf).

## Summary

Meyer presents **Design by Contract** as a discipline for reliable object-oriented software. Clients satisfy a routine's preconditions; suppliers guarantee its postconditions. Class invariants express consistency requirements maintained across externally visible operations.

Using Eiffel, the paper connects these obligations to documentation, assertion checking, inheritance, and exception handling. Contracts assign responsibility for failures and support modular reasoning, rather than asking every component to repeat every defensive check.

## Key Ideas

- Preconditions bind callers; postconditions bind implementations.
- A violated precondition identifies a client error; a violated postcondition identifies a supplier error.
- Subclasses may weaken preconditions and strengthen postconditions, preserving existing clients' expectations.
- Class invariants constrain valid object states.
- Recovery restores consistency before retrying or reporting failure.
- Runtime assertion checking helps detect faults but does not itself prove correctness.

## Connections

- [[An Axiomatic Basis for Computer Programming - Hoare]] — logical foundation of assertion-based reasoning.
- [[Hoare Logic]]
- [[Preconditions and Postconditions]]
- [[Code Contracts]]
- [[Program Verification]]
- [[Intent Formalization - A Grand Challenge for Reliable Coding]] — compare explicit behavioral specifications.

## Conceptual Contribution

- **Claim:** Explicit client/supplier obligations improve reusable software reliability.
- **Mechanism:** Preconditions, postconditions, invariants, and inheritance-compatible contracts.
- **Concepts introduced/used:** Design by Contract, [[Code Contracts]], [[Preconditions and Postconditions]].
- **Stance:** software-engineering methodology / object-oriented design.
- **Relates to:** Connects the vault's Hoare-logic foundations to practical component interfaces.

## Tags

#design-by-contract #software-engineering #eiffel #assertions #program-verification
