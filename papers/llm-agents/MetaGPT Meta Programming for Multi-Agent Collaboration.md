# MetaGPT: Meta Programming for a Multi-Agent Collaborative Framework

**Reference:** Sirui Hong, Mingchen Zhuge, Jiaqi Chen, Xiawu Zheng, Yuheng Cheng, Ceyao Zhang, Jinlin Wang, Zili Wang, Steven Ka Shing Yau, Zijuan Lin, Liyang Zhou, Chenyu Ran, Lingfeng Xiao, Chenglin Wu, Jürgen Schmidhuber (2024). *ICLR 2024*. Source file: `downloads/metagpt.pdf`. [URL](https://arxiv.org/abs/2308.00352)

## Summary
Proposes a multi-agent LLM framework that encodes human *Standard Operating Procedures* (SOPs) — the waterfall-style division of labour used in software companies — directly into the agent protocol. Agents are assigned concrete professional roles (Product Manager, Architect, Project Manager, Engineer, QA) and communicate not through free-form chat but through *structured artefacts* (PRD, system design, API spec, task list, code, test report). Each artefact has a fixed schema that the downstream role consumes.

To curb hallucination and long-horizon error compounding, MetaGPT introduces an *executable feedback* mechanism: generated code is executed, failures are fed back to the Engineer role, and edits iterate until tests pass. On HumanEval, MBPP, and an in-house software-generation benchmark, MetaGPT substantially outperforms single-agent and unstructured multi-agent baselines, establishing structured-artefact communication as a practical antidote to cascading hallucination in agent collectives.

## Key Ideas
- Encode human SOPs as the coordination protocol for LLM agents
- Message-passing over *structured artefacts* (PRD, design, API spec, code) rather than free chat
- Publish-subscribe shared message pool + role-based subscription filter
- Executable feedback loop for self-correcting code generation
- First multi-agent LLM framework to ship end-to-end software from a one-line requirement

## Connections
- [[LLM Agents]]
- [[A Scalable Communication Protocol for Networks of LLMs]]
- [[Agent Communication Languages]]
- [[Standard Operating Procedures (SOPs)]]
- [[Protocol Documents]]
- [[Roles]]
- [[Multi-Agent Systems]]
- [[Conversation Protocols]]

## Conceptual Contribution
- **Claim:** Free-form natural-language chat is the wrong coordination medium for LLM agent collectives; encoding human SOPs and requiring communication via structured, role-specific artefacts dramatically reduces hallucination compounding and enables reliable multi-step software generation.
- **Mechanism:** Agents are typed by professional role with role-specific prompts and tools. Communication flows through a shared *message pool* with a *subscription* filter so each role sees only artefacts relevant to it. Each stage emits a schema-constrained artefact consumed by the next. An *executable feedback* subsystem runs the generated code, captures failures, and loops them back to the Engineer role for targeted repair.
- **Concepts introduced/used:** [[Standard Operating Procedures (SOPs)]], [[Roles]], [[LLM Agents]], publish-subscribe message pool, structured artefact communication, executable feedback, [[Protocol Documents]]
- **Stance:** engineering / empirical
- **Relates to:** Directly cited by [[A Scalable Communication Protocol for Networks of LLMs]] as an example of rigid, hand-designed inter-agent protocols — Agora's negotiated [[Protocol Documents]] can be seen as a dynamic, decentralised generalisation of MetaGPT's fixed SOP artefacts. Shares the structured-artefact intuition with [[FIPA-ACL]] and [[KQML as an Agent Communication Language]], but grounds it in LLM-generatable schemas rather than stipulated performatives. Contrast with the free-dialogue role-play of [[CAMEL Communicative Agents for Mind Exploration of LLM Society]].

## Tags
#llm-agents #multi-agent #software-engineering #sop #structured-communication
