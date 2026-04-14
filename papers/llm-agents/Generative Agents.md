# Generative Agents: Interactive Simulacra of Human Behavior

**Reference:** Park, O'Brien, Cai, Morris, Liang, Bernstein (2023). *UIST '23*. Source file: `2304.03442.pdf`. [URL](https://arxiv.org/abs/2304.03442)

## Summary
Introduces *generative agents*: LLM-powered simulacra that populate a Sims-like sandbox with 25 characters who wake, plan their day, converse, form opinions, remember past events, reflect, and coordinate group activities (e.g., autonomously spreading invitations to a Valentine's Day party). The agent architecture extends an LLM with three components: a **memory stream** (natural-language log of experiences with recency/importance/relevance retrieval), **reflection** (higher-level inferences synthesised from memories), and **planning** (recursive decomposition of daily goals into action sequences), with reflections and plans fed back into the memory stream.

The paper is a widely-cited foundational reference for agent memory and social simulation, and is invoked throughout [[AI Agents Under Threat]] as the canonical multi-agent LLM society whose emergent behaviours define the attack surface for [[Memory Poisoning]] and inter-agent risks.

## Key Ideas
- Memory stream as a long-term, natural-language, retrieval-indexed experience log.
- Retrieval scoring combines recency, importance, and semantic relevance.
- Reflection: periodic self-prompted synthesis of memories into higher-level beliefs, propositions, and abstractions.
- Planning: top-down decomposition of daily goals into hierarchical schedules that feed back into memory.
- Believable individual and emergent group behaviour (information diffusion, relationship formation, coordination) arising without scripted dialogue trees.

## Connections
- [[LLM Agents]]
- [[Multi-Agent Systems]]
- [[AI Agents Under Threat]]
- [[Memory Poisoning]]
- [[Retrieval-Augmented Generation]]

## Conceptual Contribution
- **Claim:** Believable long-horizon human-like behaviour in LLM agents can be produced by augmenting the model with an architectural trio — memory stream, reflection, planning — that together let the agent retrieve, generalise, and act over long time horizons.
- **Mechanism:** Natural-language memory stream with recency+importance+relevance retrieval; periodic reflection that distils memories into higher-level beliefs; recursive top-down planning that writes plans back into memory; all components implemented as LLM prompts over ChatGPT.
- **Concepts introduced/used:** memory stream, reflection, recursive planning, believable simulacra, emergent social dynamics — the substrate for [[Memory Poisoning]] and inter-agent cascade attacks in [[AI Agents Under Threat]] and [[ClawWorm Self-Propagating Attacks Across LLM Agent Ecosystems]].
- **Stance:** constructive/empirical
- **Relates to:** Establishes the memory+reflection+planning template whose failure modes are analysed in [[AI Agents Under Threat]] (brain/memory threats) and whose emergent multi-agent phenomena motivate [[Multi-Agent Systems]] security work.

## Tags
#llm-agents #memory #planning #reflection #foundational #multi-agent
