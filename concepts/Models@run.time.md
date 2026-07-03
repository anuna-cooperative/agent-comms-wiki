# Models@run.time

The principle that a self-adaptive system should keep a **causally-connected, runtime-accessible model of itself** (and often of its environment and goals) that both reflects the running system and can be used to reason about and drive adaptation. Where classic model-driven engineering uses models at design time, models@run.time extends abstract models into the running system as first-class artefacts that the adaptation logic queries and updates.

Such a runtime model is the natural home for the **K**nowledge in a [[MAPE-K]] loop: the Monitor phase keeps it in sync with reality, and the Analyse/Plan phases reason over it rather than over raw code. Architecture-based approaches like [[Rainbow - Architecture-Based Self-Adaptation with Reusable Infrastructure]] make the *software architecture* the runtime model against which constraints are evaluated and repairs planned.

## Related
- [[MAPE-K]]
- [[Autonomic Computing]]
- [[Self-Adaptive Systems]]
- [[Rainbow - Architecture-Based Self-Adaptation with Reusable Infrastructure]]
- [[Three-Layer Reference Model]]
