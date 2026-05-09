# A Calculus of Mobile Processes (Parts I and II)

**Reference:** Milner, R., Parrow, J. & Walker, D. (1992). *A Calculus of Mobile Processes, I and II*. Information and Computation, 100(1), pp. 1–40 and pp. 41–77. (Reports appeared as ECS-LFCS-89-85 and -86, Edinburgh, 1989.) Companion textbook: Milner, R. (1999). *Communicating and Mobile Systems: the π-Calculus*. Cambridge University Press. [DOI](https://doi.org/10.1016/0890-5401(92)90008-4) · [Open access (Edinburgh)](https://www.pure.ed.ac.uk/ws/files/16426053/A_Calculus_of_Mobile_Processes_I.pdf)

## Summary
Milner, Parrow and Walker introduce the **π-calculus**, a process calculus in which the *names* exchanged between processes are themselves the channels of communication. The earlier [[CCS]] (Milner 1980) had a fixed communication topology — process structure determined which agents could synchronise. The π-calculus drops that restriction: a single primitive, the output of one name on another (`x̄⟨y⟩`), simultaneously transmits a *capability to communicate* and reconfigures the network. The paper develops the calculus in two parts: Part I gives the syntax (input prefix, output prefix, parallel composition, restriction `(νx)`, replication `!P`, summation `+`, match `[x=y]`), the structural-congruence-and-reduction operational semantics, and proves the basic algebraic theory; Part II develops a higher-order extension and the labelled-transition / bisimulation theory (early, late, and open variants of strong and weak bisimulation). The headline expressive result, established in detail in Milner's companion *Functions as Processes* (1992), is that the lazy and call-by-value λ-calculi embed faithfully into the π-calculus — concurrent computation strictly subsumes sequential functional computation. The calculus has since become the standard substrate for reasoning about [[Mobility]], [[Concurrency]], and [[Session Types]], and is the formal predecessor of every choreographic / multiparty-session-type result in this vault.

## Key Ideas
- *Name-passing as the unifying primitive*: a single output prefix `x̄⟨y⟩.P` transmits a name `y` over channel `x`; the receiver `x(z).Q` binds `z` to `y` and may then use it as a channel — communication and channel reconfiguration become one operation.
- *Restriction `(νx)P`*: introduces a fresh, private name; combined with output, it gives **scope extrusion** — when a private name is communicated outside its scope, the scope expands to include the recipient. This is the formal mechanism of mobility.
- *Replication `!P`*: the calculus's only recursion construct, equivalent to `P | !P`; supports unbounded parallelism without an explicit fix-point.
- *Three bisimulation styles*: **early** (instantiate the bound name before the transition), **late** (transition on a name-abstraction), **open** (transitions parametric in a substitution closure) — different congruence properties; open bisimulation is preserved by all contexts.
- *λ encodes into π*: lazy and call-by-value λ-calculi translate compositionally into π, with β-reduction simulated by communication. Sequential function application is a degenerate case of concurrent name-passing.
- *Polyadic and monadic forms*: tuples of names (`x̄⟨y₁,…,yₙ⟩`) can be encoded into the monadic calculus; this encoding is the basis of [[Sorts]] / type systems for π, and of session types.
- *Single-paper foundation for an entire research programme*: Hoare's [[Communicating Sequential Processes|CSP]] and Milner's earlier CCS supplied process algebra over fixed topologies; π-calculus made the topology itself first-class data.

## Connections
- [[Communicating Sequential Processes]]
- [[A Calculus of Communicating Systems]]
- [[Pi-Calculus]]
- [[Name-Passing]]
- [[Mobility]]
- [[Scope Extrusion]]
- [[Bisimulation]]
- [[Structured Operational Semantics]]
- [[Session Types]]
- [[Multiparty Asynchronous Session Types]]
- [[Structured Communication-Centred Programming for Web Services]]
- [[Choreographic Programming]]
- [[Mobile Ambients]]
- [[Spi Calculus]]
- [[Join Calculus]]
- [[Linear Logic]]
- [[Actor Model]]
- [[A Universal Modular Actor Formalism for Artificial Intelligence]]
- [[Algebra of Communicating Processes|ACP]]
- [[Lambda Calculus]]
- [[Process Calculi]]

## Conceptual Contribution
- **Claim:** A single primitive — the communication of names along names — suffices to express both classical concurrency (CCS-style fixed-topology synchronisation) and the dynamic reconfiguration of communication networks; the resulting calculus subsumes the λ-calculus and serves as a universal substrate for mobile, concurrent computation.
- **Mechanism:** Reduction-and-congruence operational semantics over a small syntax (input/output prefix, `|`, `(νx)`, `!`, `+`, `[x=y]`); scope extrusion as the single rewrite rule that lets restricted names escape their original scope when communicated; early/late/open bisimulation as compositional behavioural equivalences; λ-encoding via continuation-passing-style translation into name communication.
- **Concepts introduced/used:** [[Pi-Calculus]], [[Name-Passing]], [[Scope Extrusion]], [[Mobility]], [[Bisimulation]] (early, late, open), [[Replication]], [[Restriction]], [[Sorts]] (precursor to session types), [[Higher-Order Pi-Calculus]].
- **Stance:** foundational technical paper / textbook calculus.
- **Relates to:** Direct ancestor of [[Session Types]] (Honda et al., where the name being passed carries a *type* describing how the recipient may use it) and through them of [[Multiparty Asynchronous Session Types]] and [[Structured Communication-Centred Programming for Web Services]] — the entire choreographic-programming line in this vault, including [[Pact - A Choreographic Language for Agentic Ecosystems]], rests on π-calculus reductions as the underlying small-step semantics. [[Mobile Ambients]] (Cardelli & Gordon 1998) is a sibling calculus that makes locations rather than names the primary mobile entity, motivated by the difficulty of expressing administrative domains in pure π. [[Spi Calculus]] (Abadi & Gordon 1997) extends π with cryptographic primitives for protocol verification — directly relevant to the agent-security threads. [[Join Calculus]] (Fournet & Gonthier 1996) is an asynchronous, join-pattern reformulation amenable to distributed implementation. The encoding of λ into π reframes [[Hewitt's Actor Model|Hewitt actors]] as a particular discipline of π usage and supplies the formal grounding for asynchronous-message-passing concurrency in actor-based systems like [[Programming Erlang Second Edition|Erlang]]. On the agent-communication side π is the missing semantic substrate for [[Conversation Policy]] and [[Interaction Protocols]]: a KQML/FIPA performative exchange is — operationally — π-calculus name-passing constrained by an ontological vocabulary, a fact made explicit by every session-typed reformulation of ACL conversations.

## Tags
#process-calculi #pi-calculus #concurrency #mobility #foundations #milner #bisimulation #session-types-foundation
