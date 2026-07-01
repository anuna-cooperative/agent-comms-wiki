# Attention is Turing-Complete

**Reference:** Pérez, J., Barceló, P., & Marinkovic, J. (2021). *Attention is Turing-Complete.* Journal of Machine Learning Research 22(75):1–35. [URL](https://www.jmlr.org/papers/v22/20-302.html). PDF: <https://www.jmlr.org/papers/volume22/20-302/20-302.pdf>. Extended journal version of the conference paper *On the Turing Completeness of Modern Neural Network Architectures*, ICLR 2019, arXiv:1901.03429 (<https://arxiv.org/abs/1901.03429>), which established the result for **both** the [[Transformer]] and the [[Neural GPU]].

## Summary
This paper studies the computational power of the [[Transformer]], the architecture built entirely on [[Self-Attention]] introduced in [[Attention Is All You Need]]. Despite the Transformer's practical dominance, its theoretical computational properties had not been characterised. The authors prove that the Transformer is **Turing complete**: a fixed-size network can simulate an arbitrary [[Universal Turing Machine|Turing machine]], and hence compute any [[Computability|computable]] function.

The construction hinges on two ingredients. First, attention is taken to be **hard attention** (an argmax over positions) rather than the usual softmax-weighted average, so the network can deterministically retrieve a chosen earlier symbol. Second, the internal representations use **arbitrary precision** rationals, letting a bounded number of vector coordinates encode the unbounded state of a Turing-machine tape and head. The Transformer is run **autoregressively**: it reads its own previously emitted symbols, so each decoding step corresponds to one step of the simulated machine, and running for arbitrarily many steps simulates arbitrarily long computations. Carefully chosen [[Positional Encoding|positional encodings]] (functions of the position index such as `i`, `1/i`, and trigonometric terms) let the network address and count over the sequence, while residual connections carry the encoded configuration forward.

Beyond the completeness theorem itself, the paper isolates a **minimal set of elements** the Transformer needs for the result — which components (hard attention, residual connections, positional encodings, unbounded precision) are load-bearing and which are inessential. The result is a theoretical characterisation, not a claim about practical finite-precision, finitely-decoded models: it establishes the *ceiling* of expressive power for the attention-only architecture, complementing the empirical, engineering-driven view of [[Attention Is All You Need]] and the scaling stance of [[The Bitter Lesson]].

## Key Ideas
- **Main theorem:** the attention-only Transformer with hard attention is Turing complete — it can simulate any Turing machine.
- **Hard (argmax) attention** replaces softmax averaging so the network can deterministically select and copy a specific earlier position.
- **Arbitrary-precision internal representations** let a fixed number of coordinates encode the unbounded tape/head configuration of the simulated machine.
- **Autoregressive decoding as computation steps:** feeding the network its own output means each generated symbol advances the simulated machine one step, giving unbounded computation from a fixed-size network.
- **Positional encodings do real computational work** — they must let the network address, count, and locate symbols in the sequence, not merely disambiguate order.
- **Residual connections** are used to carry the running machine configuration between layers/steps.
- **Minimality analysis:** the paper identifies which architectural elements are essential to the completeness result and which can be dropped.
- **Scope caveat:** the result assumes unbounded numerical precision and unboundedly many decoding steps — it is a statement about expressive-power limits, not about practical fixed-precision Transformers.
- **Neural GPU too:** the original ICLR 2019 conference version (arXiv:1901.03429) proves the same Turing-completeness result for the [[Neural GPU]] — a fully convolutional architecture — showing neither model needs an external memory to reach universal computation.

## Connections
- [[Transformer]]
- [[Self-Attention]]
- [[Attention Is All You Need]]
- [[Positional Encoding]]
- [[Multi-Head Attention]]
- [[Scaled Dot-Product Attention]]
- [[Universal Turing Machine]]
- [[Computability]]
- [[On Computable Numbers with an Application to the Entscheidungsproblem]]
- [[Hard Attention]]
- [[Turing Completeness]]
- [[Arbitrary Precision]]
- [[Neural GPU]]

## Conceptual Contribution
- **Claim:** The self-attention Transformer is not merely a powerful function approximator but a *maximally* expressive one in the classical sense — with hard attention and arbitrary precision it is Turing complete, so its computational ceiling is that of a universal machine.
- **Mechanism:** Simulate a Turing machine with a fixed-size Transformer by (i) using hard/argmax attention to deterministically retrieve earlier symbols, (ii) encoding the unbounded tape configuration into arbitrary-precision internal vectors, (iii) running the network autoregressively so each decoding step is one machine step, and (iv) using computable positional encodings and residual connections to address and carry state.
- **Concepts introduced/used:** [[Turing Completeness]], [[Hard Attention]], [[Arbitrary Precision]], [[Transformer]], [[Self-Attention]], [[Positional Encoding]], [[Universal Turing Machine]], [[Computability]]
- **Stance:** theoretical / expressiveness result
- **Relates to:** Gives a computability-theoretic reading of the architecture from [[Attention Is All You Need]]; sits alongside the founding computability results of [[On Computable Numbers with an Application to the Entscheidungsproblem|Turing 1936]] and the undecidability landscape of [[Classes of Recursively Enumerable Sets and Their Decision Problems|Rice's Theorem]]; a formal counterpoint to the empirical scaling narrative of [[The Bitter Lesson]].

## Tags
#foundations #transformer #self-attention #computability #turing-completeness #theory #jmlr
