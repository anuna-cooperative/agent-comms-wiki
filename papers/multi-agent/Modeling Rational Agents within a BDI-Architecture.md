# Modeling Rational Agents within a BDI-Architecture

**Reference:** Rao, A. S., & Georgeff, M. P. (1991). In J. Allen, R. Fikes, & E. Sandewall (Eds.), *Proceedings of the Second International Conference on Principles of Knowledge Representation and Reasoning (KR'91)*, 473–484. Morgan Kaufmann. Also AAII Technical Note 14. Source file: `rao_georgeff_bdi_architecture.pdf`. [URL](https://jmvidal.cse.sc.edu/library/rao91a.pdf)

## Summary
Rao and Georgeff give the canonical formalization of the Belief–Desire–Intention architecture as a modal/temporal logic over a branching-time possible-worlds model (a first-order extension of CTL*). Beliefs, goals (chosen, consistent, believed-achievable desires), and intentions are each modelled as accessibility relations over time trees, with the crucial innovation that belief-, goal-, and intention-accessible worlds are themselves time trees rather than static worlds — so an agent's mental state simultaneously ranges over uncertainty about the world (branches across belief-worlds) and choice among options (branches within each world).

The paper realises the central tenets of Bratman's philosophical theory (intentions as partial plans, irreducible to belief+desire) in a tractable semantic framework and introduces the distinction between *choice* (what the agent picks) and *possibility* (what the environment affords). A key technical contribution is the family of *commitment strategies* — blind, single-minded, and open-minded — which parametrically define how intentions persist under changing beliefs, yielding a taxonomy of rational agent types from fanatically committed to fully reconsidering. The formalism relates intentions to actions via sub-world inclusion (goals ⊆ beliefs; intentions ⊆ goals), avoiding classical side-effect problems of earlier intention logics.

## Key Ideas
- First-order CTL*-based modal logic with Bel, Goal, Intend accessibility.
- Belief-, goal-, intention-accessible worlds are themselves branching time trees.
- Optional vs. inevitable path modalities; distinguishes choice from possibility.
- Strong realism constraint: goal-worlds are sub-worlds of belief-worlds.
- Commitment strategies: blind, single-minded, open-minded.
- Intentions treated as first-class, non-reducible to beliefs and desires.
- Comparison with Cohen–Levesque's reductive intention formalism.

## Connections
- [[BDI]]
- [[BDI Architecture]]
- [[BDI Logic]]
- [[BDI Agents]]
- [[Intention Is Choice with Commitment]]
- [[Intelligent Agents Theory and Practice]]
- [[Agent-Oriented Programming]]
- [[Two Faces of Intention]]
- [[Intentional Stance]]

## Conceptual Contribution
- **Claim:** Rational agent behaviour is best modelled by treating beliefs, goals and intentions as equally fundamental modal attitudes over branching time, with agent types differentiated by commitment strategy rather than by reduction of intention to other attitudes.
- **Mechanism:** (i) Adopt CTL*-style branching time where each situation is a time point in a time tree, with path modalities *optional* and *inevitable*; (ii) associate each situation with sets of belief-, goal-, and intention-accessible worlds, each itself a time tree, imposing sub-world containment (strong realism); (iii) define rationality postulates relating the three attitudes; (iv) axiomatise commitment policies (blind = drop intention only on achievement, single-minded = also drop when no longer believed achievable, open-minded = also drop when no longer desired), yielding distinct agent classes.
- **Concepts introduced/used:** [[BDI Logic]], [[Commitment Strategies]], [[Strong Realism]], [[Branching Time]], [[Intention]], [[Practical Reasoning]]
- **Stance:** formal framework
- **Relates to:** Formalises the philosophical picture of [[Two Faces of Intention]] and operationalises the stance of [[Intentional Stance]]; provides the semantic bedrock for [[BDI Architecture]], [[Agent-Oriented Programming]] and the theory side of [[Intelligent Agents Theory and Practice]]; differs from and complements [[Intention Is Choice with Commitment]] (Cohen & Levesque) by treating intention as primitive rather than derived.

## Tags
#bdi #agents #logic #foundational #rationality
