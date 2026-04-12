# The Common Business Communication Language

**Reference:** John McCarthy (1975/1982, revised 1998/1999). *Stanford CS Department*. Source file: `cbcl2.pdf`. [URL](http://www-formal.stanford.edu/jmc/cbcl2.pdf)

## Summary
McCarthy's 1975 memo (revived in 1998 with footnotes anticipating XML and electronic commerce) sketches a Common Business Communication Language (CBCL) allowing computers from different organizations to exchange business messages - requests for quotations, offers, order status, delivery queries - without pre-arranged bilateral formats. The paper enumerates requirements: open-endedness, pre-existing compatibility, independence of internal data formats, and ability to fall back to human-readable form when a receiver does not understand a new message.

He proposes messages as nested parenthesized lists (a Lisp-like syntax McCarthy argues is isomorphic to but simpler than XML), adjectival modifiers (ADJECTIVE FOO YELLOW), and Russell description operators for referring expressions. The essay prefigures KQML-style performatives and electronic data interchange, and closes with 1998 advice to XML, W3C, and ICE on extensibility, Lisp-style syntax, and standard time formats.

## Key Ideas
- Inter-organizational computer communication without pre-arranged formats.
- Lisp-style S-expression syntax isomorphic to but simpler than XML.
- Adjectival modifiers (ADJECTIVE x y as a kind of y) for partial understanding.
- Non-monotonic reasoning required for natural-language-like expressivity.
- Proto-KQML vision of semantic business messaging.

## Connections
- [[KQML]]
- [[Agent Communication Languages]]
- [[Three Models For The Description Of Language]]
- [[Ontologies]]

## Conceptual Contribution
- **Claim:** Organisations should exchange business messages in a common, open-ended language without pre-arranged bilateral formats; partial understanding must degrade gracefully to human-readable fallback.
- **Mechanism:** Lisp-style S-expression messages (isomorphic to but simpler than XML), adjectival modifiers (ADJECTIVE x y) for partial-match semantics, Russell description operators for referring expressions, non-monotonic reasoning for NL-like expressivity; 1998 footnotes advise XML/W3C/ICE communities.
- **Concepts introduced/used:** [[Common Business Communication Language]], [[S-expressions]], [[EDI]], [[Non-monotonic Reasoning]], [[Adjectival Modifiers]], [[Agent Communication Languages]], [[Ontologies]], [[Performatives]], [[Speech Act Theory]], [[KQML]]
- **Stance:** foundational
- **Relates to:** Anticipates the performative-based vision of [[KQML Language And Protocol]] and the open discovery ambitions of [[Agent Network Protocol]] / [[Survey Of Agent Interoperability Protocols]]; its syntactic minimalism resonates with REST's uniform interface in [[Principled Design Of The Modern Web Architecture]].

## Tags
#foundational #communication-language #mccarthy #edi
