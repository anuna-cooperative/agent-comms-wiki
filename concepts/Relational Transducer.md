# Relational Transducer

Ameloot-Neven-Van den Bussche formalisation of a distributed program node: a relational event-loop server that, on each tick, (1) *ingests* an unordered batch of insert/delete requests into local relations, (2) *queries* the updated relations (a monotonic relational query: selection, projection, join, union, transitive closure), and (3) *sends* results as messages to other machines and outputs.

A *relational transducer network* distributes data across machines of this shape. The **[[CALM Theorem]]** is proved over this model: a query has a coordination-free evaluation plan on such a network iff the query is monotone.

## In this vault
- [[Keeping CALM - When Distributed Consistency is Easy]]
- [[CALM Theorem]]
- [[Monotonic Logic]]
- [[Dedalus]]
- [[Bloom Language]]
