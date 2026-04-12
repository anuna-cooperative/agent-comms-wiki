# Augmented Language Models: A Survey

**Reference:** Mialon, Dessi, Lomeli, Nalmpantis, Pasunuru, Raileanu, Rozière, Schick, Dwivedi-Yu, Celikyilmaz, Grave, LeCun, Scialom (2023). *arXiv:2302.07842*. Source file: `2302.07842.pdf`. [URL](https://arxiv.org/abs/2302.07842)

## Summary
This Meta AI survey introduces the term **Augmented Language Models (ALMs)**: LMs extended with *reasoning* skills (decomposing a task into subtasks) and *tool use* (calling external modules like search engines, code interpreters, or other models). The authors argue that while ALMs retain the standard next-token prediction objective, their ability to delegate computation to non-parametric external modules lets them overcome classical LM limitations in interpretability, factuality, and scalability.

The survey organises the landscape around three axes: eliciting reasoning (prompting, recursive prompting, explicit training), using tools and acting (calling models, information retrieval, symbolic computation, embodied actuation), and learning to do so (supervision vs reinforcement learning). It closes with a discussion of limitations and frames ALMs as a natural stepping stone toward autonomous tool-using agents.

## Key Ideas
- Definition of Augmented Language Models (ALMs) = reasoning + tool use under the standard missing-token objective.
- Taxonomy of reasoning techniques: prompting, recursive/iterated prompting, training-time supervision.
- Tools surveyed: model-calls, retrieval/RAG, search engines, web navigation, code/symbolic modules, physical actuation.
- Learning strategies: hard-coded heuristics, imitation/supervision, and RL from task reward.
- ALMs as precursors to agentic systems — the conceptual bridge to later MCP-style tool protocols.

## Connections
- [[Survey Of Agent Interoperability Protocols]]
- [[Model Context Protocol]]
- [[Tool Use]]
- [[LLM Agents]]
- [[Retrieval-Augmented Generation]]

## Conceptual Contribution
- **Claim:** Language models equipped with reasoning decomposition and external tool calls — "augmented" LMs — constitute a distinct research paradigm that can address hallucination, staleness, and interpretability defects of pure parametric LMs without abandoning the language-modelling objective.
- **Mechanism:** Collates and categorises ~200 works into a reasoning/acting/learning triad, showing how each technique (CoT, RAG, toolformer, code execution, embodied action) plugs into the same missing-token framework.
- **Concepts introduced/used:** [[LLM Agents]], [[Tool Use]], [[Retrieval-Augmented Generation]], [[Interoperability]]
- **Stance:** survey
- **Relates to:** Foundational conceptual antecedent to [[Survey Of Agent Interoperability Protocols]] — the ALM framing underpins why LLMs need a protocol like [[Model Context Protocol]] at all; motivates tool-mediated agency that later matures into A2A/ANP-style inter-agent layers.

## Tags
#llm-agents #survey #tool-use #augmented-lms
