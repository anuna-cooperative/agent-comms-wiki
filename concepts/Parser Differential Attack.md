# Parser Differential Attack

Exploitation strategy in which two implementations of the same input grammar produce different parse trees for the same input — typically because the grammar is ambiguous or the spec underdetermines edge cases — letting an attacker bypass one validator while triggering execution in another. Demonstrated dramatically against X.509 PKI by Kaminsky, Patterson and Sassaman ([[PKI Layer Cake - Kaminsky Patterson Sassaman]]), where parser-differential certificates allowed name-spoofing attacks. The class-level fix recommended by [[LangSec]] is to design protocol input languages within the [[Deterministic Context-Free Language]] class, whose grammars are class-level unambiguous: every conformant parser must produce the same parse tree for every input, eliminating differentials at the grammar layer. [[CBCL - Safe Self-Extending Agent Communication]] applies this principle to agent communication; remaining implementation-level divergences (e.g. Unicode handling) are mitigated by canonical serialization.

## In this vault
- [[PKI Layer Cake - Kaminsky Patterson Sassaman]]
- [[CBCL - Safe Self-Extending Agent Communication]]
- [[LangSec]]
- [[Deterministic Context-Free Language]]
- [[Canonical Serialization]]
- [[Security Applications Of Formal Language Theory]]
