# Multi-Agent Collaboration Mechanisms: A Survey of LLMs

**Reference:** Tran, Dao, Nguyen, Pham, O'Sullivan, Nguyen (2025). *arXiv:2501.06322*. Source file: `2501.06322.pdf`. [URL](https://arxiv.org/abs/2501.06322)

## Summary
An extensive survey of LLM-based Multi-Agent Systems (MASs) focused on *collaboration mechanisms*. The authors propose an extensible framework characterising collaboration along five dimensions: **actors** (which agents), **types** (cooperation / competition / coopetition), **structures** (peer-to-peer, centralised, distributed), **strategies** (role-based vs model-based), and **coordination protocols**. They review methodologies across question answering, planning, debate, and role-play settings, and survey application domains including 5G/6G networks, Industry 5.0, and social simulation.

The survey explicitly positions itself as complementing prior single-agent or architecture-centric reviews by foregrounding collaboration channels — how agents actually talk, negotiate, and align — as the design pivot for scaling toward "artificial collective intelligence."

## Key Ideas
- Five-axis taxonomy of MAS collaboration: actors, types, structures, strategies, coordination protocols.
- Distinction between cooperative, competitive, and coopetitive channels as interaction primitives.
- Peer-to-peer vs centralised vs distributed MAS topologies map onto different coordination protocols.
- Role-based vs model-based strategies for dividing labour among specialised LLM agents.
- Open problems: scalability, evaluation benchmarks, cultural/social alignment of MAS behaviour.

## Connections
- [[Survey Of Agent Interoperability Protocols]]
- [[Survey Of AI Agent Protocols]]
- [[LLM Agents]]
- [[Multi-Agent Systems]]
- [[Agent Communication Languages]]
- [[Model Context Protocol]]
- [[Agent-to-Agent Protocol]]

## Conceptual Contribution
- **Claim:** Understanding LLM-based MAS requires a dedicated taxonomy of *collaboration mechanisms*, not just architectures or application domains; collaboration can be characterised along actors, types, structures, strategies, and protocols.
- **Mechanism:** Systematically reviews ~130 MAS works, maps each onto the five-dimension framework, then compares coordination protocols (debate, voting, role-play, tool-mediated) and draws lessons about scalability and emergence.
- **Concepts introduced/used:** [[Multi-Agent Systems]], [[LLM Agents]], [[Agent Communication Languages]], [[Interoperability]], [[Agent Discovery]]
- **Stance:** survey
- **Relates to:** Cited by [[Survey Of Agent Interoperability Protocols]] as prior art motivating its protocol-centric lens; offers a more behavioural counterpart to that paper's structural comparison of MCP/ACP/A2A/ANP. Converges with [[Survey Of AI Agent Protocols]] on the need to treat protocols as ecosystems, not point-to-point specs.

## Tags
#llm-agents #multi-agent-systems #survey #collaboration
