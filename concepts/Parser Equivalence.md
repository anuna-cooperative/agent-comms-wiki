# Parser Equivalence

Language equivalence means that two recognizers accept exactly the same language. For secure composition, LangSec also requires agreement on interpretation: accepting the same bytes does not by itself ensure that parsers produce equivalent structured values. Equivalence is decidable for finite automata and deterministic pushdown automata, but undecidable for general context-free grammars.

Having the same computational power is insufficient to establish equivalence. [[Myhill-Nerode Theorem]] and the [[Pumping Lemma]] address recognition capacity; agreement between a validator and its downstream consumer is a separate obligation. See [Security Applications of Formal Language Theory, §10, Principle 2](https://langsec.org/papers/langsec-tr.pdf#page=22).

## In this vault
- [[The Halting Problems of Network Stack Insecurity]]
- [[LangSec]]
- [[Parser Differential]]
