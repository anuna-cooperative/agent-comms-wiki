# First Order Theories of Individual Concepts and Propositions

**Reference:** John McCarthy (1979b). "First Order Theories of Individual Concepts and Propositions." In J. E. Hayes, D. Michie, and L. I. Mikulich (eds.), *Machine Intelligence 9*, Ellis Horwood, pp. 129-147. (Version fetched is the revised 2000 reprint.) [URL](http://jmc.stanford.edu/articles/concepts/concepts.pdf)

## Summary
McCarthy argues that knowledge, belief, wanting, and necessity can be formalised in ordinary sorted first-order logic — *without* modal operators, quotation, or possible-worlds machinery — by admitting individual concepts as first-class objects alongside the things that reify them. Where Frege had distinguished *sense* (the concept) from *reference* (the denotation), and where Carnap, Church, and Montague responded by extending logic, McCarthy responds by keeping logic ordinary and adding a domain of concepts plus a `denot` function mapping concepts to their denotations.

Thus `Mike` is the concept of Mike, `mike` is Mike himself, `Telephone Mike` is the concept of Mike's telephone number, and `telephone mike` is the number. `Know(Pat, Telephone Mike)` is the proposition that Pat knows Mike's telephone number; `true Know(Pat, Telephone Mike)` asserts it. Extensionality is expressed by explicit axioms: `Know` is extensional in its first (knower) argument but not its second, which is precisely why substituting equal telephone numbers inside `Know` fails. The paper works through *knowing what* vs *knowing that*, iterated knowledge, non-denoting concepts (Pegasus), belief, wanting, existence (via an `Exists` predicate that does not presuppose existence of the concept's referent), and necessity — all in sorted FOL, with standard model theory available to study which concept-spaces satisfy which axioms.

The paper is McCarthy's most developed statement of his reificationist, logicist methodology for mental attitudes: rather than extend the logic, extend the ontology. This is directly the substrate Elephant 2000 uses when it talks about speech acts committing agents to propositions and referring to past events and future obligations.

## Key Ideas
- Reify concepts as objects in sorted FOL; no modal operators, no quotation.
- `denot` function maps concepts to their referents; extensionality becomes an axiom about particular functions rather than a global property of the logic.
- `Know(P, X)` is extensional in P (the knower) but not in X (the knowand), explaining failure of substitutivity for knowledge.
- `knowing what` vs `knowing that` are distinct; both are expressible.
- Non-existent referents (Pegasus) handled by `denotes(X, x)` predicate rather than `denot` function, and by `Exists`/`exists` pair.
- Concept-valued variables, functions, and constants (capitalisation convention) vs object-valued lowercase counterparts.

## Connections
- [[Ascribing Mental Qualities to Machines]] — the philosophical sibling paper; this gives the logical machinery for the ascriptions argued for there.
- [[Elephant 2000 - A Programming Language Based on Speech Acts]] — Elephant's program variables can range over speech acts, propositions, and commitments; the concept/object distinction here is exactly what allows a program to refer to *the fact that* Pat was told X rather than just to X's value.
- [[Knowledge Representation]]
- [[Common Sense Reasoning]]
- [[KIF]] — KIF's individuating of propositions and sentences as first-class objects follows this lineage.
- [[Speech Act Theory]]

## Conceptual Contribution
- **Claim:** Propositional attitudes and modalities can be formalised in ordinary sorted first-order logic by admitting individual concepts (and propositions) as objects with a `denot` mapping to their referents — no modal operators or quotation required.
- **Mechanism:** Sorted FOL; capitalised concept-valued terms vs lowercase denotation-valued terms; `denot`/`denotes` functions and predicates; extensionality stated per-predicate via axioms like `denot P1 = denot P2 => denot Know(P1,X) = denot Know(P2,X)`; `Exists`/`exists` to handle non-denoting concepts; `true Q` to lift propositions to truth values.
- **Concepts introduced/used:** [[Individual Concepts]], [[Propositional Attitudes]], [[Extensionality]], [[Sense and Denotation]], [[Knowing What vs Knowing That]], [[Reification]], [[Sorted Logic]].
- **Stance:** foundational
- **Relates to:** Provides the ontology on which [[Elephant 2000 - A Programming Language Based on Speech Acts]] builds its program-as-speech-act semantics; complements the ascriptive stance of [[Ascribing Mental Qualities to Machines]]; technically prefigures the object-level treatment of sentences in [[KIF]] and the commitment semantics in [[Agent Communication And Institutional Reality]].

## Tags
#foundational #mccarthy #knowledge-representation #logic #propositional-attitudes #ontology
