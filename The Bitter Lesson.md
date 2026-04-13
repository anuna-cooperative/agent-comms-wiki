# The Bitter Lesson

**Reference:** Sutton, R. S. (March 13, 2019). Essay on personal website, *Incomplete Ideas*. Not a PDF — HTML essay, captured via `ar-crawl`. [URL](http://www.incompleteideas.net/IncIdeas/BitterLesson.html)

## Summary
Sutton's short but enormously influential essay argues that seventy years of AI research teach one lesson: **general methods that leverage computation are ultimately most effective, by a large margin**, and attempts to encode human domain knowledge tend to plateau and eventually obstruct progress. The ultimate driver is Moore's law — the exponentially falling cost of computation — which guarantees that whatever computational budget a method can exploit will become dramatically larger on timescales shorter than a research career. Researchers, pressed for short-term gains, routinely build in human understanding; this helps locally but impedes the methods that scale.

He marshals four case studies to make the point concrete: **computer chess** (Deep Blue's brute-force search beat knowledge-engineered systems in 1997, to their practitioners' dismay); **computer Go** (a 20-year delay of the same pattern, culminating in search + self-play value learning); **speech recognition** (statistical HMMs and later deep learning displaced phoneme/vocal-tract-engineered systems); and **computer vision** (edges, SIFT, generalized cylinders replaced by convolutional nets). The two methods that scale arbitrarily with compute are **search** and **learning**. The deeper second lesson: the contents of minds are irredeemably complex, so we should not try to build simple theories of space, objects, multi-agent interaction, or symmetry *into* systems; we should instead build **meta-methods** that can discover that complexity themselves. "We want AI agents that can discover like we can, not which contain what we have discovered."

Key quotes preserved for future reference:

> "The biggest lesson that can be read from 70 years of AI research is that general methods that leverage computation are ultimately the most effective, and by a large margin."

> "The two methods that seem to scale arbitrarily in this way are search and learning."

> "We have to learn the bitter lesson that building in how we think we think does not work in the long run."

> "We want AI agents that can discover like we can, not which contain what we have discovered."

## Key Ideas
- Moore's-law-driven scaling dominates human-knowledge engineering.
- Search and learning are the two methods that scale with compute.
- Four canonical case studies: chess, Go, speech, vision.
- Human-knowledge approaches plateau and hinder further progress.
- Minds are irredeemably complex; build meta-methods, not content.
- Bitterness: success is over a favoured, human-centric approach.

## Connections
- [[Attention Is All You Need]]
- [[Language Models are Few-Shot Learners]]
- [[LLM Agents]]
- [[Toolformer]]
- [[Intelligent Agents Theory and Practice]]
- [[Agent-Oriented Programming]]
- [[BDI]]
- [[Ontologies]]

## Conceptual Contribution
- **Claim:** Across AI's history, general, computation-hungry methods (especially search and learning) win out over methods that build in human domain knowledge, because compute grows exponentially while human-knowledge investments do not; therefore AI research should focus on meta-methods that discover complexity rather than encode it.
- **Mechanism:** Sutton induces the claim from four episodes (chess, Go, speech recognition, vision) in which knowledge-engineered approaches were surpassed, often reluctantly, by compute-leveraging statistical/search/learning approaches; he identifies search and learning as the two classes of techniques that scale arbitrarily with compute; and draws the meta-conclusion that the contents of minds are too complex to be programmed directly — only discovery procedures generalise.
- **Concepts introduced/used:** [[Bitter Lesson]], [[Scaling]], [[Search and Learning]], [[Meta-Methods]], [[General-Purpose Methods]]
- **Stance:** methodological manifesto
- **Relates to:** Retrospectively justifies the architectural bet of [[Attention Is All You Need]] and the empirical scaling results of [[Language Models are Few-Shot Learners]]; stands in explicit tension with the knowledge-engineering tradition underpinning [[BDI]], [[Agent-Oriented Programming]] and [[Ontologies]]; frames the debate over whether [[LLM Agents]] supersede or complement structured agent architectures.

## Tags
#scaling #foundational #methodology #ai-history #manifesto
