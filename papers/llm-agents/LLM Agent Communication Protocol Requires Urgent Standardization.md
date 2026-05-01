# LLM Agent Communication Protocol (LACP) Requires Urgent Standardization: A Telecom-Inspired Protocol is Necessary

**Reference:** Xin Li, Mengbing Liu, Chau Yuen (2025). NeurIPS 2025 Workshop on AI and ML for Next-Generation Wireless Communications and Networking (AI4NextG). NTU Singapore. Source file: `17_LLM_Agent_Communication_Pro.pdf`. [Project homepage](https://lixin.ai/LACP)

## Summary
Position paper arguing that the field of LLM agents is repeating the "protocol wars" of 1970s–1990s networking and urgently needs a unified, telecom-inspired communication standard before fragmentation entrenches. The authors survey the current zoo (OpenAI Function Calling, LangChain Agent Protocol, [[Model Context Protocol]], ACP, [[Agent Network Protocol]], Agora, [[Agent-to-Agent Protocol]]) and identify three structural deficiencies: crippling interoperability gaps, security as an afterthought, and monolithic designs lacking transactional integrity.

They propose **LACP**, a three-layer protocol — *Semantic* (PLAN/ACT/OBSERVE message types), *Transactional* (signing, sequencing, two-phase commit, idempotency via transaction IDs), and *Transport* (HTTP/2, QUIC, WebSockets) — built on the [[Narrow Waist Principle]] borrowed from IP. Design principles are explicitly distilled from telecom history: consensus-driven open standards (ITU, 3GPP), security-by-construction (GSM ciphering, SIM-based identity), and layered abstractions (OSI, EPS bearer separation). A working Flask + python-jose prototype with ECDSA-signed JWS messages shows ~3% latency overhead and +30% payload size at realistic message sizes, plus successful tampering- and replay-attack rejection that TLS alone cannot provide.

## Key Ideas
- "Protocol wars" analogy: today's fragmented LLM-agent ecosystem mirrors pre-TCP/IP networking; without a common substrate the transformative potential of distributed AI stalls.
- Three-layer LACP: Semantic / Transactional / Transport, each with well-defined interfaces enabling independent evolution.
- Minimal universal message types — `PLAN`, `ACT`, `OBSERVE`, `ERROR` — wrapped in a JWS envelope; domain-specific content embedded inside the narrow waist.
- Transactional layer provides what TLS cannot: end-to-end signed integrity surviving termination at endpoints, plus idempotency keys (`transaction_id`) defeating replay.
- "Security by construction, not afterthought" lesson lifted from GSM/3GPP: every layer ships with mandatory crypto, not optional add-ons.
- Pre-emptive rebuttals to four standard objections (stifles innovation, semantic diversity, latency overhead, existing frameworks suffice).
- Detailed appendix tracing 1G→6G protocol evolution as a blueprint for agent-protocol generations.

## Connections
- [[Survey Of AI Agent Protocols]]
- [[Survey Of Agent Interoperability Protocols]]
- [[A Scalable Communication Protocol for Networks of LLMs]]
- [[Model Context Protocol]]
- [[Agent-to-Agent Protocol]]
- [[Agent Network Protocol]]
- [[Ripple Effect Protocol]]
- [[Agent Communication Languages]]
- [[Principled Design Of The Modern Web Architecture]]
- [[LLM Agents]]

## Conceptual Contribution
- **Claim:** The fragmented landscape of LLM-agent communication protocols is structurally analogous to pre-TCP/IP networking and demands an immediate, principled standardisation effort; a telecom-style layered protocol with mandatory cryptographic and transactional guarantees is not merely beneficial but necessary for safety-critical multi-agent deployments (e.g. NextG/6G).
- **Mechanism:** Distil four principles from telecom history (consensus-driven standards, security-by-construction, layered abstraction, narrow waist) and instantiate them as **LACP** — a three-layer stack: Semantic (`PLAN`/`ACT`/`OBSERVE` over a minimal universal vocabulary), Transactional (JWS signing, transaction IDs, two-phase commit, retry/timeout), Transport (binary framing over HTTP/2, QUIC, WebSockets). Validated by a Python/Flask prototype: 10,000-request benchmark shows +2.9% latency on large payloads; tampering and replay attacks rejected at the application layer where TLS terminates.
- **Concepts introduced/used:** [[LACP]], [[Narrow Waist Principle]], [[Layered Architecture]], [[Layered Systems]], [[Protocol Design]], [[Atomic Transaction]], [[Two-Phase Commit]], [[End-to-End Message Signing]], [[Idempotency]], [[Replay Attack]], [[Model Context Protocol]], [[Agent-to-Agent Protocol]], [[Agent Network Protocol]], [[LLM Agents]], [[Multi-Agent Systems]], [[Interoperability]]
- **Stance:** position / engineering proposal
- **Relates to:** Direct response to the protocol-zoo charted by [[Survey Of AI Agent Protocols]] and [[Survey Of Agent Interoperability Protocols]]. Where [[A Scalable Communication Protocol for Networks of LLMs]] (Agora) sidesteps fragmentation via a *meta-protocol* that negotiates Protocol Documents on demand, LACP takes the opposite stance: a single mandated narrow waist with security-by-construction. Echoes the layered-evolution argument of [[Principled Design Of The Modern Web Architecture]], the end-to-end reasoning of [[End-to-End Arguments in System Design]], and the TCP/IP narrow-waist tradition. Its security-first posture aligns with [[SoK The Attack Surface of Agentic AI]] and the LangSec lineage of [[Security Applications Of Formal Language Theory]]; the transactional-integrity layer answers attack vectors raised in [[ClawWorm Self-Propagating Attacks Across LLM Agent Ecosystems]] and [[MalTool Malicious Tool Attacks]].

## Tags
#llm-agents #agent-protocols #standardization #position-paper #telecom #security #layered-architecture
