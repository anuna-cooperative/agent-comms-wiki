# Do LLM Agents Have Regret? A Case Study in Online Learning and Games

**Reference:** Park, Liu, Ozdaglar & Zhang (2024). *Do LLM Agents Have Regret? A Case Study in Online Learning and Games.* arXiv:2403.16843 (MIT; UMD). [URL](https://arxiv.org/abs/2403.16843). OpenReview: <https://openreview.net/forum?id=OhZ4u164cN>.

## Summary
Park et al. ask a sharp question about LLM agents in interactive settings: *do they have regret?* — i.e. do they exhibit the **[[No-Regret Learning|no-regret]]** behaviour that classical online-learning and game-theoretic algorithms guarantee, and that is necessary for converging to coarse-correlated equilibria in repeated games?

The paper proceeds in three steps. **Empirically**, they evaluate GPT-3.5 / GPT-4 / Claude / Llama on canonical online-learning benchmarks (prediction-with-expert-advice; bandit-like sequential decision problems) and on repeated games (matrix games, Cournot, Bertrand, public-goods). Frontier LLMs are *often* no-regret across these settings and often converge to coarse-correlated or Nash equilibria when playing each other. **Theoretically**, they offer a partial explanation: under stylised assumptions on supervised pre-training and human rationality, the LLM's next-action distribution approximates a softmax over historical payoffs — which itself implements a no-regret algorithm. **But they identify clean failure cases**: there exist simple non-stationary or adversarial online-learning instances where even GPT-4 demonstrably accumulates linear regret.

The paper's constructive contribution is a new **regret-loss** training objective. Unlike supervised pretraining loss, regret-loss does not require labels of optimal actions — only the historical sequence of plays and payoffs. The authors prove a statistical generalisation bound for regret-loss minimisation and an optimisation guarantee that minimising it can recover known no-regret learning algorithms (e.g. FTRL). Empirically, regret-loss-finetuned models close the gap on the failure cases. The paper is a foundational reference for any analysis of LLM agents in markets, auctions, or interactive coordination — a category that includes [[Virtual Agent Economies]], [[Mechanism Design for Large Language Models]], [[Learning Collusion in Episodic Inventory-Constrained Markets]], and [[Language Models Can Reduce Asymmetry in Information Markets]].

## Key Ideas
- **Regret as a diagnostic** for LLM agents in interactive settings: do they no-regret-learn against arbitrary opponents?
- **Empirical screen:** frontier LLMs (GPT-3.5/4, Claude, Llama) on canonical online-learning + repeated-game benchmarks.
- **Often no-regret in benign settings**, often converging to coarse-correlated / Nash equilibria when playing each other.
- **Theoretical bridge:** under stylised pretraining + human-rationality assumptions, the LLM's next-action distribution resembles a softmax over payoffs — itself a no-regret algorithm.
- **Identified failure cases:** simple non-stationary / adversarial online-learning instances where GPT-4 has *linear* regret.
- **Regret-loss objective:** label-free training loss that explicitly incentivises no-regret behaviour; statistical and optimisation guarantees.
- **Recovery of classical algorithms:** minimising regret-loss can converge to algorithms like FTRL.

## Connections
- [[No-Regret Learning]]
- [[Online Learning]]
- [[Game Theory]]
- [[Iterated Prisoners Dilemma]]
- [[The Evolution of Cooperation]]
- [[Virtual Agent Economies]]
- [[Mechanism Design for Large Language Models]]
- [[Learning Collusion in Episodic Inventory-Constrained Markets]]
- [[Language Models Can Reduce Asymmetry in Information Markets]]
- [[Counterspeculation Auctions and Competitive Sealed Tenders]]
- [[Cicero Human-Level Play in Diplomacy]]
- [[LLM Agents]]
- [[Multi-Agent Systems]]

## Conceptual Contribution
- **Claim:** Whether LLM agents exhibit *no-regret* behaviour in interactive settings is the right diagnostic for whether they can be deployed in markets, auctions, and coordination protocols. Frontier LLMs are *often but not always* no-regret; specific failure cases can be fixed by an explicit regret-minimising training objective.
- **Mechanism:** Empirical benchmark of LLMs on online learning + repeated games (regret + equilibrium convergence); theoretical link from supervised pretraining to softmax-over-payoffs (a no-regret update); construction of a label-free regret-loss with generalisation + optimisation guarantees; recovery of FTRL-like algorithms as the loss is minimised.
- **Concepts introduced/used:** [[No-Regret Learning]], [[Regret-Loss]], [[Online Learning]], [[Repeated Game]], [[Coarse-Correlated Equilibrium]], [[FTRL]], [[LLM Agents]]
- **Stance:** empirical + theoretical
- **Relates to:** Cousin work to [[Cicero Human-Level Play in Diplomacy]] in the "LLMs as game-theoretic agents" thread. Provides the analytical foundation for the systemic-risk claims in [[Virtual Agent Economies]] and the collusion experiments in [[Learning Collusion in Episodic Inventory-Constrained Markets]]; mechanism-design implications for [[Mechanism Design for Large Language Models]]; the trust assumption behind [[Language Models Can Reduce Asymmetry in Information Markets]] depends on agents being approximately no-regret.

## Tags
#no-regret #online-learning #game-theory #llm-agents #multi-agent #regret-loss
