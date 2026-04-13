# EROS: A Fast Capability System

## Reference

Shapiro, Jonathan S.; Smith, Jonathan M.; Farber, David J. "EROS: A Fast Capability System." In *Proceedings of the 17th ACM Symposium on Operating Systems Principles (SOSP '99)*, Kiawah Island, SC, December 1999. Published as *ACM SIGOPS Operating Systems Review* 34(5):170-185. [URL](https://sites.cs.ucsb.edu/~chris/teaching/cs290/doc/eros-sosp99.pdf)

## Summary

EROS (Extremely Reliable Operating System) is the third-generation reimplementation of the GNOSIS/KeyKOS capability architecture - the lineage created by Norm Hardy et al. at Tymshare in 1982 - clean-roomed in C++ for x86 by Jonathan Shapiro, Jonathan Smith, and David Farber at Penn. The paper's central claim, surprising to many at the time, is that a pure capability microkernel with transparent single-level store persistence can match or beat conventional Unix-kernel operation costs on commodity hardware. The authors show this through detailed microbenchmarks and careful architectural choices.

Architecturally, EROS is a microkernel. All resources - processes, address spaces, nodes (32-capability arrays), pages, entry capabilities, resume capabilities - are named and manipulated by unforgeable capabilities enforced by a tagged in-kernel data structure. A *protection domain* is defined by the set of capabilities held. The performance story rests on three pillars: (1) aggressive caching of abstract objects (processes, nodes, pages) in representations chosen for the underlying hardware; (2) unified design of IPC and capability invocation so that cross-domain calls are cheap; and (3) orthogonal persistence via periodic consistent snapshots with copy-on-write - meaning EROS has no file system in the traditional sense: the single-level store *is* the persistence mechanism, transparent to applications. A machine crash resumes where it left off, modulo the checkpoint interval.

The paper also addresses mandatory access control, the KeySAFE design (user-level reference monitors inserted between compartments for DAC/MAC composition), and the architectural features (nodes, entry capabilities, resume capabilities for one-shot continuations) that together let EROS support confinement and fine-grained POLA. EROS directly inspires seL4, CapROS, Coyotos, and is the principal existence proof cited whenever someone claims capability systems must be slow. It is a central reference in Miller's *Robust Composition* thesis and in the Capability Myths Demolished paper's defeat of the Confinement Myth.

## Key Ideas

- **Single-level store**: no file system; persistence is transparent, implemented by periodic consistent copy-on-write snapshots.
- **Capability is an unforgeable (object-id, rights) pair**, kernel-enforced via tagged storage.
- **Nodes**: 32-slot capability arrays, the building block for address spaces (tree of nodes) and process state.
- **Entry / resume capabilities**: first-class continuation-like capabilities for efficient IPC and one-shot reply.
- **Fast IPC**: EROS capability invocation matches L4-class IPC, demonstrated by microbenchmarks.
- **KeySAFE compartments**: user-level reference monitors mediate flow between compartments for policy insertion.
- **Confinement via factories / constructors**: inherited from KeyKOS, demonstrably solves the confinement problem.
- **Performance is not a capability-system inherent cost**: with the right abstractions and caching, ocap kernels match conventional kernels.

## Connections

- [[The Heart of Spritely - Distributed Objects and Capability Security]] - EROS is in the direct intellectual lineage Spritely draws on.
- [[Capability Security]], [[Object Capability Security]] - EROS is the flagship existence proof for practical capability OSs.
- [[E Language]] - Miller's thesis advisor is Shapiro; EROS and E are sister projects in Johns Hopkins' SRL.
- [[CapTP]]
- [[Ambient Authority]] - EROS has essentially none; every action requires an explicit capability invocation.
- [[Confused Deputy]] - EROS's design makes confused-deputy scenarios expressible-as-bugs only by explicit negligence.
- [[Principle of Least Authority]] - fine-grained node capabilities enable POLA at page level.
- [[Distributed Security]]
- [[Security Kernel Lambda Calculus]]
- [[Capability Bounding]]
- [[Capability Revocation]]

## Conceptual Contribution

> A pure capability microkernel with transparent orthogonal persistence (single-level store, periodic consistent snapshots) is not inherently slow; with carefully chosen abstract-object caches and a unified IPC/capability-invocation path, EROS matches conventional Unix microbenchmarks on commodity hardware. This refutes decades of folk wisdom that capability systems trade performance for security, and demonstrates that the KeyKOS design - factories, confined subsystems, checkpointed persistence - is viable on modern machines.

## Tags

#capability-security #operating-systems #eros #keykos #microkernel #sosp-1999 #single-level-store #orthogonal-persistence #jonathan-shapiro #performance #foundational #confinement
