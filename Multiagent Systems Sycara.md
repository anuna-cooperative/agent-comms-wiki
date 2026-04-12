# Multiagent Systems

**Reference:** Katia P. Sycara (1998). *AI Magazine*, Summer 1998, Vol. 19, No. 2, pp. 79-92. Source file: `Multiagent_Systems.pdf`

## Summary
Sycara's survey introduces multi-agent systems (MAS) as a paradigm for tackling problems too large, complex, or distributed for a single agent, presenting the key characteristics that distinguish MAS: each agent has incomplete information, there is no global control, data is decentralized, and computation is asynchronous. She motivates MAS via open systems like the Internet where heterogeneous agents from different designers must interoperate, and surveys the main research problems: coordination, communication, negotiation, coherence, conflict resolution, and reasoning about other agents.

She organizes the field around issues (enabling communication, individual agent reasoning, adaptive coordination, protocols like Contract Net and KQML, reactive vs. deliberative architectures, emergent behavior) and applications (information gathering, e-commerce, manufacturing, health care, distributed planning). Throughout she emphasizes coherence — how locally-acting agents can achieve globally reasonable performance — as the defining challenge.

## Key Ideas
- Four MAS characteristics: incomplete info, no global control, decentralized data, async computation.
- Coherence as the central research challenge.
- Spectrum from reactive (stimulus-response) to deliberative (BDI) architectures.
- Coordination requires reasoning about other agents' expected behavior.
- Organizations, markets, and scientific-community metaphors for MAS structure.

## Connections
- [[Multi-Agent Systems]]
- [[KQML]]
- [[Agent Communication Languages]]
- [[Speech Act Theory]]
- [[Contract Net Protocol]]
- [[Negotiation]]
- [[Joint Intentions]]
- [[BDI]]
- [[Mental State]]
- [[Strong Agency]]
- [[Weak Agency]]
- [[Facilitators]]
- [[Emergent Communication]]

## Conceptual Contribution
- **Claim:** Multi-agent systems are the appropriate paradigm for open, distributed, heterogeneous problem-solving; they are characterised by four structural properties (incomplete info, no global control, decentralised data, async computation) and unified by the problem of achieving *coherence* through local decisions.
- **Mechanism:** Survey-style synthesis organising the MAS field around: motivations (modularity, legacy interop, distributed data), core challenges (coherent coordination, negotiation, planning, conflict resolution), architectures (reactive, deliberative/BDI, hybrid), organisational metaphors (hierarchy, market, community, scientific), protocols (Contract Net, KQML), and application domains (info gathering, e-commerce, manufacturing, aircraft maintenance).
- **Concepts introduced/used:** [[Multi-Agent Systems]], [[Coherence]], [[Problem-Solving Coherence]], [[Contract Net Protocol]], [[BDI Architecture]], [[Reactive vs Deliberative Agents]], [[Negotiation]], [[Joint Intentions]], [[Organizational Metaphors]]
- **Stance:** survey / foundational
- **Relates to:** Canonical MAS reference informing nearly every other note; defines the field that [[ACL Rethinking Principles]] and [[Verifiable Semantics for ACLs]] critique; organisational metaphors dovetail with [[How Do Committees Invent]]; negotiation/coordination theme continued in [[Toward Automated Evolution of ACLs]] and [[Coordinating Agents Using ACL Conversations]].

## Tags
#multi-agent-systems #survey #coordination #ai-magazine
