# A Semantic Description For Agent Design Patterns

**Reference:** Sabatucci, Cossentino, Gaglio. *AT2AI-08 / University of Palermo & ICAR-CNR*. Source file: `at2ai08_sabatucci.pdf`

## Summary
The authors propose a fine-grained design language for formalizing and composing agent design patterns, integrated with the PASSI methodology for multi-agent system development. Patterns are represented as semantic networks (Pattern Semantic Description diagrams) whose nodes are *Pattern Description Elements* - participants, collaborators, events, and actions - typed against a MAS meta-model.

Four composition operators (Unification, Conjunction, Concealing, Externalization) let designers blend patterns systematically, preserving traceability of pattern contributions in the resulting structure. A worked example composes GenericAgent and Request patterns into SequentialShareResource, illustrating how FIPA-Request-compliant service agents can be built through pattern composition.

## Key Ideas
- PSD diagrams: semantic networks of Participants and Collaborators.
- Composition operators: Unification, Conjunction, Concealing, Externalization.
- Patterns typed against a MAS meta-model (agent, role, task, communication).
- Integrated with PASSI design process.
- Worked example of FIPA-Request service pattern composition.

## Connections
- [[FIPA-ACL]]
- [[Agent-Oriented Programming]]
- [[Multi-Agent Systems]]
- [[Ontologies]]

## Conceptual Contribution
- **Claim:** Agent design patterns should be formalised as typed semantic networks with explicit composition operators, so that FIPA-compliant systems can be built by pattern algebra rather than ad-hoc composition.
- **Mechanism:** Introduces Pattern Semantic Description (PSD) diagrams typed against a MAS meta-model; defines Unification, Conjunction, Concealing, and Externalization operators; integrates with the PASSI methodology; worked example composes GenericAgent + Request into SequentialShareResource.
- **Concepts introduced/used:** [[Design Patterns]], [[PASSI Methodology]], [[MAS Meta-model]], [[Pattern Composition]], [[Interaction Protocols]], [[Roles]], [[FIPA-ACL]], [[Agent-Oriented Programming]], [[Ontologies]], [[Multi-Agent Systems]]
- **Stance:** engineering
- **Relates to:** Supplies a pattern language for the protocol-level conversations tracked by [[ACRE Agent Conversation Reasoning Engine]]; its MAS meta-model leans on ontology foundations surveyed in [[Handbook On Ontologies]].

## Tags
#design-patterns #agent-engineering #passi #mas
