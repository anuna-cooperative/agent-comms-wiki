# ReAct: Synergizing Reasoning and Acting in Language Models

**Reference:** Shunyu Yao, Jeffrey Zhao, Dian Yu, Nan Du, Izhak Shafran, Karthik Narasimhan, Yuan Cao (2023). *ICLR 2023* (Princeton / Google Brain). arXiv:2210.03629. Source file: `react-2210.03629.pdf`. [URL](https://arxiv.org/abs/2210.03629)

## Summary
ReAct is a prompting paradigm that interleaves verbal *reasoning traces* (thoughts) with *task-specific actions* in a single LLM generation, letting the model plan, update its plan with observations from the environment, and query external sources. Unlike chain-of-thought (reasoning only) or action-only agents (e.g. WebGPT-style), ReAct alternates Thought -> Action -> Observation steps, so the model grounds its reasoning in retrieved evidence and uses its reasoning to decide what to act on next.

Evaluated on HotPotQA, Fever (Wikipedia API with search/lookup/finish actions), ALFWorld (text household tasks), and WebShop. On knowledge tasks ReAct outperforms action-only prompting and, combined with chain-of-thought self-consistency, beats CoT alone by reducing hallucination. On decision-making tasks ReAct beats imitation-learning and RL baselines by absolute 34% and 10% respectively, using only one or two in-context examples. The paper is the seminal reference for tool-using LLM agents and the thought/act/observe loop now ubiquitous in LLM agent frameworks.

## Key Ideas
- Interleave reasoning (thoughts) and acting (tool/API calls) in one LLM trajectory
- Augment the action space A with a free-form language space L of "thoughts" that do not affect the environment but update the context
- External Wikipedia API (search, lookup, finish) as a minimal tool interface for QA
- Back-off combination with CoT self-consistency: use ReAct when it finishes, otherwise fall back to CoT-SC, or vice versa
- Human-interpretable, inspectable, and edit-able agent trajectories ("thought editing")
- Few-shot prompts with 1-6 exemplars suffice; fine-tuning on 3k trajectories further boosts small models

## Connections
- [[LLM Agents]]
- [[Tool Use]]
- [[Agents Framework - Zhou et al]]
- [[Chain-of-Thought Prompting]]
- [[Toolformer]]

## Conceptual Contribution
- **Claim:** Reasoning and acting are synergistic rather than separate capabilities; interleaving them in a single LLM generation produces agents that are more grounded, less hallucination-prone, and more robust than pure reasoning (CoT) or pure acting (WebGPT-style) baselines.
- **Mechanism:** Extend the agent's action space to A' = A ∪ L where L is the free-form language of thoughts. Prompt the LLM with few-shot thought/action/observation exemplars. The model decides when to think and when to act; observations from the environment (API results, game state) re-enter the context and condition subsequent thoughts.
- **Concepts introduced/used:** Thought-Act-Observation loop, tool-use prompting, interleaved reasoning/acting, grounded reasoning, hallucination reduction via external knowledge, few-shot agent prompting, thought editing, ReAct + CoT-SC back-off.
- **Stance:** empirical / methods — prompting-level intervention with extensive benchmarks.
- **Relates to:** Direct successor to [[Chain-of-Thought Prompting]] — CoT without actions is shown to hallucinate (14% vs ReAct's 6%). Makes tool use a first-class LLM behaviour, complementary to [[Toolformer]]'s self-taught API-call fine-tuning. Foundational for [[LLM Agents]] and a key building block in [[Agents Framework - Zhou et al]]. The thought/act/observe skeleton is reused by nearly all subsequent agent papers, including [[Reflexion Language Agents with Verbal Reinforcement Learning]] (which uses ReAct as its default Actor).

## Tags
#llm-agents #tool-use #reasoning #prompting #chain-of-thought
