# The Knowledge Level

**Reference:** Allen Newell (1982). "The Knowledge Level." *Artificial Intelligence* 18(1): 87-127. (AAAI Presidential Address, Stanford, 19 Aug 1980; also in *AI Magazine* 2(2), 1981.) [URL](http://cs.uns.edu.ar/~grs/InteligenciaArtificial/Allen%20Newell%20-%20The%20knowledge%20level.pdf)

## Summary
Newell's AAAI-80 presidential address proposes that above the symbol level (data structures manipulated by programs) there exists a distinct *knowledge level* whose medium is *knowledge* and whose laws are rationality. At the knowledge level an agent is characterised by what it knows and what goals it has; its behaviour is predicted by the *principle of rationality* — "if an agent knows that one of its actions will lead to a goal, it will select that action" — without commitment to any particular representation or processing mechanism.

The paper motivates the proposal by diagnosing three tensions in early-1980s AI: the mystification of "representation," the residue of the 1960s-70s theorem-proving controversy (Planner/Microplanner/Conniver's "uniform procedures will not work" reaction against resolution), and the diversity of answers in the SIGART Special Issue on Knowledge Representation (Brachman and Smith's survey showing no consensus on quantification, quotation, self-description, or evaluation). Newell's resolution: treat knowledge as a competence-level notion analogous to physicists' treatment of temperature — a level with its own laws, reduced to but not replaced by the symbol level. Representations are then understood as symbol-level *implementations* of knowledge, and we gain a principled way to talk about what an AI system knows without confusing it with how that knowledge is stored.

The Knowledge Level is foundational for agent-oriented programming (Shoham's "mental state" framing), for the BDI tradition, for KQML's and FIPA's claim that ACL semantics should be defined at the level of beliefs/intentions rather than byte-strings, and indirectly for McCarthy's Elephant 2000, whose speech-act semantics presupposes that one can talk coherently about what a program knows and is committed to, independently of implementation.

## Key Ideas
- Computer systems are describable at multiple levels (device, circuit, logic, register-transfer, program/symbol); the *knowledge level* sits above the symbol level.
- Medium of the knowledge level: *knowledge* (distinct from the data structures that represent it).
- Law of behaviour at the knowledge level: the *principle of rationality* — actions selected to achieve goals given what is known.
- The knowledge level is a competence-level account: it predicts behaviour without specifying mechanism, analogously to economic rationality.
- Representation is the symbol-level realisation of knowledge; mystifying representation conflates the levels.
- Diagnostic of the theorem-proving backlash: "uniform procedures will not work" was a symbol-level reaction to a knowledge-level question.

## Connections
- [[Agent-Oriented Programming]] — Shoham explicitly situates AOP at the knowledge level; mental states are Newell-level predicates over agents.
- [[Elephant 2000 - A Programming Language Based on Speech Acts]] — Elephant commits to knowledge-level program variables (propositions, commitments, past speech acts), making knowledge-level description the *native* semantics of programs.
- [[Ascribing Mental Qualities to Machines]] — McCarthy's ascriptivism is the philosophical cousin of Newell's levels argument.
- [[Knowledge Representation]]
- [[Agent Communication Languages]] — ACL semantics in the KQML/FIPA tradition are knowledge-level (beliefs/intentions) rather than symbol-level (bit patterns).
- [[KIF]] — intended as a lingua franca at the symbol level that preserves knowledge-level content across heterogeneous systems.
- [[Common Sense Reasoning]]

## Conceptual Contribution
- **Claim:** AI systems have a level of description above the symbol level — the knowledge level — whose medium is knowledge and whose law is rationality; this level is reducible to but not replaceable by the symbol level, and recognising it clarifies decades of representation debates.
- **Mechanism:** Levels-of-description methodology imported from computer architecture; principle of rationality as the behaviour law; knowledge characterised competence-theoretically (what follows from what an agent knows and wants, not how); representations reconceived as symbol-level implementations of knowledge-level content; diagnostic application to the theorem-proving controversy and the SIGART Special Issue.
- **Concepts introduced/used:** [[Knowledge Level]], [[Symbol Level]], [[Principle of Rationality]], [[Competence vs Performance]], [[Knowledge Representation]], [[Levels of Description]].
- **Stance:** foundational
- **Relates to:** The conceptual ground for agent-oriented and BDI programming; provides the "what an agent knows" vocabulary that [[KQML]], [[Agent Communication Languages]], and [[Elephant 2000 - A Programming Language Based on Speech Acts]] rely on; complements McCarthy's ascriptivist argument in [[Ascribing Mental Qualities to Machines]].

## Tags
#foundational #newell #knowledge-level #agent-architecture #knowledge-representation #rationality
