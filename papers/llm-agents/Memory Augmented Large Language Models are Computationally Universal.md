# Memory Augmented Large Language Models are Computationally Universal

**Reference:** Dale Schuurmans (2023). *Memory Augmented Large Language Models are Computationally Universal.* arXiv:2301.04589, v1, 10 January 2023. [arXiv](https://arxiv.org/abs/2301.04589) · [PDF](https://arxiv.org/pdf/2301.04589).

## Summary

A deterministic language model with bounded context has only finite-state computational power. Schuurmans constructs a system combining an existing, unchanged Flan-U-PaLM 540B model with external associative read-write memory that simulates the universal Turing machine U15,2. Universality belongs to the combined system, with potentially unbounded memory and runtime.

The model acts as a CPU: memory stores prompts as instructions; a loop retrieves an instruction, substitutes operands, calls the model, and parses its output into memory updates and the next instruction. Sections 2–4 give the construction and simulation argument; Section 5 reports correct greedy-decoding outputs for all 29 distinct prompt cases. Section 6 describes brittle behaviour and substantial prompt engineering.

## Key Ideas

- **Stored prompt program:** instructions and tape contents share an external dictionary.
- **Minimal orchestration:** the construction restricts preprocessing and postprocessing to finite-state operations; nested substitution has depth at most two.
- **Finite verification:** 15 states and two symbols yield 29 distinct prompt cases because state F ignores the symbol.
- **Scope:** an expressiveness result under idealised resources, rather than evidence of efficient general-purpose reasoning or reliability across models.

## Connections

- [[Universal computation is intrinsic to language model decoding]] — subsequent work using an operational text string as memory and examining frozen random models
- [[LLM Agents]] — interpretation for this vault: external state and repeated model calls change the computational system being assessed.
- [[Attention is Turing-Complete]] — architectural universality under different assumptions.
- [[Universal Turing Machine]]
- [[Computability]]
- [[On Computable Numbers with an Application to the Entscheidungsproblem]]
- [[Transformer]]

## Conceptual Contribution

- **Claim:** An existing frozen LLM can participate in universal computation.
- **Mechanism:** Prompt-controlled transitions over external read-write memory simulate U15,2.
- **Concepts introduced/used:** [[Turing Completeness]], [[Universal Turing Machine]], external memory, stored instructions.
- **Stance:** constructive computability argument with reported model-output verification.
- **Relates to:** Complements [[Attention is Turing-Complete]] by locating unbounded storage outside the model.

## Tags

#llm-agents #computability #turing-completeness #external-memory #prompting #theory
