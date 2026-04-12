# Why Do Multi-Agent LLM Systems Fail?

**Reference:** Mert Cemri, Melissa Z. Pan, Shuyi Yang, Lakshya A. Agrawal, Bhavya Chopra, Rishabh Tiwari, Kurt Keutzer, Aditya Parameswaran, Dan Klein, Kannan Ramchandran, Matei Zaharia, Joseph E. Gonzalez, Ion Stoica (2025). *arXiv:2503.13657v2 (UC Berkeley)*. Source file: `2503.13657v2.pdf`. URL: https://arxiv.org/abs/2503.13657

## Summary
First empirically grounded taxonomy of failure modes in Multi-Agent LLM Systems (MAS). The authors analyse 200+ execution traces from seven popular MAS frameworks (MetaGPT, ChatDev, HyperAgent, AppWorld, AG2, Magentic-One, OpenManus), annotated by six human experts via grounded theory and reaching Cohen's κ ≈ 0.88, and distil 14 fine-grained failure modes grouped into three categories: **Specification Issues** (42%), **Inter-Agent Misalignment** (37%), and **Task Verification** (21%).

They release MAST (Multi-Agent System failure Taxonomy), a validated LLM-as-judge pipeline for automated failure diagnosis, and two intervention case studies showing that architectural/prompt fixes inspired by MAST improve success rates modestly — demonstrating that MAS failures are system-design problems, not merely model-capability problems.

## Key Ideas
- Three failure categories: specification, inter-agent misalignment, verification
- 14 fine-grained failure modes including step repetition, information withholding, task derailment
- Grounded-theory methodology with rigorous inter-annotator agreement (κ=0.88)
- LLM-as-judge pipeline (MAST) achieves κ=0.77 vs humans for scalable evaluation
- Insight: better specifications and verification beat bigger models

## Connections
- [[LLM Agents]]
- [[Multi-Agent Collaboration in AI - Wasif Tunkel]]
- [[Agents Framework - Zhou et al]]
- [[A Scalable Communication Protocol for Networks of LLMs]]
- [[Multi-Agent Systems]]

## Conceptual Contribution
- **Claim:** Multi-Agent LLM System (MAS) failures are predominantly *system-design* problems — specification, coordination, and verification — rather than base-model capability problems; and these failures have an empirically discoverable, reproducible taxonomy.
- **Mechanism:** Grounded-theory analysis of 200+ execution traces across seven MAS frameworks (MetaGPT, ChatDev, HyperAgent, AppWorld, AG2, Magentic-One, OpenManus) with six human expert annotators; iterative refinement to Cohen's κ≈0.88; yield the 14-mode **MAST** taxonomy grouped into Specification Issues (42%), Inter-Agent Misalignment (37%), Task Verification (21%); validate an LLM-as-judge annotator (κ≈0.77); intervention case studies showing prompt/architecture fixes provide only modest gains, motivating deeper redesign.
- **Concepts introduced/used:** [[MAST Taxonomy]], [[Grounded Theory]], [[Inter-Agent Misalignment]], [[LLM-as-judge]], [[Specification Issues]], [[Task Verification]], [[Multi-Agent Systems]], [[LLM Agents]], [[Cohen's Kappa]], [[Standard Operating Procedures (SOPs)]]
- **Stance:** empirical / evaluative
- **Relates to:** Supplies empirical grounding for the design-quality concerns in [[Agents Framework - Zhou et al]] (SOPs attempt to mitigate FC1 specification issues) and [[Multi-Agent Collaboration in AI - Wasif Tunkel]]. Inter-agent misalignment mirrors the formal pathologies in [[Are Multiagent Systems Resilient to Communication Failures]]. Motivates richer communication protocols like [[A Scalable Communication Protocol for Networks of LLMs]] and commitment-style ACLs ([[ACL Rethinking Principles]]).

## Tags
#llm-agents #multi-agent #failure-analysis #taxonomy #evaluation
