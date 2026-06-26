# Knowledge of Choice

**Reference:** Montesi, F. *Knowledge of Choice.* Bliki entry, fabriziomontesi.com (created 2023-05-15, updated 2024-12-17). [URL](https://www.fabriziomontesi.com/bliki/KnowledgeOfChoice). The notion is developed in book form in [[Introduction to Choreographies]] (Montesi 2023, Cambridge University Press) and traces to Castagna, Dezani-Ciancaglini & Padovani (2012) and Carbone, Honda & Yoshida (2012); automated repair procedures are given by Lanese, Guidi, Montesi & Zavattaro (2013), Basu & Bultan (2016), and Cruz-Filipe & Montesi (2020, 2023).

## Summary
**Knowledge of choice** is a well-formedness property of [[Choreographic Programming|choreographies]] (and, dually, of multiparty [[Session Types]]): whenever a participant makes an internal choice between alternative behaviours, *every* participant whose subsequent behaviour depends on that choice must be made aware of which branch was taken. The property is what makes [[Endpoint Projection]] possible — a global choreography can only be projected to deadlock-free local programs if each role can locally determine which branch of a conditional it should follow.

The problem arises when one participant's private decision silently changes what other participants are supposed to do, without any communication conveying the decision. Montesi's running example is third-party single sign-on: an authenticator `a` decides whether a credential is valid, but the web service `ws` must respond differently depending on that verdict. If the choreography never has `a` tell `ws` the outcome, `ws` cannot know which action to perform, and implementers are pushed toward fragile workarounds — undocumented side-channel messages not reflected in the protocol, or hidden shared state (a common database, side-effects) that breaks the decentralisation the choreography was meant to guarantee.

The standard fix is to add explicit **selections** — communications that carry a constant value such as a label (`OK`/`KO`) — so that every dependent participant can infer the choice from a message it actually receives. In the repaired example, `a` sends `OK` or `KO` to `ws`, which can then branch locally. Transforming a choreography that lacks knowledge of choice into an equivalent one that has it is called **amendment** (or **repair**), and can be performed automatically; the dual mechanism in the projection direction is the **merging operator** on local types, which decides when two branches of a receiver are reconcilable.

## Key Ideas
- **Definition.** When a choice is made between alternative behaviours, all affected participants must be made aware of the choice — otherwise the choreography is not realisable as independent local programs.
- **Failure mode.** A participant's internal decision affects others' behaviour, yet no communication conveys the decision, so dependent roles cannot select their branch.
- **Bad workarounds.** Adding undocumented out-of-band messages, or introducing hidden side-effects / shared databases — both break the decentralised, protocol-as-written semantics.
- **Selections.** Communications carrying constant values (labels) inserted so dependent participants can infer the choice locally.
- **Amendment / repair.** A (mechanisable) transformation that inserts the missing selections to restore knowledge of choice while preserving behaviour.
- **Merging operator.** The dual device in projection: it determines when a receiver's alternative continuations can be merged, i.e. when a role *does not* need to be told the choice.
- **Why it matters.** Knowledge of choice is a precondition for sound endpoint projection, deadlock-freedom, and communication safety in both choreographies and multiparty session types.

## Connections
- [[Choreographic Programming]]
- [[Endpoint Projection]]
- [[Session Types]]
- [[Multiparty Asynchronous Session Types]]
- [[Structured Communication-Centred Programming for Web Services]]
- [[Introduction to Choreographies]]
- [[Pact - A Choreographic Language for Agentic Ecosystems]]
- [[Merge Operator]]
- [[Choreography Amendment]]
- [[Selection (Choreography)]]
- [[Knowledge and Common Knowledge in a Distributed Environment]]

## Conceptual Contribution
- **Claim:** A global protocol is realisable as independent, deadlock-free local programs only if every participant whose behaviour depends on a choice is informed of that choice; "knowledge of choice" names exactly this realisability condition and separates well-formed choreographies from ones that secretly rely on shared state.
- **Mechanism:** Conditionals in a choreography induce a dependency from the deciding role to every role that branches on the decision; the property is satisfied by inserting **selections** (label-carrying messages), and a choreography lacking it can be **amended** automatically. Dually, [[Endpoint Projection]] uses a **merging operator** to admit receivers that need not be told.
- **Concepts introduced/used:** knowledge of choice, [[Selection (Choreography)|selection]], [[Choreography Amendment|amendment]], [[Merge Operator|merging]], [[Endpoint Projection]], [[Choreographic Programming]], [[Session Types]]
- **Stance:** foundational / definitional (choreographic-programming theory)
- **Relates to:** The realisability counterpart of [[Endpoint Projection]] in [[Introduction to Choreographies]]; the property whose violation the choreographic foundations ([[Structured Communication-Centred Programming for Web Services]], [[Multiparty Asynchronous Session Types]]) are built to exclude; structurally adjacent to the distributed-knowledge tradition of [[Knowledge and Common Knowledge in a Distributed Environment]], where what an agent must *know* to act correctly is the central question.

## Tags
#choreographic-programming #session-types #endpoint-projection #foundational #multi-agent
