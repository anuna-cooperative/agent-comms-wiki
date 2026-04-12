# Are Multiagent Systems Resilient to Communication Failures?

**Reference:** Philip N. Brown, Holly P. Borowski, and Jason R. Marden (2017). *arXiv:1710.08500 (American Control Conference 2018)*. Source file: `1710.08500v1.pdf`

## Summary
Studies whether game-theoretic multiagent systems that tolerate "offline" design-time information loss also tolerate "online" runtime communication failures. Using potential games as the canonical setting, the authors show a surprising negative result: even a single communication failure about a weakly-coupled ("inconsequential") agent's action can drive best-response and log-linear-learning dynamics to arbitrarily poor equilibria, regardless of which proxy-payoff evaluator the ignorant agent uses.

The paper also identifies positive results — identical-interest games with the max evaluator remain well-behaved under a single failure — and proposes a "coarse potential alignment" certificate for when proxy payoffs are safe. It further shows a paradox: in identical-interest games, performance can improve when *more* agents are denied information about an inconsequential player.

## Key Ideas
- Proxy-payoff evaluators (sum/max/min/mean) and their admissibility
- Single communication failure can destabilise potential-game equilibria
- Identical-interest + max evaluator is the only generally safe combination
- "Inconsequentiality" as an epsilon-weak-coupling definition
- Larger action spaces (more profiles) make games more susceptible

## Connections
- [[Multi-Agent Systems]]
- [[Gossip Protocols]]
- [[Agent Communication Languages]]

## Conceptual Contribution
- **Claim:** Even when a single "weakly-coupled" agent loses information about another's action, standard game-theoretic multi-agent control (potential games, identical-interest games, log-linear learning) can collapse to arbitrarily bad equilibria — resilience to communication failures is fundamentally limited by the structure of the problem, not just the learning rule.
- **Mechanism:** Formalise the notion of ε-*inconsequentiality* (a player whose action change barely affects another's payoff) and *proxy payoff evaluators* (max/mean/min/sum over unobserved actions); prove negative theorems showing acceptable evaluators can induce pathological Nash equilibria, then positive structural results (ε-inconsequential + max-evaluator + identical-interest ⇒ resilience) and "informational paradox" results where *removing* communication can improve outcomes.
- **Concepts introduced/used:** [[Potential Games]], [[Log-linear Learning]], [[Proxy Payoff Evaluators]], [[Inconsequentiality]], [[Communication Failures]], [[Distributed Optimization]], [[Nash Equilibrium Pathologies]]
- **Stance:** formal / game-theoretic
- **Relates to:** Provides the theoretical foundation for robustness concerns raised empirically in [[Why Do Multi-Agent LLM Systems Fail]] and [[A Composite Self-organisation Mechanism in an Agent Network]]. The inconsequentiality notion parallels weak-coupling arguments in [[Gossip Protocols]] and [[Gossip-based Aggregation in Large Dynamic Networks]].

## Tags
#multi-agent #game-theory #robustness #distributed-optimization
