# Chain-of-Thought Prompting Elicits Reasoning in Large Language Models

**Reference:** Wei, Wang, Schuurmans, Bosma, Ichter, Xia, Chi, Le, Zhou (2022). *NeurIPS 2022*. Source file: `2201.11903.pdf`. [URL](https://arxiv.org/abs/2201.11903)

## Summary
Shows that prompting a sufficiently large language model with a few exemplars that include intermediate natural-language reasoning steps — a *chain of thought* — dramatically improves performance on arithmetic, commonsense, and symbolic reasoning benchmarks. The technique requires no finetuning, no verifiers, and no task-specific training data beyond a handful of (input, chain-of-thought, output) triples.

Prompting PaLM-540B with eight chain-of-thought exemplars achieves then-state-of-the-art accuracy on GSM8K math word problems, surpassing even a finetuned GPT-3 with a verifier. Gains emerge only at scale (~100B parameters), making CoT one of the canonical examples of *emergent capability*. CoT underpins most modern agent reasoning loops (ReAct, ToT, Reflexion, LLM-Planner) referenced throughout [[AI Agents Under Threat]] and [[LLM Agents]].

## Key Ideas
- A prompt of input/rationale/output triples unlocks multi-step reasoning without any parameter updates.
- CoT is emergent: negligible benefit below ~100B parameters, striking gains above.
- Works across arithmetic, commonsense, and symbolic domains — the method is task-general.
- Rationale generation enables interpretability windows and lays the groundwork for reasoning-trace auditing in agent security.
- The externalised reasoning trace is itself an attack surface — later exploited by indirect [[Prompt Injection]] and adversarial rationale manipulation.

## Connections
- [[LLM Agents]]
- [[AI Agents Under Threat]]
- [[Tool Use]]
- [[Prompt Injection]]
- [[Hallucination]]

## Conceptual Contribution
- **Claim:** Providing a small number of exemplars with explicit intermediate reasoning steps in the prompt elicits multi-step reasoning in sufficiently large language models, yielding state-of-the-art performance without finetuning.
- **Mechanism:** Few-shot prompt template ⟨input, chain-of-thought rationale, output⟩; the model learns to generate its own rationales before the final answer at inference time.
- **Concepts introduced/used:** chain-of-thought prompting, emergent reasoning, prompt-only adaptation — the substrate for ReAct-style agent loops that structure [[LLM Agents]] and the reasoning traces attacked in [[AI Agents Under Threat]].
- **Stance:** empirical
- **Relates to:** The reasoning-trace paradigm CoT popularises is the target of [[Prompt Injection]], goal-hijacking jailbreaks, and the brain-layer threats catalogued in [[AI Agents Under Threat]].

## Tags
#llm #prompting #reasoning #foundational #emergent-capability
