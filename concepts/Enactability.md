# Enactability

The property that a protocol can actually be carried out by independently acting roles. In [[BSPL]] ([[Semantics and Verification of Information-Based Protocols]]) a protocol is enactable if and only if its intension is non-empty: there exists a viable history vector, built from emissions each of which the sending role could make from its own knowledge at the time, that binds every public parameter. A protocol with a public ⌜in⌝ parameter is not enactable standalone; Local Conflict, in which two messages from the same role both bind the key, is not enactable because emitting one disables the other. Enactability is entailed by liveness (completion always remains possible) but is weaker than it, and is independent of safety (no parameter bound twice per key).

Desai and Singh's earlier diagnostics of unenactable business protocols, *blindness* (a role required to act on information it never receives) and *nonlocal choice* (two roles free to make incompatible choices), both yield an empty intension, so the single check subsumes them. Enactability is the multiagent-systems counterpart of [[Realizability]] for message sequence charts and choreographies ([[Realizability and Verification of MSC Graphs]], [[Deciding Choreography Realizability]]) and of [[Knowledge of Choice]] and projectability in [[Choreographic Programming]] and [[Session Types]]: all ask whether local views suffice for the global specification. Stated over local knowledge rather than channel orderings, it is also the closest existing notion to the causal-locality condition under which the CBCL role layer's [[Endpoint Projection]] is sound ([[CBCL - Safe Self-Extending Agent Communication]]).

## In this vault
- [[Semantics and Verification of Information-Based Protocols]]
- [[BSPL - The Blindingly Simple Protocol Language]]
- [[Kiko - Programming Agents to Enact Interaction Protocols]]
- [[BSPL]]
- [[Information Protocols]]
- [[Knowledge of Choice]]
- [[Realizability and Verification of MSC Graphs]]
- [[Deciding Choreography Realizability]]
- [[Multiparty Compatibility in Communicating Automata]]
- [[Endpoint Projection]]
