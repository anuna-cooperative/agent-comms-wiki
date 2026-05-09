# Collaborative Plans for Complex Group Action

**Reference:** Grosz, B. J. & Kraus, S. (1996). *Collaborative Plans for Complex Group Action*. Artificial Intelligence, 86(2), pp. 269–357. (Earlier: Grosz & Sidner 1990, *Plans for Discourse*, in Cohen, Morgan & Pollack eds. *Intentions in Communication*, MIT Press.) [DOI](https://doi.org/10.1016/0004-3702(95)00103-4) · [Open access PDF (Harvard DASH)](https://dash.harvard.edu/bitstream/handle/1/2562070/Grosz_CollaborativePlans.pdf)

## Summary
Grosz and Kraus (extending Grosz & Sidner 1990) develop **SharedPlans**, the canonical computational model of collaborative joint action in MAS. The 90-page AIJ paper supplies a formal account of how a group of agents can collaboratively form, maintain, and execute a *shared plan* for a complex action — a plan that is *not* simply a union of individual plans nor a single agent's plan with delegated parts, but a genuinely group-level structure carrying mutual beliefs about who is doing what, why, and how. The framework distinguishes **full SharedPlans** (the group has a complete plan for the action and its sub-actions) from **partial SharedPlans** (the plan is incomplete and the agents are still working out subgoals). Each level of the plan carries explicit *intentions* — `Int.To` (intention to act) for individual actions, `Int.Th` (intention that) for actions performed by others or by the group as a whole — and *mutual beliefs* about the agents' beliefs and intentions. The agents have *meta-intentions* to fill in the partial plan, leading to an iterative refinement process in which subgoals are negotiated, recipes are selected, and contributions are committed. The paper shows that SharedPlans support *helpful behaviour* — an agent who notices that another's contribution is at risk has the meta-intention to assist — and *robust dialogue* — collaborative discourse is the agents' communication about and incremental construction of the shared plan. SharedPlans is the most-cited computational framework for joint action in MAS; it inherits Bratman's (1992) [[Shared Cooperative Activity|SCA]] philosophical commitments, makes them computationally tractable via the partial-plan refinement structure, and supplies the planning substrate for collaborative dialogue systems and (more recently) cooperative LLM-agent frameworks.

## Key Ideas
- *SharedPlan as a group-level structure*: a SharedPlan for an action `α` carries mutual beliefs about who is doing each sub-action, what recipe is being followed, and what intentions each agent holds toward each sub-action. Not reducible to a union of individual plans.
- *Full vs partial SharedPlans*: a full SharedPlan has complete agreement on all sub-actions, recipes, and assignments; a partial SharedPlan is incomplete in any of these respects. Most real collaboration happens with partial plans that are incrementally refined.
- *Two intention modalities*: `Int.To(G, α)` — agent `G` intends to perform `α`; `Int.Th(G, α)` — agent `G` intends that `α` (be performed by others, by the group, or come about). Joint action requires `Int.Th` of the joint act distributed across all participants.
- *Meta-intentions for plan completion*: each agent has meta-intentions to (i) fill in incomplete sub-plans, (ii) help other agents perform their parts, (iii) communicate about the plan's progress. These meta-intentions drive collaborative dialogue.
- *Recipes as parameterised plans*: a recipe is a procedure for performing an action — a sequence of sub-actions plus the constraints among them. Multiple recipes may exist for the same action; agents must agree on which to follow.
- *Helpful behaviour as a corollary*: an agent who notices another's commitment is at risk has the meta-intention to help — not as an additional axiom but as a consequence of the SharedPlan's structure.
- *Discourse as plan construction*: collaborative dialogue is the activity of jointly constructing and refining a SharedPlan. Each utterance in collaborative discourse contributes to filling in the plan or signalling the speaker's intentions about it. This connects SharedPlans to Grosz & Sidner's earlier work on discourse structure.

## Connections
- [[SharedPlans]]
- [[Joint Intentions]]
- [[Shared Cooperative Activity]]
- [[Meshing Subplans]]
- [[Mutual Belief]]
- [[Collaborative Plan]]
- [[Recipe (SharedPlans)]]
- [[Two Faces of Intention]]
- [[Intention Is Choice with Commitment]]
- [[Cohen and Levesque]]
- [[BDI]]
- [[We-Intention]]
- [[We-intentions]]
- [[Multi-Agent Collaboration in AI - Wasif Tunkel]]
- [[Why Do Multi-Agent LLM Systems Fail]]
- [[Multiagent Systems Sycara]]
- [[Conversation Policy]]

## Conceptual Contribution
- **Claim:** Joint action by a group of agents requires a *SharedPlan* — a group-level structure carrying mutual beliefs about who is doing what, why, and how — that is genuinely collective rather than a union of individual plans. Most real collaboration involves *partial* SharedPlans, refined incrementally through agents' meta-intentions to complete the plan, help one another, and communicate. Collaborative discourse is the activity of jointly constructing the SharedPlan.
- **Mechanism:** Formal semantics distinguishing full and partial SharedPlans; two intention modalities (`Int.To` for own actions, `Int.Th` for actions of others / of the group); meta-intentions for plan completion, mutual support, and communication; recipes as parameterised plans; iterative refinement under partial knowledge.
- **Concepts introduced/used:** [[SharedPlans]], [[Mutual Belief]], [[Collaborative Plan]], [[Recipe (SharedPlans)]], `Int.To` / `Int.Th` modalities, Meta-intention, Helpful Behaviour.
- **Stance:** foundational technical paper / computational framework.
- **Relates to:** Computational realisation of Bratman's (1992) [[Shared Cooperative Activity]]: SharedPlans operationalise the meshing-subplans / mutual-responsiveness / mutual-support conditions in a planning framework suitable for AI implementation. Cohen & Levesque's *Teamwork* / [[Joint Intentions|joint-intention]] (1991) work is the parallel modal-logic framework — SharedPlans is the planning-theoretic counterpart, and the two are complementary rather than competing. Tuomela's [[We-intentions]] take the opposing reductive-vs-irreducible position. Direct ancestor of the COLLAGEN collaborative-dialogue framework (Rich & Sidner 1998) and many subsequent collaborative-dialogue systems. In the LLM-agent era, SharedPlans is the obvious target architecture for cooperative multi-agent setups: meta-intentions to fill in partial plans correspond directly to LLM agents' planning calls, helpful behaviour corresponds to mutual error-recovery, and the partial-SharedPlan refinement loop corresponds to the iterative plan-execute-revise cycle of agentic LLM workflows. The diagnosis from [[Why Do Multi-Agent LLM Systems Fail|MAST]] is recognisable in SharedPlans terms: most failure modes are failures to maintain or refine the shared plan structure, not failures of individual agent capability.

## Tags
#joint-action #sharedplans #grosz #kraus #collaborative-planning #foundations #multi-agent #dialogue
