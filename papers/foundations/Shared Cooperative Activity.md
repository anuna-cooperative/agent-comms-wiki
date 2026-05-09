# Shared Cooperative Activity

**Reference:** Bratman, M. E. (1992). *Shared Cooperative Activity*. The Philosophical Review, 101(2), pp. 327–341. [DOI/JSTOR](https://doi.org/10.2307/2185537) · [Open access PDF (MIT Media Lab)](https://web.media.mit.edu/~cynthiab/Readings/bratman-PhilRev-92.pdf)

## Summary
Bratman extends his individual-agent planning theory ([[Two Faces of Intention|*Two Faces of Intention*]] 1984; *Intention, Plans, and Practical Reason* 1987) to the dyadic cooperative case. The paper asks: *what makes a joint activity cooperative*, in the strong sense that the participants' individual intentions are appropriately *meshed* — that each is intending the joint activity itself, not merely the contribution of their own part? Bratman gives three necessary-and-sufficient conditions for **shared cooperative activity** (SCA): (1) **mutual responsiveness** — each participant is responsive to the intentions and actions of the other; (2) **commitment to the joint activity** — each intends *the joint activity*, not merely some individual outcome; (3) **commitment to mutual support** — each is committed to helping the other should the other be unable to perform their part. The conditions are recursively nested: each agent's intentions include intentions about the other agent's intentions, and so on, in a way that requires (in the limit) [[Common Knowledge (Convention)|common knowledge]] of the joint plan. Bratman calls the structure **meshing subplans**: each agent forms a sub-plan for their own contribution, and the sub-plans must be compatible — neither inadvertently undermining the other. The paper is the most-cited philosophical treatment of joint action in the analytical tradition; together with [[Cohen and Levesque|Cohen & Levesque]]'s *Teamwork* (1991), it supplies the foundation for joint-intention models in MAS, the [[Joint Intentions|SharedPlans]] tradition (Grosz & Kraus 1996), and the modern cooperative-AI programme (Dafoe et al. 2020). The conditions also serve as a *diagnostic* for what is missing from many LLM-agent multi-agent setups — the agents are running in parallel with shared context but are not, in Bratman's strict sense, engaged in shared cooperative activity.

## Key Ideas
- *Three conditions for SCA*: **mutual responsiveness** (each agent responsive to the other's actions and intentions), **commitment to the joint activity** (intending the joint activity, not just one's own part), **commitment to mutual support** (each willing to help the other complete their part).
- *Meshing subplans*: each agent forms a subplan for their own contribution; the subplans must be *compatible* — the actions in one cannot inadvertently undermine the actions in the other. This is stronger than mere consistency: it requires positive coordination.
- *Recursively nested intentions*: each agent's intentions include intentions about the other agent's intentions about the joint activity; the structure approaches [[Common Knowledge (Convention)|common knowledge]] of the shared plan in the limit.
- *Distinguishing cooperative from merely-strategic interaction*: two agents may pursue compatible goals through individual-rational action without engaging in SCA — what is missing is the intention to act *together*. SCA is irreducibly *we-mode*, not merely aligned *I-mode* action.
- *Pre-packaged or built-up*: joint activity may be settled in advance (a contracted joint plan) or built up incrementally during the interaction (a tacitly-emerging cooperative game). Either way, the three conditions must hold for genuine SCA.
- *Robustness across mishap*: SCA tolerates and is responsive to subgoal failure — if one agent's subplan fails, the other is committed to helping rather than abandoning the joint activity. This is the *stickiness* that distinguishes cooperation from mere coincidence of action.

## Connections
- [[Shared Cooperative Activity]]
- [[Joint Intentions]]
- [[Meshing Subplans]]
- [[Mutual Responsiveness]]
- [[We-Intention]]
- [[Two Faces of Intention]]
- [[Intention Is Choice with Commitment]]
- [[SharedPlans]]
- [[Cohen and Levesque]]
- [[BDI]]
- [[Modeling Rational Agents within a BDI-Architecture]]
- [[Common Knowledge (Convention)]]
- [[Multi-Agent Collaboration in AI - Wasif Tunkel]]
- [[Why Do Multi-Agent LLM Systems Fail]]

## Conceptual Contribution
- **Claim:** Genuine cooperative joint activity requires three conditions — mutual responsiveness to the other's intentions and actions, commitment to the joint activity itself (not merely one's own part), and commitment to mutual support. The participants' subplans must *mesh* (positively coordinate, not merely be compatible). This distinguishes cooperative joint action from coincident individually-rational action.
- **Mechanism:** Three-condition philosophical analysis of joint action; the meshing-subplans construction; recursively-nested intention structure approaching common knowledge; case-distinction between pre-packaged and incrementally-built-up joint activity.
- **Concepts introduced/used:** [[Shared Cooperative Activity]], [[Meshing Subplans]], [[Mutual Responsiveness]], [[We-Intention]] (implicit; later developed by Tuomela), Joint Intention, Cooperative-vs-Strategic Action.
- **Stance:** foundational philosophical paper.
- **Relates to:** Direct philosophical companion of [[Cohen and Levesque|Cohen & Levesque]]'s *Teamwork* (1991) — Bratman gives a richer philosophical analysis, Cohen & Levesque give the modal-logic formalisation that became the technical basis of joint-intention work in MAS. Direct ancestor of the [[SharedPlans]] framework (Grosz & Sidner 1990, Grosz & Kraus 1996), which gives a computational version of meshing subplans suitable for collaborative dialogue planning. [[We-intentions|Tuomela's *we-intentions*]] are an alternative philosophical analysis emphasising the irreducibility of group-level intention. In MAS, Bratman's three conditions translate directly into requirements for a multi-agent system to count as cooperative: a system in which agents share context but do not satisfy mutual responsiveness, joint-activity commitment, or mutual support is *not* cooperative in the strict sense — even if the agents happen to make compatible decisions. This is a sharp diagnostic for [[Why Do Multi-Agent LLM Systems Fail|multi-agent LLM failures]]: most current LLM-agent setups satisfy parallel execution and shared context but not Bratman's stronger conditions, and the failure modes documented by the MAST taxonomy are precisely the kinds of failures one would predict from non-SCA "joint" activity. The cooperative-AI research programme (Dafoe et al. 2020) explicitly takes Bratman's conditions as the design target for cooperative artificial agents.

## Tags
#joint-action #bratman #cooperative-agency #philosophy-of-action #foundations #multi-agent
