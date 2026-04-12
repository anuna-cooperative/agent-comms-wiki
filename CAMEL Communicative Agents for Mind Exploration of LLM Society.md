# CAMEL: Communicative Agents for "Mind" Exploration of Large Language Model Society

**Reference:** Guohao Li, Hasan Hammoud, Hani Itani, Dmitrii Khizbullin, Bernard Ghanem (2023). *NeurIPS 2023 (KAUST)*. Source file: `downloads/camel.pdf`. [URL](https://arxiv.org/abs/2303.17760)

## Summary
Introduces **role-playing** as a scalable cooperation framework for LLM-based agents, along with the CAMEL library for building multi-agent societies. A human specifies only a high-level *task idea*; a task-specifier LLM expands it into a concrete goal, and two role-playing agents — typically an *AI user* (e.g. stock trader) and an *AI assistant* (e.g. Python programmer) — then converse, under carefully engineered *inception prompts*, until the task is solved. The framework studies failure modes of naive role-playing (role flipping, conversation deviation, instruction/response loops, flake answers) and presents prompt-engineering countermeasures.

The authors collect and release large role-playing dialogue datasets (AI Society, Code, Math, Science) produced by the framework itself, which have since become a standard resource for studying and finetuning cooperative multi-agent LLM behaviour. The paper is a foundational reference for the wave of LLM multi-agent systems that followed.

## Key Ideas
- Role-playing with inception prompts as a minimal coordination mechanism
- Task-specifier agent separates high-level intent from concrete subgoal
- Taxonomy of multi-agent LLM failure modes and prompt-level fixes
- Self-generated dialogue corpora (AI Society / Code / Math / Science) as a reusable resource
- Open-source CAMEL library — influential infrastructure for the agentic LLM ecosystem

## Connections
- [[LLM Agents]]
- [[Agent Communication Languages]]
- [[A Scalable Communication Protocol for Networks of LLMs]]
- [[Multi-Agent Systems]]
- [[Roles]]
- [[Conversation Protocols]]
- [[Negotiation]]

## Conceptual Contribution
- **Claim:** Complex cooperative tasks between LLM agents can be driven by role assignment alone: with carefully designed inception prompts, two role-playing LLMs can autonomously decompose and solve tasks that neither could solve in a single prompt, without hand-engineered dialogue control flow.
- **Mechanism:** A task-specifier LLM first turns a vague idea into a concrete goal. Two agents are then instantiated with opposing role prompts (user / assistant). A conversation loop enforces a strict turn-taking schema ("Instruction: ... Input: ..."; "Solution: ..."), with prompt-level guardrails against role flipping, request/response inversion, and conversation termination heuristics. The same engine, instantiated with different role pairs, generates the released dialogue datasets.
- **Concepts introduced/used:** [[LLM Agents]], [[Roles]], inception prompting, role-playing dialogue, [[Conversation Protocols]], [[Multi-Agent Systems]]
- **Stance:** engineering / empirical
- **Relates to:** Co-authored by Guohao Li, who is also a co-author of [[A Scalable Communication Protocol for Networks of LLMs]]; CAMEL provides the role-based-cooperation baseline that Agora generalises from paired role-play to heterogeneous open networks of negotiating agents. Complements the pipeline-structured approach of MetaGPT and the tool-use foundations of [[Toolformer]]. Connects to the negotiation-protocol tradition of [[KQML as an Agent Communication Language]] and [[FIPA-ACL]] but at the natural-language level.

## Tags
#llm-agents #role-playing #multi-agent #dialogue #cooperation
