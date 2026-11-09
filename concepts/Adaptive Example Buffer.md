# Adaptive Example Buffer

A bounded collection of observed examples selected by a learner for retention. Output and buffer updates depend only on the preceding buffer and current example; updates may retain, discard, reorder, or replace observed examples, without inserting synthetic state. Unlike a sliding window, informative evidence can survive arbitrarily long uninformative stretches. The paper’s density lower bound assumes repetition-free streams.

## In this vault

- [[On Language Generation in the Limit with Bounded Memory]]
- [[Memoryless Generation]]
- [[Generation Density]]

**Source:** [Kleinberg et al. (2026), §4.3](https://arxiv.org/html/2605.30324v1).
