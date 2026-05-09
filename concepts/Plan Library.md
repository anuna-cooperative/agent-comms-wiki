## Plan Library

In [[AgentSpeak]] and successor BDI languages, the agent's stored set of plans — each plan is a clause of the form `triggering-event : context <- body.` When an event (belief update or goal addition) occurs, the interpreter queries the plan library for plans whose triggering event matches and whose context is satisfied by the current belief base; the *applicable plans* are candidates for the chosen plan to execute. The plan library is the agent's procedural-knowledge repository — the BDI counterpart of a procedure / function library in conventional programming.

## In this vault
- [[AgentSpeak]]
- [[Jason (BDI runtime)]]
- [[BDI]]
