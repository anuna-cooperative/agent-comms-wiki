# An Approach to Formalise Blockchain Interoperability Patterns

**Reference:** Guzmán Llambías, Laura González, and Raúl Ruggia (2025). *IEEE (preprint, Zenodo)*. Source file: `13_127.pdf`. URL: https://ieeexplore.ieee.org/document/11185098/

## Summary
Formalises the Temporal Transfer blockchain-interoperability design pattern (instantiated with a gateway/relayer architecture) using Event-B. The authors translate natural-language pattern descriptions into a refined Event-B specification, derive eight safety properties (e.g. token can only be minted on the target chain after being locked on the source), verify them by construction using Rodin, and validate the dynamic behaviour by simulating with ProB.

The contribution is a formal-methods bridge for a family of informally described cross-chain patterns — addressing ambiguity, misinterpretation and lack of guarantees in prior natural-language design-pattern catalogues.

## Key Ideas
- Event-B refinement captures lock/mint/burn/unlock sequencing across chains
- Safety invariants formalise double-spend prevention across ledgers
- Rodin discharges proof obligations automatically on invariants/theorems
- ProB simulation validates dynamic/functional behaviour of the pattern
- Gateway-based Temporal Transfer pattern chosen as instantiation

## Connections
- [[Making Smart Contracts Smarter]]
- [[Agent Communication Languages]]

## Conceptual Contribution
- **Claim:** Blockchain interoperability design patterns — currently specified in ambiguous natural language — can and should be given formal, machine-checkable specifications; Event-B is a suitable vehicle.
- **Mechanism:** Take the Temporal Transfer pattern (gateway-based) and produce an Event-B specification with eight safety properties (lock, mint, transfer, burn, unlock events) refined from abstract to concrete; validate via Rodin/ProB model checker and simulation, discharging Proof Obligations to prove correctness-by-construction.
- **Concepts introduced/used:** [[Event-B]], [[Refinement]], [[Blockchain Interoperability]], [[Temporal Transfer Pattern]], [[Cross-chain Smart Contracts]], [[Smart Contracts]], [[Formal Verification]], [[Proof Obligations]], [[Model Checking]], [[Design Patterns]]
- **Stance:** formal / engineering
- **Relates to:** Applies the same formal-specification impulse to cross-chain coordination that [[Making Smart Contracts Smarter]] applies to single-chain contract semantics. Shares a methodology with [[A Modular Approach to Metatheoretic Reasoning for Extensible Languages]] (refinement, rule-based specs) and a motivation with [[Agent Communication And Institutional Reality]] (precise semantics for inter-party protocols).

## Tags
#formal-methods #event-b #blockchain #interoperability #design-patterns
