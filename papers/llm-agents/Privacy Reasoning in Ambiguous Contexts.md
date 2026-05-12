# Privacy Reasoning in Ambiguous Contexts

**Reference:** Yi, Suciu, Gascón, Meiklejohn, Bagdasarian & Gruteser (2025). *Privacy Reasoning in Ambiguous Contexts.* NeurIPS 2025. arXiv:2506.12241 (Google Research). [URL](https://arxiv.org/abs/2506.12241).

## Summary
Most prior work on LLM privacy alignment evaluates whether a model's information-sharing decisions agree with human annotators *on tasks where the right answer is already clear*. Yi et al. argue that this misses the operationally important regime: real privacy decisions are made under **ambiguous context** — missing facts, multiple plausible recipients, contested norms — and a privacy assistant's value lies precisely in *recognising* the ambiguity rather than guessing past it.

They show empirically that context ambiguity is the dominant source of disagreement between models and human ground truth on disclosure decisions, and that asking a model to *also* produce its decision rationale reveals the ambiguities directly: many "wrong" answers are caused by an unstated premise that, when surfaced, changes both the model's and the human's answer.

The paper's main artefact is **Camber**, a framework that uses model-generated rationales to *systematically disambiguate context*: it identifies under-specified context variables, asks targeted clarification questions (or fills them with explicit assumptions), and reruns the disclosure decision. Applied to existing privacy benchmarks, Camber yields **+13.3 % precision and +22.3 % recall** and substantially reduces sensitivity to surface prompt-wording variations. The work positions itself in the **[[Contextual Integrity|contextual integrity]]** tradition (Nissenbaum 2004): privacy is appropriate flow *given the context*; therefore precise context is a prerequisite for correct privacy reasoning.

## Key Ideas
- **Agentic privacy is ambiguity reasoning:** the dominant error mode is not bad alignment but missing context; the right behaviour is often to *ask* before deciding.
- **Decision-rationale extraction** as a debugging tool: model-generated justifications expose which contextual premises the model assumed.
- **Camber** disambiguation pipeline: rationale → identify under-specified context variable → resolve (clarification question or explicit assumption) → re-decide.
- **Empirical headline:** up to +13.3 % precision and +22.3 % recall over rationale-free baselines on privacy-decision benchmarks.
- **Robustness gain:** disambiguated prompts show much lower sensitivity to surface re-wording — a structural rather than memorised improvement.
- Grounded in [[Contextual Integrity]]: privacy = appropriate information flow *given* sender/recipient/data-type/transmission-principle.
- Open challenges: trustworthy disambiguation under adversarial prompts, latency cost of clarification, multi-party context aggregation.

## Connections
- [[Contextual Integrity]]
- [[LLM Agents]]
- [[Agent Security]]
- [[Trusted Machine Learning Models Unlock Private Inference]]
- [[Open Challenges in Multi-Agent Security]]
- [[Defeating Prompt Injections by Design]]
- [[Information Flow Control]]
- [[Privacy Reasoning]]
- [[Disclosure Decisions]]

## Conceptual Contribution
- **Claim:** The dominant failure mode of LLM privacy assistants is not misaligned values but unrecognised contextual ambiguity. Models that surface and resolve ambiguity — rather than guess through it — produce decisions that are both more accurate and more robust.
- **Mechanism:** Camber: a rationale-driven disambiguation loop that extracts the model's stated reasoning, identifies under-specified context variables, resolves them (by clarification or explicit assumption), and reruns the decision. Operationalises [[Contextual Integrity]]'s "transmission principles" as queryable context slots.
- **Concepts introduced/used:** [[Camber]], [[Privacy Reasoning]], [[Context Ambiguity]], [[Disclosure Decisions]], [[Contextual Integrity]], [[Rationale Extraction]], [[Prompt Sensitivity]]
- **Stance:** empirical / engineering with normative grounding
- **Relates to:** Sits adjacent to [[Defeating Prompt Injections by Design]] in the agentic-security stack — CaMeL controls *who* can call what tool with what data, Camber decides *whether* to share data given a context. Empirically grounds the [[Contextual Integrity]] tradition; complements the privacy-substrate work in [[Trusted Machine Learning Models Unlock Private Inference]].

## Tags
#privacy #contextual-integrity #llm-agents #agent-security #neurips #disambiguation
