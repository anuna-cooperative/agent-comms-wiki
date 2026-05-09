## Log Replication

The mechanism by which a strong-leader consensus protocol like [[Raft]] propagates state-machine commands to followers as ordered log entries. The leader appends new entries locally, sends an `AppendEntries` RPC to each follower, and counts entries as *committed* once a majority has them durably replicated. The log-matching invariant — if two logs share an entry with the same index and term, all earlier entries match — is the key property that makes safety arguments tractable.

## In this vault
- [[In Search of an Understandable Consensus Algorithm]]
- [[Raft]]
- [[Replicated State Machine]]
