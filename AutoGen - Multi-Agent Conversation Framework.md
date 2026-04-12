# AutoGen: Enabling Next-Gen LLM Applications via Multi-Agent Conversation

**Reference:** Wu, Bansal, Zhang, Wu, Li, Zhu, Jiang, Zhang, Zhang, Liu, Awadallah, White, Burger, Wang (2023). Microsoft Research et al. *arXiv:2308.08155v2*. Source file: `2308.08155v2.pdf`. [URL](https://arxiv.org/abs/2308.08155)

## Summary
AutoGen is an open-source Microsoft framework for building LLM applications as conversations among customisable **conversable agents**. Each agent has a configurable back-end (LLMs, humans, tools, or a combination) and can send, receive, and react to messages. Developers compose applications by (1) defining specialised conversable agents and (2) programming their interaction patterns via natural language prompts and/or code — a paradigm the authors call **conversation programming**.

The framework supports diverse topologies (two-agent chat, group chat, hierarchical chat, dynamic routing), human-in-the-loop participation, and tool execution via code or function calls. Empirical studies demonstrate AutoGen on math, coding, QA, operations research, online decision-making, and entertainment tasks, showing that multi-agent conversations can exceed single-agent performance while reducing development effort.

## Key Ideas
- **Conversable agents** as the unifying abstraction — uniform message interface over LLMs, humans, and tools.
- **Conversation programming**: defining agent capabilities + scripting their interaction patterns as the application-building paradigm.
- Flexible conversation topologies: joint chat, hierarchical chat, group chat, dynamic routing.
- Human-in-the-loop and tool execution as first-class participants, not special cases.
- Empirical validation across six domains showing modular composition yields strong task performance.

## Connections
- [[Survey Of Agent Interoperability Protocols]]
- [[LLM Agents]]
- [[Multi-Agent Systems]]
- [[Agent-to-Agent Protocol]]
- [[Model Context Protocol]]
- [[Tool Use]]
- [[Agent Communication Languages]]

## Conceptual Contribution
- **Claim:** Multi-agent LLM applications are best built as **conversations between conversable agents** whose behaviour is programmed via a fusion of natural-language prompts and code; this abstraction unifies LLM, human, and tool participants under one message-passing model.
- **Mechanism:** Introduces a Python framework with `ConversableAgent`, `AssistantAgent`, `UserProxyAgent` classes; message passing drives LLM inference, human input requests, or tool/code execution; developers declaratively compose agent graphs. Case studies quantify gains over single-agent baselines.
- **Concepts introduced/used:** [[LLM Agents]], [[Multi-Agent Systems]], [[Tool Use]], [[Agent Communication Languages]], [[Interoperability]]
- **Stance:** framework / empirical study
- **Relates to:** Cited by [[Survey Of Agent Interoperability Protocols]] as prior art for in-framework agent coordination that protocols like [[Agent-to-Agent Protocol]] now aim to standardise across frameworks. Its conversation-programming abstraction is a concrete instance of the communication-centric view advocated by [[Beyond Self-Talk - Communication-Centric Survey Of LLM Multi-Agent Systems]].

## Tags
#llm-agents #multi-agent-systems #framework #tool-use #conversation-programming
