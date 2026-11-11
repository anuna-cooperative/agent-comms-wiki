# Matrix Room Version 11 Specification

**Reference:** The Matrix.org Foundation (Matrix Specification v1.14). *Room Version 11*. [Specification](https://spec.matrix.org/v1.14/rooms/v11/)

## Summary

Room version 11 is a concrete version of the Matrix room-state protocol, based on room version 10 with clarified redaction behavior. It specifies the persistent event format, authorization rules, event IDs and signatures, state resolution, canonical JSON, rejected-event handling, and signing-key validity. An event names both `prev_events`, which place it in the room's causal history, and `auth_events`, the small set of state events that justify whether it may enter the room.

Version 11 removes the redundant `creator` property from `m.room.create`, moves a redaction event's `redacts` target into `content`, and updates the redaction algorithm. Its authorization rules turn current room state—membership, power levels, join rules, third-party invites, and create-event constraints—into a deterministic admission predicate. State resolution handles forks separately: it selects a consistent state from competing event histories, while rejected events remain in the DAG but do not contribute state.

## Key Ideas

- **Two dependency relations:** `prev_events` express causal history; `auth_events` express authorization evidence.
- **Bounded auth references:** an event carries at most ten authorization-event IDs.
- **Event authorization:** type-specific checks use room creation, membership, join rules, and power levels.
- **Fork resolution:** state resolution reconciles conflicting state events over the event DAG.
- **Rejected but retained:** invalid events can remain part of history without affecting room state.
- **Versioned semantics:** room versions make protocol-breaking changes explicit and negotiable.

## Connections

- [[Analysis of the Matrix Event Graph Replicated Data Type]]
- [[ruma-state-res event_auth.rs]]
- [[The Blocklace - A Byzantine-repelling and Universal CRDT]]
- [[Byzantine Eventual Consistency and the Fundamental Limits of Peer-to-Peer Databases]]
- [[Authentication in Distributed Systems - Lampson Abadi Burrows Wobber]]

## Conceptual Contribution

- **Claim:** Federated room history can be admitted and reconciled deterministically from signed events and explicitly referenced authorization state.
- **Mechanism:** Versioned PDU format, event-auth predicate, cryptographic hashes/signatures, and state-resolution algorithm.
- **Concepts introduced/used:** [[Matrix Room Version]], [[Authorization Event]], [[State Resolution]], [[Power Levels]], [[Event Redaction]], [[Rejected Event]]
- **Stance:** normative protocol specification
- **Relates to:** Instantiates the abstract [[Analysis of the Matrix Event Graph Replicated Data Type|Matrix Event Graph]] and is implemented in Rust by [[ruma-state-res event_auth.rs]].

## Tags

#matrix #protocol #event-graph #authorization #state-resolution #federation
