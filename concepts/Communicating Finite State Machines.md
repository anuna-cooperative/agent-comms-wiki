# Communicating Finite State Machines

**Communicating finite-state machines (CFSMs)** model participants as finite-state processes that send and receive messages over asynchronous FIFO queues. A global state contains every participant's local state and the contents of every channel. Unbounded queues can make the overall system infinite-state even though each participant has finitely many states.

In the classical model, channels preserve messages and their order. Loss, corruption, or reordering requires additional modelling. A receive step consumes an expected message at the head of its incoming queue; a send step appends a message to an outgoing queue.

## In this vault

- [[On Communicating Finite-State Machines]] — Brand & Zafiropulo 1983; model, well-formed receptions, and verification limits. [Source PDF](https://www.cmi.ac.in/~madhavan/courses/concurrency2016/literature/brand-zafiropulo-jacm83.pdf).
- [[Multiparty Session Types Meet Communicating Automata]] — session-generated communicating automata.
- [[Multiparty Compatibility in Communicating Automata]] — compatible machines and global-type synthesis.
- [[Message Sequence Charts - A Survey]]
- [[Protocol Verification]]

## Tags
#communicating-automata #protocol-verification #distributed-systems
