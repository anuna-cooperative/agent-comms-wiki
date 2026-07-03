# Multiparty Compatibility in Communicating Automata

**Reference:** Deniélou, P.-M. & Yoshida, N. (2013). *Multiparty Compatibility in Communicating Automata: Characterisation and Synthesis of Global Session Types.* In *Proc. 40th International Colloquium on Automata, Languages and Programming (ICALP 2013), Part II*, Riga, Latvia, LNCS 7966, pp. 174–186. Springer. DOI [10.1007/978-3-642-39212-2_18](https://doi.org/10.1007/978-3-642-39212-2_18). Companion: Deniélou & Yoshida, *Multiparty Session Types Meet Communicating Automata*, ESOP 2012. [URL](https://www.cs.rhul.ac.uk/~malo/paper/msa-as-communicating-automata.html).

## Summary
This paper builds the bridge between two independently-developed theories of distributed communication: **communicating finite-state machines (CFSMs)** — Brand and Zafiropulo's automata that exchange messages over unbounded FIFO channels — and **multiparty session types (MPST)**, in which a single [[Global Types|global type]] specifies a protocol among many participants and is projected to per-role local types. In the binary (two-party) case, safety follows from a simple *duality* condition between the two endpoints. Deniélou and Yoshida ask what the right generalisation of duality is for `N` participants, and answer with **multiparty compatibility**: a semantic condition on a system of CFSMs that guarantees the classic safety and liveness properties — no deadlock, no orphan (never-received) messages, and no unspecified reception — for the asynchronous communicating system.

Their two main results are a **characterisation** and a **synthesis**. On the characterisation side, they prove that a system of CFSMs is multiparty-compatible exactly when it is the behavioural image of a well-formed global session type: multiparty compatibility is precisely the property that makes a collection of communicating machines "look like" the projection of some global protocol. On the synthesis side, they give an **algorithm that constructs a global session type from a compatible system of CFSMs**, recovering the global protocol from its distributed endpoints. Together these results turn the informal correspondence "session types are a well-behaved subclass of communicating automata" into a precise equivalence, and give a route from legacy automata-based endpoint descriptions to type-level global specifications with their safety guarantees.

## Key Ideas
- **CFSMs meet MPST:** relates Brand–Zafiropulo communicating finite-state machines (asynchronous, FIFO-channel automata) to multiparty session types and their global/local type structure.
- **Multiparty compatibility:** the `N`-party generalisation of binary-session *duality* — a semantic condition on a CFSM system ensuring safety.
- **Safety & liveness guaranteed:** compatible systems enjoy deadlock-freedom, no orphan messages, and no unspecified receptions.
- **Characterisation:** a CFSM system is multiparty-compatible iff it is behaviourally equivalent to the projection of a well-formed [[Global Types|global session type]].
- **Synthesis:** an algorithm reconstructs a global session type from any multiparty-compatible system of CFSMs.
- **Bidirectional bridge:** projection (global type → local CFSMs) and synthesis (compatible CFSMs → global type) make the correspondence an equivalence, not just an analogy.

## Connections
- [[Communicating Finite State Machines]]
- [[Multiparty Session Types]]
- [[Session Types]]
- [[Global Types]]
- [[Global Session Types]]
- [[Endpoint Projection]]
- [[Realizability]]
- [[Multiparty Asynchronous Session Types]]
- [[Less is More - Multiparty Session Types Revisited]]
- [[Deciding Choreography Realizability]]
- [[Realizability and Verification of MSC Graphs]]

## Conceptual Contribution
- **Claim:** *Multiparty compatibility* is the correct `N`-party generalisation of session-type duality: a system of communicating automata is safe-by-construction exactly when it is the behavioural projection of a well-formed global session type, and that global type can be mechanically recovered.
- **Mechanism:** Define multiparty compatibility as a semantic condition on CFSM systems; prove it characterises exactly the projections of well-formed global types (safety + liveness); and give a synthesis algorithm that builds the global type from a compatible CFSM system.
- **Concepts introduced/used:** [[Communicating Finite State Machines]], multiparty compatibility, [[Global Types|global session type]], [[Endpoint Projection|projection]], safety (deadlock-freedom, no orphan messages, no unspecified reception).
- **Stance:** formal / type-theoretic
- **Relates to:** The session-type route to the *realizability* question studied automata-theoretically in [[Realizability and Verification of MSC Graphs]] and for choreographies in [[Deciding Choreography Realizability]]; extends the global/local projection discipline of [[Multiparty Asynchronous Session Types]]; its "no global types needed" counterpoint is [[Less is More - Multiparty Session Types Revisited]]. Direct companion to the authors' ESOP 2012 *Multiparty Session Types Meet Communicating Automata*.

## Tags
#session-types #communicating-automata #multiparty-session-types #realizability #global-types #foundational
