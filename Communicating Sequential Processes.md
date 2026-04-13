# Communicating Sequential Processes

## Reference

Hoare, C. A. R. (1978). "Communicating Sequential Processes." *Communications of the ACM*, 21(8), 666-677. [URL](https://spinroot.com/courses/summer/Papers/hoare_1978.pdf)

## Summary

Hoare proposes that **input, output, and concurrent composition of processes** deserve the same foundational status as assignment, sequencing, and iteration. CSP is a small language in which programs are built from sequential processes that synchronise by unbuffered, typed message exchange over named channels. A send `P ! v` and a matching receive `Q ? x` rendezvous: neither proceeds until both are ready. Dijkstra's guarded commands — with nondeterministic choice — are generalized so that a guard may include a communication action, yielding a clean treatment of external choice, alternation, and fair scheduling.

The paper walks through a progression of examples — coroutines, prime sieve, matrix multiplication, bounded buffer, recursive subroutines implemented as processes, the dining philosophers — demonstrating how seemingly exotic concurrent patterns become compact CSP programs. Hoare's deliberate methodological stance is that structured concurrency can be as tractable as structured sequential programming, provided the primitives are well-chosen: synchronous rendezvous avoids the subtleties of mailboxes and shared state; named channels make communication explicit in the program text; guarded commands make nondeterminism principled.

CSP seeded a lineage of enormous practical and theoretical impact: occam (the transputer language), the CSP process algebra (Hoare 1985, Roscoe) with refinement-based verification via FDR, the Go programming language's goroutines and channels, Rust's `std::sync::mpsc`, and the modern "structured concurrency" revival. Together with Hewitt's actors, CSP defines one of the two great alternatives to shared-memory threads.

## Key Ideas

- **Synchronous message passing**: unbuffered rendezvous between named processes; no shared memory.
- **Named channels / named processes**: communication is part of program structure, syntactically explicit.
- **Guarded commands with I/O guards**: nondeterministic alternation and repetition over communications.
- **Parallel composition (||)**: processes execute concurrently, synchronizing only at matched send/receive.
- **No implicit buffering**: forces designers to reason about liveness and deadlock directly.
- **Refinement and equivalence**: later formalized as a process algebra with bisimulation / failures refinement.
- **Structured concurrency**: parallelism as a first-class program-structuring mechanism, not threads-as-afterthought.

## Connections

- [[Actor Model]] — the other great message-passing tradition; CSP is channel-centric where actors are mailbox-centric.
- [[A Universal Modular Actor Formalism for Artificial Intelligence]]
- [[Hoare Logic]] — Hoare's earlier work on axiomatic reasoning underlies his insistence on structured primitives.
- [[Time Clocks and the Ordering of Events in a Distributed System]] — rendezvous provides a stronger local synchrony than Lamport's messages.
- [[Let It Crash]]

## Conceptual Contribution

> Concurrency and communication deserve to be *primitive* language constructs, on par with assignment and iteration. By making processes and synchronous channels first-class, and by generalising guarded commands to choose over communications, one obtains a calculus in which concurrent algorithms are written as naturally as sequential ones — and in which correctness can be reasoned about algebraically. CSP established that concurrent programming is a structuring problem, not just a scheduling problem.

## Tags

#CSP #hoare #concurrency #message-passing #process-algebra #foundational #channels #structured-concurrency
