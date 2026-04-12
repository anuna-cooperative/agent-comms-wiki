# CAP Theorem

Brewer (2000); proved Gilbert & Lynch (2002). A replicated storage system cannot simultaneously provide all three of: **Consistency** (linearizable reads), **Availability** (every request gets a response), **Partition tolerance** (continues operating under network partitions). Under a partition, the system must choose between C and A.

CAP is a **negative** result about *storage*. The **[[CALM Theorem]]** is its positive counterpart about *programs*: the subclass of programs achieving all three is exactly the monotonic ones.

## In this vault
- [[CALM Theorem]]
- [[Keeping CALM - When Distributed Consistency is Easy]]
- [[Confluence]]
- [[Coordination Avoidance]]
