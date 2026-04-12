# Towards Automating the Evolution of Linguistic Competence in Artificial Agents

**Reference:** Gmytrasiewicz, P. J., Gopal, D. (2000). *Technical article, University of Texas at Arlington*. Source file: `Towards_Automating_the_Evolution_of_Linguistic_Com.pdf`

## Summary
Gmytrasiewicz and Gopal propose a decision-theoretic framework for artificial agents to autonomously enrich and evolve their shared agent communication language. Each agent has a frame/object-based knowledge representation language (KRL) encoding beliefs about the world and nested beliefs about other agents. Decisions about which messages to send are grounded in expected-utility computations over the effect on the hearer's mental state, so every well-defined message carries measurable value to the speaker.

When the ACL proves inadequate to express content the agent wishes to communicate, the agents engage in game-theoretic negotiation (after Rubinstein-style alternating offers) over new lexicon items and grammatical rules. Utilities trade off implementation cost, time-discounting, and communicative gain. The framework thus gives a concrete mechanism for pidgin-like emergence of shared ACLs among rational, knowledge-based agents.

## Key Ideas
- KRL as agents' "language of thought"; ACL is a translation target.
- Message value = expected-utility impact on hearer's mental state.
- Negotiation over lexicon and grammar when ACL is insufficient.
- Nested agent models enable rational communication choices.
- Decision-theoretic, game-theoretic grounding for language emergence.

## Connections
- [[Agent Communication Languages]]
- [[Multi-Agent Systems]]
- [[Speech Act Theory]]
- [[Language Workbenches]]

## Conceptual Contribution
- **Claim:** The content and extension of an agent communication language can be derived from rational-decision principles: every message carries measurable expected utility, and when the current ACL is insufficient, agents rationally negotiate new lexicon and grammar.
- **Mechanism:** Each agent has a frame-based KRL representing nested beliefs about others; message utility is computed as the expected change in the hearer's mental state weighed against action value. When no existing ACL expression suffices, Rubinstein-style alternating-offers bargaining over new lexicon items and grammar rules trades off implementation cost, time-discount, and future communicative gain, producing a pidgin-like convergence path.
- **Concepts introduced/used:** [[Knowledge Representation Language]], [[Expected Utility Communication]], [[Rubinstein Bargaining]], [[Nested Beliefs]], [[Lexicon Negotiation]], [[Pidgin Emergence]], [[Decision-Theoretic ACL]]
- **Stance:** formal-semantic
- **Relates to:** Provides a decision-theoretic counterpart to the situated emergence of [[Language Games for Autonomous Robots]] and the neural emergence studied in [[On the Pitfalls of Measuring Emergent Communication]]; its utility-grounded messages contrast with the mentalistic sincerity conditions of [[Agent-Oriented Programming]] and [[FIPA-ACL]].

## Tags
#acl-evolution #decision-theory #negotiation #language-emergence
