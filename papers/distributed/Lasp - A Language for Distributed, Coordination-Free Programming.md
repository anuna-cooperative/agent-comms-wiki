# Lasp: A Language for Distributed, Coordination-Free Programming

**Reference:** Christopher Meiklejohn & Peter Van Roy (2015). PPDP ’15, Siena, Italy, 14–16 July 2015. [DOI](https://doi.org/10.1145/2790449.2790525). [Repository PDF](https://research.dial.uclouvain.be/bitstreams/1c3fe706-3869-40e8-8987-6ad8d2cc92e8/download).

## Summary

**Lasp** combines deterministic dataflow with [[CRDTs]] to compose convergent distributed computations. Individual CRDT convergence does not automatically extend to arbitrary compositions: transforming visible values can discard metadata needed for correct merging.

Lasp's operators transform both values and their metadata. This supports externally nonmonotonic behavior, such as set removal, through internally monotonic state. The paper provides semantics, a functional-reasoning theorem under communication/failure assumptions, and an Erlang/Riak Core prototype.

## Key Ideas

- `bind` joins information into lattice-valued variables.
- Monotonic reads wait until local state reaches a supplied lattice threshold; they may block.
- Persistent dataflow processes implement map, filter, fold, product, union, and intersection.
- Examples include an advertisement counter and a key-value store.
- Convergence of the supported compositions does not establish arbitrary application invariants or linearizability.

## Connections

- [[CRDTs]]
- [[Strong Eventual Consistency]]
- [[Coordination Avoidance]]
- [[Monotonic Logic]]
- [[A Comprehensive Study of Convergent and Commutative Replicated Data Types]] — underlying replicated objects.
- [[Logic and Lattices for Distributed Programming]] — compare lattice-based programming models.
- [[Keeping CALM - When Distributed Consistency is Easy]] — compare the coordination/monotonicity connection.
- [[A Monad for Deterministic Parallelism]] — compare deterministic dataflow communication.

## Conceptual Contribution

- **Claim:** CRDTs can form convergent dataflow computations through metadata-aware composition.
- **Mechanism:** Lattice variables, threshold reads, and continuous transformations.
- **Concepts introduced/used:** Lasp, [[CRDTs]], [[Strong Eventual Consistency]].
- **Stance:** distributed programming / functional dataflow.
- **Relates to:** Bridges the vault's replicated-data and programming-language literature.

## Tags

#distributed-systems #crdts #dataflow #coordination-avoidance #erlang #ppdp
