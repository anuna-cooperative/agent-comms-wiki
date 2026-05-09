## Process Calculi

A family of formal languages for describing concurrent and distributed systems algebraically. A process calculus fixes a small syntax of process terms (parallel composition, action prefix, restriction, choice) and gives an operational semantics — usually as a labelled transition system — together with a behavioural equivalence such as [[Bisimulation]]. Canonical members:

- **CCS** (Milner 1980) — fixed-topology synchronisation.
- **CSP** (Hoare 1978) — synchronous channel rendezvous; refinement-based equivalences.
- **ACP** (Bergstra & Klop 1984) — equational laws as primary; ad-hoc-extensible signature.
- **π-calculus** (Milner, Parrow & Walker 1992) — name-passing; mobile communication topology.
- **Mobile Ambients** (Cardelli & Gordon 1998) — mobile locations.
- **Join calculus** (Fournet & Gonthier 1996) — asynchronous; pattern-matching on joins.
- **Spi calculus** (Abadi & Gordon 1997) — π + cryptographic primitives.
- **Applied π-calculus** (Abadi & Fournet 2001) — equational theories over terms.

Process calculi supply the formal substrate underneath [[Session Types]], [[Choreographic Programming]], and most modern accounts of distributed-system semantics.

## In this vault
- [[A Calculus of Mobile Processes]]
- [[A Calculus of Communicating Systems]]
- [[Communicating Sequential Processes]]
- [[Mobile Ambients]]
- [[Spi Calculus]]
- [[Join Calculus]]
- [[Sjoin Calculus]]
- [[Pi-Calculus]]
- [[Bisimulation]]
- [[Session Types]]
