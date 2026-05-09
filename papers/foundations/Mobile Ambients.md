# Mobile Ambients

**Reference:** Cardelli, L. & Gordon, A. D. (1998). *Mobile Ambients*. In *Foundations of Software Science and Computational Structures (FoSSaCS '98)*, LNCS 1378, pp. 140–155, Springer. Journal version: *Theoretical Computer Science* 240(1), pp. 177–213, 2000. [DOI](https://doi.org/10.1007/BFb0053547) · [Open access PDF (UPenn)](https://www.cis.upenn.edu/~bcpierce/courses/629/papers/Cardelli-MobileAmbients.pdf.gz)

## Summary
Cardelli and Gordon argue that the [[Pi-Calculus]] models communication elegantly but does not natively model **administrative domains** — the bounded, named, hierarchically nested regions across which computation moves on the actual Internet (firewalls, address spaces, processes, machines, networks). Their *ambient calculus* makes the location itself the primary mobile entity. An **ambient** `n[P]` is a named bounded region containing a process `P`. A small set of *capabilities* — `in n.P`, `out n.P`, and `open n.P` — drive movement: `in n` enters a sibling ambient named `n`; `out n` exits the parent ambient if it is named `n`; `open n` dissolves the boundary of a child ambient named `n`, merging its contents with the current location. Communication is local: `(x).P` reads from a shared anonymous channel within the surrounding ambient. Mobility and access control reduce to one question — does a process possess the capability to cross a particular boundary? The calculus has standard structural-congruence-and-reduction operational semantics, a logical companion (the *ambient logic*, with location-modal connectives), and type systems regulating mobility. It supplies the formal substrate for reasoning about agents that *physically relocate* — mobile-code platforms, container migration, and (today) WASM components moving between hosts.

## Key Ideas
- *Locations as first-class movable entities*: the basic mobile thing is a named bounded region, not a name-as-channel; this captures administrative-domain structure that pure π struggles to express.
- *Three capabilities — `in`, `out`, `open` — suffice*: every mobility scenario reduces to a sequence of crossings governed by capability possession; access control becomes "do you have the capability name?"
- *Spatial nesting as syntax*: ambient terms form trees `n[P | m[Q] | …]`; the structural-congruence laws are spatial as well as algebraic. The ambient logic adds *location modalities* (`@n` reads "at ambient n") for spatial reasoning.
- *Bounded computation*: an ambient acts like a bag carrying its computation; its contents proceed concurrently *inside* the boundary, distinct from the outside world.
- *Communication restricted to local anonymous channels*: a deliberate departure from π's named channels — values are read off the local "ether" within an ambient. Gives an asymmetric model where mobility is global but communication is local.
- *Type systems for mobility*: subsequent work (Cardelli, Ghelli, Gordon 1999/2000) gives type disciplines that statically constrain which ambients may cross which boundaries — the ancestor of capability-typed mobile-code systems.
- *Deliberate engineering target*: motivated explicitly by Java applets, Telescript-style mobile agents, and firewall-bounded computation — process-calculus theory aimed at the engineering reality of distributed systems.

## Connections
- [[Pi-Calculus]]
- [[A Calculus of Mobile Processes]]
- [[Process Calculi]]
- [[Mobility]]
- [[Capability Security]]
- [[Ambient Calculus]]
- [[Capabilities (Ambient)]]
- [[Spi Calculus]]
- [[Agent Tcl Flexible Secure Mobile Agents]]
- [[DAgents Security Book Chapter]]
- [[agent_jump]]
- [[Sandboxing]]
- [[Capsules]]

## Conceptual Contribution
- **Claim:** Modelling internet-scale distributed computation requires a process calculus in which the *location* is the primary mobile entity, not the channel; three boundary-crossing capabilities (`in`, `out`, `open`) suffice to express administrative-domain mobility, and capability possession is the natural account of access control.
- **Mechanism:** A process language extending π-style parallel composition with ambient brackets `n[P]` and capability prefixes; small structural-congruence-and-reduction operational semantics; an ambient logic with spatial / location modalities; type systems controlling which ambients can perform which capabilities.
- **Concepts introduced/used:** [[Mobile Ambients]], [[Ambient Calculus]], [[Capabilities (Ambient)]], [[Mobility]], [[Spatial Logic]], [[Boundary]] (administrative domain).
- **Stance:** foundational technical paper.
- **Relates to:** Sibling of the [[Pi-Calculus]] — both Milner 1992 and Cardelli & Gordon 1998 lift CCS-style fixed-topology concurrency, but along different dimensions (channel-mobility vs location-mobility). Conceptually upstream of all *capability-based mobile-agent* security work in the vault: [[Agent Tcl Flexible Secure Mobile Agents]] and [[DAgents Security Book Chapter]] take the engineering view, while ambients give the formal model. The capability-as-token view aligns directly with [[Capability Security]] (Dennis & Van Horn 1966, Miller's E lineage in [[Robust Composition - Towards a Unified Approach to Access Control and Concurrency Control]]) — possession of a capability name confers, and only confers, the right to act. Modern realisations include WebAssembly modules with WASI capabilities, container ingress/egress, and sandboxed JS with capability-secured imports — a re-discovery of ambient-style boundary control under different syntactic skins.

## Tags
#process-calculi #mobile-ambients #cardelli #gordon #mobility #capability-security #foundations
