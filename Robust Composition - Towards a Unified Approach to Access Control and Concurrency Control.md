# Robust Composition: Towards a Unified Approach to Access Control and Concurrency Control

## Reference

Miller, Mark Samuel. *Robust Composition: Towards a Unified Approach to Access Control and Concurrency Control.* PhD Dissertation, Johns Hopkins University, May 2006. Advisor: Jonathan S. Shapiro. Readers: Scott Smith, Yair Amir. [URL](https://papers.agoric.com/assets/pdf/papers/robust-composition.pdf)

## Summary

Mark Miller's dissertation is the foundational synthesis of the object-capability tradition. It argues that the act of *composing separately written programs* so that they cooperate rather than destructively interfere is the fundamental problem that has limited the scale and functionality of software systems. The thesis proposes a unified framework that binds together access control and concurrency control as two faces of the same compositional discipline: each message send is at once an authority-propagation event and a concurrency-interleaving event, and both must be disciplined together if we are to compose code written by mutually suspicious authors on mutually suspicious machines.

Miller extends decades of object-oriented progress from its comfortable setting (sequential, single-machine, benign components) to the hostile general case: concurrent, distributed, and potentially malicious components. The vehicles for this are the E programming language - a distributed, persistent, object-capability language built around vats, near/far references, eventual-send, promise pipelining, and CapTP - and CapDesk, a virus-safe desktop built in E. Together E and CapDesk form working embodiments of the thesis: authority is only granted by reference-passing along the message graph, and concurrency hazards (deadlock, non-determinism, plan interference) are tamed by the communicating-event-loop / vat model rather than by shared-memory locks.

The dissertation pulls together and formalises the lineage from Dennis & Van Horn, Hardy's confused deputy, KeyKOS/EROS, Actor-model eventual send, and the SPKI/Granovetter diagram tradition, and it is by far the most-cited reference for object-capability security. Its substantive chapters cover attenuating authority, distributed concurrency control, promise pipelining, the "excess authority as gateway to abuse" argument, and the POLA design discipline.

## Key Ideas

- **Unification of access and concurrency control**: both are consequences of disciplining what one object can do to another across a message send.
- **Object-capability model**: authority == what references you hold; "only connectivity begets connectivity."
- **Vats and communicating event loops**: each vat is a single-threaded turn-taking event loop; cross-vat calls are eventual sends returning promises.
- **Promise pipelining**: chained messages to not-yet-resolved promises reduce round-trips and compose naturally as plans.
- **CapTP**: the cryptographic capability transport protocol that preserves object-capability semantics across mutually-suspicious machines.
- **Defensive consistency**: an object defends its own invariants against arbitrary clients.
- **POLA as design discipline**: hand out only the authority actually needed for each delegation.
- **CapDesk**: demonstrates that a virus-safe desktop is achievable by threading object-capabilities through the UI/shell layer (powerboxes, caplets).

## Connections

- [[The Heart of Spritely - Distributed Objects and Capability Security]] - Spritely is the direct modern successor carrying Miller's E design forward into Goblins/Guile.
- [[E Language]] - E is the concrete language Miller designs and evaluates here.
- [[CapTP]] - Miller's distributed capability transport, specified in detail.
- [[Capability Security]] and [[Object Capability Security]] - this thesis is the canonical statement of the ocap model.
- [[Ambient Authority]] - Miller's thesis is the source of the modern critique of ambient authority.
- [[Confused Deputy]] - Miller reframes Hardy's confused-deputy problem as a composition failure.
- [[Principle of Least Authority]] - POLA is given its definitive formulation here.
- [[Distributed Security]] - the thesis generalises ocap security to distributed settings.
- [[Security Kernel Lambda Calculus]] - close kin in the formal-ocap tradition.
- [[A Universal Modular Actor Formalism for Artificial Intelligence]] - the Actor model is one of E's direct intellectual ancestors.
- [[Actor Model]] - vats and eventual sends are the ocap-refined descendants of Hewitt's actors.
- [[Vat Model]] - the vat abstraction is introduced and justified here.
- [[Promise Pipelining]] - Miller gives the definitive account of pipelining in this thesis.

## Conceptual Contribution

> Robust composition - the ability to combine separately authored components into a system whose aggregate behaviour is only what each party is actually willing to be party to - requires disciplining *both* authority propagation *and* concurrency interleaving in the same act of message send. Object-capability languages with vat-based event loops, promise pipelining, and CapTP provide the first unified framework for such robust composition across mutually suspicious, distributed, concurrent components.

## Tags

#capability-security #ocap #e-language #distributed-systems #concurrency #phd-thesis #spritely-ancestors #access-control #promise-pipelining #vats #captp #composition #mark-miller #foundational
