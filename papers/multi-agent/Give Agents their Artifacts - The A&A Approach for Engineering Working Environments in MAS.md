# "Give Agents their Artifacts": The A&A Approach for Engineering Working Environments in MAS

**Reference:** Ricci, Viroli & Omicini (2007). *"Give Agents their Artifacts": The A&A Approach for Engineering Working Environments in MAS.* Proc. 6th Int. Joint Conf. on Autonomous Agents and Multiagent Systems (AAMAS'07), Honolulu, Hawai'i, May 14–18 2007, pp. 601–603. IFAAMAS, ISBN 978-81-904262-7-5. University of Bologna (Cesena). [PDF](https://lia.disi.unibo.it/~ao/pubs/pdf/2007/aamas.pdf). Indexed in the ACM Digital Library.

## Summary
This short paper introduces **A&A (Agents and Artifacts)**, a conceptual meta-model for directly modelling and engineering the *working environment* of a cognitive multi-agent system as a dynamic set of **artifacts** organised into **workspaces**. Drawing on theories from the human sciences — Activity Theory and Distributed Cognition, and related fields such as CSCW and HCI — the authors argue that, just as humans depend on tools and artifacts to carry out cooperative (especially social) work, cognitive MAS can greatly benefit from a first-class notion of working environment composed of artifacts that agents dynamically construct, share and use. Artifacts are *passive*, function-oriented entities — explicitly designed by MAS engineers to encapsulate some intended purpose — and are not autonomous or pro-active; they divide broadly into **resources** (sources/targets of activity) and **tools** (instruments used to achieve an objective). A&A is deliberately orthogonal to the agent's cognitive model: agents are treated simply as autonomous entities executing activities through *internal* actions, *communicative* actions (direct agent-to-agent messaging via some ACL), and *pragmatical* actions (constructing, sharing and using artifacts).

The artifact abstraction is characterised by two elements. The **usage interface** is the set of operations and observable states/events an artifact exposes so agents can use it: an agent acts by triggering operations and perceives by observing the artifact's state evolution — mimicking, e.g., a coffee machine's buttons, displays and output. The **artifact manual** is a machine-readable description of the artifact's function, its usage interface, and its operating instructions, so that cognitive agents in *open* MAS can reason about which artifacts are useful and how to use them effectively. Workspaces act as logical containers that give the working environment a topology and a notion of locality (which artifacts an agent can observe and use).

The paper then sketches prototyping technologies built on the abstract model. **CARTAGO** (Common ARtifact Infrastructure for AGent Open environments) is a Java framework offering an API to define new artifact types (by extending a base `Artifact` class), an API for agents to create and interact with artifacts and workspaces, and a runtime that functions as a *virtual machine* for working environments — managing artifact life-cycles and routing observable events. CARTAGO is designed to be integrated with existing cognitive agent platforms (Jason, 3APL, Jadex, JACK, JADE), which the authors note typically lack a genuine notion of environment; a companion framework, **simpA**, extends CARTAGO with agent support for building full applications. The work generalises the authors' earlier notion of **coordination artifacts** (AAMAS'04) and situates A&A within the Agent-Oriented Software Engineering (AOSE) agenda that treats the environment as a first-class engineering dimension of MAS.

## Key Ideas
- **A&A meta-model:** engineer the MAS *working environment* as artifacts organised in workspaces, as a peer abstraction alongside the agent.
- **Artifacts are passive and designed:** they encapsulate a function ("intended purpose"), split into *resources* vs *tools*; only agents are autonomous and pro-active.
- **Usage interface:** the operations plus observable states/events an artifact exposes — agents act by triggering operations and perceive by observing state changes.
- **Artifact manual:** a formal description of function, usage interface and operating instructions, letting cognitive agents in open MAS select and use unfamiliar artifacts.
- **Workspaces:** logical containers that impose topology/locality on the working environment.
- **Three kinds of action:** internal, communicative (ACL messaging), and *pragmatical* (create / share / use artifacts) — the artifact dimension is the pragmatical, non-communicative half of interaction.
- **Orthogonal to the agent architecture:** A&A integrates with heterogeneous cognitive agent platforms rather than prescribing one.
- **CARTAGO:** a Java infrastructure and runtime (a VM for working environments) hosting artifacts; **simpA** adds agent support for standalone applications.
- **Lineage:** generalises the authors' earlier *coordination artifacts*; part of the "environment as first-class citizen" line in AOSE.

## Connections
- [[Agents and Artifacts]] — this paper is a canonical statement of the A&A meta-model.
- [[Coordination Artifacts]] — the earlier notion (Omicini, Ricci, Viroli et al., AAMAS'04) that A&A generalises.
- [[CARTAGO]] — the reference Java infrastructure/runtime introduced here.
- [[Working Environment]] — the core abstraction A&A makes first-class in MAS engineering.
- [[On Agent-Based Software Engineering]] — Jennings's AOSE stance; A&A operationalises the *environment* dimension it calls for.
- [[Agent-Oriented Programming]] — Shoham's agent abstraction, which A&A complements with a peer *artifact* abstraction.
- [[An Interaction-oriented Agent Framework for Open Environments]] — kindred work on frameworks for open MAS environments.
- [[Multi-Agent Systems]] — the field-level hub.
- [[Agent Infrastructure]] — CARTAGO as MAS runtime/infrastructure.
- [[Agent Architecture]] — A&A is orthogonal to the cognitive architecture but pairs with concrete agent platforms.
- [[AgentSpeak|Jason]] — one of the cognitive agent platforms CARTAGO is meant to integrate with.
- [[Agent Communication Languages]] — communicative actions ride on ACLs; artifacts capture the complementary *pragmatical* interaction.
- [[Generative Communication in Linda]] — the tuple-space coordination lineage from which the authors' coordination-artifact work descends.

## Conceptual Contribution
- **Claim:** A multi-agent system should be engineered with a first-class *working environment* — a designed, dynamic set of artifacts organised in workspaces — as a peer abstraction to the agent, rather than treating "environment" as a monolithic given. Encapsulating function in passive, usable, inspectable artifacts systematises how agents coordinate and get work done.
- **Mechanism:** the A&A meta-model (artifacts in workspaces, each exposing a *usage interface* and a *manual*) together with CARTAGO, a Java runtime/VM that hosts artifacts and provides APIs both for defining artifact types and for agents to use them, integrable with existing agent platforms.
- **Concepts introduced/used:** [[Agents and Artifacts]], [[Coordination Artifacts]], [[CARTAGO]], [[Working Environment]], artifact usage interface, artifact manual, workspaces, resources vs tools.
- **Stance:** conceptual framework / engineering (AOSE)
- **Relates to:** generalises the authors' [[Coordination Artifacts]] (AAMAS'04); operationalises the environment dimension of [[On Agent-Based Software Engineering|Jennings's AOSE]]; complements the agent abstraction of [[Agent-Oriented Programming]]; the coordination lineage traces to tuple-space models like [[Generative Communication in Linda]].

## Tags
#multi-agent-systems #AOSE #environment #artifacts #coordination #CARTAGO #Omicini #Ricci #Viroli
