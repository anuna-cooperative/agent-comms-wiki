# Programming Erlang: Software for a Concurrent World (Second Edition)

**Reference:** Armstrong, J. (2013). *The Pragmatic Bookshelf*. Source file: `cbcl-ref/programming-erlang-2nd-edition.pdf`

## Summary
Joe Armstrong's second-edition textbook introduces Erlang as a language and runtime for building highly concurrent, distributed, and fault-tolerant systems. Part I motivates concurrency and tours the shell, modules, and compilation. Part II teaches sequential Erlang: atoms, tuples, lists, pattern matching, funs, records/maps, error handling with try/catch, binaries and the bit syntax, and the type system with Dialyzer.

Part III covers the concurrency primitives (spawn/send/receive), error handling in concurrent programs (links, monitors, supervised fault-tolerance), and distributed programming over Erlang nodes. Part IV covers libraries and frameworks (ports for C interfacing, files, sockets, web/WebSocket applications, ETS/DETS and Mnesia databases, and profiling/debugging/tracing). The book is widely cited as a canonical introduction to the Actor model and the "let it crash" philosophy that informs modern reactive and distributed-agent systems.

## Key Ideas
- Actor-model concurrency: processes + asynchronous message passing.
- "Let it crash" + supervision trees for fault tolerance.
- Pattern matching as pervasive control structure.
- Distributed programming built on the same primitives as local.
- Mnesia, ETS/DETS for in-memory and persistent storage.

## Connections
- [[Multi-Agent Systems]]
- [[Agent-Oriented Programming]]
- [[Self-Adaptive Systems]]
- [[Gossip Protocols]]
- [[Distributed Security]]

## Conceptual Contribution
- **Claim:** Concurrent, distributed and fault-tolerant software is simpler and more reliable when built on isolated processes that share nothing and communicate only by asynchronous messages, with failures handled by supervision rather than defensive programming ("let it crash").
- **Mechanism:** Armstrong teaches the Erlang trinity of spawn / send / receive, reinforces isolation via immutability and pattern matching, and then layers links, monitors and supervisor trees for systemic recovery. Distribution uses the same primitives as local concurrency, so topology becomes deployment-time. Supporting libraries (ports for C, sockets, ETS/DETS, Mnesia, tracing/profiling, web/WebSocket) show how the model scales to realistic systems.
- **Concepts introduced/used:** [[Actor Model]], [[Let It Crash]], [[Supervision Tree]], [[Erlang Process]], [[Pattern Matching]], [[Link and Monitor]], [[Mnesia]], [[ETS-DETS]], [[Bit Syntax]], [[OTP]]
- **Stance:** engineering
- **Relates to:** The practical counterpart to the fault-tolerance philosophy of [[Theory of Self-Reproducing Automata]] and the architectural dependability of [[Architectural Patterns for Dependable Software Systems - SOL]]; its message-passing primitives underpin agent frameworks surveyed in [[Intelligent Agents Theory and Practice]] and mesh with the calculus-level treatment in [[Secure Communications Processing for Distributed Languages]].

## Tags
#erlang #concurrency #actors #fault-tolerance #textbook
