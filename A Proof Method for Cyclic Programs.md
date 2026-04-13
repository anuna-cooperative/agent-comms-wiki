# A Proof Method for Cyclic Programs

**Reference:** Nissim Francez & Amir Pnueli (1978). *Acta Informatica* 9: 133-157. [URL](https://link.springer.com/article/10.1007/BF00289074) (DOI: 10.1007/BF00289074). No open-access PDF located — Springer paywall, no author preprint on Francez's Technion page, no Weizmann tech-report copy surfaced. Cited in McCarthy's [[Elephant 2000 - A Programming Language Based on Speech Acts]].

## Summary
Francez and Pnueli propose a proof method for *cyclic* programs — programs (sequential or concurrent) that are not meant to terminate but to sustain an ongoing, repetitive behaviour: operating systems, reactive processes, garbage collectors. The traditional input-output Hoare-style correctness notion is inapplicable to such programs because there is no terminating output. The paper replaces input-output correctness with a notion of *eventual behaviour*: properties that must hold infinitely often, eventually, or persistently across the program's execution, and develops a proof methodology (a precursor of what would become temporal-logic program verification) for discharging these properties.

The paper is an important early step between Floyd-Hoare partial-correctness verification and Pnueli's subsequent temporal logic of programs (1977). McCarthy cites it in Elephant 2000 as prior art on verifying programs whose specifications are not input-output but ongoing-behaviour — exactly the shape of Elephant programs, whose speech-act semantics concerns sequences of illocutions over time rather than a single terminating output.

## Key Ideas
- **Cyclic programs:** non-terminating sequential/concurrent programs whose correctness is about sustained behaviour, not terminal output.
- **Eventual behaviour:** replaces input-output correctness with properties like "infinitely often," "eventually," "persistently."
- **Proof method:** invariant-style reasoning adapted to the cyclic setting, supporting both sequential and concurrent programs.
- **Precursor to temporal logic:** the informal modalities here are systematised in Pnueli's 1977 temporal logic of programs.
- **Concurrency:** the method handles cooperating concurrent processes, anticipating Owicki/Gries-style proof rules.

## Connections
- [[Elephant 2000 - A Programming Language Based on Speech Acts]] — McCarthy cites this as prior art on verifying non-terminating / reactive programs
- [[An Application of a Method for Analysis of Cyclic Programs]] — Francez's 1978 TSE companion paper applying the method to Dijkstra's on-the-fly garbage collector
- [[Program Verification]]
- [[Formal Verification]]
- [[Hoare Logic]]
- [[Assigning Meanings to Programs]]
- [[Verification Condition]]

## Conceptual Contribution
- **Claim:** Non-terminating (cyclic) programs admit a rigorous correctness theory if one replaces the input-output correctness paradigm with a proof method over *eventual behaviour* — properties of the infinite execution — and this method extends to concurrent cyclic programs.
- **Mechanism:** Generalised invariants characterising the sustained behaviour, combined with proof rules that discharge eventual/persistent properties directly rather than deriving them from pre/post pairs. For concurrent programs, the method handles process interaction via cooperation conditions.
- **Concepts introduced/used:** [[Program Verification]], [[Formal Verification]], [[Hoare Logic]], [[Verification Condition]]
- **Stance:** methodological / verification-foundations
- **Relates to:** A key transitional work between Floyd-Hoare partial-correctness verification ([[Assigning Meanings to Programs]], [[Hoare Logic]]) and Pnueli's subsequent temporal logic of programs (1977). McCarthy's [[Elephant 2000 - A Programming Language Based on Speech Acts]] positions the paper as evidence that programs whose correctness is an ongoing speech-act record (rather than a terminal output) are already within verification's reach — the "program as logical sentence" stance just extends this to the speech-act level.

## Tags
#program-verification #formal-methods #concurrency #cyclic-programs #francez #pnueli
