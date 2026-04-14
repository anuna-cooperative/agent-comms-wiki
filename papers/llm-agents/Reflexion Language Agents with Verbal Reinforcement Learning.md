# Reflexion: Language Agents with Verbal Reinforcement Learning

**Reference:** Noah Shinn, Federico Cassano, Edward Berman, Ashwin Gopinath, Karthik Narasimhan, Shunyu Yao (2023). *NeurIPS 2023* (Northeastern / MIT / Princeton). arXiv:2303.11366. Source file: `reflexion-2303.11366.pdf`. [URL](https://arxiv.org/abs/2303.11366)

## Summary
Reflexion reinforces language agents not by updating weights but by *verbal* feedback: after each episode the agent converts scalar or binary success signals into a natural-language self-critique and stores that critique in an episodic memory buffer that conditions the next attempt. This acts as a semantic gradient, letting the agent learn from trial-and-error in a handful of episodes without fine-tuning. The framework factors an agent into three LLM-instantiated modules: an *Actor* (generates text and actions, typically a ReAct agent or CoT reasoner), an *Evaluator* (scores the trajectory), and a *Self-Reflection* model (produces the verbal feedback written to memory).

On ALFWorld (decision-making) Reflexion completes 130/134 tasks vs ~100 for ReAct alone (+22%); on HotpotQA reasoning it adds ~20%; on the HumanEval coding benchmark it reaches 91% pass@1, surpassing GPT-4's 80%. The paper also releases LeetcodeHardGym. Reflexion is the canonical reference for self-reflective metacognitive loops in LLM agents.

## Key Ideas
- Verbal reinforcement: convert sparse scalar/binary rewards into natural-language lessons
- Three-module architecture: Actor / Evaluator / Self-Reflection, all LLMs
- Short-term memory = trajectory history; long-term memory = accumulated self-reflections (bounded, e.g. last 3)
- No gradient updates: policy changes via in-context memory, not weight updates
- Self-reflection helps identify both mistaken actions (hallucination) and mistaken plans (inefficient planning)
- Works on top of ReAct, CoT, or other actor policies; orthogonal to prompting style
- State-of-the-art results on HumanEval, ALFWorld, HotpotQA with only a handful of trials

## Connections
- [[LLM Agents]]
- [[Agents Framework - Zhou et al]]
- [[The Rise and Potential of LLM-Based Agents]]
- [[Generative Agents]]
- [[MAST Taxonomy]]
- [[Metacognitive Loop]]

## Conceptual Contribution
- **Claim:** Language agents can be reinforced effectively without weight updates by converting sparse environmental feedback into verbal self-critiques that persist in episodic memory and steer subsequent behaviour — an emergent property of sufficiently capable LLMs that is far cheaper than RL fine-tuning.
- **Mechanism:** After trajectory τ_t, the Evaluator M_e computes a reward r_t; the Self-Reflection model M_sr takes (τ_t, r_t) and produces a natural-language lesson sr_t appended to a memory buffer mem (|mem| ≤ Ω). The Actor M_a's policy π_θ is parameterised by (M_a, mem), so on trial t+1 the in-context memory steers action selection. Iteration until Evaluator passes or max trials reached.
- **Concepts introduced/used:** Verbal reinforcement learning, self-reflection, episodic memory for LLM agents, Actor-Evaluator-Self-Reflection decomposition, credit assignment via LLM, LeetcodeHardGym benchmark, in-context policy iteration.
- **Stance:** empirical / methods — framework with ablations across three task families.
- **Relates to:** Stacks on top of [[ReAct Synergizing Reasoning and Acting in Language Models]] (Reflexion's default Actor is ReAct) and is the prototypical [[Metacognitive Loop]] for LLM agents. Makes memory-augmented agents a practical design pattern, related to the memory streams of [[Generative Agents]]. A core reference in [[The Rise and Potential of LLM-Based Agents]] and [[Agents Framework - Zhou et al]], and an instance of the self-improvement / self-reflection family in [[MAST Taxonomy]]. Part of the broader family of [[LLM Agents]] that learn in-context rather than via gradient descent.

## Tags
#llm-agents #self-reflection #verbal-rl #memory #metacognition
