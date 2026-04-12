# Ascribing Mental Qualities to Machines

**Reference:** John McCarthy (1979). Stanford CS Department; reprinted in *Formalizing Common Sense: Papers by John McCarthy* (V. Lifschitz ed., Ablex, 1990). Source file: `mccarthy-ascribing.pdf`. [URL](https://www-formal.stanford.edu/jmc/ascribing.pdf)

## Summary
McCarthy argues that ascribing beliefs, desires, intentions, knowledge, and other mental qualities to machines (including simple ones like thermostats) is *legitimate* when the ascription conveys the same information about the machine that it would about a person, and *useful* when it helps us predict, repair, or improve the machine's behaviour. He proposes two new definitional tools — definitions *relative to an approximate theory*, and *second-order structural definitions* — so that mental-state vocabulary can be applied to physical systems conservatively rather than by reduction to physics.

This is the philosophical foundation for the entire mentalistic (BDI) tradition in agent research that [[ACL Rethinking Principles]] pushes back against. Singh cites McCarthy as the origin of the view that agent communication can be specified by ascribing beliefs and intentions; McCarthy himself is already careful to warn that such ascriptions must be conservative and may be merely convenient shorthand for structural facts.

## Key Ideas
- Ascribing mental qualities is warranted when it expresses information about the machine concisely — not because the machine "really" has a mind.
- Ascription is most useful precisely when the structure of the system is *incompletely known*; for fully-listed programs one could in principle simulate instead.
- Mental qualities should be ascribed *separately* (belief without desire, desire without consciousness, etc.) rather than bundled into a monolithic concept of mind; different machines warrant different subsets.
- Novel definitional tools: (1) *definitions relative to an approximate theory* — a mental predicate is defined only within a coarser theory that abstracts away from physical detail; (2) *second-order structural definitions* — mental qualities defined by the existence of certain structural roles in the system.
- Epistemological vs metaphysical adequacy of representations: AI needs representations that capture what is *knowable* about a situation, not just what is ultimately true.
- The approach is intended as conservative (liberal in what it admits having some mental qualities, strict in how each is attributed).

## Connections
- [[ACL Rethinking Principles]]
- [[Mentalistic Semantics]]
- [[Intentional Stance]]
- [[BDI Logic]]
- [[Agent Communication Languages]]
- [[Knowledge Representation]]

## Conceptual Contribution
- **Claim:** It is legitimate and often necessary to ascribe mental qualities (belief, desire, intention, knowledge) to machines, provided the ascription is conservative, quality-by-quality, and grounded either in an approximate theory that abstracts away from physical detail or in a second-order structural definition that names the role the quality plays.
- **Mechanism:** Philosophical / definitional. Distinguishes epistemological from metaphysical adequacy of representations, separates mental qualities rather than bundling them, and introduces approximate-theory and structural-definition techniques for defining predicates like `believes(M, P)` over machines.
- **Concepts introduced/used:** [[Intentional Stance]], [[Mentalistic Semantics]], [[Approximate Theory]], [[Structural Definitions]], [[Epistemological Adequacy]], [[Common Sense Reasoning]]
- **Stance:** foundational / philosophical
- **Relates to:** Source of the mental-ascription tradition that [[Intention Is Choice with Commitment]] formalises and that [[Semantics and Conversations for an ACL]] applies to KQML. [[ACL Rethinking Principles]] argues this tradition overreaches when used as a compliance criterion for ACLs; McCarthy's own hedges about conservativism actually support that pushback.

## Tags
#philosophy #mentalistic #intentional-stance #foundations #ai-history
