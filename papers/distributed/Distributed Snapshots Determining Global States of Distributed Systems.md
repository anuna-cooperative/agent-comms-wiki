# Distributed Snapshots: Determining Global States of Distributed Systems

**Reference:** K. Mani Chandy, Leslie Lamport (1985). *ACM Transactions on Computer Systems*, 3(1):63-75. Source file: `chandy-lamport-1985.pdf`. [URL](https://lamport.azurewebsites.net/pubs/chandy.pdf)

## Summary
Introduces the Chandy-Lamport distributed-snapshot algorithm: a decentralised procedure by which processes in an asynchronous message-passing system can jointly record a consistent global state without halting the underlying computation and without any shared clock. The recorded state may never have existed at a single instant, but it is *reachable* from the initial state and can *reach* the final state; in particular, it correctly detects any stable property (deadlock, termination, token loss, etc.).

The algorithm works on a strongly connected graph of FIFO channels: the initiator records its local state and sends a special *marker* on every outgoing channel; upon first receipt of a marker on an incoming channel, a process records its own state, records the incoming channel as empty, and propagates markers on its outgoing channels; subsequent markers terminate channel recording. The paper's "photographers of migrating birds" metaphor became canonical for the problem. The snapshot defines a consistent cut in the happens-before order and is the foundation for distributed debugging, checkpointing, and stable-property detection.

## Key Ideas
- Global state = set of process states plus set of channel (message-in-transit) states
- Marker messages as in-band synchronization tokens on FIFO channels
- A recorded snapshot is reachable from the pre-snapshot state and reaches the post-snapshot state, even though it may never have held simultaneously
- Stable properties (termination, deadlock, lost tokens) can be decided on any recorded snapshot
- No shared clock, no halting of the underlying computation, fully decentralised initiation
- Requires FIFO channels and eventual delivery; channel state = messages sent before marker but received after

## Connections
- [[Time Clocks and the Ordering of Events in a Distributed System]]
- [[CALM Theorem]]
- [[Gossip Protocols]]

## Conceptual Contribution
- **Claim:** A consistent global state of an asynchronous distributed system can be recorded by a fully local algorithm using in-band marker messages, without stopping the computation and without shared clocks.
- **Mechanism:** An initiator records its state and floods markers. Each process, on first marker arrival on channel c, records its own state and treats the pre-marker messages on c as empty; for subsequent incoming channels it records the messages received after its own state-recording and before the marker as the channel's recorded state. FIFO channels guarantee consistency of the resulting cut.
- **Concepts introduced/used:** Consistent cut, global state, stable property, marker protocol, in-band control, distributed termination detection, distributed deadlock detection, checkpointing.
- **Stance:** formal / algorithmic.
- **Relates to:** Builds directly on the happens-before relation and logical clocks of [[Time Clocks and the Ordering of Events in a Distributed System]] — a snapshot is a consistent antichain in that partial order. Complements [[CALM Theorem]], which characterises computations whose results are insensitive to message ordering and therefore need no snapshot for correctness. The flooding of markers over a connected topology is a structural cousin of [[Gossip Protocols]], though snapshot markers carry exact-once semantics rather than probabilistic diffusion.

## Tags
#distributed-systems #snapshots #global-state #stable-properties #checkpointing
