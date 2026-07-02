# Distributed Defeasible Speculative Reasoning in Ambient Environment

**Reference:** Lam, H.-P., Governatori, G., Satoh, K. & Hosobe, H. (2012). *Distributed Defeasible Speculative Reasoning in Ambient Environment*. In *Computational Logic in Multi-Agent Systems (CLIMA XIII)*, Lecture Notes in Computer Science 7486, pp. 43–60. Springer. [Springer DOI](https://doi.org/10.1007/978-3-642-32897-8_5) · DBLP `conf/clima/LamGSH12`

## Summary
Lam, Governatori, Satoh and Hosobe propose **Distributed Defeasible Speculative Reasoning (DDSR)**, a framework for agents that must act on incomplete information in open, unreliable, distributed environments such as ambient-intelligence and peer-to-peer settings. The motivating problem is that communication between agents is often delayed or broken, and agents may not know a priori which peers are present or willing to answer a query. *Speculative computation* addresses this by letting an agent proceed with **tentative solutions computed from default assumptions** about missing information, then revise those conclusions when the "real" answers eventually arrive.

The paper's central move is to drop the assumption — standard in earlier speculative-computation work — that agents are **hierarchically structured** with a master coordinating slaves. Instead DDSR models the environment as a **Multi-Context System**: each ambient agent is an autonomous logic-based entity holding a *local context theory*, and dependencies on knowledge held by other agents are expressed through *askable literals*. Local inconsistency and ambiguity are resolved by the skeptical semantics of **Defeasible Logic (DL)**; missing or uncertain external context is first filled by defaults for speculative reasoning and later replaced by returned answers. The authors characterise the framework with the **argumentation semantics of defeasible logic** (following Governatori et al.), which cleanly supports reasoning in the presence of conflicting information, and they give an **operational model** — a process-reduction / answer-arrival machinery that spawns computation processes, suspends those contradicted by newly returned answers, and reactivates consistent ones — together with a prototype implementation.

## Key Ideas
- **Speculative computation for unreliable networks:** compute tentative conclusions from default values when a peer's answer is delayed or unavailable, then revise once the real answer returns — so an agent need not block on slow or failed communication.
- **No centralized control:** generalises prior master/slave (hierarchical) speculative-reasoning frameworks to a fully distributed multi-agent system where agents have equivalent functionality and collaborate as peers.
- **Multi-Context System model:** each agent holds a *local context theory*; cross-agent knowledge dependencies are represented as *askable literals* resolved by querying other agents.
- **Defeasible Logic as the local engine:** strict rules, defeasible rules, and defeaters plus an acyclic superiority relation; tagged literals (+∆, −∆, +∂, −∂) distinguish definite from defeasible provability and handle conflicting rules skeptically.
- **Argumentation semantics:** the framework is characterised in argumentation-theoretic terms, giving principled support for speculative conclusions under conflict (ambiguity-blocking / ambiguity-propagation variants).
- **Operational model:** a process-reduction phase and an answer-arrival phase manage active/suspended computation processes — belief-contradicting processes are suspended and removed from the active set; consistent ones are (re)activated — with a prototype implementation of the model.

## Connections
- [[On the Acceptability of Arguments]] — Dung's abstract [[Argumentation Framework]], the semantic basis on which DL's argumentation semantics rests
- [[Argumentation Framework]]
- [[Non-monotonic Reasoning]] — defeasible logic is a rule-based non-monotonic formalism
- [[Circumscription - A Form of Nonmonotonic Reasoning]] — a sibling approach to non-monotonic reasoning (McCarthy)
- [[Defeasible Logic]]
- [[Speculative Computation]]
- [[Multi-Context System]]
- [[SPINdle]] — the defeasible-logic reasoner engineered by the same lead author
- [[Ambient Intelligence]]
- [[Impossibility of Distributed Consensus with One Faulty Process]] — the FLP reason speculation-under-delay matters: you cannot wait indefinitely on a possibly-failed peer

## Conceptual Contribution
- **Claim:** Agents in open, unreliable ambient environments can reason usefully despite missing or delayed information by *speculating* with default values under a defeasible, argumentation-based semantics — and this can be done in a fully decentralized multi-agent system with no master coordinator, generalising earlier hierarchical speculative-computation frameworks.
- **Mechanism:** Model the environment as a [[Multi-Context System]] of local defeasible theories linked by *askable literals*; resolve local conflict with [[Defeasible Logic]]'s skeptical, superiority-ordered rules; fill missing external literals with defaults for [[Speculative Computation]]; give the whole an [[Argumentation Framework|argumentation]] semantics; and drive it with an operational model (process-reduction + answer-arrival) that suspends belief-contradicting computations and revises conclusions as real answers arrive.
- **Concepts introduced/used:** [[Defeasible Logic]], [[Speculative Computation]], [[Multi-Context System]], askable literals, tagged literals (+∆/−∆/+∂/−∂), superiority relation, ambiguity blocking vs. propagation.
- **Stance:** technical framework paper (logic-based MAS); positions defeasible + speculative reasoning as the right tool for the dynamic, imperfect-communication nature of [[Ambient Intelligence]].
- **Relates to:** builds on the defeasible-logic-as-argumentation programme of Governatori et al. and on Satoh's speculative-computation line; contrasts with hierarchical (master/slave) speculative frameworks by removing centralized control; conceptually adjacent to [[On the Acceptability of Arguments|Dung's argumentation]] and to distributed-reasoning-under-uncertainty concerns in [[Non-monotonic Reasoning]].

## Tags
#defeasible-logic #non-monotonic-reasoning #speculative-computation #multi-agent-systems #argumentation #ambient-intelligence #distributed-systems #multi-context-systems
