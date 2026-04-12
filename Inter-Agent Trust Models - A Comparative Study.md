# Inter-Agent Trust Models: A Comparative Study of Brief, Claim, Proof, Stake, Reputation and Constraint in Agentic Web Protocol Design

**Reference:** Botao 'Amber' Hu & Helena Rong (2025). *arXiv:2511.03434v1 (University of Oxford; NYU Shanghai)*. Source file: `2511.03434v1.pdf`. [URL](https://arxiv.org/abs/2511.03434)

## Summary
As an "agentic web" takes shape — billions of LLM-powered agents autonomously transacting and collaborating — trust shifts from human oversight to protocol design. This paper identifies and compares **six primitive trust models** used (implicitly or explicitly) across recent agentic-web protocols: **Brief** (third-party or self-issued verifiable credentials), **Claim** (self-proclaimed identity/capability, e.g. AgentCards), **Proof** (cryptographic verification — signatures, ZK proofs, TEE attestations), **Stake** (economic collateral with slashing), **Reputation** (graph-based social feedback), and **Constraint** (sandboxing, capability bounding).

The authors evaluate Google's **A2A**, the Agent Payments Protocol (**AP2**), Ethereum's **ERC-8004** "Trustless Agents", and related designs against a shared matrix of tradeoffs — cost, latency, Sybil resistance, information overhead, social robustness. Special emphasis on **LLM-specific fragilities** that change the calculus: prompt injection, sycophancy/nudge-susceptibility, hallucination, deception, emergent power-seeking, and goal misalignment. These mean that *unverified trust mechanisms are structurally brittle* at machine scale. The conclusion: no single primitive suffices; trustless-by-default architectures should layer Brief for identity/discovery, Proof for high-impact actions, Reputation for flexibility and social signals, and Constraint as a safety net.

## Key Ideas
- **Six trust-model primitives** form a basis for inter-agent protocol design
- **LLM fragilities** (prompt injection, sycophancy, hallucination, deception, power-seeking) force Proof + Constraint over pure Claim/Reputation
- **Protocol mapping:** A2A uses Claim heavily (AgentCards); AP2 adds Constraint (mandate/capability caps); ERC-8004 unifies Brief + Proof + Stake + Reputation on-chain
- Classic trust dimensions — Sybil resistance, collusion robustness, whitewashing, cold-start — recur at agent scale
- Advocates **layered**, **trustless-by-default** protocol architectures
- Defence-in-depth: multi-modal trust signals, calibration of blended scores, governance standardisation

## Connections
- [[Trust and Reputation]]
- [[Review on Computational Trust and Reputation Models]]
- [[Agent-to-Agent Protocol]]
- [[Model Context Protocol]]
- [[Agent Network Protocol]]
- [[Survey Of AI Agent Protocols]]
- [[Survey Of Agent Interoperability Protocols]]
- [[LLM Agents]]
- [[Agent Security]]
- [[AI Agents Under Threat]]
- [[MalTool Malicious Tool Attacks]]
- [[Prompt Injection]]
- [[Agents of Chaos]]
- [[Decentralized Identifiers]]
- [[Sandboxing]]

## Conceptual Contribution
- **Claim:** Agent-to-agent trust must be designed as a layered protocol stack combining six primitive mechanisms (Brief, Claim, Proof, Stake, Reputation, Constraint); LLM-specific fragilities rule out any single-mechanism design.
- **Mechanism:** Comparative framework along six axes × tradeoffs × LLM-issue mitigation; case analysis of A2A, AP2, ERC-8004 showing where each anchors on the matrix; defence-in-depth recommendation.
- **Concepts introduced/used:** [[Brief Trust]], [[Claim Trust]], [[Proof Trust]], [[Stake Trust]], [[Reputation Trust]], [[Constraint Trust]], [[AgentCards]], [[ERC-8004]], [[Agent Payments Protocol]], [[Sybil Resistance]], [[Whitewashing]], [[Trustless by Default]], [[Zero-Knowledge Proofs]], [[TEE Attestations]], [[Capability Bounding]]
- **Stance:** survey / design-framework
- **Relates to:** Extends [[Review on Computational Trust and Reputation Models]] into the LLM era; complements [[Survey Of AI Agent Protocols]] and [[Survey Of Agent Interoperability Protocols]] by adding a trust-layer dimension to their stack diagrams. Provides the trust-theoretic underpinning for [[MalTool Malicious Tool Attacks]], [[AI Agents Under Threat]], and [[Agents of Chaos]] — each of those papers exhibits failure modes this framework is designed to close.

## Tags
#trust #reputation #llm-agents #agent-protocols #web3 #a2a #erc-8004 #agentic-web
