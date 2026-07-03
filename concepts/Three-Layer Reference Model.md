# Three-Layer Reference Model

A reference architecture for self-managed systems proposed in [[Self-Managed Systems - an Architectural Challenge]] (Kramer & Magee 2007), adapting Gat's three-layer architecture from autonomous robotics to self-adaptive software. It separates adaptation concerns by the timescale and abstraction at which they operate:

- **Component control** — the running application; components self-tune and report status, with mechanisms to add, remove, and reconnect components at runtime.
- **Change management** — a set of pre-computed plans that react to status reports and execute reconfigurations; escalates to the layer above when no applicable plan exists.
- **Goal management** — produces new plans from high-level goals (typically slow, deliberative planning) in response to requests from change management or changes in goals.

The model is a widely-cited way to structure the **P**lan/**E**xecute portions of a [[MAPE-K]] loop across abstraction layers, and frames the open research challenges (requirements, assurance, decentralised control) of the field.

## In this vault
- [[Self-Managed Systems - an Architectural Challenge]]
- [[Rainbow - Architecture-Based Self-Adaptation with Reusable Infrastructure]]

## Related
- [[Autonomic Computing]]
- [[MAPE-K]]
- [[Self-Adaptive Systems]]
- [[A Robust Layered Control System]]
