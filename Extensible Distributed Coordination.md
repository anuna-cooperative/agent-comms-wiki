# Extensible Distributed Coordination

**Reference:** Tobias Distler, Christopher Bahn, Alysson Bessani, Frank Fischer, Flavio Junqueira (2015). *EuroSys '15*. Source file: `eurosys15-edc.pdf`

## Summary
The paper argues that coordination services such as ZooKeeper and DepSpace, which centralize primitives like locks, leader election, and queues for datacenter services, suffer because their fixed limited interfaces force multi-RPC workarounds that are slow and race-prone. The authors propose *extensibility*: clients can dynamically install small server-side "recipes" that execute atomically on the coordination kernel's state, turning multi-step RPC patterns into single efficient operations.

They describe a model where extensions are sandboxed for safety (bounded resource use, determinism, no API extension) and present implementations — Extensible ZooKeeper (EZK) and Extensible DepSpace (EDS) — showing that extensibility increases throughput of a distributed queue by over an order of magnitude (17x for ZK, 24x for DepSpace) without breaking Byzantine fault tolerance or adding significant kernel complexity.

## Key Ideas
- Limited coordination-kernel APIs force inefficient RPC chains.
- Custom extensions execute atomically server-side, like stored procedures for coordination state.
- Sandboxing requirements: no API changes, security, determinism, bounded resource use.
- Operation extensions vs. event extensions.
- Huge throughput gains (17x, 24x) over ZooKeeper/DepSpace.

## Connections
- [[Multi-Agent Systems]]
- [[Gossip Protocols]]
- [[Self-Adaptive Systems]]

## Conceptual Contribution
- **Claim:** Coordination kernels (ZooKeeper, DepSpace) are fundamentally limited by fixed primitive APIs that force clients into inefficient multi-RPC workarounds; allowing dynamically-installed, sandboxed, server-side extensions preserves safety while dramatically improving throughput.
- **Mechanism:** Defines an extension model (operation and event extensions) and sandbox requirements (no API modification, security, determinism, bounded resource use); implements EZK (ZooKeeper) and EDS (DepSpace); evaluates four standard recipes (shared counter, queue, barrier, leader election) showing 17-24x throughput gains.
- **Concepts introduced/used:** [[Coordination Kernel]], [[Server-Side Extensions]], [[Sandboxing]], [[Determinism]], [[Byzantine Fault Tolerance]], [[Stored-Procedure Coordination]], [[Coordination Recipes]]
- **Stance:** engineering
- **Relates to:** Offers a systems counterpoint to the agent-level coordination abstractions in [[Coordinating Agents Using ACL Conversations]] and [[Multiagent Systems Sycara]]; shares the extensibility design philosophy of [[Extensibility in Programming Language Design - Standish]] applied to distributed state.

## Tags
#coordination #distributed-systems #zookeeper #extensibility
