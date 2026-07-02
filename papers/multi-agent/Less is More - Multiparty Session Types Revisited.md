# Less is More: Multiparty Session Types Revisited

**Reference:** Scalas, A. & Yoshida, N. (2019). *Less is More: Multiparty Session Types Revisited*. Proceedings of the ACM on Programming Languages, 3(POPL), Article 30, pp. 1–29. ACM (POPL 2019). DOI: [10.1145/3290343](https://doi.org/10.1145/3290343). Artifact: **mpstk**, the Multiparty Session Types toolKit. [Preprint (Imperial MRG)](http://mrg.doc.ic.ac.uk/publications/less-is-more-multiparty-session-types-revisited/preprint.pdf) · [Technical report DTRS18-6](https://www.doc.ic.ac.uk/research/technicalreports/2018/DTRS18-6.pdf) · [Artifact](https://alcestes.github.io/mpstk/)

## Summary
Scalas and Yoshida revisit the foundations of **multiparty session types (MPST)** and argue that the classic theory of [[Multiparty Asynchronous Session Types|Honda–Yoshida–Carbone]] is built on machinery — a well-formed **global type**, mechanical **projection** to local types, and endpoint **duality** — that is both more restrictive and more fragile than it needs to be. They show that the classic *global-types-plus-projection* pipeline enjoys only a **limited subject reduction** property: its type-preservation and safety results hold only under side conditions that are easily overlooked, and several published MPST proofs were in fact flawed because those conditions silently failed. Their thesis is that these restrictions are an artefact of the *presentation*, not of the underlying discipline.

In place of the three-tier apparatus, the paper develops a **generalised MPST theory** grounded directly on **behavioural properties of typing contexts**. A typing context here is just a collection of local session types (one per role/channel); it has its own labelled transition system, and one can ask model-checking-style questions about it directly: is it **safe** (no role ever offers a message the others cannot receive), **deadlock-free**, **live**? The central move is to parameterise type soundness over an abstract **safety predicate φ**: the authors prove that whenever a typing context satisfies φ, the processes typed against it inherit the corresponding runtime guarantee (subject reduction, communication safety, and — for the stronger predicates — deadlock-freedom and liveness). Crucially, **no global type and no duality relation are required**: a projected global type becomes merely *one convenient way* to obtain a safe context, a special case the new theory subsumes rather than depends on. Because these behavioural properties are decidable on finite contexts, the authors implement **mpstk**, a toolkit that discharges safety, deadlock-freedom and liveness by translating typing contexts into the **mCRL2** model checker — turning MPST verification into push-button checking and allowing them to certify correct systems that the classic theory rejects.

"Less is more" names the result: by *removing* global types and duality — the two heaviest ingredients of classic MPST — the theory becomes at once **simpler** (fewer definitions, fewer side conditions) and strictly **more general** (it types more well-behaved systems and repairs the soundness gaps of prior work).

## Key Ideas
- *Behavioural typing contexts as first-class objects*: a set of local session types is given an LTS of its own, and correctness is stated as properties of that LTS rather than as conformance to a global type.
- *Type safety parameterised by a property φ*: a single meta-theorem shows that φ-safety of the context implies the matching runtime guarantee for typed processes; safety, deadlock-freedom and liveness are instances of increasing strength.
- *No global types required*: global types are recast as an over-approximation — a sufficient (not necessary) recipe for producing a safe context — so classic MPST is a strict special case.
- *No duality required*: binary endpoint duality, the correctness backbone of two-party session types, is dropped in favour of the behavioural predicates.
- *Repairs limited subject reduction*: the classic projection-based theory only preserves typing under restrictive conditions; the generalised theory removes them and fixes flawed safety proofs in the literature.
- *Decidability and tooling*: for finite typing contexts the properties are decidable; **mpstk** discharges them via the **mCRL2** model checker, giving automated verification.
- *More typable systems*: protocols that are safe but not the projection of any well-formed global type (or that violate the classic side conditions) are now typable and provably correct.

## Connections
- [[Multiparty Asynchronous Session Types]]
- [[Session Types]]
- [[Structured Communication-Centred Programming for Web Services]]
- [[Choreographic Programming]]
- [[Endpoint Projection]]
- [[Deadlock-freedom-by-design - Multiparty Asynchronous Global Programming]]
- [[On the Monitorability of Session Types]]
- [[Denotational Reasoning for Asynchronous Multiparty Session Types]]
- [[Pi-Calculus]]
- [[Linear Logic]]
- [[Behavioural Types]]
- [[Global Types]]
- [[Duality]]
- [[Subject Reduction]]
- [[Deadlock Freedom]]
- [[Liveness]]
- [[Model Checking]]

## Conceptual Contribution
- **Claim:** The correctness of multiparty session-typed systems does not require a global type, projection, or endpoint duality; it is fully captured by *behavioural properties of the local typing context* (safety, deadlock-freedom, liveness). Removing the classic machinery yields a theory that is simultaneously simpler and strictly more general, and repairs soundness flaws (the *limited subject reduction* of projection-based MPST) present in prior work.
- **Mechanism:** Equip a typing context (a multiset of local session types) with a labelled transition system; define an abstract safety predicate φ over such contexts; prove a parameterised soundness theorem — φ-safety of the context implies subject reduction and the corresponding runtime guarantee for processes typed against it; instantiate φ as safety, deadlock-freedom and liveness. Recover classic MPST by exhibiting projected global types as one family of φ-safe contexts. Implement decision procedures for these properties in **mpstk** on top of the **mCRL2** model checker.
- **Concepts introduced/used:** [[Behavioural Types|behavioural typing]], typing-context safety property (φ), [[Deadlock Freedom|deadlock-freedom]], [[Liveness]], [[Subject Reduction|subject reduction]], generalised MPST without [[Global Types|global types]] or [[Duality]], [[Model Checking|model-checking]]-based verification (mpstk / mCRL2).
- **Stance:** foundational / formal-semantic (with an implemented verification tool).
- **Relates to:** A direct revision of [[Multiparty Asynchronous Session Types]] (Honda–Yoshida–Carbone POPL 2008), whose *global type → projection → local type* pipeline it generalises and whose subject-reduction limitations it diagnoses and fixes; the global-programming line of [[Deadlock-freedom-by-design - Multiparty Asynchronous Global Programming]] (Carbone & Montesi) obtains deadlock-freedom *by construction* from a global program, whereas this paper obtains it *by verification* of a local context, making the two complementary routes to the same guarantee. Shares its verification-of-local-types outlook with [[On the Monitorability of Session Types]] (Bartolo Burlò, Francalanza & Scalas) — same second author lineage on the Scalas side — which synthesises runtime monitors rather than static model checks. Later denotational work [[Denotational Reasoning for Asynchronous Multiparty Session Types]] (McDermott & Yoshida) revisits asynchronous MPST from a semantic angle. The underlying process substrate is the asynchronous [[Pi-Calculus]] (Milner et al.), and the resource-sensitive reading of session types descends from [[Linear Logic]] via the Curry–Howard correspondence for sessions.

## Tags
#session-types #multiparty #behavioural-types #deadlock-freedom #model-checking #pi-calculus #foundational #type-theory #mpstk
