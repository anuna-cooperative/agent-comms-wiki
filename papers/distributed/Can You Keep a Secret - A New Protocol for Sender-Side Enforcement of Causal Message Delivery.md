# Can You Keep a Secret? A New Protocol for Sender-Side Enforcement of Causal Message Delivery

## Reference

Tong, Y., Liittschwager, N. & Kuper, L. (2026). "Can you keep a secret? A new protocol for sender-side enforcement of causal message delivery." To appear at *PaPoC 2026* (11th Workshop on Principles and Practice of Consistency for Distributed Data). arXiv:2603.14690. [URL](https://arxiv.org/abs/2603.14690)

## Summary

[[Causal Message Delivery|Causal delivery]] guarantees that if one message causally precedes another (in the [[Time Clocks and the Ordering of Events in a Distributed System|happened-before]] sense), no recipient sees the second before the first. There are two classic enforcement strategies. *Receiver-side* enforcement attaches causal metadata (e.g. [[Vector Clock|vector clocks]]) to every message and has recipients buffer messages until their dependencies arrive — correct, but it pays a per-message metadata cost that grows with the system. *Sender-side* enforcement instead has senders hold messages back until it is safe to release them, avoiding the metadata overhead, but the traditional sender-side approach is **overly conservative**: a sender delays emitting a message until it can be sure no earlier-but-undelivered message could overtake it, stalling work that could have proceeded.

This paper introduces **Cykas**, a sender-side protocol that "sidesteps the conservativeness of the traditional sender-side approach by allowing eager sending of messages and constraining the behavior of their recipients." Rather than blocking the sender, Cykas lets messages go out eagerly and shifts the obligation to recipients, who are constrained so that the causal-delivery guarantee is still preserved without per-message causal metadata. The authors implement Cykas in Rust and verify its correctness with the [[Stateright|Stateright]] model checker, and report that eager sending yields performance benefits for long-running jobs — letting downstream jobs start earlier and reducing overall execution time relative to the conservative sender-side baseline.

## Key Ideas

- **Sender-side vs receiver-side causal delivery:** receiver-side buffers on causal metadata; sender-side withholds messages to avoid metadata but is traditionally conservative. Cykas keeps the sender-side metadata savings while removing the conservatism.
- **Eager sending + constrained recipients:** the core move is to send eagerly and place the safety constraints on *recipient* behaviour, rather than stalling the sender until release is provably safe.
- **No per-message causal metadata:** preserves the central advantage of the sender-side family — avoiding [[Vector Clock|vector-clock]]-style overhead that scales poorly.
- **Formally model-checked:** the protocol is implemented in Rust and its causal-delivery guarantee verified using the [[Stateright|Stateright]] model checker.
- **Performance for long-running jobs:** eager emission lets dependent work begin sooner, lowering end-to-end execution time compared to the conservative sender-side approach.

## Connections

- [[Time Clocks and the Ordering of Events in a Distributed System]] — the happened-before relation that *causal* delivery is defined against.
- [[Causal Message Delivery]] — the property this protocol enforces.
- [[Vector Clock]] — the receiver-side metadata Cykas avoids carrying per message.
- [[Distributed Snapshots Determining Global States of Distributed Systems]] — companion notion of causally-consistent global state.
- [[Gossip Protocols]] — epidemic dissemination that implicitly maintains a causal partial order.
- [[Keeping CALM - When Distributed Consistency is Easy]] — monotonicity as the other lever for cheap consistency.
- [[A Comprehensive Study of Convergent and Commutative Replicated Data Types]] — CRDT causality tracking is the receiver-side cost this work routes around.
- [[Stateright]] — the Rust model checker used to verify the protocol.
- [[ChoRus - Library-Level Choreographic Programming in Rust]] — same research lineage (Kuper group); Rust-based, verification-minded distributed protocols.

## Conceptual Contribution

- **Claim:** Sender-side enforcement of causal message delivery need not be conservative. By allowing senders to emit eagerly and instead constraining recipient behaviour, a protocol can keep the metadata-free advantage of the sender-side family while removing the delays that previously made it slower than necessary.
- **Mechanism:** Cykas — eager sending paired with recipient-side constraints sufficient to preserve causal delivery without per-message causal metadata; implemented in Rust and verified with the [[Stateright|Stateright]] model checker; evaluated against the conservative sender-side baseline.
- **Concepts introduced/used:** [[Cykas]], [[Causal Message Delivery]], Sender-Side Enforcement, [[Vector Clock]], [[Stateright|Model Checking]], [[Time Clocks and the Ordering of Events in a Distributed System|Happened-Before]].
- **Stance:** systems / protocol design with formal verification.
- **Relates to:** sits in the causal-delivery lineage rooted in [[Time Clocks and the Ordering of Events in a Distributed System|Lamport's happened-before]] and the receiver-side metadata tradition of [[Vector Clock|vector clocks]]; shares the Rust-and-verification methodology of the Kuper group's choreographic work ([[ChoRus - Library-Level Choreographic Programming in Rust]], [[HasChor - Functional Choreographic Programming]]).

## Tags

#distributed-systems #causality #causal-delivery #consistency #model-checking #rust #papoc
