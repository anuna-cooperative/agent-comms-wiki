# Language Models Can Reduce Asymmetry in Information Markets

**Reference:** Rahaman, Weiss, Wüthrich, Bengio, Li, Pal & Schölkopf (2024). *Language Models Can Reduce Asymmetry in Information Markets.* arXiv:2403.14443 (Mila; Max-Planck; AWS AI Labs). [URL](https://arxiv.org/abs/2403.14443).

## Summary
The paper attacks the **buyer's inspection paradox** in information markets — the same Arrow / Nelson disclosure paradox addressed contractually by [[NDAI Agreements]]. Buyers need to access information to assess its value; sellers must restrict access to prevent appropriation; in equilibrium, useful information often goes untraded. Rahaman et al. propose a *mechanism-design* solution using LLM agents with two abilities that humans lack: (i) **the capacity to evaluate** the quality of privileged information against a query, and (ii) **the ability to forget** — to be cryptographically or architecturally constrained to discard information when not retained.

They build an open-source simulated marketplace where LLM-powered buyer-agents and seller-agents transact information on behalf of external participants. The seller grants the buyer-agent *temporary, evaluable access* to proprietary information; if the agent judges the information non-essential, duplicative, or available more cheaply elsewhere, it can discard it without paying. The combination of evaluation + forgetting creates a credible commitment device: vendors can reveal information for valuation without losing it, and buyers can inspect without obligation.

Experiments yield three findings: (a) current LLMs exhibit systematic biases — anchoring, recency, and over-confidence — that produce irrational marketplace behaviour, but well-known debiasing techniques substantially mitigate them; (b) demand for informational goods responds to price in legible, economically intuitive ways; (c) both inspection access and higher budgets improve buyer outcome quality. The paper anticipates and complements the TCME / NDAI proposals that arrived a year later: it provides the *agent-architectural* version of the "trusted intermediary" thesis that Shumailov et al. and Stephenson et al. then formalise cryptographically/economically.

## Key Ideas
- **Buyer's inspection paradox / [[Arrow Information Paradox]]:** must access information to value it; must restrict access to prevent theft.
- **Dual agent capability — evaluate + forget:** LLM agents can judge quality of privileged information *and* be made to discard it.
- **Open-source marketplace simulation:** buyer-agents and seller-agents transact on behalf of external principals.
- **Temporary-access commitment device:** vendors safely reveal information for valuation because the agent's forgetting is enforced.
- **Biases identified:** anchoring, recency, over-confidence in LLM-driven market behaviour; standard debiasing helps.
- **Price elasticity of information:** demand responds to price in legible ways — *informational goods can be priced like other goods*.
- **Quality–budget–inspection relationship:** inspection access and budget jointly determine outcome quality.

## Connections
- [[NDAI Agreements]]
- [[Trusted Machine Learning Models Unlock Private Inference]]
- [[Mechanism Design]]
- [[Mechanism Design for Large Language Models]]
- [[Virtual Agent Economies]]
- [[Infrastructure for AI Agents]]
- [[Arrow Information Paradox]]
- [[Information Asymmetry]]
- [[Counterspeculation Auctions and Competitive Sealed Tenders]]
- [[LLM Agents]]
- [[Multi-Agent Systems]]

## Conceptual Contribution
- **Claim:** LLM agents with the dual capability of evaluating privileged information and being made to forget it can resolve the Arrow / buyer's-inspection paradox by acting as credible, forgetting trusted intermediaries — turning previously untradeable information into a market good.
- **Mechanism:** Open-source simulated marketplace; LLM buyer-agents and seller-agents act on behalf of external participants; sellers grant temporary inspect-and-evaluate access; agents must discard non-retained information; experiments probe bias, price elasticity, and budget/inspection effects.
- **Concepts introduced/used:** [[Information Markets]], [[Buyer's Inspection Paradox]], [[Arrow Information Paradox]], [[Agent Amnesia]], [[Temporary Disclosure]], [[Mechanism Design]], [[Information Asymmetry]]
- **Stance:** empirical / mechanism-design with system implementation
- **Relates to:** Architectural precursor to [[NDAI Agreements]] (TEE+economic-theory version) and [[Trusted Machine Learning Models Unlock Private Inference]] (TCME / cryptographic version) — all three converge on "capable model + constraint = trusted intermediary". Provides micro-foundations for the markets imagined in [[Virtual Agent Economies]] and [[Mechanism Design for Large Language Models]].

## Tags
#information-markets #information-asymmetry #mechanism-design #llm-agents #agent-economy #multi-agent
