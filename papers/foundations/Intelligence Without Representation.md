# Intelligence Without Representation

## Reference
- Brooks, Rodney A. (1991). "Intelligence without representation." *Artificial Intelligence* 47: 139–159. (Received September 1987.)
- PDF: [people.csail.mit.edu/brooks/papers/representation.pdf](https://people.csail.mit.edu/brooks/papers/representation.pdf)
- Local: `brooks1991_representation.pdf`

## Summary
Brooks challenges the dominant symbol-manipulation paradigm of classical AI, arguing that "representation is the wrong unit of abstraction in building the bulkiest parts of intelligent systems." Drawing on an evolutionary argument — 3.5 billion years were spent evolving sensorimotor and survival competence, and only a few thousand years on "expert" symbolic knowledge — he claims the hard part of intelligence is mobility, vision, and acting in dynamic environments, not the formal problem-solving that dominated early AI. The "blocks-world" style of AI succeeds only because researchers have already factored out perception and motor action, relegating them to input/output black boxes.

In place of centralized symbolic architectures, Brooks proposes building autonomous mobile robots he calls "Creatures," decomposed by *activity* rather than by function. Each activity-producing layer connects sensing to action directly and runs in parallel; higher layers are incrementally added on top of lower, already-working layers without a central symbolic world model. This is the subsumption architecture. The slogan is "the world is its own best model": rather than maintaining an internal representation the robot re-perceives what it needs.

The paper's philosophical payload is a rejection of the sense–model–plan–act pipeline and of the assumption that intelligence can be decomposed into modules trading symbolic messages. Brooks argues this methodological commitment — that perception delivers a human-style *Merkwelt* that central reasoning can operate on — is a form of self-deception, since each species and each robot inhabits its own Merkwelt. Intelligence is to be built bottom-up, situated and embodied, tested continuously against the real world.

## Key Ideas
- **Situatedness and embodiment** as design primitives: Creatures must cope with a dynamic environment and have some purpose in being.
- **Decomposition by activity, not function**: layers of task-achieving behavior (avoid, wander, explore) replace perception → modeling → planning → action pipelines.
- **Subsumption architecture**: higher competence layers inhibit/subsume lower ones while lower continue running.
- **No central representation**: "the world is its own best model"; no shared symbolic world model between layers.
- **Evolutionary time argument**: sensorimotor intelligence is the hard, ancient core; symbolic expertise is a thin late veneer.
- **Critique of abstraction**: abstracting away perception and action is how AI self-deceives about having solved problems.
- **Hypothesis (H)**: representation is the wrong primitive for building intelligent systems.

## Connections
- [[Subsumption Architecture]] — this paper is the manifesto.
- [[Intelligent Agents Theory and Practice]] — Wooldridge & Jennings use Brooks as the exemplar of reactive agents, contrasted with deliberative BDI agents.
- [[The Society of Mind]] — shares the anti-monolithic, many-small-agents intuition, though Minsky retains representations.
- [[Multi-Agent Systems]] — reactive/behavior-based approaches feed directly into swarm and MAS work.
- [[Actor Model]] — independent parallel activity producers without a central controller.
- [[A Universal Modular Actor Formalism for Artificial Intelligence]] — kindred rejection of centralized control.
- [[Agent Architecture]] — subsumption is a canonical architecture contrasted with BDI, layered, hybrid.
- Contrast with [[Knowledge Representation]], [[Ontologies]], [[Advice Taker]] — papers that double down on representation.

## Conceptual Contribution
> Brooks reframes intelligence as *situated competence* rather than symbolic inference. The conceptual move — push perception and action into the core, let the world substitute for the model, and stratify behavior by activity rather than cognitive function — creates a pole of agent theory that every subsequent architecture (BDI, hybrid, layered, learning-based) must position itself against. For agent communication specifically, the paper is a standing challenge: if the world is its own best model, why do agents need elaborate ontologies and ACLs at all? Answers from the communication tradition implicitly assume Brooks is wrong about agents that must coordinate at a distance — but they inherit from him the insistence that meaning is grounded in situated interaction, not in disembodied logic.

## Tags
#agent-theory #reactive-agents #subsumption #embodiment #situatedness #anti-representationalism #robotics #Brooks #foundational
