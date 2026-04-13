# A Universal Modular Actor Formalism for Artificial Intelligence

## Reference

Hewitt, C., Bishop, P., & Steiger, R. (1973). "A Universal Modular Actor Formalism for Artificial Intelligence." *Proceedings of the 3rd International Joint Conference on Artificial Intelligence (IJCAI)*, 235-245. [URL](https://www.ijcai.org/Proceedings/73/Papers/027B.pdf)

## Summary

Hewitt, Bishop, and Steiger introduce the **Actor** — a universal computational primitive that unifies data, procedure, and process under a single kind of object. An actor is an active agent with behavior defined entirely by the messages it sends and receives. All computational structures — numbers, functions, semaphores, cells, queues, interpreters — are modeled uniformly as actors that respond to messages. Control flow and data flow are *inseparable*; sending a message replaces goto, call-return, interrupt, and semaphore operations with a single mechanism.

The paper grew out of the PLANNER project and explicit dissatisfaction with the von Neumann / stored-program paradigm dominant in AI languages. In place of "program counter + global memory + interrupts," the actor model offers local state per actor, inherent concurrency via simultaneous message sends, and a coherent account of parallelism that scales from fine-grained numeric computation to large, autonomous agents. The authors emphasize **intentions** as first-class properties — an actor's intention is the contract it guarantees to satisfy for its senders, supporting a form of declarative meta-evaluation and debugging.

Hewitt's framework anticipated and influenced a long arc of subsequent work: Smalltalk's message-passing object model, Agha's formalization of actor semantics, Erlang/OTP's supervised processes and let-it-crash philosophy, the Akka framework, CSP (Hoare) which formalized a closely related but channel-centric style, and contemporary actor-based agentic systems. The paper's insistence that "creation, control, and communication" are one mechanism remains the defining alternative to shared-memory concurrency.

## Key Ideas

- **Actor = message-receiving agent**: a single primitive subsumes data, procedures, processes.
- **Message passing only**: no shared memory, no goto, no interrupt, no semaphore.
- **Inseparability of control and data**: computation is intrinsic — "ask not what you can do to an object; ask what the actor will do for you."
- **Inherent concurrency**: every message send is potentially parallel.
- **Intentions / contracts**: each actor publishes obligations; meta-evaluators check that behavior satisfies intentions.
- **Modularity via encapsulation**: actors expose only message interfaces; internal state is private.
- **Universality**: the formalism expresses every computational construct needed for AI programming without primitive aggregates.
- **Hierarchies of scheduling, intention, monitoring, binding, resource management**: supervisory structures emerge naturally.

## Connections

- [[Actor Model]]
- [[Programming Erlang Second Edition]] — the most successful large-scale realization.
- [[Let It Crash]]
- [[Supervision Tree]]
- [[A Language-Based Approach To Prevent DDoS]]
- [[The Society of Mind]] — Minsky's agent-of-agents shares the intuition.
- [[Communicating Sequential Processes]] — Hoare's contemporary rival formulation.
- [[Hoare Logic]]

## Conceptual Contribution

> Computation can be built from a single primitive — the actor, an active entity defined wholly by its message-response behavior — and every classical construct (data, procedure, process, lock, interrupt) is an instance of this primitive. Concurrency becomes native rather than bolted-on; modularity is enforced by message-passing; and programs become societies of agents with stated intentions, supervisable and reorganizable without rewriting the whole. This is the conceptual foundation beneath every modern message-passing, fault-isolating concurrent system.

## Tags

#actor-model #hewitt #concurrency #message-passing #AI-foundations #modularity #PLANNER #foundational
