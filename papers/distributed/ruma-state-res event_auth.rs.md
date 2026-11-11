# ruma-state-res `event_auth.rs`

**Reference:** Ruma contributors. *ruma-state-res 0.18.0: `src/event_auth.rs`*. Rust implementation of Matrix event authorization and auth-event selection. [Source](https://docs.rs/crate/ruma-state-res/latest/source/src/event_auth.rs)

## Summary

This module is the executable counterpart of Matrix's event-authorization rules. It computes the state-event types an incoming event must cite, validates that supplied `auth_events` are complete, unique by `(type, state_key)`, in the same room, and otherwise structurally appropriate, then applies the room-version-dependent authorization checks.

The implementation dispatches on event type and content: create events establish the room; membership events check joins, invites, kicks, bans, and restricted-join authorization; power-level events prevent unauthorized escalation or modification of peers; redactions and ordinary events compare the sender's required and effective power. Generic event traits keep the state-resolution algorithm independent of a specific event representation, while explicit room-version parameters preserve historical semantics.

## Key Ideas

- **Executable specification:** Rust control flow mirrors the normative Matrix authorization algorithm.
- **Minimal auth closure:** expected authorization types are derived from event type and content.
- **Structural validation:** auth events must exist, share the room, and have unique state keys.
- **Power monotonicity:** users cannot grant, revoke, or alter powers beyond their own authority.
- **Membership state machine:** joins, invites, leaves, kicks, and bans have distinct predicates.
- **Version-aware behavior:** authorization changes are selected through room-version rules.

## Connections

- [[Matrix Room Version 11 Specification]]
- [[Analysis of the Matrix Event Graph Replicated Data Type]]
- [[PolicyMaker Compliance Checking]]
- [[Security Policy Languages and Enforcement]]
- [[Proof-Carrying Code - Necula]]

## Conceptual Contribution

- **Claim:** Matrix authorization can be factored into reusable, deterministic predicates over an event and its explicitly supplied authorization context.
- **Mechanism:** Auth-event selection, context validation, and type-specific Rust checks parameterized by room version.
- **Concepts introduced/used:** [[Event Authorization]], [[Auth Event Selection]], [[Power Level]], [[Membership Event]], [[Room Version]]
- **Stance:** production implementation / executable protocol artifact
- **Relates to:** Shows exactly where the declarative-looking rules of [[Matrix Room Version 11 Specification]] become enforcement code.

## Tags

#matrix #rust #authorization #state-resolution #implementation #protocol
