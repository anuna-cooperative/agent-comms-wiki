# A Translation Approach to Portable Ontology Specifications

**Reference:** Thomas R. Gruber (1993). *Knowledge Acquisition*, 5(2):199-220 (KSL Technical Report KSL-92-71). Source file: `ontolingua-kaj-1993.pdf`. URL: https://tomgruber.org/writing/ontolingua-kaj-1993.pdf

## Summary
Gruber's landmark paper defines an *ontology* as "an explicit specification of a conceptualization" — a formal vocabulary of classes, relations, functions, and axioms that captures the intended meaning of terms shared among knowledge-based systems. He addresses the portability problem: ontologies need to be reused across applications built in different representation languages (frame-based, description-logic, relational, Prolog), which would otherwise each need bespoke versions.

The solution is Ontolingua, a system that specifies ontologies in a standard declarative form (predicate calculus extended with KIF and frame-ontology idioms) and translates them into the forms required by specific target representation systems. The approach accommodates stylistic differences across representations while preserving declarative content, and handles translation from an expressive source into restricted targets. The paper articulates criteria for good ontology design (clarity, coherence, extendibility, minimal encoding bias, minimal ontological commitment) that still guide knowledge-engineering practice today.

## Key Ideas
- Ontology = explicit specification of a conceptualization.
- Ontological commitments as agreements about shared vocabulary.
- Translation approach: one source language → many target representations.
- Ontolingua built atop KIF and a frame ontology.
- Design criteria: clarity, coherence, extendibility, minimal encoding bias.

## Connections
- [[Ontologies]]
- [[Ontology]]
- [[KQML]]
- [[KIF]]
- [[Conceptualization]]
- [[Agent Communication Languages]]
- [[Multi-Agent Systems]]

## Conceptual Contribution
- **Claim:** Shared knowledge among heterogeneous AI systems requires explicit, portable specifications of conceptualisations — ontologies — that can be defined once in a neutral declarative form and mechanically translated into many target representation systems while preserving declarative content.
- **Mechanism:** Defines "ontology" as explicit specification of a conceptualisation; introduces ontological commitments as vocabulary-sharing agreements at the knowledge level (Newell); implements Ontolingua in KIF (Lisp-like predicate calculus with equality) with a Frame Ontology capturing class/relation/function/axiom idioms; provides translators to LOOM, Epikit, Express, and pure KIF. Proposes design criteria: clarity, coherence, extendibility, minimal encoding bias, minimal ontological commitment.
- **Concepts introduced/used:** [[Ontology]], [[Conceptualization]], [[Ontological Commitment]], [[KIF]], [[Frame Ontology]], [[Ontolingua]], [[Knowledge-Level Specification]], [[Translation Approach]], [[Ontology Design Criteria]]
- **Stance:** foundational / engineering
- **Relates to:** Solves the content-language side of the problem that [[KQML Overview]] splits into content/message/communication layers; cited by virtually all agent-communication work needing shared vocabulary including [[FIPA-ACL]], [[A Common Ontology Of ACLs]], and [[Handbook On Ontologies]]; design criteria still guide modern ontology engineering.

## Tags
#ontology #ontolingua #kif #knowledge-sharing #gruber
