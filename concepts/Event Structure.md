# Event Structure

An **event structure** represents a concurrent system through event occurrences, consistency, and enabling. In the general form `(E, Con, ⊢)`, a computation is a **configuration**: a consistent set whose events are secured by finite enabling sequences. Prime event structures replace enabling with a global causal order; their configurations are consistent, left-closed sets. Events that are consistent but causally unordered can occur independently.

This preserves true concurrency: two independent events need not be represented twice as the sequences `ab` and `ba`. Prime event structures give each event one causal history; stable and general event structures support more flexible forms of enabling.

## In this vault

- [[Petri Nets Event Structures and Domains Part I]] — introduces event structures between Petri nets and domains.
- [[Event Structures]] — standard survey and canonical definitions.
- [[Models for Concurrency]] — comparison with transition systems, nets, traces, and pomsets.
- [[Causal Unfoldings and Disjunctive Causes]] — extends prime structures with equivalence for alternative causal histories.
- [[Mazurkiewicz Trace]] and [[Pomset]] — neighboring partial-order models of concurrency.
