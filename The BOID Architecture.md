# The BOID Architecture: Conflicts Between Beliefs, Obligations, Intentions and Desires

**Reference:** Broersen, Dastani, Hulstijn, Huang, van der Torre (2001). *Proceedings of the Fifth International Conference on Autonomous Agents (AGENTS'01)*, Montreal. Source file: `broersen_01_boid.pdf`. [URL](https://dl.acm.org/doi/10.1145/375735.375735)

## Summary
This paper introduces the BOID architecture, a deontic extension of the classic BDI (Belief-Desire-Intention) agent model that adds Obligations as a first-class motivational attitude alongside Beliefs, Desires, and Intentions. The authors argue that autonomous agents must reason not only about what they believe, want, and plan, but also about the norms and social commitments that constrain them, and that modeling obligations explicitly lets the architecture handle conflicts between self-interested goals and externally imposed duties.

The central contribution is a classification of conflict types between the four components (e.g., BO, BD, BI, OD, OI, DI, and triple/quadruple conflicts such as BOD and BOID) and a corresponding taxonomy of agent types determined by orderings over which component overrules which. Six "realistic" orderings yield named agent types: realistic, simple-minded/stable (BIDO, BIOD), selfish (BDIO, BDOI), social (BOID, BOID), and open-minded. Conflicts are resolved by feedback loops in the control cycle that iteratively apply rules from each component, producing one or multiple extensions in the sense of Reiter's default logic. An additional planning component selects actions from intentions.

## Key Ideas
- Deontic extension of BDI: Obligations become a fourth motivational attitude.
- Four components as input/output black boxes producing sets of formulas (extensions).
- Taxonomy of conflicts: binary (BO, BD, BI, OD, OI, DI), triple (BOD, BOI, BDI, OID), quadruple (BOID).
- Agent types as orderings over components: realistic, simple-minded, selfish, social, open-minded.
- Conflict resolution via feedback-loop control architecture (extensions constructed before selection).
- Connection to Reiter's default logic and Thomason's BDP logic.
- Single-extension vs multiple-extension BOID; planning component selects one final extension.

## Connections
- [[BDI]]
- [[Agent-Oriented Programming]]
- [[Multi-Agent Systems]]
- [[Agent Communication And Institutional Reality]]

## Conceptual Contribution
- **Claim:** Autonomous agents require obligations as a first-class motivational attitude alongside BDI, and an agent's character can be formally identified with the priority ordering used to resolve conflicts between beliefs, obligations, intentions, and desires.
- **Mechanism:** Four component black boxes (B, O, I, D) produce extensions over a propositional language; an ordering function rho on rules determines which components override others; a feedback-loop control cycle iteratively applies applicable rules; a planning component selects a single extension. The 24 possible orderings collapse to six realistic agent types.
- **Concepts introduced/used:** [[BDI]], [[Deontic Logic]], [[Default Logic]], [[Agent Types]], [[Norms and Obligations]], [[Agent Architecture]], [[Multi-Agent Systems]]
- **Stance:** formal
- **Relates to:** Extends the BDI foundations referenced throughout the vault ([[Agent-Oriented Programming]], [[BDI]]) with normative reasoning relevant to [[Agent Communication And Institutional Reality]]; provides a conflict-resolution substrate that agent communication languages ([[FIPA-ACL]], [[KQML]]) implicitly assume when performatives carry commissive or directive force.

## Tags
#bdi #deontic #agent-architecture #norms #multi-agent-systems
