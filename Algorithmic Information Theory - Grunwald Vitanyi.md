# Algorithmic Information Theory

**Reference:** Peter D. Grünwald and Paul M.B. Vitányi (2008). *arXiv:0809.2754v2 (book chapter, Handbook of Philosophy of Information)*. Source file: `0809.2754v2 (1).pdf`. [URL](https://arxiv.org/abs/0809.2754)

## Summary
A tutorial survey of algorithmic information theory (Kolmogorov complexity) and its relationship to Shannon information theory. The authors explain how the amount of information in an individual object can be measured by the length of the shortest program that produces it, and how this quantity — invariant up to an additive constant — supports a non-probabilistic theory of information.

The chapter covers the invariance theorem, uncomputability, relation to entropy, mutual information, the Kolmogorov structure function (separating meaningful/structural from random information), Minimum Description Length, normalized compression distance, and the philosophical implications for Occam's razor and inductive inference.

## Key Ideas
- Kolmogorov complexity K(x) as length of shortest program outputting x
- Invariance theorem makes K objective up to an additive constant
- Structure function separates meaningful (model) from random content
- MDL as a practical approximation of ideal algorithmic inference
- Entropy is expected Kolmogorov complexity under computable distributions

## Connections
- [[Three Models for the Description of Language]]
- [[Ontologies]]
- [[Gossip Protocols]]

## Conceptual Contribution
- **Claim:** The information content of an individual object is objectively measured by the length of the shortest program that prints it — Kolmogorov complexity — and this gives a formal basis for Occam's razor, randomness, and "meaningful" vs "random" information.
- **Mechanism:** Define K(x) via a universal Turing machine (invariance up to additive constant); extend via prefix codes, the Kolmogorov structure function (separating structural/model part from random/noise part), and the Minimum Description Length principle for inductive inference.
- **Concepts introduced/used:** [[Kolmogorov Complexity]], [[Minimum Description Length]], [[Kolmogorov Structure Function]], [[Shannon Information]], [[Shannon Entropy]], [[Occam's Razor]], [[Universal Turing Machine]], [[Invariance Theorem]], [[Normalized Compression Distance]], [[Inductive Inference]], [[Prefix Codes]]
- **Stance:** formal-mathematical / foundational
- **Relates to:** Provides the information-theoretic backdrop for why compact emergent codes arise in [[Emergence of Grounded Compositional Language in Multi-Agent Populations]] and [[Multi-Agent Cooperation and the Emergence of Natural Language]]; and for the description-length intuition behind compositional protocol negotiation in [[A Scalable Communication Protocol for Networks of LLMs]]. Complements Chomsky's grammar-based view in [[Three Models for the Description of Language]].

## Tags
#information-theory #kolmogorov-complexity #mdl #foundations
