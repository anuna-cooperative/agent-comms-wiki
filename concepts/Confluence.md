# Confluence

*Program* consistency (as used by CALM): a distributed program is **confluent** if it produces the same observable outputs regardless of the non-deterministic order in which its inputs are delivered or batched. Formally, a confluent single-machine operation is one that maps sets of inputs to sets of outputs such that repeated or reordered applications yield the same final set.

Confluence is weaker and more permissive than storage-level linearizability / serializability — it allows wildly different mid-flight states across replicas as long as the *application-level* outcome converges. This is the user-observable criterion the **[[CALM Theorem]]** characterises.

## In this vault
- [[Keeping CALM - When Distributed Consistency is Easy]]
- [[CALM Theorem]]
- [[Monotonic Logic]]
- [[Coordination Avoidance]]
- [[CAP Theorem]]
