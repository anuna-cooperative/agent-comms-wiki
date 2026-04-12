# Extensibility in Programming Language Design

**Reference:** Thomas A. Standish (1975). *National Computer Conference 1975 (AFIPS)*. Source file: `1499949.1500003.pdf`. [URL](https://escholarship.org/uc/item/51x8c453)

## Summary
A retrospective on the 1960s-70s "extensible languages" movement. Standish catalogues extension techniques (paraphrase, orthophrase, metaphrase), reviews what the early community hoped for — a universal base language that any user could tailor with modest effort — and explains why those hopes were only partly realised. He concludes that extensibility relates to high-level languages the way macros relate to assembly: useful for suppressing low-level detail and masking irritating features, but not the programming revolution once promised.

The paper is an early, honest assessment of why language extension is harder than anticipated, introducing vocabulary still used today.

## Key Ideas
- Paraphrase: defining new forms via existing ones (macros, procedures)
- Orthophrase: adding orthogonal features that cannot be paraphrased
- Metaphrase: altering interpretation rules (scoping, evaluation)
- Early euphoria vs realistic assessment of labour/skill costs
- 27 extensible languages proposed by 55 people by 1975

## Connections
- [[The Extensible Language - Graham]]
- [[Creating Languages in Racket]]
- [[A Modular Approach to Metatheoretic Reasoning for Extensible Languages]]
- [[Language Workbenches]]

## Conceptual Contribution
- **Claim:** The 1960s-70s dream of universal extensible languages largely failed because extension techniques divide into qualitatively different kinds with very different labor costs; only the cheapest (paraphrase, macros) proved practically useful.
- **Mechanism:** Taxonomy of extension techniques — *paraphrase* (define new forms in terms of existing ones: macros, procedures, syntax macros, data/operator definitions), *orthophrase* (add genuinely new features outside the base language's span, e.g. I/O primitives), and *metaphrase* (alter interpretation rules: scoping, evaluation order). Argues orthophrase/metaphrase require near-compiler-writer expertise and rarely pay off.
- **Concepts introduced/used:** [[Paraphrase]], [[Orthophrase]], [[Metaphrase]], [[Macros as Language Extension]], [[Language Extensibility Taxonomy]], [[Extensible Languages Movement]], [[Domain-Specific Languages]]
- **Stance:** retrospective-critique / taxonomic
- **Relates to:** Direct intellectual ancestor of [[The Extensible Language - Graham]] and [[Creating Languages in Racket]], both of which represent the paraphrase/macro wing that Standish judged successful. [[A Modular Approach to Metatheoretic Reasoning for Extensible Languages]] tackles the metatheoretic difficulties Standish foresaw for orthophrase extensions.

## Tags
#language-design #extensibility #history #macros
