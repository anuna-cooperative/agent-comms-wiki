# Protocol Kernel

A runtime that supports the construction and execution of communication services from small, reusable **micro-protocols**. The kernel supplies composition, event propagation, timers, message-buffer management, and other common machinery; applications select and arrange protocol modules to obtain a desired communication service instead of adopting one fixed transport stack.

[[Appia - A Flexible Protocol Kernel Supporting Multiple Coordinated Channels|Appia]] distinguishes the static protocol type from its runtime state at two levels: layers are instantiated as sessions, while qualities of service are instantiated as channels. Its distinctive extension is that several channels may share a session, making cross-channel constraints part of the communication architecture rather than application glue.

A protocol kernel differs from a [[Coordination Kernel|coordination kernel]]. The former constructs the communication path itself from functions such as ordering, reliability, failure detection, encryption, and synchronization; the latter exposes shared distributed-state primitives such as locks, queues, barriers, and leader election.

## In this vault

- [[Appia - A Flexible Protocol Kernel Supporting Multiple Coordinated Channels]]
- [[Extensible Distributed Coordination]]
- [[Layered Systems]]
