# Algebraic Effects

A programming-language abstraction for structured side-effects: a program declares the *effect operations* it may perform (e.g. `send`, `recv`, `choose`), and a separately written *effect handler* gives those operations a concrete interpretation. The decoupling lets the same program run with different handlers — sequentially, in parallel, in a simulator, or projected to a particular role. In [[Choreographic Programming]] this is a natural way to realise [[Endpoint Projection]]: the choreography is one program, and projection to each role is just installing that role's handler. Pact's Python implementation uses Basis Research's `effectful` library to implement projection this way.

## In this vault
- [[Choreographic Programming]]
- [[Endpoint Projection]]
- [[Effectful]]
- [[Pact - A Choreographic Language for Agentic Ecosystems]]
