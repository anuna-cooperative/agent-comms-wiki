# Three Models for the Description of Language

**Reference:** Noam Chomsky (1956). *IRE Transactions on Information Theory*. Source files: `195609-.pdf`, `chomksy.txt`

## Summary
Chomsky's seminal paper comparing three candidate models of linguistic structure — finite-state Markov processes, phrase-structure grammars, and transformational grammars — and showing that each is strictly more powerful than the last. He proves that English cannot be described by any finite-state grammar (via dependencies like "either…or", "if…then" that require unbounded memory), and argues that even phrase-structure grammars, while formally adequate, yield awkward and complex descriptions of phenomena (auxiliaries, passives, discontinuous elements) that transformational rules handle elegantly.

The paper founded generative linguistics and the Chomsky hierarchy, and established transformational grammar as the preferred formalism for natural-language syntax.

## Key Ideas
- Finite-state grammars cannot generate English (mirror-image / nested dependencies)
- Phrase-structure grammars more powerful but still inadequate for transformations
- Transformational grammar operates on phrase markers, not strings
- Distinction between grammar as discovery procedure vs. evaluation procedure
- Foundations of the Chomsky hierarchy

## Connections
- [[Speech Act Theory]]
- [[Ontologies]]
- [[Multi-Agent Cooperation and the Emergence of Natural Language]]
- [[Foundations of Illocutionary Logic]]

## Conceptual Contribution
- **Claim:** Natural language (English) is not finitely describable by a finite-state Markov process, nor adequately by a pure phrase-structure grammar; a *transformational* grammar built on top of phrase structure is materially simpler and exposes genuine linguistic insight.
- **Mechanism:** Three candidate models examined formally — (1) finite-state Markov processes, shown incapable of generating mirror-image / nested-dependency constructions central to English; (2) phrase-structure (context-free) grammars, adequate in principle but producing unwieldy, redundant grammars; (3) transformational grammars, where a kernel of simple sentences plus transformations derives the rest, yielding compact and explanatorily powerful descriptions.
- **Concepts introduced/used:** [[Finite-state Grammars]], [[Phrase-structure Grammar]], [[Transformational Grammar]], [[Chomsky Hierarchy]], [[Generative Grammar]], [[Kernel Sentences]]
- **Stance:** formal / linguistic-theory
- **Relates to:** Foundational reference point for any discussion of language structure, including emergent-language work ([[Emergence of Grounded Compositional Language in Multi-Agent Populations]], [[Multi-Agent Cooperation and the Emergence of Natural Language]]) where "compositionality" is the property Chomsky's phrase-structure was designed to capture. Complements [[Algorithmic Information Theory - Grunwald Vitanyi]]'s description-length view with a structural/syntactic one. Distant ancestor of the parser-design rigour demanded by [[PKI Layer Cake - Kaminsky Patterson Sassaman]].

## Tags
#linguistics #formal-grammar #chomsky-hierarchy #foundations
