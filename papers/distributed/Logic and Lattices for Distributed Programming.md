# Logic and Lattices for Distributed Programming

**Reference:** Conway, N., Marczak, W.R., Alvaro, P., Hellerstein, J.M. & Maier, D. (2012). *Proceedings of the 3rd ACM Symposium on Cloud Computing (SoCC '12)*, Article 1, pp. 1–14. ACM, San Jose, CA. DOI: [10.1145/2391229.2391230](https://doi.org/10.1145/2391229.2391230). Source file: `conway-bloomL-socc12.pdf`. [URL](https://dl.acm.org/doi/10.1145/2391229.2391230)

## Summary
Conway et al. extend [[Bloom Language|Bloom]] (a Datalog-derived language for distributed programming) with *lattice-typed variables* — `Lattice<T>` collections whose merge operation is the join of an explicit join-semilattice — yielding *BloomL*. The contribution is a clean lifting of the [[CALM Theorem|CALM]] story from set-of-tuples monotonicity to arbitrary lattice monotonicity: a BloomL program whose every operation is a *monotone function* over its inputs' lattices is automatically eventually consistent, regardless of message order or duplication. Programmers can build domain-specific lattices (max-counters, min-clocks, version vectors, custom merge functions) and use them in monotone code with the same coordination-free guarantee Bloom provides for sets.

The paper develops the type system that makes this work: lattice morphisms (functions that preserve the join operation) and *monotone functions* (functions that are non-decreasing with respect to the lattice order) are statically checkable, so a syntactically-monotone BloomL program is provably confluent. A type-and-effect analysis distinguishes monotone code paths (coordination-free) from non-monotone ones (which need external coordination — e.g. quorum, two-phase commit). Case studies replay canonical distributed problems — shopping carts, Bayou-style replication, distributed locking — showing that lattice typing turns the "do I need to coordinate here?" question into a typing question. BloomL is also the substrate for [[CRDTs]] thinking inside a programming language: CRDTs become a special case of lattice-typed values plus monotone access patterns.

## Key Ideas
- *Lattice variables in Bloom*: a `Lattice<T>` is a value plus a `merge` function satisfying join-semilattice axioms (commutativity, associativity, idempotence). Updates apply `merge`; reads return the current value.
- *Monotone functions become first-class*: lattice morphisms (`f(merge(x, y)) = merge(f(x), f(y))`) and monotone functions are tagged in the type system; non-monotone access is restricted to designated boundaries.
- *CALM at the lattice level*: monotonic BloomL programs are confluent (eventually consistent without coordination); the analysis is local and compositional.
- *Built-in lattice library*: max, min, set-union, version vectors, lww-register, plus user-defined lattices via a small interface.
- *Stratified non-monotonicity*: where coordination is unavoidable, the language demands an explicit barrier — making the cost visible at the source level.
- *Foundation for CRDT thinking*: every state-based [[CRDTs|CRDT]] is a lattice; BloomL gives them a programming-language home where the safety conditions are checked statically.

## Connections
- [[Keeping CALM - When Distributed Consistency is Easy]]
- [[CALM Theorem]]
- [[Bloom Language]]
- [[Dedalus]]
- [[A Comprehensive Study of Convergent and Commutative Replicated Data Types]]
- [[Relational Transducers for Declarative Networking]]
- [[CRDTs]]
- [[Monotonic Logic]]
- [[Confluence]]
- [[Coordination Avoidance]]
- [[Immutable Data Structures]]
- [[CBCL - Safe Self-Extending Agent Communication]]

## Conceptual Contribution
- **Claim:** Lifting Bloom's set-of-tuples monotonicity story to arbitrary join-semilattices yields a programming model in which monotonicity (and therefore coordination-freeness and eventual consistency) is *type-checked statically*: lattice variables carry their merge operation, monotone functions are explicit, and any code path that escapes monotonicity must announce it.
- **Mechanism:** Add `Lattice<T>` types to Bloom with explicit `merge` operations; classify operations as monotone or non-monotone via a type-and-effect system; require non-monotone access to occur at explicit stratification barriers; support user-defined lattices via a small interface; maintain Bloom's existing rule semantics so existing tuple-monotonic code is unchanged.
- **Concepts introduced/used:** [[Bloom Language]], join-semilattice, lattice morphism, monotone function, [[CALM Theorem]], [[CRDTs]], [[Confluence]], [[Coordination Avoidance]]
- **Stance:** foundational / language design
- **Relates to:** Direct precursor of [[Keeping CALM - When Distributed Consistency is Easy]] (Hellerstein & Alvaro 2019), which generalises this lattice-monotonicity argument into a full positive theorem against the negative-result tradition of [[CAP Theorem]] and FLP. Companion to [[Relational Transducers for Declarative Networking]] (Ameloot et al.) — Ameloot proves the *theorem* (monotone ⇔ coordination-free), Conway et al. provide the *language* in which monotonicity is statically checkable. Together with [[A Comprehensive Study of Convergent and Commutative Replicated Data Types]] (Shapiro et al.) it constitutes the lattice-theoretic foundation for [[CRDTs]] as a programming-language phenomenon. Load-bearing reference for [[CBCL - Safe Self-Extending Agent Communication]]'s SPEC-003 verification-lattice layer, where the message store is a G-Set lattice and verification is a lattice homomorphism that joins coordination-free under store union.

## Tags
#distributed-systems #consistency #lattices #bloom #crdts #monotonic-logic #foundational #language-design
