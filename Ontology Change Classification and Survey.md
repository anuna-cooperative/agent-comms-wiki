# Ontology Change: Classification and Survey

**Reference:** Flouris, Manakanatas, Kondylakis, Plexousakis, Antoniou (2008). *The Knowledge Engineering Review, Cambridge University Press*. Source file: `Ontology_Change_Classification_and_Survey.pdf`

## Summary
This survey tackles the terminological confusion surrounding ontology change in the Semantic Web era. The authors argue that many overlapping terms — ontology evolution, versioning, merging, mapping, matching, articulation, translation, debugging, integration, morphism — are used inconsistently across the literature, creating a major bottleneck for research. They propose a unifying terminology and taxonomy, fixing precise definitions and identifying the boundaries between ten subfields of ontology change plus ontology alignment.

The paper organizes these subfields into four groups: heterogeneity resolution (mapping/matching/articulation/morphism/translation), modification (evolution, debugging/diagnosis/repair), fusion (integration, merging), and versioning. Each field is characterized by its purpose, inputs, outputs, and properties, and the authors review representative algorithms and systems, including a detailed classification of matching approaches (instance vs. schema, element vs. structure, language vs. constraint, matching cardinality, auxiliary information).

## Key Ideas
- Ontology change is the generic process of adapting an ontology to a need for change.
- Heterogeneity resolution is a prerequisite for any successful ontology change.
- Formal pair <S, A> defines an ontology by signature and axioms.
- Ten interlinked subfields are identified and disambiguated.
- Ontology evolution is closely tied to belief revision.

## Connections
- [[Ontologies]]
- [[Agent Communication Languages]]
- [[FIPA-ACL]]
- [[Multi-Agent Systems]]

## Conceptual Contribution
- **Claim:** Research on ontology change is fragmented by inconsistent terminology; a precise, unified taxonomy is needed before the field's problems can be compared, composed, or solved.
- **Mechanism:** The authors define an ontology formally as a signature–axiom pair <S,A>, then enumerate ten subfields (mapping, matching, morphism, articulation, translation, evolution, debugging, versioning, integration, merging) and characterise each by inputs/outputs/properties. Representative algorithms and systems are then slotted into the taxonomy, with matching approaches classified by dimension (schema vs. instance, element vs. structure, cardinality, auxiliary info).
- **Concepts introduced/used:** [[Ontology Change]], [[Ontology Evolution]], [[Ontology Mapping]], [[Ontology Merging]], [[Ontology Alignment]], [[Belief Revision]], [[Semantic Web]], [[Heterogeneity Resolution]]
- **Stance:** survey
- **Relates to:** Provides the vocabulary implicitly assumed by ACL work on shared ontologies ([[The State of the Art in Agent Communication Languages]], [[Trends in Agent Communication Language]]) and complements the handbook-level treatment in [[Handbook On Ontologies]]. Its belief-revision framing links to epistemic semantics used in [[Agent-Oriented Programming]].

## Tags
#ontologies #semantic-web #survey #knowledge-representation
