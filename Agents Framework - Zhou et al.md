# Agents: An Open-source Framework for Autonomous Language Agents

**Reference:** Wangchunshu Zhou et al. (2023). *arXiv:2309.07870v3 (AIWaves, Zhejiang University, ETH Zürich)*. Source file: `2309.07870v3.pdf`

## Summary
Introduces AGENTS, an open-source framework for building LLM-powered autonomous agents with first-class support for planning, long/short-term memory, tool use and web navigation, multi-agent communication, human-agent interaction, and fine-grained symbolic control via *Standard Operating Procedures* (SOPs). SOPs are state-graphs with LLM-editable transition rules and per-state prompt/tool configurations, giving users predictable, tunable control over otherwise stochastic agent behaviour.

The framework is declarative (agents instantiated from config JSON), supports dynamic scheduling of which agent speaks next in multi-agent settings, provides a FastAPI deployment target and an Agent Hub for sharing/forking agents, and includes an automated SOP-generation pipeline (meta-agent).

## Key Ideas
- SOP as a symbolic plan / state graph for controllable agents
- Dynamic scheduling: LLM controller picks next actor rather than fixed order
- Memory split: long-term (VectorDB + sentence-transformers) vs short-term scratchpad
- Config-driven agent construction reduces boilerplate
- Meta-agent auto-generates SOPs from task descriptions via RAG

## Connections
- [[LLM Agents]]
- [[Multi-Agent Collaboration in AI - Wasif Tunkel]]
- [[Why Do Multi-Agent LLM Systems Fail]]
- [[A Scalable Communication Protocol for Networks of LLMs]]
- [[From Eliza to XiaoIce - Social Chatbots]]

## Conceptual Contribution
- **Claim:** Autonomous LLM-powered language agents become reliably controllable and customisable when their behaviour is specified by *symbolic plans* — Standard Operating Procedures (SOPs) — represented as state graphs that an LLM-based controller traverses, rather than by monolithic prompts alone.
- **Mechanism:** Open-source library AGENTS unifying planning, long/short-term memory (VectorDB + scratchpad), tool use & web navigation, multi-agent communication (with LLM-moderator for dynamic scheduling), human-agent interaction (`is_human` flag), and controllability via SOPs. Includes an automated "meta-agent" that generates SOPs and configs from a task description via RAG.
- **Concepts introduced/used:** [[Language Agents]], [[Standard Operating Procedures (SOPs)]], [[Symbolic Plans]], [[LLM Agents]], [[Agent Hub]], [[Dynamic Scheduling]], [[Long-short Term Memory]], [[Meta-agent]]
- **Stance:** engineering / framework
- **Relates to:** A concrete instantiation of the role-specialised multi-agent style advocated in [[Multi-Agent Collaboration in AI - Wasif Tunkel]]. Its SOP/controller discipline directly targets the failure modes later catalogued in [[Why Do Multi-Agent LLM Systems Fail]]. Its inter-agent messaging is more prescriptive than the negotiated protocols of [[A Scalable Communication Protocol for Networks of LLMs]], sitting between classic ACLs ([[KQML as an Agent Communication Language]], [[FIPA-ACL]]) and fully emergent LLM communication.

## Tags
#llm-agents #framework #sop #multi-agent
