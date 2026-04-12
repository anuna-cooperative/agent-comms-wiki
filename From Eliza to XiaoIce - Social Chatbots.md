# From Eliza to XiaoIce: Challenges and Opportunities with Social Chatbots

**Reference:** Heung-Yeung Shum, Xiaodong He, and Di Li (2018). *arXiv:1801.01957v2 (Frontiers of IT & EE)*. Source file: `1801.01957v2.pdf`. URL: https://arxiv.org/abs/1801.01957

## Summary
Survey of conversational AI that traces the arc from Eliza (1966) and Parry through ALICE, DARPA Communicator, and modern IPAs (Siri, Cortana, Alexa) to Microsoft's social chatbot XiaoIce. The authors distinguish task-completion from chitchat systems, and argue that the next frontier — social chatbots — must integrate IQ (knowledge/reasoning/skills) with EQ (empathy, social skills, personality) to build long-term emotional connections with users.

They introduce *conversation-turns per session* (CPS) as a success metric for social chatbots and describe XiaoIce's architecture (chat manager, core chat with retrieval+generation, visual awareness, skills) along with design principles around ethical response filtering and persona consistency.

## Key Ideas
- IQ + EQ integration as design principle for social chatbots
- CPS (conversation-turns per session) as success metric
- Core-chat pipeline: user understanding -> response generation with topic guidance
- Image commenting as social (not just descriptive) task
- Taxonomy: chitchat vs task-completion vs IPA vs social chatbot

## Connections
- [[LLM Agents]]
- [[Agents Framework - Zhou et al]]

## Conceptual Contribution
- **Claim:** Social chatbots must be designed around *both* intellectual quotient (IQ) and emotional quotient (EQ); their success metric is not task completion or Turing-test pass-rate but *Conversation-turns Per Session* (CPS), reflecting sustained emotional engagement.
- **Mechanism:** Survey-style design brief: trace Eliza → Parry → Alice → DARPA Communicator → Siri → XiaoIce; propose an architecture with chat manager, core-chat (user understanding + response generation + personality + ethical filter), visual awareness, and skills; integrate empathy, consistent persona, topic guidance, and emotion tracking; use XiaoIce (100M+ users) as illustrative case.
- **Concepts introduced/used:** [[Social Chatbots]], [[Conversation-turns Per Session (CPS)]], [[Emotional Quotient]], [[Core Chat Architecture]], [[Empathetic Response Generation]], [[XiaoIce]], [[Conversational AI]], [[Eliza]], [[Turing Test]], [[Retrieval-based Dialogue]]
- **Stance:** engineering / design-principles
- **Relates to:** Stands at the opposite pole from task-oriented ACLs ([[KQML as an Agent Communication Language]], [[FIPA-ACL]]) — here the communicative goal is emotional belonging rather than knowledge exchange. Contrasts with [[Agents Framework - Zhou et al]] (task agents with SOPs) and [[Multi-Agent Collaboration in AI - Wasif Tunkel]] (productive collaboration). Anticipates the human-emotional concerns that re-emerge in [[Ensuring Trustworthy and Ethical Behaviour in Intelligent Logical Agents]].

## Tags
#chatbots #conversational-ai #survey #emotional-ai
