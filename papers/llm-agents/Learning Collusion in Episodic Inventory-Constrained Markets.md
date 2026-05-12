# Learning Collusion in Episodic, Inventory-Constrained Markets

**Reference:** Friedrich, Pásztor & Ramponi (2024). *Learning Collusion in Episodic, Inventory-Constrained Markets.* AAMAS 2025. arXiv:2410.18871 (ETH Zürich; UZH). [URL](https://arxiv.org/abs/2410.18871). Proceedings: <https://ifaamas.csc.liv.ac.uk/Proceedings/aamas2025/pdfs/p803.pdf>.

## Summary
Building on the now-established result that simple Q-learning pricing agents converge to tacitly collusive outcomes in stationary Bertrand games (Calvano et al. 2020), Friedrich et al. extend the analysis to a far more realistic and economically consequential setting: **episodic, inventory-constrained markets** — perishable supply with a sell-by date, such as airline seats, hotel rooms, fresh produce, event tickets. These markets are characterised by (i) finite inventory that expires, (ii) episodic resets, and (iii) richer state than vanilla pricing games, so analytical Nash / collusive benchmarks are not available in closed form.

The authors formalise tacit collusion in this setting via a **price-level metric** that interpolates between the competitive (Nash) and monopolistic (cartel-optimal) optima. Since neither extreme is analytically tractable, they develop a computational procedure to derive both benchmarks. They then train **deep RL agents** to set prices in repeated episodes and find that even *without cross-episode memory*, sufficiently long episodes are enough for agents to converge to collusive equilibria. Three distinct collusion structures are identified: **signalling** (agents probe each others' responses to coordinate), **stable** (a steady high-price equilibrium with implicit threats), and **cyclic** (alternating high/low prices akin to Edgeworth cycles). With cross-episode memory, punishment for deviation becomes possible, and the collusive equilibria sharpen further.

The paper is important for [[Algorithmic Collusion]] / competition policy because it shows tacit-collusion findings *do not depend* on the toy stationary-Bertrand setup that critics dismissed — they recur, and indeed grow richer, in markets that match real high-stakes industries. It is also a direct empirical anchor for the systemic-risk warnings in [[Virtual Agent Economies]] and the multi-agent-security threat catalogue in [[Open Challenges in Multi-Agent Security]].

## Key Ideas
- **Episodic inventory-constrained markets:** finite perishable supply with sell-by dates — airline seats, hotel rooms, perishables — much richer than stationary Bertrand.
- **Price-level collusion metric:** interpolation between competitive Nash and monopolistic optima; quantifies "how much" the agents collude.
- **Computational benchmark derivation:** since closed forms don't exist, compute Nash and cartel optima numerically as evaluation reference points.
- **Deep RL agents converge to collusion** even *without* explicit cross-episode memory, in long-enough episodes.
- **Three collusion structures:** **signalling**, **stable**, and **cyclic** — the latter resembling [[Edgeworth Cycle|Edgeworth cycles]] observed in human markets.
- **Cross-episode memory amplifies collusion:** punishment-of-deviation becomes credible, sharpening collusive equilibria.
- **Policy implication:** algorithmic collusion is not a stationary-Bertrand artefact — it generalises to economically central market structures.

## Connections
- [[Algorithmic Collusion]]
- [[Virtual Agent Economies]]
- [[Open Challenges in Multi-Agent Security]]
- [[Do LLM Agents Have Regret]]
- [[Mechanism Design]]
- [[Mechanism Design for Large Language Models]]
- [[Multi-Agent Systems]]
- [[Multi-Agent Reinforcement Learning]]
- [[Iterated Prisoners Dilemma]]
- [[The Evolution of Cooperation]]
- [[LLM Agents]]

## Conceptual Contribution
- **Claim:** Tacit algorithmic collusion is not an artefact of stationary toy markets. In economically central market structures — finite-inventory perishable goods with episodic resets — deep RL agents reliably converge to collusive pricing equilibria, often via richly structured strategies (signalling, stable, cyclic). The phenomenon generalises and probably understates real-world risk.
- **Mechanism:** Formal episodic inventory-constrained pricing model; computational derivation of Nash and cartel benchmarks; deep RL pricing agents trained over many episodes; analysis of the converged strategies; comparison with and without cross-episode memory.
- **Concepts introduced/used:** [[Algorithmic Collusion]], [[Tacit Collusion]], [[Inventory-Constrained Pricing]], [[Episodic Markets]], [[Signalling Collusion]], [[Cyclic Collusion]], [[Edgeworth Cycle]], [[Multi-Agent Reinforcement Learning]]
- **Stance:** empirical / theoretical
- **Relates to:** Direct empirical evidence for the systemic-risk arguments in [[Virtual Agent Economies]] and the collusion-threat row of the taxonomy in [[Open Challenges in Multi-Agent Security]]. Sits alongside [[Do LLM Agents Have Regret]] in the "LLM and RL agents in games" thread; downstream of [[The Evolution of Cooperation]] and [[Iterated Prisoners Dilemma]] in the game-theoretic foundations.

## Tags
#algorithmic-collusion #multi-agent-rl #competition-policy #aamas #pricing #llm-agents
