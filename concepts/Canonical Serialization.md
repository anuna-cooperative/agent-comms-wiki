# Canonical Serialization

A serialization scheme that maps each abstract value to a *unique* byte representation — a precondition for deterministic content addressing, signature verification, and Merkle-DAG construction. Canonical S-expressions (Rivest 1997, formalised in RFC 9804) use length-prefixed verbatim atoms and a fixed list syntax to eliminate whitespace, escaping, and atom-form variation. [[CBCL - Safe Self-Extending Agent Communication]] uses RFC 9804 canonical S-expressions for dialect signing, content-hash dialect identity, and the causal Merkle DAG that R5 protocol contracts traverse. Without canonicalisation, a single dialect could have multiple valid byte forms, breaking signature verification and admitting downgrade attacks.

## In this vault
- [[CBCL - Safe Self-Extending Agent Communication]]
- [[S-expression]]
- [[Parser Differential Attack]]
