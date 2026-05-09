# KLAIM: A Kernel Language for Agents Interaction and Mobility

**Reference:** De Nicola, R., Ferrari, G. L. & Pugliese, R. (1998). *KLAIM: A Kernel Language for Agents Interaction and Mobility*. IEEE Transactions on Software Engineering, 24(5), pp. 315–330. (Earlier presented at *Coordination '97*.) [IEEE DOI](https://doi.org/10.1109/32.685256) · [Open access PDF (IMT Lucca)](http://eprints.imtlucca.it/351/1/tse_1998a.pdf)

## Summary
De Nicola, Ferrari and Pugliese introduce **KLAIM** (Kernel Language for Agents Interaction and Mobility), a process calculus combining the [[Linda (coordination)|Linda]] tuple-space coordination model with explicit *locality* and mobile-agent migration. The basic move is to extend Linda's flat global tuple space with named **localities** — tuples now live *at* particular sites, and the four primitives `out`, `in`, `rd`, `eval` carry a locality argument specifying *where* they operate. The crucial addition is the `eval` operation lifted to support **mobile code**: `eval(P)@l` spawns process `P` at locality `l`, allowing computations themselves to migrate. The locality structure makes KLAIM particularly suited to mobile-agent systems where the boundary between sites carries security and access-control implications. The companion type system *μKLAIM* (subsequently developed) statically constrains which sites an agent may access and what operations it may perform there — a static-typing analogue of [[Capability Security|capability security]] for distributed mobile agents. KLAIM was deliberately positioned as the formal counterpart of mobile-agent systems like Telescript and Agent Tcl ([[Agent Tcl Flexible Secure Mobile Agents]]) — the same engineering target, with a process-calculus semantics making rigorous reasoning about access control, mobility safety, and information flow tractable. Within this vault, KLAIM is the missing bridge between [[Generative Communication in Linda|Linda's tuple-space coordination]] and the mobile-agent / distributed-security tradition: it shows how Linda's decoupled-by-content communication composes with location-aware security policies that distinguish administrative domains.

## Key Ideas
- *Linda + locality*: Linda's flat tuple space is replaced by a network of named localities; tuples reside at specific localities; the four primitives `out(t)@l`, `in(t)@l`, `rd(t)@l`, `eval(P)@l` carry a locality argument.
- *Mobile agents via `eval`*: `eval(P)@l` spawns process `P` at locality `l` — the calculus's primitive for code mobility; combined with locality-aware tuple operations, supports rich mobile-agent patterns (push, pull, weak migration, strong migration).
- *Names for localities and physical sites*: KLAIM distinguishes *logical* locality names (used by agents) from *physical* sites, with an allocation environment mapping the former to the latter; supports administrative-domain reasoning and migration transparency.
- *Type system for access control* (μKLAIM, Pugliese et al. 2002): static types annotate localities with the operations agents may perform there (read, write, execute, spawn); type-safe programs cannot violate access policies at runtime — a static counterpart of capability security.
- *Process-calculus semantics*: standard SOS-style operational semantics with structural-congruence-and-reduction rules; bisimulation and may-testing equivalence; supports rigorous reasoning about behaviour and security.
- *Formal model for industrial mobile-agent systems*: KLAIM was developed as the formal counterpart of contemporary mobile-agent platforms (Telescript, Aglets, Agent Tcl) — an attempt to give those engineering systems a tractable formal-methods grip.

## Connections
- [[KLAIM]]
- [[Locality (KLAIM)]]
- [[Distributed Tuple Spaces]]
- [[Linda (coordination)]]
- [[Tuple Spaces]]
- [[Generative Communication in Linda]]
- [[Coordination Language]]
- [[Mobile Ambients]]
- [[Pi-Calculus]]
- [[Process Calculi]]
- [[Mobility]]
- [[Capability Security]]
- [[Agent Tcl Flexible Secure Mobile Agents]]
- [[DAgents Security Book Chapter]]
- [[Agents Secure Interaction in Data Driven Languages]]
- [[An Interaction-oriented Agent Framework for Open Environments]]
- [[Agents and Artifacts]]

## Conceptual Contribution
- **Claim:** Mobile-agent coordination can be expressed cleanly by combining [[Linda (coordination)|Linda]]'s tuple-space model with explicit *localities* — named sites at which tuples reside and operations execute — together with an `eval` primitive that spawns processes at remote localities. The resulting calculus is amenable to type-system enforcement of access control and to standard process-calculus reasoning about behaviour, mobility, and security.
- **Mechanism:** Extension of Linda primitives with locality arguments; mobile `eval(P)@l` for code migration; allocation environment mapping logical to physical sites; SOS-style operational semantics; type system (μKLAIM) statically constraining locality access.
- **Concepts introduced/used:** [[KLAIM]], [[Locality (KLAIM)]], [[Distributed Tuple Spaces]], Mobile `eval`, Allocation Environment, Type-System Access Control.
- **Stance:** foundational technical paper; bridges Linda and mobile-agent / process-calculus traditions.
- **Relates to:** Direct extension of [[Generative Communication in Linda|Linda]] (Gelernter 1985) with locality and mobility; sibling of [[Mobile Ambients]] (Cardelli & Gordon 1998), which takes a different stance — Mobile Ambients makes locations the primary mobile entity and uses capability-name boundary crossing, while KLAIM keeps Linda's tuple-space communication model but lets *agents* (not locations) migrate. Both calculi have type systems controlling mobility / access; the choice between them is largely stylistic. Conceptually adjacent to the engineering systems [[Agent Tcl Flexible Secure Mobile Agents]] and [[DAgents Security Book Chapter]] — KLAIM gives the formal grip those systems lack. The μKLAIM type system is a static-type formulation of [[Capability Security]] in the distributed-mobile-agent setting; the connection to the Dennis–Van Horn capability tradition is direct (capability = unforgeable name; locality access right = capability name held). In the modern setting, KLAIM-style locality-and-tuple-space coordination is recognisable in the distributed-tuple-space libraries used in academic MAS research (CArtAgO's *artifacts* are KLAIM-style localised coordination loci) and, more loosely, in the design of *agent registries* and *agent cards* for cross-platform LLM-agent interoperability ([[Agent Network Protocol|ANP]], [[Agent-to-Agent Protocol|A2A]]).

## Tags
#coordination-languages #klaim #linda-extension #mobile-agents #distributed-systems #foundations #process-calculi
