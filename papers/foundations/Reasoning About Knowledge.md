# Reasoning About Knowledge

**Reference:** Fagin, Ronald; Halpern, Joseph Y.; Moses, Yoram; & Vardi, Moshe Y. (1995). *Reasoning About Knowledge.* MIT Press, Cambridge, MA. 477 pp. ISBN 0-262-06162-7 (cloth, 978-0-262-06162-9); paperback ed. 2003 (978-0-262-56200-3). Publisher: <https://mitpress.mit.edu/9780262061629/reasoning-about-knowledge/>.

## Summary
*Reasoning About Knowledge* is the standard graduate reference for the modal logic of knowledge and its application to multi-agent and distributed systems. Its central object is the operator K_i ("agent i knows"), interpreted over **possible-worlds (Kripke) semantics**: an agent knows a fact φ exactly when φ holds in every world it considers possible. The accessibility relation that fixes which worlds are "considered possible" is an equivalence relation, yielding the system **S5** — knowledge is truthful (the T axiom), and positively and negatively introspective (the 4 and 5 axioms) — which the authors contrast with weaker logics for *belief* (KD45) and with notions appropriate to resource-bounded reasoners.

The book's distinctive contribution is the **runs-and-systems (interpreted systems)** framework, which grounds this abstract logic in concrete computation. A *run* is a complete history of a multi-agent system over time; a *point* is a (run, time) pair; an agent's *local state* determines which global points it cannot distinguish, and that indistinguishability relation *is* the epistemic accessibility relation. Knowledge thereby becomes an objective, ascribed property of a system's information flow — "agent i knows φ" means φ holds at every point i cannot tell apart from the actual one — rather than a claim about anyone's mental state. On this base the authors build the **hierarchy of group knowledge**: everyone-knows (E), common knowledge (C, the infinite fixpoint E^ω), and distributed/implicit knowledge (D, what the group would know by pooling). Worked epistemic puzzles — the **muddy children**, the **coordinated-attack / two-generals** problem — show why common knowledge is necessary for simultaneous coordinated action yet *unattainable* by message exchange in asynchronous systems, recovering the impossibility result of the authors' own [[Knowledge and Common Knowledge in a Distributed Environment]] as a special case.

The later chapters develop the engineering payoff and the hard problems. **Knowledge and time** are combined into logics whose completeness and (often very high) complexity the authors chart precisely. **Knowledge-based programs** specify agent behaviour in terms of tests on knowledge ("if you do not know that the channel is clear, resend"), giving an implementation-independent way to design and verify protocols. Finally the book confronts **logical omniscience** — the unrealistic prediction of S5 that agents know all logical consequences of their knowledge — and surveys remedies: explicit-vs-implicit knowledge via *awareness*, *local reasoning* (non-omniscient societies of sub-agents), and impossible/non-standard worlds. The result is a unified treatment spanning AI, distributed computing, game theory, and philosophy.

## Key Ideas
- **Knowledge as possible-worlds quantification:** K_i φ holds iff φ is true in every world i considers possible; the logic of an equivalence accessibility relation is **S5** (axioms K, T, 4, 5).
- **Interpreted systems / runs-and-systems:** an agent's indistinguishability over global histories defines its knowledge — an *ascribed*, externalist account requiring no mentalistic commitment.
- **Group-knowledge hierarchy:** implicit/distributed knowledge D ⊒ everyone-knows E ⊒ common knowledge C; C is the fixpoint needed for *simultaneous* action.
- **Muddy children & coordinated attack:** canonical puzzles showing how public announcement creates common knowledge and why no finite message chain can in asynchronous settings.
- **Knowledge and time:** epistemic + temporal logics, with completeness axiomatisations and sharp complexity bounds (often PSPACE-complete to non-elementary).
- **Knowledge-based programs:** protocol specifications written against knowledge tests, separating *what an agent must know to act* from *how* it represents that knowledge.
- **Logical omniscience and its cures:** awareness operators, explicit vs implicit knowledge, local reasoning, and non-standard worlds for resource-bounded agents.
- **Belief vs knowledge:** dropping veridicality (T) gives KD45 belief; the framework cleanly parameterises the modal strength to the application.

## Connections
- [[Knowledge and Common Knowledge in a Distributed Environment]] — the 1990 Halpern–Moses paper this book generalises and systematises.
- [[Epistemic Logic]]
- [[Epistemic S5]]
- [[Common Knowledge (Convention)]] — the same E^ω construction shared with Lewis and Aumann.
- [[Convention - Lewis]]
- [[The Synthesis of Digital Machines with Provable Epistemic Properties]] — Rosenschein & Kaelbling compile exactly this ascribed-knowledge semantics into machines.
- [[The Knowledge Level]] — Newell's knowledge-level ascription is the AI sibling of the interpreted-systems stance.
- [[Intention Is Choice with Commitment]] — Cohen & Levesque's BDI logic layers belief/goal modalities on this same possible-worlds machinery.
- [[Impossibility of Distributed Consensus with One Faulty Process]] — FLP has an epistemic reading: common knowledge of a decision is unattainable.
- [[Time Clocks and the Ordering of Events in a Distributed System]] — Lamport's local histories underpin the indistinguishable-runs semantics.
- [[Multi-Agent Systems]]
- [[Possible Worlds Semantics]], [[Kripke Structure]], [[Interpreted Systems]], [[Distributed Knowledge]], [[Knowledge-Based Programs]], [[Logical Omniscience]], [[Muddy Children Puzzle]]

## Conceptual Contribution
- **Claim:** Knowledge in a multi-agent system is not a private mental fact but an *objective, ascribable* property of the system's information flow: agent i knows φ exactly when φ holds at every global state i cannot distinguish from the actual one. With this externalist move, the full modal logic of knowledge (S5), group knowledge, and knowledge-over-time become rigorous, computable tools for specifying and verifying distributed and multi-agent protocols.
- **Mechanism:** Possible-worlds (Kripke) semantics with an equivalence accessibility relation, grounded operationally in the **runs-and-systems / interpreted-systems** model; a group-knowledge hierarchy (D ⊒ E ⊒ C); combined knowledge-and-time logics with completeness and complexity results; **knowledge-based programs** as implementation-independent protocol specs; and awareness / local-reasoning constructions to escape logical omniscience.
- **Concepts introduced/used:** [[Epistemic Logic]], [[Epistemic S5]], [[Possible Worlds Semantics]], [[Kripke Structure]], [[Interpreted Systems]], [[Common Knowledge (Convention)]], [[Distributed Knowledge]], [[Knowledge-Based Programs]], [[Logical Omniscience]], [[Muddy Children Puzzle]]
- **Stance:** formal / foundational textbook (logic + theory)
- **Relates to:** Direct book-length expansion of [[Knowledge and Common Knowledge in a Distributed Environment]]; provides the semantic substrate operationalised by [[The Synthesis of Digital Machines with Provable Epistemic Properties]]; the modal-logic foundation under BDI agent theory ([[Intention Is Choice with Commitment]]) and under the game-theoretic common-knowledge of [[Convention - Lewis]]; epistemic counterpart to consensus impossibility ([[Impossibility of Distributed Consensus with One Faulty Process]]).

## Tags
#epistemic-logic #common-knowledge #modal-logic #S5 #distributed-systems #knowledge-representation #multi-agent #interpreted-systems #foundational #fagin-halpern-moses-vardi
