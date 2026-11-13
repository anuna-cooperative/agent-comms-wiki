# CRDTs

**Conflict-free Replicated Data Types** (Shapiro et al.) — data types whose operations commute, associate, and are idempotent, guaranteeing that replicas updated in any order converge to the same value. Each CRDT is an object-oriented packaging of a small monotonic state-merge lattice.

From the **[[CALM Theorem]]** viewpoint, CRDTs are canonical monotonic building blocks: programs that stay within the CRDT abstraction are automatically coordination-free. They express a *partial* monotonic pattern — for end-to-end application consistency the program's *composition* of CRDTs also has to stay monotonic, which is the standing open problem the CALM paper highlights.

## Common examples
- G-Counter, PN-Counter
- G-Set, 2P-Set, OR-Set, LWW-Set
- LWW-Register, MV-Register
- RGA (sequence CRDTs)

## In this vault
- [[Merkle-CRDTs - Merkle-DAGs meet CRDTs]] — Merkle-Clocks and recoverable content-addressed update histories
- [[Lasp - A Language for Distributed, Coordination-Free Programming]] — composing CRDTs into convergent dataflow computations
- [[CRDT Emulation, Simulation, and Representation Independence]] — precise behavioral account of state-based/op-based emulation
- [[Keeping CALM - When Distributed Consistency is Easy]]
- [[CALM Theorem]]
- [[Monotonic Logic]]
- [[Coordination Avoidance]]
- [[Confluence]]
- [[A Comprehensive Study of Convergent and Commutative Replicated Data Types]] — Shapiro et al. 2011, the canonical reference
- [[Joining Forces - Toward a Unified Account of LVars and Convergent Replicated Data Types]] — connects state-based CRDTs to LVars and adds blocking threshold queries
- [[Logic and Lattices for Distributed Programming]] — CRDTs as a programming-language phenomenon
- [[Strong Eventual Consistency]]
- [[Causal Broadcast]]
- [[Version Vector]]
