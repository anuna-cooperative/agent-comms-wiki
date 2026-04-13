# Attention Is All You Need

**Reference:** Vaswani, A., Shazeer, N., Parmar, N., Uszkoreit, J., Jones, L., Gomez, A. N., Kaiser, L., & Polosukhin, I. (2017). *Advances in Neural Information Processing Systems* 30 (NeurIPS). arXiv:1706.03762. Source file: `vaswani_attention_is_all_you_need.pdf`. [URL](https://arxiv.org/abs/1706.03762)

## Summary
The paper introduces the **Transformer**, a sequence-transduction architecture that dispenses entirely with recurrence and convolution and relies solely on attention mechanisms to model dependencies between input and output tokens. An encoder stack of N=6 identical layers, each composed of a multi-head self-attention sub-layer and a position-wise feed-forward sub-layer (with residual connections and layer normalisation), encodes the source; a symmetric decoder stack augments each layer with masked self-attention and cross-attention to the encoder output. Because the architecture has no inherent notion of token order, sinusoidal **positional encodings** are added to the input embeddings.

The core primitive is **scaled dot-product attention**, Attention(Q,K,V) = softmax(QKᵀ/√dₖ)V, extended to **multi-head attention** by linearly projecting Q, K, V h=8 times into lower-dimensional subspaces, running attention in parallel, and concatenating the results. The motivation is computational: self-attention has O(1) sequential operations and O(1) maximum path length between any two positions — much shorter than recurrent or convolutional alternatives — enabling far greater parallelism and better gradient flow over long distances. The Transformer achieves state-of-the-art BLEU on WMT 2014 En–De (28.4) and En–Fr (41.8) at a small fraction of prior training cost and generalises to constituency parsing. It is the architectural substrate on which virtually all subsequent large language models are built.

## Key Ideas
- Pure attention architecture; no recurrence or convolution.
- Scaled dot-product attention with 1/√dₖ scaling to stabilise softmax gradients.
- Multi-head attention for attending to different representation subspaces.
- Three uses of attention: encoder self-attention, decoder masked self-attention, encoder-decoder cross-attention.
- Sinusoidal positional encodings enable extrapolation beyond training lengths.
- O(1) path length supports learning of long-range dependencies.
- Massive parallelism compared to RNNs; dramatic training cost reduction.

## Connections
- [[LLM Agents]]
- [[Language Models are Few-Shot Learners]]
- [[Toolformer]]
- [[Agent-Oriented Programming]]
- [[Intelligent Agents Theory and Practice]]
- [[The Bitter Lesson]]

## Conceptual Contribution
- **Claim:** Recurrence and convolution are unnecessary for high-quality sequence transduction; an architecture built entirely from (multi-head, self-)attention and feed-forward layers outperforms prior state-of-the-art on machine translation while training in a fraction of the time.
- **Mechanism:** Replace RNN hidden-state chains with an encoder-decoder stack of identical layers, each using scaled dot-product multi-head attention plus position-wise FFN with residual connections and layer norm; inject order via sinusoidal positional encodings; use masked self-attention in the decoder to preserve autoregression; exploit O(1) sequential complexity and O(1) max path length to parallelise across sequence positions and shorten gradient paths to long-range dependencies.
- **Concepts introduced/used:** [[Transformer]], [[Self-Attention]], [[Multi-Head Attention]], [[Positional Encoding]], [[Scaled Dot-Product Attention]], [[Encoder-Decoder Attention]]
- **Stance:** empirical architecture paper
- **Relates to:** Architectural substrate for [[Language Models are Few-Shot Learners]], [[Toolformer]] and the entire [[LLM Agents]] literature; exemplifies the scaling-over-structure thesis of [[The Bitter Lesson]]; reshapes what "agent architecture" means relative to [[Intelligent Agents Theory and Practice]]'s 1990s taxonomy.

## Tags
#llm #transformer #deep-learning #foundational #attention
