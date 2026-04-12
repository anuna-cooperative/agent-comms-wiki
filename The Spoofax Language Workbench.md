# The Spoofax Language Workbench: Rules for Declarative Specification of Languages and IDEs

**Reference:** Kats, L. C. L., Visser, E. (2010). *Proc. OOPSLA 2010, ACM SIGPLAN Notices*. Source file: `The_Spoofax_Language_Workbench_Rules_for_Declarati.pdf`. URL: https://lennart.cl/publications/the-spoofax-language-workbench/

## Summary
Spoofax is an Eclipse-based language workbench that lets developers define a DSL's syntax, semantics, and full IDE support (syntax highlighting, content completion, reference resolution, refactoring, error marking, code generation) entirely via concise declarative specifications. Syntax is expressed in SDF with permissive error-recovery grammars; transformations, name analysis, and code generation are written in Stratego; editor services are declared in rule-based service descriptors.

The architecture separates language-parametric infrastructure from language-specific definitions and supports agile development: language definitions can be dynamically loaded into the same Eclipse instance and tested side-by-side. The paper describes component dependencies (grammar-driven presentation services, semantic services derived from name analysis) and contrasts Spoofax with EMFText, MPS, Xtext, and the Synthesizer Generator. The result is a coherent, concise toolchain for agile DSL + IDE development.

## Key Ideas
- Single declarative spec drives both compiler and IDE services.
- SDF grammars + Stratego rewrites as the semantic base.
- Permissive grammars for error recovery.
- Editor service descriptors separate "which" from "what".
- Dynamic loading enables agile language development.

## Connections
- [[Language Workbenches]]
- [[Macros as Language Extension]]
- [[Code as Data]]
- [[Agent-Oriented Programming]]

## Conceptual Contribution
- **Claim:** A language and its IDE can be specified together, declaratively, from a single set of high-level rules — removing the gulf between compiler front-ends and interactive tooling that has historically doomed DSLs to poor editor support.
- **Mechanism:** Spoofax composes SDF (scannerless generalized-LR grammars, with permissive error-recovery productions), Stratego (rewrite-based transformations for name analysis, type checking, code generation), and editor-service descriptors that declare syntax highlighting, reference resolution, completion, outline, and refactoring. The Eclipse plug-in hot-loads new language definitions, enabling round-trip agile development; grammar-driven services are separated from semantics-driven services to manage dependencies.
- **Concepts introduced/used:** [[Language Workbench]], [[SDF]], [[Stratego]], [[Editor Service Descriptor]], [[Permissive Grammar]], [[Declarative Specification]], [[Meta-Programming]], [[DSL]]
- **Stance:** engineering
- **Relates to:** A concrete instance of the "whole-language" tooling vision behind [[A Modular Approach to Metatheoretic Reasoning for Extensible Languages]] and [[Extensibility in Programming Language Design - Standish]]; the rule-based services resonate with [[Creating Languages in Racket]], and the formal-analysis possibilities connect to the dependability specification of [[Architectural Patterns for Dependable Software Systems - SOL]].

## Tags
#language-workbench #dsl #ide #meta-programming
