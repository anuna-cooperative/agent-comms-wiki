# AI Agents Under Threat: A Survey of Key Security Challenges and Future Pathways

**Reference:** Deng, Guo, Han, Ma, Xiong, Wen, Xiang (2025). *ACM Computing Surveys 57(7), Article 182*. Source file: `3716628.pdf`. URL: https://arxiv.org/abs/2406.02630

## Summary
This survey organizes the emerging threat landscape of LLM-powered AI agents around four knowledge gaps: unpredictability of multi-step user inputs, complexity of internal execution, variability of operational environments, and interactions with untrusted external entities. It unifies single-agent and multi-agent attack surfaces within a perception/brain/action + agent2agent/agent2env/agent2memory taxonomy.

Concrete threats reviewed include adversarial prompts, prompt injection, jailbreaks, backdoor attacks, hallucination and misalignment, tool-use risks, indirect prompt injection, reinforcement-learning environment attacks, cooperative and competitive inter-agent risks, and long/short-term memory attacks. The authors tabulate defenses (prevention- and detection-based), rate their efficacy, and highlight open directions for robust and trustworthy agents.

## Key Ideas
- Four knowledge gaps framing agent security.
- Taxonomy: perception / brain / action / agent2agent / agent2env / agent2memory threats.
- Six categories of prompt-injection attack engineering (naive, escape, context-ignore, fake-completion, multimodal, combined).
- Jailbreak domino effect in multi-agent populations.
- Memory poisoning and indirect prompt injection as underexplored surfaces.

## Connections
- [[LLM Agents]]
- [[MalTool Malicious Tool Attacks]]
- [[Multi-Agent Systems]]
- [[Trust and Reputation]]

## Conceptual Contribution
- **Claim:** [[LLM Agents]] security should be organised around four knowledge gaps (input unpredictability, internal complexity, environmental variability, untrusted interactions) mapped onto a perception/brain/action + agent2{agent,env,memory} taxonomy.
- **Mechanism:** Surveys adversarial prompts, prompt injection, jailbreaks, backdoors, hallucination, tool-use risks, indirect injection, RL environment attacks, inter-agent cooperative/competitive risks, memory poisoning; tabulates prevention- vs detection-based defences and rates their efficacy.
- **Concepts introduced/used:** [[Prompt Injection]], [[Jailbreak]], [[Backdoor Attacks]], [[Tool Use]], [[Memory Poisoning]], [[Hallucination]], [[Model Context Protocol]], [[LLM Agents]], [[Multi-Agent Systems]], [[Trust and Reputation]], [[Distributed Security]], [[Agent Security]]
- **Stance:** survey
- **Relates to:** Provides the threat scaffolding that [[MalTool Malicious Tool Attacks]] deepens at the tool layer; complements lifecycle threats in [[Survey Of Agent Interoperability Protocols]]; motivates static-analysis defences like [[A Language-Based Approach To Prevent DDoS]].

## Tags
#security #llm-agents #survey #threat-modeling
