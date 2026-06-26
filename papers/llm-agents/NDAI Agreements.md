# NDAI Agreements

**Reference:** Stephenson, Miller, Sun, Annem & Parikh (2025). *NDAI Agreements.* arXiv:2502.07924 (UIUC; Cornell Tech; et al.). [URL](https://arxiv.org/abs/2502.07924).

## Summary
The "NDAI agreement" — non-disclosure AI agreement — is a mechanism in which a [[Trusted Execution Environment|TEE]] combined with an AI agent jointly stands in for a trusted human intermediary, resolving the classical **disclosure–appropriation paradox** of information markets first identified by Arrow (1962) and Nelson (1959). An inventor cannot reveal an idea to a potential investor without risking misappropriation; without revealing it, no efficient bargain can be struck. The result is well-known: under-disclosure, under-investment, under-licensing.

Stephenson et al. show formally — via a buyer/seller bargaining game — that delegating the disclosure-and-payment decision to a tamper-proof program running inside a TEE eliminates the hold-up problem, achieving **full disclosure and an efficient ex post transfer**. When the invention's value exceeds the value a TEE can fully secure (e.g. because some leakage is unavoidable), **partial disclosure** still strictly improves welfare over the no-disclosure equilibrium. They then model **agent error** — payments or disclosures going wrong — and prove that simple safeguards (budget caps, acceptance thresholds) preserve most of the efficiency gains.

The substantive economic claim is that TEE + AI behave as an *"ironclad NDA"*: a credible commitment device for the disclosure problem that was previously unattainable with paper contracts (because expropriation is unverifiable) or with cryptography alone (because invention value is unbounded and the seller's information is a complex unstructured artefact). The result links the [[Mechanism Design]] / [[Hold-Up Problem]] tradition to AI-agent infrastructure, and gives a sharp theoretical case for the economic value of [[Trusted Capable Model Environment|trusted model environments]] and confidential-compute hardware as agent-economy substrates.

## Key Ideas
- Formalises the [[Arrow Information Paradox|Arrow–Nelson information paradox]] / [[Hold-Up Problem|hold-up problem]] in a bargaining model between seller (inventor) and buyer (investor).
- **TEEs + AI agents** delegate disclosure and payment to tamper-proof programs that *neither party can subvert*; this implements an ex-ante commitment device unavailable under classical contracts.
- **Full-disclosure efficient equilibrium** under the NDAI when the invention's value lies within what the TEE can secure.
- **Partial disclosure** dominates no-disclosure even when full security is impossible: high-value inventions still get partially revealed in welfare-improving ways.
- Models **agent imperfection**: errors in payment or disclosure can occur; budget caps and acceptance thresholds bound the damage and preserve most welfare.
- Frames TEEs+AI as an "ironclad NDA": a *cryptographically/hardware-enforced* commitment that traditional NDAs cannot match.
- Policy implications for [[R&D Commercialisation]], [[Technology Transfer]], and inter-firm collaboration; bridges economic theory to confidential-compute hardware.

## Connections
- [[Mechanism Design]]
- [[Trusted Machine Learning Models Unlock Private Inference]]
- [[Trusted Execution Environment]]
- [[Infrastructure for AI Agents]]
- [[Virtual Agent Economies]]
- [[Language Models Can Reduce Asymmetry in Information Markets]]
- [[Mechanism Design for Large Language Models]]
- [[Hold-Up Problem]]
- [[Information Asymmetry]]
- [[Counterspeculation Auctions and Competitive Sealed Tenders]]
- [[Distributed Security]]
- [[LLM Agents]]

## Conceptual Contribution
- **Claim:** A trusted execution environment hosting an AI agent can serve as a credible commitment device that solves the classical Arrow–Nelson disclosure problem of information markets — achieving full disclosure and efficient transfer where paper NDAs and pure cryptography both fail.
- **Mechanism:** A bargaining model in which TEEs+AI mediate the disclosure-and-payment decision; closed-form characterisation of equilibria for full and partial disclosure; sensitivity analysis to agent error with policy-instrument bounds (budget caps, acceptance thresholds).
- **Concepts introduced/used:** [[NDAI Agreements]], [[Trusted Execution Environment]], [[Hold-Up Problem]], [[Arrow Information Paradox]], [[Mechanism Design]], [[Commitment Device]], [[Disclosure Game]]
- **Stance:** formal economic theory with technical implications
- **Relates to:** Companion to [[Trusted Machine Learning Models Unlock Private Inference]] — both argue that capability + trusted execution can replace previously infeasible cryptographic primitives. The economic counterpart to the engineering catalogue in [[Infrastructure for AI Agents]]; a building block for the markets imagined in [[Virtual Agent Economies]] and the information-asymmetry resolution explored in [[Language Models Can Reduce Asymmetry in Information Markets]]. Sits in the lineage of [[Counterspeculation Auctions and Competitive Sealed Tenders|Vickrey]] / mechanism-design tradition.

## Tags
#mechanism-design #tee #information-asymmetry #ai-agents #llm-agents #cryptoeconomics #ndai
