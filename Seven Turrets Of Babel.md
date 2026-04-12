# The Seven Turrets of Babel: A Taxonomy of LangSec Errors and How to Expunge Them

**Reference:** Momot, Bratus, Hallberg, Patterson (2016). *IEEE Cybersecurity Development (SecDev)*. Source file: `7turretsaspublished.pdf`

## Summary
The authors catalogue seven recurring classes of input-handling bugs under the LangSec (language-theoretic security) lens: shotgun parsing, non-minimalist input-handling code, differing interpretations of the input language, incomplete protocol specification, overloaded fields in input format, permissive processing of invalid input, and inability to express input languages in the Chomsky hierarchy. Each class is grounded in concrete CVEs (Heartbleed, Android Master Key, Rosetta Flash, OpenSSL CVE-2016-0752).

LangSec's remedy is to treat input acceptance as a formal language-recognition problem: specify a grammar no more complex than deterministic context-free, build a recognizer that fully validates before any processing, and cleanly separate parsing from application logic. The paper proposes new CWE entries naming each weakness so auditors can precisely describe vulnerable input-handling code.

## Key Ideas
- LangSec: input should be a well-defined language with a fully-validating recognizer.
- Seven anti-patterns: shotgun parsing, non-minimalist code, interpretation drift, incomplete spec, field overloading, permissive invalid input, undecidable grammars.
- Chomsky hierarchy as a safety ceiling for input languages.
- Hand-rolled parsers vs parser-combinator / generator tooling (e.g., Hammer).
- Proposed new CWEs to label LangSec anti-patterns.

## Connections
- [[Language Workbenches]]
- [[A Language-Based Approach To Prevent DDoS]]
- [[Security Kernel Lambda Calculus]]

## Conceptual Contribution
- **Claim:** Most serious input-handling vulnerabilities reduce to seven recurring anti-patterns, all addressable by treating input acceptance as a formal language-recognition problem bounded by the Chomsky hierarchy.
- **Mechanism:** Catalogues each anti-pattern (shotgun parsing, non-minimalist code, interpretation drift, incomplete spec, field overloading, permissive invalid input, undecidable grammars) against real CVEs (Heartbleed, Android Master Key, Rosetta Flash); prescribes grammar-first validating recognizers and proposes new CWE entries.
- **Concepts introduced/used:** [[LangSec]], [[Shotgun Parsing]], [[Chomsky Hierarchy]], [[Parser Combinators]], [[Distributed Security]], [[Common Weakness Enumeration]]
- **Stance:** engineering / critique
- **Relates to:** Shares a language-theoretic security stance with [[A Language-Based Approach To Prevent DDoS]] and [[Security Kernel Lambda Calculus]]; its grammar-discipline arguments apply directly to the schema/protocol surfaces catalogued in [[Survey Of Agent Interoperability Protocols]] and exploited in [[MalTool Malicious Tool Attacks]].

## Tags
#langsec #security #parsing #language-theory
