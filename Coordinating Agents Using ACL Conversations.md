# Coordinating Agents using Agent Communication Languages Conversations

**Reference:** R. Scott Cost, Yannis Labrou, Tim Finin (2000). *Springer-Verlag book chapter*, March 2000. Source file: `Coordinating_Agents_using_Agent_Communication_Lang.pdf`

## Summary
This chapter argues that ACLs like KQML and FIPA-ACL provide the vocabulary for exchanging propositional attitudes but not the higher-level coordination structures agents need when carrying out task-oriented interactions. The authors advocate *conversation protocols* — pre-arranged message-exchange patterns — as the missing layer above individual speech acts, giving context for interpretation and enabling agents to expect and verify sequences of messages.

They survey existing approaches (COOL state machines, Dooley Graphs, Push-Down Transducers, DCGs) and propose a formalism based on Colored Petri Nets (CPNs) for specifying conversation protocols. The CPN-based specification enables concurrency modeling, role/participant tracking, and formal verification of properties like liveness and reachability. The approach positions shareable conversation protocol specifications as "abstract agent interfaces" (AAIs).

## Key Ideas
- ACLs alone do not encode expectations about response sequences; conversation protocols fill that gap.
- Conversation = pre-arranged coordination protocol giving pragmatic context to messages.
- Colored Petri Nets offer concurrency and verifiability lacking in FSM-based approaches.
- Three issues for conversations: specification, sharing, and aggregation into services.
- Specialization and composition of conversations, analogous to OO subclassing.

## Connections
- [[KQML]]
- [[FIPA-ACL]]
- [[Agent Communication Languages]]
- [[Multi-Agent Systems]]
- [[Speech Act Theory]]

## Conceptual Contribution
- **Claim:** Isolated speech-act messages are insufficient for agent coordination; shareable, verifiable conversation protocols — best specified as Colored Petri Nets — are the appropriate layer above ACL performatives.
- **Mechanism:** Survey of FSM/DFA/DCG conversation models (COOL, Dooley Graphs, ATM, PDTs) and their expressivity limitations; stepwise translation of a KQML Register conversation from JDFA to an equivalent CPN that captures role constraints, concurrency, message ordering, and a negotiation example; argues CPNs enable liveness/reachability verification.
- **Concepts introduced/used:** [[Conversation Protocols]], [[Colored Petri Nets]], [[Propositional Attitudes]], [[Abstract Agent Interfaces]], [[Conversation Specialization]], [[Conversation Composition]], [[Speech Acts]]
- **Stance:** engineering / formal-semantic
- **Relates to:** Complements [[ACRE Agent Conversation Reasoning Engine]] (runtime reasoning over conversation state) and shares motivation with [[Verifiable Semantics for ACLs]] — both insist ACL semantics be externally checkable. Builds on [[KQML Overview]] and [[FIPA-ACL]] performative sets.

## Tags
#conversations #petri-nets #coordination #protocols
