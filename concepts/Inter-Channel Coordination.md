# Inter-Channel Coordination

Constraints that relate two or more communication channels used by the same application. Channels may intentionally provide different delivery, ordering, latency, or loss properties while still needing a common failure view, shared cryptographic state, synchronized media timing, or an ordering relation that spans channel boundaries.

[[Appia - A Flexible Protocol Kernel Supporting Multiple Coordinated Channels|Appia]] implements these constraints by allowing distinct channel stacks to share stateful protocol sessions. The shared session becomes the coordination point: channel-unaware sessions may treat the channel identifier opaquely, while channel-aware sessions can distinguish paths and select the appropriate channel for generated events.

## In this vault

- [[Appia - A Flexible Protocol Kernel Supporting Multiple Coordinated Channels]]
- [[Channel-based Coordination]]
- [[Layered Systems]]
