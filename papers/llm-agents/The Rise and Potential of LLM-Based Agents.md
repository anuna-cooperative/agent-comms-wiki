# The Rise and Potential of Large Language Model Based Agents: A Survey

**Reference:** Xi, Chen, Guo, He, Ding, Hong, Zhang, Wang, Jin, Zhou, Zheng, Fan, Wang, Xiong, Zhou, Wang, Jiang, Zou, Liu, Yin, Dou, Weng, Cheng, Zhang, Qin, Zheng, Qiu, Huang, Gui (2023). *Fudan NLP Group, arXiv preprint*. Source file: `2309.07864.pdf`. [URL](https://arxiv.org/abs/2309.07864)

## Summary
A comprehensive survey of LLM-based agents organised around a three-component conceptual framework — **brain**, **perception**, **action** — that the authors propose as a general template for agent construction. The brain covers natural-language interaction, knowledge, memory, reasoning/planning, and transferability; perception covers textual, visual, auditory, and other inputs; action covers textual output, tool use, and embodied action.

The survey then examines agents in practice (single-agent task/innovation/lifecycle deployments; multi-agent cooperative and adversarial interaction; human-agent instructor-executor and equal-partnership paradigms) and agent societies (personality, social behaviour, environments, society simulation, ethical/social risks). A final discussion chapter covers evaluation, adversarial robustness, trustworthiness, scaling the number of agents, and open problems — directly feeding the threat taxonomy of [[AI Agents Under Threat]].

## Key Ideas
- Brain/perception/action triad as a unifying architecture for LLM agents.
- Single-agent vs multi-agent vs human-agent deployment axes.
- Cooperative complementarity and adversarial advancement as the two poles of multi-agent interaction.
- Agent society simulation (à la [[Generative Agents]]) as both a scientific instrument and a risk surface.
- Dedicated treatment of adversarial robustness and trustworthiness as first-class concerns in agent design.

## Connections
- [[LLM Agents]]
- [[Multi-Agent Systems]]
- [[AI Agents Under Threat]]
- [[Tool Use]]
- [[Agent Security]]
- [[Generative Agents]]

## Conceptual Contribution
- **Claim:** LLM-based agents should be understood through a unified brain/perception/action framework, with deployments spanning single-agent, multi-agent, and human-agent configurations, and societies displaying emergent social phenomena that demand first-class security and trustworthiness analysis.
- **Mechanism:** Literature synthesis organised around the three-component architecture, three deployment paradigms, and an agent-society lens; taxonomy of cooperative vs adversarial multi-agent interaction; catalogue of open problems in robustness, trustworthiness, and scaling.
- **Concepts introduced/used:** brain/perception/action triad, instructor-executor vs equal-partnership paradigms, agent society, adversarial robustness, [[Tool Use]], [[Multi-Agent Systems]], [[LLM Agents]].
- **Stance:** survey
- **Relates to:** The brain/perception/action decomposition directly informs the perception/brain/action threat axes used by [[AI Agents Under Threat]]; multi-agent cooperation analysis motivates [[ClawWorm Self-Propagating Attacks Across LLM Agent Ecosystems]] and the inter-agent risks catalogued in [[SoK The Attack Surface of Agentic AI]].

## Tags
#llm-agents #survey #foundational #multi-agent #agent-architecture
