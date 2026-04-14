# Security Applications of Formal Language Theory

**Reference:** Sassaman, Patterson, Bratus, Locasto, Shubina (2011). *Dartmouth College Computer Science Technical Report TR2011-709*. Source file: `Security Applications of Formal Language Theory.pdf`. [URL](https://digitalcommons.dartmouth.edu/cs_tr/335/)

## Summary
This is the foundational LangSec technical report: a sustained argument that the hardest unsolved problems of secure composition (unsafe input handling, mutually intelligible but divergent message interpretations between components) are consequences of ignoring formal language theory in protocol and software design. The authors connect everyday security failures to decidability results: if a protocol's input language requires recognizers more powerful than necessary (or worse, undecidable), then safely accepting inputs and ensuring identical interpretation across endpoints become theoretically unachievable, producing an endless stream of 0-days that no amount of patching can stop.

Part I develops the formalism, situates exploitation as a constructive proof of unintended computation ("weird machines"), introduces the parse tree differential attack as a systematic technique for finding interpretation mismatches, and applies the framework to SQL validation, PKCS#1 (proven context-sensitive), X.509, ASN.1, and IDS/IPS composition failures. Part II distills the analysis into accessible design principles for protocol designers, developers, and auditors.

The core prescription: keep input languages at the lowest Chomsky level that suffices, build recognizers that fully validate input before any processing, never mix recognition with action ("shotgun parsing"), and ensure identical parsers across endpoints to prevent parser differentials.

## Key Ideas
- Composition is the primary engineering means and the primary security challenge.
- Safely accepting inputs and identically interpreting messages across endpoints are both fundamentally language-theoretic problems.
- Undecidable/overpowered input languages yield unfixable vulnerability classes.
- Parse tree differential attack: exploiting divergence between implementations of the "same" language.
- Weird machines as constructive proofs of unintended computation.
- PKCS#1 proven context-sensitive (not regular, not context-free).
- Design principles: minimize language power, full recognition before processing, identical parsers at all endpoints, no shotgun parsing.
- Critique of "good enough" (80/20) solutions to undecidable problems.

## Connections
- [[LangSec]]
- [[Shotgun Parsing]]
- [[Weird Machine]]
- [[Parser Differential]]
- [[Chomsky Hierarchy]]
- [[Distributed Security]]

## Conceptual Contribution
- **Claim:** Insecurity at protocol and component boundaries is a language-theoretic phenomenon: when input languages exceed what recognizers can safely decide, secure composition is impossible, and the resulting vulnerabilities are not bugs but inevitable consequences of design choices.
- **Mechanism:** Analyzes inputs as formal languages; classifies protocols by Chomsky level; shows that context-sensitive or undecidable languages force ad-hoc parsers whose implementation differences enable parse tree differential attacks; demonstrates weird machines as constructive proofs; prescribes minimal-power input languages, full recognition before processing, and identical recognizers at endpoints.
- **Concepts introduced/used:** [[LangSec]], [[Chomsky Hierarchy]], [[Parser Differential]], [[Shotgun Parsing]], [[Weird Machine]], [[Input Validation]], [[Protocol Design]], [[Distributed Security]]
- **Stance:** foundational
- **Relates to:** The canonical reference underlying [[LangSec]] and [[Shotgun Parsing]] in this vault; the theoretical substrate for [[A Language-Based Approach To Prevent DDoS]] and for applying parser-theoretic discipline to ACL design ([[ACL Design Principles]], [[ACL Verifiability]]) and to [[Agent Security]] concerns around message interpretation in [[LLM Agents]] and [[Tool Use]] settings.

## Tags
#langsec #formal-languages #parser-differential #weird-machines #protocol-design #security
