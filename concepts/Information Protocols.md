# Information Protocols

Interaction protocols specified purely by the information that messages require and produce, with no control-flow constructs. Introduced by Singh with [[BSPL]]: each message schema names a sender role, a receiver role and parameters adorned ⌜in⌝, ⌜out⌝ or ⌜nil⌝, and a key subset of parameters identifies the enactment. Two constraints do all the work. *Information causality*: a message may be emitted only when its ⌜in⌝ parameters are already bound in the sender's local history, so ordering is derived rather than stated. *Information integrity*: within one enactment (one key binding) a parameter may be bound at most once, so exclusive choice is derived rather than stated. Because both constraints are evaluated against local history and bindings are immutable, enactment is coordination-free and tolerates unordered, lossy delivery; a received message is either consistent with the local store and added, or rejected.

The paradigm's correctness vocabulary is [[Enactability]] (some viable path completes the enactment), safety (no parameter bound twice per key across all roles) and liveness (completion always remains possible). Its programming counterpart is the *form*, an enabled message with its ⌜in⌝ parameters filled and its ⌜out⌝ parameters awaiting a decision ([[Kiko - Programming Agents to Enact Interaction Protocols]]). Meaning is layered separately: a `means` clause may attach a commitment to a message, connecting information protocols to [[Commitment-based Semantics]].

Contrast with ordering-based specifications ([[FIPA-ACL]] interaction protocols, AUML, message sequence charts, WS-CDL) and with type-based ones ([[Session Types]], [[Choreographic Programming]]), which fix sequences or derive local behaviour by [[Endpoint Projection]]. [[CBCL - Safe Self-Extending Agent Communication]]'s causal protocols are the content-addressed, adversarial-setting relative of this idea.

## In this vault
- [[BSPL]]
- [[BSPL - The Blindingly Simple Protocol Language]]
- [[Semantics and Verification of Information-Based Protocols]]
- [[Kiko - Programming Agents to Enact Interaction Protocols]]
- [[Enactability]]
- [[Interaction Protocols]]
- [[Commitment-Based Protocol]]
- [[Declarative Specification]]
- [[CALM Theorem]]
- [[Endpoint Projection]]
