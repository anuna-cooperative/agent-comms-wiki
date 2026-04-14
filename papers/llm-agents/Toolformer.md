# Toolformer: Language Models Can Teach Themselves to Use Tools

**Reference:** Schick, Dwivedi-Yu, Dessì, Raileanu, Lomeli, Zettlemoyer, Cancedda, Scialom (2024). *NeurIPS 2023*. Source file: `2302.04761.pdf`. [URL](https://arxiv.org/abs/2302.04761)

## Summary
Toolformer shows that a language model can teach itself, in a self-supervised way, to decide *when* to call an external API, *which* API to call, *what* arguments to pass, and *how* to incorporate the returned result into subsequent token prediction. Starting from a handful of human-written demonstrations per tool, the model annotates a large corpus with candidate API calls, executes them, and keeps only the calls whose results reduce the cross-entropy loss on the surrounding tokens. The filtered, API-augmented corpus is then used to finetune the model.

The approach is demonstrated on a calculator, Q&A system, Wikipedia search, machine translation, and calendar. A 6.7B Toolformer (GPT-J-based) outperforms a much larger GPT-3 on several zero-shot downstream tasks without sacrificing core language modelling. The paper is a foundational reference for [[Tool Use]] in [[LLM Agents]] and therefore for the tool-layer attack surface catalogued in [[AI Agents Under Threat]] and [[MalTool Malicious Tool Attacks]].

## Key Ideas
- Self-supervised tool learning via loss-reduction filtering — no task-specific supervision.
- API calls are represented as interleaved special tokens (`<API> name(args) -> result </API>`) directly inside the token stream.
- A single model learns heterogeneous tools rather than one tool per specialist.
- Tools compensate for LLM weaknesses (arithmetic, factual recall, freshness, low-resource translation).
- Establishes the architectural template — model emits tool-call tokens, external executor returns results, tokens resume — that later MCP/A2A-style protocols generalise.

## Connections
- [[Tool Use]]
- [[LLM Agents]]
- [[AI Agents Under Threat]]
- [[MalTool Malicious Tool Attacks]]
- [[Model Context Protocol]]
- [[Skill Supply Chain Attack]]

## Conceptual Contribution
- **Claim:** Language models can learn to use external tools in a self-supervised fashion by keeping only API calls whose responses reduce next-token loss, bootstrapping tool competence from a handful of demonstrations.
- **Mechanism:** Sample candidate API-call positions and arguments via in-context prompting; execute calls; filter by weighted cross-entropy reduction (L_i^- − L_i^+ ≥ τ_f); finetune on the filtered, API-interleaved corpus.
- **Concepts introduced/used:** self-supervised tool learning, API-call tokens, loss-based filtering, [[Tool Use]], [[LLM Agents]] — the direct antecedent of [[Model Context Protocol]] style tool-calling interfaces.
- **Stance:** constructive
- **Relates to:** Supplies the tool-invocation substrate whose abuses are studied in [[MalTool Malicious Tool Attacks]], [[Skill Supply Chain Attack]], and the action-layer threats in [[AI Agents Under Threat]].

## Tags
#llm #tool-use #foundational #self-supervised #agents
