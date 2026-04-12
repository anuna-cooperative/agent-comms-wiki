# Creating Languages in Racket

**Reference:** Matthew Flatt (2012). *Communications of the ACM, Vol. 55, No. 1*. Source file: `2063176.2063195.pdf`

## Summary
Practitioner-oriented introduction to Racket's support for *language-oriented programming*: building domain-specific languages as a natural extension of ordinary programming. Flatt develops a text-adventure game incrementally, starting from Racket's core, adding pattern-matching macros (`define-syntax-rule`) for `define-place`, `define-thing`, `define-verb`, then packaging these extensions into a module language (`#lang txtadv`) with its own non-parenthesised reader syntax and IDE (DrRacket) support.

The article demonstrates the full spectrum from simple syntactic abstraction via macros up through module languages that replace the default reader, showing how Racket smooths the path from library to full DSL.

## Key Ideas
- Language-oriented programming as a practical paradigm
- `define-syntax-rule` and syntax-case macros for pattern-based extension
- Module languages (`#lang ...`) package extensions as first-class languages
- Static checks can be implemented via macro-level type tagging
- DrRacket provides IDE integration for custom languages

## Connections
- [[Language Workbenches]]
- [[The Extensible Language - Graham]]
- [[Extensibility in Programming Language Design - Standish]]
- [[A Modular Approach to Metatheoretic Reasoning for Extensible Languages]]

## Conceptual Contribution
- **Claim:** Language-oriented programming — building a small DSL exactly fitted to a task — should be cheap and incremental, not a heavyweight "build a compiler" affair; Racket's macro system and module-language machinery make this the normal way to program.
- **Mechanism:** Walk through a text-adventure game implementation that evolves from plain-Racket library → syntactic abstractions (`define-syntax-rule` for `define-place`, `define-thing`) → a full `#lang txtadv` module language with custom reader, static checks via compile-time elaboration, and replaceable surface syntax; show each step as a small syntactic or module addition rather than a rewrite.
- **Concepts introduced/used:** [[Language-oriented Programming]], [[Racket Macros]], [[Module Languages]], [[Syntactic Abstraction]], [[DSLs]], [[Domain-Specific Languages]], [[Language Workbenches]], [[Hygienic Macros]], [[Macros as Language Extension]]
- **Stance:** engineering / tutorial
- **Relates to:** Modern realisation of the paraphrase-extension ideal diagnosed in [[Extensibility in Programming Language Design - Standish]] and evangelised in [[The Extensible Language - Graham]]. Provides the *practice* for which [[A Modular Approach to Metatheoretic Reasoning for Extensible Languages]] supplies a metatheoretic backbone.

## Tags
#racket #dsl #language-oriented-programming #macros
