# CRDTs

**Conflict-free Replicated Data Types** (Shapiro et al.) — data types whose operations commute, associate, and are idempotent, guaranteeing that replicas updated in any order converge to the same value. Each CRDT is an object-oriented packaging of a small monotonic state-merge lattice.

From the **[[CALM Theorem]]** viewpoint, CRDTs are canonical monotonic building blocks: programs that stay within the CRDT abstraction are automatically coordination-free. They express a *partial* monotonic pattern — for end-to-end application consistency the program's *composition* of CRDTs also has to stay monotonic, which is the standing open problem the CALM paper highlights.

## Common examples
- G-Counter, PN-Counter
- G-Set, 2P-Set, OR-Set, LWW-Set
- LWW-Register, MV-Register
- RGA (sequence CRDTs)

## In this vault
- [[Keeping CALM - When Distributed Consistency is Easy]]
- [[CALM Theorem]]
- [[Monotonic Logic]]
- [[Coordination Avoidance]]
- [[Confluence]]
