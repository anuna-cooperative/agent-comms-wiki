# Endpoint Projection

The mechanical translation from a global choreographic program — which describes the joint behaviour of all participants — to a per-participant local program that, when run in parallel with the others, realises the choreography. Endpoint projection is the operation that makes [[Choreographic Programming]] practical: the global program is the source of truth, and projection to each role is a syntactic/semantic transformation that preserves the communication structure and (under standard well-formedness conditions) deadlock-freedom. Implementations differ in how role information is tracked — type-system roles (Choral, ChoRus), census polymorphism (Bates et al. 2025), or algebraic-effect handlers (Pact, [[Effectful]]) — but all share the global-to-local move that distinguishes choreographic from session-typed programming. The structural analogue in commitment-based protocol theory is [[Commitment Machines]], which compiles a global commitment specification to per-role finite-state machines. The multiagent-systems tradition also reaches decentralised endpoints by a route with no projection step at all: in [[BSPL]] [[Information Protocols]] every role acts directly on the global protocol using only its local history, and [[Enactability]] plays the part that projectability and knowledge of choice play here.

## In this vault
- [[Choreographic Programming]]
- [[Structured Communication-Centred Programming for Web Services]] — origin of the *Theorem of End-Point Projection*
- [[Multiparty Asynchronous Session Types]] — multiparty projection `G ↾ p`
- [[Introduction to Choreographies]]
- [[Session Types]]
- [[Pact - A Choreographic Language for Agentic Ecosystems]]
- [[Commitment Machines]]
- [[Algebraic Effects]]
- [[BSPL]]: decentralised enactment without projection; [[Enactability]] as the counterpart condition
- [[Information Protocols]]
