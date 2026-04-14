# An Application of a Method for Analysis of Cyclic Programs

**Reference:** Nissim Francez (1978). *IEEE Transactions on Software Engineering* SE-4(5): 371-378. [URL](https://ieeexplore.ieee.org/document/1702552) (DOI: 10.1109/TSE.1978.233857). No open-access PDF located — IEEE paywall, no author preprint on Francez's Technion page. Cited in McCarthy's [[Elephant 2000 - A Programming Language Based on Speech Acts]].

## Summary
The applied companion to [[A Proof Method for Cyclic Programs]]. Francez uses the Francez-Pnueli cyclic-program proof method to prove Dijkstra's "on-the-fly" garbage collector correct — a paradigmatically hard concurrent, cyclic program in which a mutator and a collector cooperate to manage a shared heap. The paper also compares the Francez-Pnueli approach with an alternative proof of the same algorithm by David Gries using Owicki's method, discussing what each approach reveals about the algorithm's invariants and interference structure.

McCarthy cites this paper in Elephant 2000 as concrete evidence that the cyclic-program proof methodology scales to a real concurrent reactive system, supporting his claim that Elephant's non-terminating speech-act programs admit tractable verification.

## Key Ideas
- **Case study:** Dijkstra's on-the-fly concurrent garbage collector, proved correct in the Francez-Pnueli framework.
- **Concurrent cyclic behaviour:** mutator/collector cooperation analysed via eventual-behaviour invariants.
- **Comparison with Owicki/Gries:** contrasts the Francez-Pnueli cyclic-programs method with Gries's proof of the same algorithm using the Owicki interference-freedom approach.
- **Methodological lessons:** shows which invariants each proof style makes natural and which it leaves implicit.

## Connections
- [[Elephant 2000 - A Programming Language Based on Speech Acts]] — McCarthy cites this alongside the Francez-Pnueli method paper
- [[A Proof Method for Cyclic Programs]] — the method applied here
- [[Program Verification]]
- [[Formal Verification]]
- [[Hoare Logic]]
- [[Assigning Meanings to Programs]]
- [[Verification Condition]]

## Conceptual Contribution
- **Claim:** The Francez-Pnueli cyclic-programs proof method is tractable and perspicuous on a paradigmatically hard concurrent cyclic program — Dijkstra's on-the-fly garbage collector — and yields a qualitatively different (and in places more natural) account than the Owicki/Gries interference-freedom proof of the same algorithm.
- **Mechanism:** Construct eventual-behaviour invariants describing the mutator/collector cooperation; discharge safety (no live cell is collected) and liveness (garbage is eventually reclaimed) via the cyclic-programs proof rules; juxtapose with Gries's Owicki-style proof to characterise the methodological difference.
- **Concepts introduced/used:** [[Program Verification]], [[Formal Verification]], [[Hoare Logic]], [[Verification Condition]]
- **Stance:** case-study / methodological
- **Relates to:** Pairs with [[A Proof Method for Cyclic Programs]] as the empirical leg of the Francez-Pnueli programme on reactive-system verification. McCarthy uses the pair in [[Elephant 2000 - A Programming Language Based on Speech Acts]] to argue that the non-terminating, history-referring programs he proposes for speech-act I/O are within reach of contemporary verification techniques — i.e. the "program as logical sentence" stance need not pay a verifiability tax.

## Tags
#program-verification #formal-methods #concurrency #cyclic-programs #garbage-collection #francez
