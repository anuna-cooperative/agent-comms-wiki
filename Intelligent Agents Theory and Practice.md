# Intelligent Agents: Theory and Practice

**Reference:** Wooldridge, M., Jennings, N. R. (1995). *Knowledge Engineering Review*. Source file: `woodridge_intelligent_agents.pdf`

## Summary
A foundational survey that organizes the agent-based computing field into three tightly coupled concerns: agent theories (formal specifications of what an agent is, often via intentional notions such as belief, desire, intention, obligation), agent architectures (software/hardware designs satisfying those specifications, e.g., BDI, subsumption, layered), and agent languages (programming languages whose primitives embody the theorists' concepts).

Wooldridge and Jennings distinguish a weak notion of agency (autonomy, social ability, reactivity, pro-activeness) from a stronger AI-centric notion involving mentalistic attributes (knowledge, belief, intention) and sometimes emotion or mobility. They review representational and reasoning formalisms (modal logics for knowledge and belief, intention logics), critique their computational tractability, and survey implementations (AGENT-0, PLACA, Concurrent METATEM). The paper sets the vocabulary used by much subsequent MAS research.

## Key Ideas
- Three-way division: theory, architecture, language.
- Weak vs. strong notion of agency.
- Intentional stance justifies mentalistic ascription (Dennett/McCarthy).
- BDI and related mental-state architectures.
- Survey of 1990s agent languages and applications.

## Connections
- [[Multi-Agent Systems]]
- [[Agent-Oriented Programming]]
- [[Agent Communication Languages]]
- [[Speech Act Theory]]
- [[Weak Agency]]
- [[Strong Agency]]
- [[BDI]]
- [[Mental State]]
- [[Mentalistic Semantics]]

## Conceptual Contribution
- **Claim:** The emerging field of agent-based computing should be structured around the interlocking triad of agent theories, architectures and languages, and tensions between weak (behavioural) and strong (mentalistic) notions of agency should be kept explicit rather than elided.
- **Mechanism:** Wooldridge and Jennings synthesise early 1990s work by (i) defining weak agency (autonomy, social ability, reactivity, pro-activeness) and strong agency (adds belief, desire, intention, emotion, mobility); (ii) surveying modal-logic theories of knowledge/belief/intention and the intentional stance as justification; (iii) cataloguing BDI, subsumption and layered architectures; and (iv) reviewing implemented languages (AGENT-0, PLACA, Concurrent METATEM) and representative applications. Computational tractability of the richer logics is flagged as a central open problem.
- **Concepts introduced/used:** [[Weak Agency]], [[Strong Agency]], [[Intentional Stance]], [[BDI]], [[Subsumption Architecture]], [[Layered Architecture]], [[Concurrent METATEM]], [[PLACA]], [[Agent Theory-Architecture-Language Triad]]
- **Stance:** survey
- **Relates to:** Canonises the vocabulary used by [[Agent-Oriented Programming]], [[Agent Communication Languages - Rethinking the Principles]] and [[Trends in Agent Communication Language]]; its tractability critique anticipates the social-semantic move in [[An Interaction-oriented Agent Framework for Open Environments]].

## Tags
#agents #bdi #survey #foundational
