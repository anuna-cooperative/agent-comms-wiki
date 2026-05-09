# On the Monitorability of Session Types, in Theory and Practice

**Reference:** Bartolo Burlò, C., Francalanza, A. & Scalas, A. (2021). *35th European Conference on Object-Oriented Programming (ECOOP 2021)*, LIPIcs vol. 194: 20:1–20:30. DOI: [10.4230/LIPIcs.ECOOP.2021.20](https://doi.org/10.4230/LIPIcs.ECOOP.2021.20). Extended version: arXiv:2105.06291. Source file: `bartolo-burlo-francalanza-scalas-ecoop21.pdf`. [URL](https://drops.dagstuhl.de/entities/document/10.4230/LIPIcs.ECOOP.2021.20)

## Summary
Bartolo Burlò, Francalanza and Scalas address the *monitorability* problem for [[Session Types]] — the question of whether a runtime monitor, observing only the messages a process exchanges, can faithfully detect violations of a session-type specification. Session types are the dominant PL formalism for typing communicating processes (Honda, Vasconcelos, Yoshida), and they admit *static* type-checking when source is available; the runtime question matters because in many practical settings (third-party code, foreign-language components, dynamic deployments) only message traces are observable. The authors formalise *session-monitored processes* — a process algebra in which a monitor sits on the wire and interrupts ill-typed exchanges — and prove the central correctness pair: **soundness** (a monitor flags only processes that are actually ill-typed) and **completeness** (a monitor flags every ill-typed process whose violation is detectable from its observable trace).

The theoretical core is a precise characterisation of which session-type properties are monitorable from observable traces alone — distinguishing what *static* type-checking can decide (everything in the type) from what a *dynamic* monitor can decide (a strictly smaller class, characterised by the paper). On the practical side, the authors build a Scala toolkit that automatically generates session-type monitors from session-type specifications; the generated monitors instrument black-box processes written in any language, and the paper benchmarks the runtime overhead. The result is a working bridge from the theory of session types to deployable runtime conformance checking — and, by structural analogy, an off-the-shelf playbook for the same operation on commitment-based and choreographic protocols.

## Key Ideas
- *Session-monitored processes*: a process algebra extended with explicit monitors that observe message exchanges and rule them in or out against a session type.
- *Soundness of monitoring*: a monitor never flags a well-typed process as a violator. (Verbatim: *"monitors only flag ill-typed processes"*.)
- *Completeness of monitoring*: a monitor flags every ill-typed process whose violation is observable from the message trace.
- *Monitorability gap*: not every session-type property is monitorable from observable traces — the paper characterises exactly which ones are.
- *Connection to static type-checking*: the monitorable fragment is a strict sub-class of the statically-decidable fragment, and the paper precisely locates the gap.
- *Scala monitor toolkit*: automatic generation of executable monitors from session-type specifications; works on black-box processes.
- *Empirical evaluation*: benchmarks of monitor overhead on representative communication-heavy workloads.

## Connections
- [[Session Types]]
- [[Choreographic Programming]]
- [[Endpoint Projection]]
- [[Pact - A Choreographic Language for Agentic Ecosystems]]
- [[Commitment Machines - Yolum and Singh]]
- [[Flexible Protocol Specification and Execution]]
- [[A Commitment-Based Approach to Agent Communication]]
- [[Verifiable Semantics for ACLs]]
- [[Commitment-based Semantics]]
- [[Public Semantics]]
- [[Conversation Protocols]]
- [[CBCL - Safe Self-Extending Agent Communication]]

## Conceptual Contribution
- **Claim:** Session types — like commitment-based protocols — admit a precise *monitoring* theory in which a runtime monitor observing only the message trace can be proved sound and complete with respect to a session-type specification, modulo a precisely-characterised gap between what is statically decidable and what is observable from traces alone; this theory can be discharged into an automatic toolkit that generates working monitors from specifications.
- **Mechanism:** Define session-monitored processes as a process algebra with explicit on-wire monitors; formalise soundness (monitor flags only ill-typed processes) and completeness (every observable violation is flagged); characterise the monitorable fragment of session-type properties; implement an automatic monitor generator in Scala and benchmark its overhead on instrumented black-box processes.
- **Concepts introduced/used:** [[Session Types]], [[Runtime Verification]], [[Monitorability]], soundness, completeness, process algebra, [[Choreographic Programming]], [[Endpoint Projection]], [[Conversation Protocols]]
- **Stance:** formal-semantic + engineering
- **Relates to:** Structural sibling of the [[Commitment Machines - Yolum and Singh|commitment-machine]] / [[Flexible Protocol Specification and Execution|commitment-protocol]] tradition: session types and commitment-based protocols are independently-developed formalisms for *the same thing* — typing communicating processes against a publicly-observable global protocol — and the runtime-monitoring theory developed here lifts almost directly to the commitment-machine setting (where Yolum-Singh's "complete iff every base-level commitment is discharged" is the commitment-protocol analogue of session-type monitorability). Provides the theoretical engine for a runtime-conformance layer over [[Pact - A Choreographic Language for Agentic Ecosystems|choreographic protocols]] — choreographies project to per-role session types, which can then be monitored using this paper's machinery, closing the gap that the Pact review opened (Pact has design-time game-theoretic analysis but no runtime conformance check). For [[CBCL - Safe Self-Extending Agent Communication]], the paper supplies an analogue for the in-flight version of R5: where R5 checks contract well-formedness at install time, monitorability theory is the runtime story for the per-message-trace check. Companion to [[Verifiable Semantics for ACLs]] (Wooldridge 1998) in the *unverifiability-becomes-decidability* line: Wooldridge showed that mentalistic ACL semantics is undecidable; this paper shows that public, trace-based semantics admits sound-and-complete monitoring.

## Tags
#session-types #runtime-verification #monitorability #process-algebra #choreographic-programming #conversation-protocols #foundational
