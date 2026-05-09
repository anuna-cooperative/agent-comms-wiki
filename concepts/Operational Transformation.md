## Operational Transformation

Ellis & Gibbs's (1989) concurrency-control technique for real-time collaborative editing: each replica executes local operations optimistically, and remote operations arriving over the network are *transformed* by the operations executed locally since the common ancestor before being applied. The transformation preserves the user's intended effect under concurrent modification. The technical substrate of Google Docs, Office Online, Etherpad. Conceptual ancestor of [[CRDTs]], which achieve the same convergence guarantees through commutative operations rather than transformation functions.

## In this vault
- [[Concurrency Control in Groupware Systems]]
- [[Transformation Function]]
- [[CCI Model]]
- [[CRDTs]]
- [[A Comprehensive Study of Convergent and Commutative Replicated Data Types]]
