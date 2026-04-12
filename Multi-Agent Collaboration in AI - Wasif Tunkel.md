# Multi-Agent Collaboration in AI: Enhancing Software Development with Autonomous LLMs

**Reference:** Mubeen Wasif and David Tunkel (2025). *ResearchGate preprint*. Source file: `16.pdf`

## Summary
A short survey-style paper arguing that multi-agent LLM systems can improve software-development workflows by distributing tasks (requirements, code generation, testing, documentation) across specialised autonomous agents that communicate via structured dialogue. The authors report qualitative experimental findings that division of labour and iterative refinement among agents produce higher-quality outputs than single-agent baselines.

The paper also surveys open challenges: coordination overhead, response consistency, bias propagation, and governance/security concerns. It advocates human-in-the-loop validation and explainability (XAI) as mitigations, and points to future integration with IDEs, CI/CD, and RAG.

## Key Ideas
- Specialised agent roles (coder, tester, documenter) mirror human dev teams
- Structured inter-agent dialogue enables iterative code refinement
- Hybrid human-AI teams recommended for reliability
- Coordination cost, bias propagation, accountability are unsolved
- RAG and adaptive prompting as future contextual-awareness tools

## Connections
- [[LLM Agents]]
- [[Agents Framework - Zhou et al]]
- [[Why Do Multi-Agent LLM Systems Fail]]
- [[Multi-Agent Systems]]

## Conceptual Contribution
- **Claim:** Multi-agent LLM systems, with role-specialised agents (coder, tester, documenter) communicating through structured dialogue, outperform single-agent LLMs on software-engineering tasks by mirroring human team division-of-labour.
- **Mechanism:** Survey-plus-experiment discussion: assign distinct agents to requirement analysis, code generation, debugging, documentation; use iterative feedback loops and structured prompts; report efficiency/accuracy gains while flagging coordination overhead, bias propagation, and security concerns; advocate human-in-the-loop governance.
- **Concepts introduced/used:** [[LLM Agents]], [[Role-specialised Agents]], [[Human-in-the-loop]], [[Agent Coordination Overhead]], [[Explainable AI]], [[Multi-Agent Systems]], [[Retrieval-Augmented Generation]], [[Division of Labour]]
- **Stance:** engineering / survey
- **Relates to:** A light-weight practitioner view of the same problem space that [[Why Do Multi-Agent LLM Systems Fail]] tackles rigorously, and that [[Agents Framework - Zhou et al]] operationalises as an open-source library. Shares the communication-protocol concern with [[A Scalable Communication Protocol for Networks of LLMs]].

## Tags
#llm-agents #multi-agent #software-engineering #survey
