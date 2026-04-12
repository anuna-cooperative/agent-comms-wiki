# Language Models are Few-Shot Learners

**Reference:** Brown, Mann, Ryder, Subbiah, Kaplan, Dhariwal, Neelakantan, Shyam, Sastry, Askell et al. (2020). *NeurIPS 2020*. Source file: `2005.14165.pdf`. [URL](https://arxiv.org/abs/2005.14165)

## Summary
Introduces GPT-3, a 175-billion-parameter autoregressive Transformer language model, and shows that scaling up enables task-agnostic few-shot learning purely through in-context demonstrations — no gradient updates or fine-tuning required. The paper establishes the empirical basis for the "prompt as interface" paradigm that underpins modern [[LLM Agents]].

GPT-3 is evaluated across dozens of NLP benchmarks (translation, QA, cloze, Winograd, arithmetic, word unscrambling, SuperGLUE, NLI) in zero-, one-, and few-shot regimes, often matching or exceeding state-of-the-art fine-tuned systems. The authors also examine broader impacts: misuse potential, bias, fairness, and energy cost — topics that later crystallise into the threat surfaces surveyed in [[AI Agents Under Threat]].

## Key Ideas
- Scaling laws: performance on downstream tasks improves smoothly with model size, compute, and data.
- In-context learning: a "meta-learning" inner loop where the model adapts to a task from examples in its prompt window, without weight updates.
- Few-shot prompting as a general interface: the prompt becomes the programmable surface for LLM behaviour — the same surface later exploited by [[Prompt Injection]] and [[Jailbreak]] attacks.
- Emergent capabilities (arithmetic, novel-word use) appearing only at scale.
- Early catalogue of misuse risks (disinformation, generated news indistinguishable from human-written) foreshadowing agent-era threats.

## Connections
- [[LLM Agents]]
- [[AI Agents Under Threat]]
- [[Prompt Injection]]
- [[Jailbreak]]
- [[Tool Use]]
- [[Hallucination]]

## Conceptual Contribution
- **Claim:** Sufficiently large autoregressive language models become few-shot learners, performing new tasks from prompt demonstrations alone — establishing the prompt as the universal programming surface for LLM systems.
- **Mechanism:** Train a 175B-parameter Transformer on ~300B tokens of filtered Common Crawl, WebText2, Books, and Wikipedia; evaluate on 40+ benchmarks in zero/one/few-shot settings without gradient updates.
- **Concepts introduced/used:** in-context learning, few-shot prompting, scaling laws, emergent capabilities, prompt-as-interface — all prerequisites for [[LLM Agents]], [[Tool Use]], [[Prompt Injection]], and the threat taxonomy of [[AI Agents Under Threat]].
- **Stance:** empirical/position
- **Relates to:** Foundational substrate cited throughout [[AI Agents Under Threat]]; the prompt interface it popularises is the attack surface studied in [[Prompt Injection]], [[Jailbreak]], and [[ClawWorm Self-Propagating Attacks Across LLM Agent Ecosystems]].

## Tags
#llm #foundational #few-shot-learning #scaling #in-context-learning
