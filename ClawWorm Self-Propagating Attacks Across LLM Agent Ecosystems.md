# ClawWorm: Self-Propagating Attacks Across LLM Agent Ecosystems

**Reference:** Yihao Zhang, Zeming Wei, Xiaokun Luan, Chengcan Wu, Zhixin Zhang, Jiangrong Wu, Haolin Wu, Huanran Chen, Jun Sun, Meng Sun (2026). *arXiv:2603.15727v2 (Peking University; Sun Yat-sen; Wuhan; Tsinghua; SMU)*. Source file: `2603.15727v2.pdf`. [URL](https://arxiv.org/abs/2603.15727)

## Summary
Presents ClawWorm, the first demonstrated self-replicating, worm-style attack on a production-scale autonomous LLM-agent ecosystem. The target is OpenClaw, an open-source personal AI-agent framework with over 40,000 active instances, a persistent Markdown workspace (SOUL.md, AGENTS.md, SKILL.md), tool-execution privileges, and cross-platform messaging (Telegram, Discord, WhatsApp, Slack, Signal, Moltbook). A single crafted message triggers the victim to write a malicious payload into its highest-privilege configuration file, which then auto-fires at every session restart and autonomously propagates to every newly encountered peer — all without further attacker intervention.

The worm implements a *dual-anchor persistence* mechanism: one anchor injects the payload into the Session Startup section of AGENTS.md (guaranteeing execution on reboot), the other injects a global interaction rule (guaranteeing propagation during routine replies). Three attack vectors are studied (A: web injection, B: skill-supply-chain via ClawHub, C: direct fenced-code replication with word-by-word handshake) and three payloads (P1 recon, P2 resource exhaustion, P3 command-and-control via URL retrieval). Across 1,800 trials on four frontier LLM backends (Minimax-M2.5, DeepSeek-V3.2, GLM-5, Kimi-K2.5) the aggregate attack success rate is 64.5%, with Vector B (skill supply chain) reaching 81% and sustained multi-hop propagation up to 5 hops. An epidemiological projection with basic reproduction number R0 = k × ASR shows inevitable ecosystem-wide saturation even for security-conscious models.

The root cause is identified as the *flat context trust model*: the LLM cannot distinguish instructions from its owner, the system layer, or an arbitrary channel participant, so architectural patterns (unconditional workspace loading, LLM-mediated tool authorisation, unreviewed skill packages) amount to structural — not idiosyncratic — vulnerabilities shared by any agent ecosystem of similar design.

## Key Ideas
- Single-message, fully autonomous worm against a production agent framework
- Dual-anchor persistence: Session Startup + global interaction rule
- Three attack vectors (web URL, skill supply chain, direct instruction replication)
- Multi-turn autonomous-retry social engineering boosts ASR by up to +24 pp
- Epidemiological SI model with R0 = k × ASR predicts ecosystem saturation
- Execution-layer guardrails alone cannot halt propagation (dormant payloads persist)
- Flat context trust model as structural root cause

## Connections
- [[Agent Security]]
- [[Prompt Injection]]
- [[LLM Agents]]
- [[Multi-Agent Systems]]
- [[Distributed Security]]
- [[Model Context Protocol]]
- [[Gossip Protocols]]
- [[Trust and Reputation]]

## Conceptual Contribution
- **Claim:** Production-scale autonomous LLM-agent ecosystems are vulnerable to single-message, self-replicating worms whose root cause is architectural (flat context trust, unconditional config loading, unreviewed skill supply chains), not model-specific.
- **Mechanism:** Empirical red-team against unmodified OpenClaw v2026.3.12 across four LLM backends, three vectors, three payloads (1,800 trials). A dual-anchor persistence pattern writes the payload to AGENTS.md and installs a global propagation rule; session-restart loading re-injects the payload into the system prompt; routine replies carry the payload to peers. Evaluated with per-phase metrics (persistence, execution, propagation) and a mean-field R0 epidemiological projection.
- **Concepts introduced/used:** [[Self-Replicating Agent]], [[Dual-Anchor Persistence]], [[Flat Context Trust Model]], [[Skill Supply Chain Attack]], [[Indirect Prompt Injection]], [[Agent Worm]], [[Configuration Integrity]], [[Multi-Turn Social Engineering]], [[Epidemiological Projection R0]]
- **Stance:** empirical / critique
- **Relates to:** Concrete multi-agent instantiation of the threat surface catalogued in [[SoK The Attack Surface of Agentic AI]]. The flat-trust critique complements the trust-model taxonomy in [[Inter-Agent Trust Models Brief Claim Proof Stake Reputation Constraint]] and the safety failures observed in [[Agents of Chaos]]. Motivates verifiable specifications of the kind proposed in [[Intent Formalization A Grand Challenge for Reliable Coding in the Age of AI Agents]].

## Tags
#agent-security #prompt-injection #llm-agents #multi-agent #worm #self-replicating
