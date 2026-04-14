# ACRE: Agent Conversation Reasoning Engine

**Reference:** Lillis & Collier (University College Dublin). Source file: `ACRE_Agent_Conversation_Reasoning_Engine.pdf`. [URL](https://www.researchgate.net/publication/228725198_ACRE_Agent_Conversation_Reasoning_Engine)

## Summary
ACRE complements existing rule-based agent programming languages (AFAPL2, AgentSpeak, Jason, Jack) with explicit support for modelling, managing, and reasoning about complex multi-message conversations. Rather than handling each FIPA-ACL message individually, ACRE represents conversations as instances of *protocols* specified as Coloured Petri Nets or Dooley Graphs, so agents can track which performatives are expected next and react accordingly.

The paper integrates ACRE with the Agent Factory framework: conversations are exposed via a `conversation-id` parameter, and plan pre/postconditions in AFAPL2 reason over `BELIEF(status(...))` predicates derived from ACRE. A Vickrey auction example shows how an Auctioneer agent uses ACRE-tracked conversations to issue `cfp`, collect `propose`/`refuse` messages, and broadcast `accept-proposal`/`reject-proposal`.

## Key Ideas
- Protocols are first-class citizens, separate from individual messages.
- Conversations tracked via Coloured Petri Nets / Dooley Graphs.
- Integration with AFAPL2: conversation state surfaces as beliefs for plan reasoning.
- Code verification check that agent plans honour protocol expectations.
- Vickrey auction case study using FIPA Contract Net-style interactions.

## Connections
- [[FIPA-ACL]]
- [[Agent Communication Languages]]
- [[Agent-Oriented Programming]]
- [[Multi-Agent Systems]]

## Conceptual Contribution
- **Claim:** Agents need conversations, not just messages, as first-class abstractions; existing AOP languages (AgentSpeak, Jason, AFAPL2) lack native protocol reasoning.
- **Mechanism:** Models FIPA-ACL interaction protocols as Coloured Petri Nets / Dooley Graphs instantiated per conversation-id; surfaces conversation state as `BELIEF(status(...))` predicates usable in plan pre/postconditions; validated via Vickrey auction (Contract Net).
- **Concepts introduced/used:** [[Interaction Protocols]], [[Coloured Petri Nets]], [[Dooley Graphs]], [[Conversations]], [[Conversation Policy]], [[FIPA-ACL]], [[Performatives]], [[Contract Net Protocol]], [[BDI]], [[Agent-Oriented Programming]], [[Multi-Agent Systems]]
- **Stance:** engineering
- **Relates to:** Operationalises the protocol-tracking needs implicit in [[FIPA-ACL]] and [[KQML]]; its plan-level conversation awareness is an ancestor of task/session tracking in modern [[Agent-to-Agent Protocol]] as covered by [[Survey Of Agent Interoperability Protocols]].

## Tags
#acl #conversations #fipa #agent-programming
