# Intention Is Choice with Commitment

**Reference:** Cohen, P.R. & Levesque, H.J. (1990). *Artificial Intelligence* 42(3): 213–261. Source file: `cohen-levesque-intention-is-choice-with-commitment.pdf`. [URL](https://www-cs.stanford.edu/~epacuit/classes/lori-spr09/cohenlevesque-intention-aij90.pdf)

## Summary
Cohen and Levesque formalise the "rational balance" that holds between an autonomous agent's beliefs, goals, actions, and intentions. They define intention as a composite mental attitude: a *persistent goal* that the agent is committed to pursuing until it is achieved, known to be impossible, or no longer relevant. This yields a modal logic whose axioms capture Bratman's three functional roles for intention — posing problems for means-end reasoning, acting as a screen of admissibility for future intentions, and prompting the agent to track (and re-try) the success of its actions.

The paper opens with the now-classic "Willie the robot" vignette (uncommitted, overcommitted, then homicidally committed), framing intention as what an agent must reason about to be both reliable and responsive. By relativising intentions to beliefs about another agent's intentions the authors also sketch a theory of interpersonal commitment that anticipates speech-act and multi-agent communication semantics.

## Key Ideas
- *Persistent goal* (P-GOAL): a goal an agent will not drop until it is believed achieved, believed impossible, or its relevance condition fails.
- *Intention* defined as a P-GOAL to have done an action while believing one is about to do it — closing Bratman's gap between intending and acting intentionally.
- Avoids the "side-effect problem": agents don't intend foreseen side-effects of their actions.
- Mutual/relativised intentions as a foundation for interpersonal commitments and speech acts.
- Desiderata list (beliefs, feasibility, non-futility, tracking) becomes a standard benchmark for intention logics.

## Connections
- [[Agent-Oriented Programming]]
- [[Belief-Desire-Intention]]
- [[BDI Logic]]
- [[BDI Architecture]]
- [[Joint Intentions]]
- [[Commitment]]
- [[Mental State]]
- [[Rational Action Semantics]]
- [[Speech Act Theory]]
- [[Intentional Stance]]

## Conceptual Contribution
- **Claim:** Intention is not a primitive mental state but a *choice with commitment* — a goal plus a meta-policy for when to drop it.
- **Mechanism:** Modal logic over beliefs and goals plus a temporal operator for persistence; intention defined compositionally so its functional roles (planning, filtering, tracking) are theorems rather than axioms.
- **Concepts introduced/used:** [[Persistent Goal]], [[Commitment]], [[Rational Balance]], [[Mental State]], [[Nested Beliefs]], [[Joint Intentions]].
- **Stance:** foundational/formal.
- **Relates to:** Shoham's [[Agent-Oriented Programming]] cites this paper as the prime candidate for grounding AOP's mental-state semantics; Shoham deliberately chooses a simpler obligation/commitment primitive for AGENT-0 but frames C&L as the rigorous theory AOP languages should eventually implement. The paper also underwrites FIPA-style [[Mentalistic Semantics]] and [[Rational Action Semantics]] for ACLs.

## Tags
#intention #bdi #modal-logic #commitment #foundational #rational-agency
