# SoK: The Attack Surface of Agentic AI — Tools, and Autonomy

**Reference:** Ali Dehghantanha, Sajad Homayoun (2026). *arXiv:2603.22928v1 (Cyber Science Lab, University of Guelph; Aalborg University)*. Source file: `2603.22928v1.pdf`. [URL](https://arxiv.org/abs/2603.22928)

## Summary
A systematisation-of-knowledge paper that maps the attack surface of agentic LLM systems — those that plan, call tools, browse, run code, coordinate with other agents, and rely on retrieval-augmented generation (RAG). The authors develop a reference pipeline, identify ten numbered attack surfaces (AS1–AS10) across a Trusted Computing Base (TCB) boundary separating the LLM core, planner, orchestrator, policy guards, and secrets vault from untrusted inputs (web, RAG index, tools, APIs, file I/O).

From a literature-driven review of ~100 candidate papers (2023–2025) they synthesise a taxonomy of seven attack goals (G1 data exfiltration, G2 integrity subversion, G3 privilege escalation, G4 resource abuse, G5 fraud, G6 persistence/backdoor, G7 supply-chain compromise) and five multi-step attack paths (P1–P5) including direct and indirect prompt injection, RAG index poisoning, cross-tool drop, and multi-agent hops. The work maps each vector to OWASP LLM Top-10 2025 and MITRE ATLAS IDs, and proposes attacker-aware quantitative metrics (Unsafe Action Rate, Policy Adherence Rate, Privilege-Escalation Distance, Retrieval Risk Score, Time-to-Contain, Out-of-Role Action Rate, Cost-Exploit Susceptibility) for reproducible benchmarking.

The central thesis is that agentic security risk is structural rather than prompt-level: compromises arise from *system composition* — tool brokering, persistent memory, and execution lifecycle — that blurs trust boundaries between the model, data, and execution environment. A defence-in-depth playbook across pre-ingestion, inference, agent logic, infrastructure, and monitoring layers is given in appendices.

## Key Ideas
- Reference agentic pipeline with explicit TCB and ten numbered attack surfaces (AS1–AS10)
- Taxonomy of 7 attack goals × 7 vector classes × 5 attack paths
- Causal threat graph for tracing attacker influence to unsafe action
- Attacker-aware metrics: UAR, PAR, PED, RRS, TTC, OORAR, CES
- Mapping to OWASP GenAI LLM Top-10 2025 and MITRE ATLAS
- RAG is not intrinsically safer; indirect injection is practical and hard to stamp out
- Defence-in-depth across five layers (data, inference, agent logic, infra, monitoring)

## Connections
- [[Agent Security]]
- [[Prompt Injection]]
- [[LLM Agents]]
- [[Tool Use]]
- [[Model Context Protocol]]
- [[Agent-to-Agent Protocol]]
- [[LangSec]]
- [[Distributed Security]]
- [[Trust and Reputation]]

## Conceptual Contribution
- **Claim:** Agentic AI security risk is a structural property of system composition (tool use, persistent memory, orchestration, supply chain) rather than a model-level prompt-safety problem; a reference TCB model plus attacker-aware metrics is needed to make defences auditable and comparable.
- **Mechanism:** Define a reference pipeline with trust boundary between trusted orchestration (LLM core, planner, policy, vault) and untrusted ingress (web, RAG, sandbox, APIs). Enumerate ten attack surfaces, seven goals, five multi-step paths, map each to OWASP/MITRE, and define scenario-driven metrics (UAR, PAR, PED, RRS, TTC, OORAR, CES) computable from structured execution traces.
- **Concepts introduced/used:** [[Agentic TCB]], [[Attack Surface Taxonomy]], [[Causal Threat Graph]], [[Indirect Prompt Injection]], [[RAG Poisoning]], [[Privilege-Escalation Distance]], [[Unsafe Action Rate]], [[OWASP LLM Top-10]], [[MITRE ATLAS]], [[Defence in Depth]]
- **Stance:** survey / engineering
- **Relates to:** Complements [[A Language-Based Approach To Prevent DDoS]] and [[LangSec]] by extending structural-security thinking to agentic runtimes. Sits alongside [[Prompt Injection]] and [[Agent Security]] concept hubs, and provides the threat model that protocols like [[Model Context Protocol]] and [[Agent-to-Agent Protocol]] must defend against.

## Tags
#agent-security #prompt-injection #llm-agents #sok #tool-use #rag
