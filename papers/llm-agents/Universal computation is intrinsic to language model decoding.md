# Universal computation is intrinsic to language model decoding

**Reference:** Alex Lewandowski, Marlos C. Machado, & Dale Schuurmans (2026). *Universal computation is intrinsic to language model decoding.* arXiv:2601.08061, v2, 10 February 2026 (first submitted 12 January). [arXiv](https://arxiv.org/abs/2601.08061) · [PDF](https://arxiv.org/pdf/2601.08061).

## Summary

The authors argue that universal computation can be accessed through language-model decoding, including with randomly initialized models. They distinguish computational expressiveness from **programmability**: training makes desired behaviour easier to elicit through natural language.

Their construction uses **extended autoregressive decoding**: a bounded window advances through a potentially unbounded operational string, appending generated symbols. A simulation of a universal Lag system establishes universality. Section 5 reports a prompt making Llama-4-17B-128E-Instruct execute all 1,857 production rules. Section 6 learns injective encoder/decoder codebooks for frozen random models, including attention and recurrent architectures. [Source: Sections 3–6](https://arxiv.org/pdf/2601.08061).

## Key Ideas

- **Text as memory:** universality requires unbounded operational-string growth and runtime; ordinary finite-context chat alone does not establish it.
- **Finite verification:** checking every Lag-system rule supports simulation of U15,2.
- **Random models:** backbone weights remain untrained, but codebook networks are trained.
- **Interpretation:** expressiveness does not establish efficient computation, easy prompting, or practical reasoning reliability.

## Connections

- [[Memory Augmented Large Language Models are Computationally Universal]] — compare external dictionary memory with the operational string.
- [[Attention is Turing-Complete]] — compare architectural assumptions and decoding procedures.
- [[LLM Agents]]
- [[Computability]]
- [[Universal Turing Machine]]

## Conceptual Contribution

- **Claim:** Training improves access to computational capabilities rather than originating universality.
- **Mechanism:** Extended decoding simulates universal Lag-system rules via prompts or learned symbol codebooks.
- **Concepts introduced/used:** [[Turing Completeness]], programmability, Lag systems, extended autoregressive decoding.
- **Stance:** constructive simulation with reported exhaustive rule verification.
- **Relates to:** Continues the frozen-model computability question in [[Memory Augmented Large Language Models are Computationally Universal]].

## Tags

#llm-agents #computability #turing-completeness #autoregressive-decoding #programmability #theory
