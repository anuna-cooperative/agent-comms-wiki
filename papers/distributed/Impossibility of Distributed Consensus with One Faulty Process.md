# Impossibility of Distributed Consensus with One Faulty Process

## Reference

Fischer, M. J., Lynch, N. A., & Paterson, M. S. (1985). "Impossibility of Distributed Consensus with One Faulty Process." *Journal of the ACM*, 32(2), 374-382. [URL](https://groups.csail.mit.edu/tds/papers/Lynch/jacm85.pdf)

## Summary

The FLP result is the canonical impossibility theorem of asynchronous distributed computing. Its statement is sharp: no deterministic consensus protocol can guarantee termination in an asynchronous message-passing system if even a single process may crash. Unlike earlier results that required Byzantine faults or lossy networks, FLP assumes reliable messaging and only one benign crash failure — yet still derives impossibility.

The proof proceeds by showing that every consensus protocol admits an *initial bivalent configuration* (one from which either decision value is still reachable), and that from any bivalent configuration an adversary scheduler can always delay one message to force the system into another bivalent configuration. Thus an admissible run exists in which no process ever decides. The core technical tool is the commutativity of disjoint process steps (Lemma 1) and a careful analysis of "critical" configurations where a specific process's next step is decision-forcing.

The result cleaves distributed computing into what is possible under various synchrony assumptions. Real-world protocols respond by weakening one axis: Paxos and Raft adopt *partial synchrony* and accept that liveness can only be guaranteed "eventually"; randomized consensus (Ben-Or, Rabin) achieves termination with probability 1; failure detectors (Chandra-Toueg ◊S) encapsulate the synchrony needed. FLP remains the bedrock boundary against which all consensus engineering is measured.

## Key Ideas

- **Consensus problem**: N processes, binary inputs; non-faulty processes must all decide the same value; some initial configuration must admit each decision.
- **Asynchronous model**: unbounded message delays; no clocks; no timeouts.
- **One crash failure**: the weakest possible fault assumption that still breaks consensus.
- **Bivalent configurations**: states from which both 0 and 1 outcomes are still reachable.
- **Adversary scheduler**: by reordering message deliveries, keeps the system in a bivalent configuration forever.
- **Safety vs. liveness**: FLP shows safety + liveness + fault-tolerance cannot coexist in pure async.
- **Escape hatches**: partial synchrony, randomization, failure detectors, or accepting non-termination in corner cases.

## Connections

- [[CAP Theorem]] — CAP is a direct relative: in partition-prone systems, atomic read/write also unattainable.
- [[CALM Theorem]] — monotonic logic sidesteps consensus by avoiding it.
- [[Keeping CALM - When Distributed Consistency is Easy]]
- [[Coordination Avoidance]] — the design pattern motivated by FLP.
- [[Gossip Protocols]] — probabilistic convergence as an alternative to deterministic agreement.
- [[Time Clocks and the Ordering of Events in a Distributed System]] — Lamport's logical time underlies the proof's commutation arguments.
- [[Knowledge and Common Knowledge in a Distributed Environment]] — common knowledge likewise unattainable in async systems.

## Conceptual Contribution

> In an asynchronous system where even a single process may fail silently, there is no deterministic protocol that guarantees every non-faulty process eventually decides — not because of cleverness gaps, but because a single slow process is indistinguishable from a crashed one, and that indistinguishability is weaponizable by the scheduler. Consensus requires *timing assumptions, randomness, or failure oracles*; these are not optional design choices but mathematical necessities.

## Tags

#distributed-systems #consensus #impossibility #FLP #asynchronous #fault-tolerance #foundational #safety-liveness
