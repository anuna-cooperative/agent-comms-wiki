# On Communicating Finite-State Machines

**Reference:** Daniel Brand & Pitro Zafiropulo (1983). *Journal of the ACM* 30(2), pp. 323–342, April. DOI: [10.1145/322374.322380](https://doi.org/10.1145/322374.322380). [ACM record](https://dl.acm.org/doi/abs/10.1145/322374.322380), retrieved with `ar-crawl session`. [Accessible paper PDF](https://www.cmi.ac.in/~madhavan/courses/concurrency2016/literature/brand-zafiropulo-jacm83.pdf), read for this summary.

## Summary

Brand and Zafiropulo model a communication protocol as a collection of finite-state processes connected by error-free FIFO channels of unbounded capacity. A global state includes both the local process states and the sequences of messages in transit. Finite participants therefore need not yield a finite global state space: queues supply unbounded memory.

The paper studies **well-formedness**: a reception is specified exactly when it is executable in some reachable global state. Missing receptions leave a process without a response to an arriving message; unexecutable receptions describe events that cannot occur. Well-formedness alone does not exclude deadlock. The authors separately study **stable tuples**, reachable combinations of process states with every channel empty, which help identify deadlocks and synchronisation errors.

## Key Ideas

- **Asynchronous communication:** sends append messages to queues; receptions consume the appropriate head message.
- **Global reachability matters:** a locally plausible receive transition need not be executable in the whole protocol.
- **Limits of automation:** reception executability, well-formedness, stability, deadlock possibility, and channel boundedness are generally undecidable. The paper discusses the undecidability proof from the authors' earlier work.
- **Restricted cases:** the reception/stability analysis is solvable for bounded channels, and for two processes with only one unbounded channel.
- **Constructive analysis:** characterise well-formed tree protocols, then use finite tree expansions and marking to analyse general protocols where the method applies. A bounded exploration alone establishes results only within its explored channel bound.

## Connections

- [[Communicating Finite State Machines]] — the underlying model.
- [[Multiparty Session Types Meet Communicating Automata]] — later session-type restrictions recover tractable guarantees for communicating automata.
- [[Multiparty Compatibility in Communicating Automata]] — compatibility and global-type synthesis for disciplined CFSM systems.
- [[Message Sequence Charts - A Survey]] — scenario specifications and communicating implementations.
- [[Protocol Verification]]
- [[Safety Property]]

## Conceptual Contribution

- **Claim:** Protocol correctness requires analysing the reachable joint behaviour of participants and channels.
- **Mechanism:** FIFO communicating automata, executable receptions, stable tuples, and tree-based analysis.
- **Concepts introduced/used:** [[Communicating Finite State Machines]], well-formedness, stable tuples, channel boundedness.
- **Stance:** foundational / protocol verification.
- **Relates to:** For agent conversations, the practical lesson is that finite per-agent workflows can still produce an infinite-state system through their inboxes. Applying the paper's model requires checking FIFO ordering and channel reliability; this is a wiki application.

## Tags
#communicating-automata #formal-methods #protocol-verification #concurrency #foundational
