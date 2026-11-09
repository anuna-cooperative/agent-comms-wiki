# Separation Logic

A program logic for reasoning about separately owned portions of mutable state. In the heap model, separating conjunction `P * Q` means that the heap splits into disjoint parts satisfying `P` and `Q`. The [[Frame Rule]] supports local proofs by preserving an additional disjoint portion of state.

Heap separation and causal independence are different properties. Two independent messages can still claim the same resource.

## In this vault

- [[Local Reasoning about Programs that Alter Data Structures]] — O’Hearn, Reynolds and Yang, CSL 2001.
- [[Hoare Logic]]
- [[Program Verification]]
- [[A First-Order Logic with Frames]] — alternative support-based framing.
