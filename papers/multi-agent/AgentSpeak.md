# AgentSpeak(L): BDI Agents Speak Out in a Logical Computable Language

**Reference:** Rao, A. S. (1996). *AgentSpeak(L): BDI Agents Speak Out in a Logical Computable Language*. In *Agents Breaking Away (MAAMAW '96)*, LNCS 1038, pp. 42–55, Springer. (Companion implementation/textbook: Bordini, R. H., Hübner, J. F. & Wooldridge, M. (2007). *Programming Multi-Agent Systems in AgentSpeak using Jason*. Wiley.) [Springer DOI](https://doi.org/10.1007/BFb0031845) · [SciSpace mirror](https://scispace.com/pdf/agentspeak-l-bdi-agents-speak-out-in-a-logical-computable-24usnt2sd7.pdf) · [Jason runtime (jason-lang.github.io)](https://jason-lang.github.io/)

## Summary
Rao introduces **AgentSpeak(L)**, a logic-based agent programming language giving the [[BDI]] architecture a clean operational semantics suitable for implementation. Where [[Modeling Rational Agents within a BDI-Architecture|Rao & Georgeff 1991]] gave an *abstract* BDI model in modal logic and [[Intention Is Choice with Commitment|Cohen & Levesque 1990]] gave a logical theory of intention, AgentSpeak supplies the *missing implementable bridge*: a Prolog-flavoured language in which an agent is specified by (i) a *belief base* (Prolog facts), (ii) a set of *plans* (event-triggered procedures), and (iii) an *intention stack* of currently-executing plans. The interpreter cycles through perception (updating beliefs), event generation (changes in beliefs and goals trigger events), plan selection (the *plan library* is queried for an applicable plan whose triggering event and context match), intention selection (the chosen plan is added to the intention stack), and execution (the next step of the next intention is executed). The language is small — half-a-dozen syntactic forms — and the operational semantics fits on a page, but it covers the dynamics that abstract BDI papers leave implicit. AgentSpeak became practically dominant through **Jason** (Bordini, Hübner, Wooldridge 2007), a Java-based interpreter that extended AgentSpeak with internal actions, customisable selection functions, and integration with [[Agents and Artifacts|JaCaMo]] (CArtAgO artefacts + MOISE organisations). Jason is the most-deployed BDI agent platform in academic MAS research; the AgentSpeak language is the implementation lingua franca of the operational BDI tradition. The paper closes a substantial gap in the vault between the abstract BDI literature and the engineering reality of running BDI agents.

## Key Ideas
- *Beliefs as a Prolog-style fact base*: an agent's beliefs are atomic literals (with negation as failure); belief updates are additions and removals of facts triggered by perception.
- *Plans as event-triggered procedures*: a plan has the form `triggering-event : context <- body.` — when the triggering event occurs and the context (a conjunction of belief queries) holds, the body (a sequence of actions, sub-goal achievements, and belief assertions) becomes executable.
- *Triggering events*: belief additions (`+belief`) and deletions (`-belief`), goal additions (`+!goal` for achievement, `+?goal` for test). Each event triggers plan-library lookup.
- *Intention as a stack of plans-in-execution*: each top-level event spawns an intention (a stack); sub-goal achievement pushes a sub-plan onto the stack; completion pops the stack.
- *Three selection functions*: `S_E` (which event to handle next), `S_O` (which applicable plan to use), `S_I` (which intention to advance) — left abstract in the language and provided as user-supplied policies in implementations.
- *Cycle-based interpreter*: the agent runs an indefinite loop — perceive → update beliefs → generate events → select event → look up plan → select plan → push intention → select intention → execute one step. Each cycle is finite, so the agent is reactively responsive to environmental change.
- *Operational semantics in eight rules*: the formal SOS-style semantics fits in a small table; this is what makes AgentSpeak implementable, and what previous abstract BDI work lacked.

## Connections
- [[AgentSpeak]]
- [[Jason (BDI runtime)]]
- [[Plan Library]]
- [[BDI]]
- [[Belief-Desire-Intention]]
- [[BDI Agents]]
- [[BDI Architecture]]
- [[BDI Logic]]
- [[Modeling Rational Agents within a BDI-Architecture]]
- [[Intention Is Choice with Commitment]]
- [[Cohen and Levesque]]
- [[Agent-Oriented Programming]]
- [[Agents and Artifacts]]
- [[CArtAgO]]
- [[An Interaction-oriented Agent Framework for Open Environments]]
- [[Intelligent Agents Theory and Practice]]
- [[Multiagent Systems Sycara]]

## Conceptual Contribution
- **Claim:** The BDI architecture, until then specified abstractly in modal logic ([[Modeling Rational Agents within a BDI-Architecture|Rao & Georgeff 1991]], [[Intention Is Choice with Commitment|Cohen & Levesque 1990]]), can be given a clean operational semantics as a small Prolog-flavoured language in which an agent is a triple of belief base, plan library, and intention stack, with an interpreter cycling through perceive / event / plan-select / execute steps. This bridges abstract BDI theory and BDI implementation.
- **Mechanism:** Belief base as Prolog facts; plans as `triggering-event : context <- body` clauses; intentions as stacks of plans-in-execution; eight-rule SOS-style operational semantics; three abstract selection functions (`S_E`, `S_O`, `S_I`) supplied as user policy.
- **Concepts introduced/used:** [[AgentSpeak]], [[Jason (BDI runtime)]], [[Plan Library]], Triggering Event, Intention Stack, Selection Function.
- **Stance:** foundational technical paper / language design.
- **Relates to:** Operational counterpart of [[Modeling Rational Agents within a BDI-Architecture|Rao & Georgeff 1991]] (the abstract BDI model) and [[Intention Is Choice with Commitment|Cohen & Levesque 1990]] (the formal-logic theory of intention) — AgentSpeak is the implementable bridge that makes these abstract theories deployable as running agents. Sister approach to [[Agent-Oriented Programming|Shoham's AGENT-0]] (1993): both are operational agent languages, but AGENT-0 emphasises commitment-based message passing while AgentSpeak emphasises BDI plan reasoning. Other operational BDI languages — 3APL, GOAL, 2APL, Jadex — share the same stance and many share AgentSpeak's Prolog-flavoured syntax. **Jason** (Bordini, Hübner, Wooldridge 2007) is the dominant production AgentSpeak implementation, integrated with [[Agents and Artifacts|JaCaMo]] (CArtAgO artefacts + MOISE organisations) to provide a complete agent / environment / organisation stack — the most-deployed BDI platform in academic MAS research. Within this vault, AgentSpeak / Jason is the missing operational realisation of the BDI threads in [[BDI]], [[BDI Architecture]], [[BDI Agents]], [[Multiagent Systems Sycara]], and [[Intelligent Agents Theory and Practice]] — the answer to "yes, but how do you actually build a BDI agent?"

## Tags
#bdi #agentspeak #rao #operational-bdi #jason #multi-agent #foundations
