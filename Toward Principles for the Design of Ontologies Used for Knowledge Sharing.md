# Toward Principles for the Design of Ontologies Used for Knowledge Sharing

**Reference:** Gruber, T. R. (1995). *International Journal of Human-Computer Studies*, 43(5–6), 907–928. Substantial revision of a 1993 paper presented at the International Workshop on Formal Ontology (Padova). Also Stanford KSL Technical Report 93-04. Source file: `gruber_onto_design.pdf`. [URL](http://tomgruber.org/writing/onto-design.pdf)

## Summary
Gruber articulates the engineering foundations of ontology design for knowledge sharing. An **ontology** is defined as *an explicit specification of a conceptualization*: a vocabulary of classes, relations, functions, and object constants, together with axioms constraining their interpretation, intended to allow heterogeneous agents to communicate about a domain without sharing a global knowledge base. Agents **commit** to an ontology when their observable behaviour is consistent with its definitions — a notion of commitment grounded in Newell's Knowledge Level and Levesque's tell-and-ask interface. Common ontologies thus underwrite interoperability at the knowledge level rather than at the symbol or data level.

Gruber proposes five design criteria: (1) **Clarity** — definitions should be objective and, where possible, complete (necessary and sufficient conditions); (2) **Coherence** — sanctioned inferences must be consistent with informal definitions; (3) **Extendibility** — anticipate new uses so the vocabulary can be monotonically extended without revision; (4) **Minimal encoding bias** — conceptualise at the knowledge level, independent of symbol-level representation; (5) **Minimal ontological commitment** — say only what is required for the intended knowledge-sharing tasks, leaving maximum freedom for specialisation. He discusses the tradeoffs — especially between extendibility and minimal commitment — and illustrates the criteria through case studies in engineering mathematics (physical quantities, units, algebras) and bibliographic data, contrasting alternative design choices against the criteria. The paper is the engineering charter for the ontology-sharing tradition that produced Ontolingua, KIF, and the modern Semantic Web.

## Key Ideas
- Ontology = explicit specification of a conceptualization.
- Ontological commitment: observable behaviour consistent with definitions.
- Knowledge-level (not symbol-level) specification (Newell).
- Tell-and-ask interface as the model of agent knowledge use (Levesque).
- Five design criteria: clarity, coherence, extendibility, minimal encoding bias, minimal commitment.
- Design tradeoffs, particularly extendibility vs. minimal commitment.
- Case studies: engineering mathematics and bibliographic data.
- Ontology as shared vocabulary, not shared belief.

## Connections
- [[Ontologies]]
- [[Ontology]]
- [[Ontological Commitment]]
- [[Ontology Design Criteria]]
- [[Ontology Engineering]]
- [[Ontolingua Portable Ontology Specifications]]
- [[Handbook On Ontologies]]
- [[A Common Ontology Of ACLs]]
- [[KQML]]
- [[Agent Communication Languages]]

## Conceptual Contribution
- **Claim:** Ontologies are *designed artifacts* for knowledge sharing and should be evaluated by objective engineering criteria — clarity, coherence, extendibility, minimal encoding bias, and minimal ontological commitment — rather than by a priori notions of naturalness or metaphysical truth.
- **Mechanism:** Gruber grounds the account in the Knowledge Level: an ontology specifies a conceptualization via a logical vocabulary with definitional and constraint axioms; an agent commits to the ontology when its tell/ask behaviour respects those definitions. He derives the five criteria from the requirements of knowledge-sharing interoperability, works through their inherent tensions (e.g., clarity favours complete definitions while minimal commitment favours weaker theories; extendibility favours larger vocabulary while minimal commitment favours smaller), and illustrates the application of the criteria in case studies that compare alternative representational choices.
- **Concepts introduced/used:** [[Ontology]], [[Ontological Commitment]], [[Conceptualization]], [[Knowledge Level]], [[Clarity]], [[Coherence]], [[Extendibility]], [[Encoding Bias]], [[Minimal Ontological Commitment]]
- **Stance:** engineering methodology
- **Relates to:** Canonical definition inherited by [[Ontologies]], [[Ontology Engineering]] and [[Handbook On Ontologies]]; underpins the shared-vocabulary assumption of [[KQML]] and [[A Common Ontology Of ACLs]]; supplies the design rationale behind [[Ontolingua Portable Ontology Specifications]].

## Tags
#ontology #knowledge-sharing #foundational #engineering #design-principles
