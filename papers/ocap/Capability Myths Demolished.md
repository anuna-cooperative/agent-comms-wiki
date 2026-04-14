# Capability Myths Demolished

## Reference

Miller, Mark S.; Yee, Ka-Ping; Shapiro, Jonathan S. *Capability Myths Demolished.* Technical Report SRL-2003-02, Systems Research Laboratory, Johns Hopkins University, 2003. [URL](https://srl.cs.jhu.edu/pubs/SRL2003-02.pdf)

## Summary

This short, polemical technical report dismantles three widely repeated myths about capability-based security that had accreted in the literature over the preceding two decades and were being cited as reasons to avoid capability models or to pile extra access checks on top of them. The three myths are: (1) the *Equivalence Myth* - that ACL systems and capability systems are formally equivalent views of Lampson's access matrix; (2) the *Confinement Myth* - that capability systems cannot enforce confinement; and (3) the *Irrevocability Myth* - that capability-based authority cannot be revoked.

The authors' strategy is to disentangle three very different things all called "capability" in the literature: Model 2 (capabilities-as-rows of the access matrix), Model 3 (capabilities-as-keys / unforgeable bitstrings), and Model 4 (object-capabilities, where capabilities are object references in a memory-safe object language). They define seven security properties - including "no designation without authority," dynamic subject creation, subject-aggregated authority management, and composable confinement - and show how the three models differ on each. Under this lens, the Equivalence Myth collapses: ACLs and object-capabilities have fundamentally different rules for how the access matrix is updated, even if both can be drawn as an access matrix at an instant.

The Confinement Myth is refuted by pointing to KeyKOS factories (Hardy 1988) and the EROS constructor, which demonstrably achieve confinement in object-capability systems. The Irrevocability Myth is refuted via the Redell forwarder/facet pattern (1974), elegantly explained with a simple diagram: Alice hands Bob a forwarder to Carol and keeps the revoker; dropping the revoker drops Bob's access. The paper is the go-to reference whenever these myths resurface and is essential intellectual groundwork for the ocap tradition.

## Key Ideas

- **Three distinct capability models**: capabilities-as-rows, capabilities-as-keys, object-capabilities - not interchangeable.
- **The access-matrix snapshot lies**: static snapshots ignore the *update rules* that actually distinguish ACL systems from capability systems.
- **No Designation Without Authority (Property A)**: in an ocap system, to name a resource is already to have authority to use it; ACL systems decouple designation from authority, which is the root of confused-deputy problems.
- **Subject-Aggregated Authority Management (Property C)**: in ocap, you edit your own C-list; in ACLs, changing one authority requires editing a resource's ACL.
- **Confinement is achievable** via factories / constructors; KeyKOS and EROS are existence proofs.
- **Revocation by forwarders (facets)**: give Bob not Carol but a forwarder F; keep R as revoker; R !stopForwarding revokes Bob cleanly.
- **Object capabilities subsume Lampson** while avoiding the ambient-authority pitfalls that produce confused deputies.

## Connections

- [[The Heart of Spritely - Distributed Objects and Capability Security]]
- [[Capability Security]] - this paper is the canonical clarification of what capability security actually claims.
- [[Object Capability Security]] - Model 4 in this paper is the object-capability model.
- [[E Language]] - examples and diagrams use E-flavoured ocap reasoning.
- [[CapTP]] - distributed ocap relies on the same non-myths.
- [[Ambient Authority]] - the Equivalence Myth's error is essentially failing to see ambient authority in ACL systems.
- [[Confused Deputy]] - the paper leans on Hardy's example to justify Property A.
- [[Principle of Least Authority]] - POLA is called out as a motivation for preferring ocap.
- [[Distributed Security]]
- [[Security Kernel Lambda Calculus]]
- [[Capability Revocation]] - Redell forwarders / facets are explained here.
- [[Capability Bounding]]

## Conceptual Contribution

> Most criticisms of capability-based security dissolve once one distinguishes three very different things the word "capability" has named. Object-capabilities (references in a memory-safe object language governed by reference-passing rules) are neither equivalent to ACLs, nor unable to confine, nor unable to revoke; they are strictly more expressive of least-authority policy than ACL systems and avoid the confused-deputy class of bugs by construction.

## Tags

#capability-security #ocap #security-myths #confinement #revocation #facets #access-matrix #mark-miller #foundational #srl-2003-02
