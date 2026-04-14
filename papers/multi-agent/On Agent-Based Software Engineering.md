# On Agent-Based Software Engineering

## Reference
- Jennings, Nicholas R. (2000). "On agent-based software engineering." *Artificial Intelligence* 117(2): 277–296. (Based on the Computers and Thought Award lecture, IJCAI-99 Stockholm.)
- PDF: [jmvidal.cse.sc.edu/library/abse.pdf](https://jmvidal.cse.sc.edu/library/abse.pdf)
- Also: [faculty.sites.iastate.edu/tesfatsi/archive/tesfatsi/jennings.pdf](https://faculty.sites.iastate.edu/tesfatsi/archive/tesfatsi/jennings.pdf)
- ePrints Soton: [eprints.soton.ac.uk/253741/](https://eprints.soton.ac.uk/253741/)
- Local: `jennings2000_agent_based_se.pdf`

## Summary
Jennings argues that agent-oriented techniques are not a mere rebranding of object-orientation or distributed computing but a genuinely new software engineering paradigm, particularly well-suited to complex, distributed, real-world systems. Contemporary software engineering paradigms (OO, component-ware, design patterns, software architectures) fall short in two ways when building such systems: (i) interactions between computational entities are defined too rigidly at design time, and (ii) there are insufficient mechanisms for representing a system's organisational structure. He advances two theses: the *Adequacy Hypothesis* — agent-oriented approaches significantly improve our ability to model, design, and build complex distributed software — and the *Establishment Hypothesis* — agent orientation will succeed as a mainstream SE paradigm.

The paper offers a careful definition: an agent is an encapsulated computer system situated in some environment and capable of flexible autonomous action to meet its design objectives. Agents are (i) identifiable problem-solvers with well-defined boundaries, (ii) situated, (iii) purposive, (iv) autonomous (controlling both state and behaviour — this is what distinguishes them from objects, which must obey any public method call), and (v) flexible (reactive and proactive). Crucially, real problems require *multi-agent* solutions; the essential concepts of agent-based computing are agents, high-level (knowledge-level) interactions, and explicit organisational relationships. The canonical diagram shows agents, interaction links, organisational groupings, and spheres of visibility and influence over a shared environment.

Interactions are conceptualised at the knowledge level (Newell): who should do what, when, on whose behalf — not at the syntactic level of method invocation. Agents decide at run time how to interact, including engaging in interactions unforeseen at design time. Organisational relationships (peer, team, manager/subordinate) shape behaviour and must be represented explicitly because they evolve during execution. Jennings then argues the case for agent-based software engineering, examines its drawbacks (hard to predict, hard to verify, concurrency pitfalls, immature methodologies), and advocates modelling at the *social level* as the promising remedy.

## Key Ideas
- **Agents as the right abstraction for complex distributed systems**: encapsulated, situated, autonomous, flexible.
- **Autonomy distinguishes agents from objects**: objects must execute any invoked public method; agents choose whether to respond.
- **Interactions at the knowledge level**: goal-level, run-time, negotiated — not hard-wired at design time.
- **Explicit organisational structure**: teams, roles, authority relations must be first-class, and must be dynamic.
- **The canonical view**: agents + high-level interactions + organisational relationships + shared environment.
- **Adequacy and Establishment Hypotheses**: agent-orientation is both *appropriate* and likely to become *mainstream*.
- **Social level modelling**: beyond the knowledge level, systems should be analysed in terms of roles, dependencies, and collective behaviour.
- **Drawbacks acknowledged**: emergent behaviour, verification difficulty, lack of mature tooling, overhead for simple problems.

## Connections
- [[Multi-Agent Systems]] — this paper is one of the foundational manifestos for viewing SE through the MAS lens.
- [[Intelligent Agents Theory and Practice]] — Wooldridge & Jennings's companion treatment of the agent abstraction.
- [[Agent-Oriented Programming]] — Shoham's earlier proposal to shift from objects to agents; Jennings provides the SE-level case.
- [[Multiagent Systems Sycara]] — complementary survey of MAS as a field.
- [[Agent Architecture]], [[Abstract Agent Interfaces]] — concrete architectural instantiations of Jennings's abstraction.
- [[A Scalable Communication Protocol for Networks of LLMs]] — modern echo of the "knowledge-level interaction, organisational structure" agenda.
- [[ACL Design Principles]], [[ACL Layering]], [[A Common Ontology Of ACLs]] — the communication machinery that knowledge-level interaction presupposes.
- [[Agent Communication And Institutional Reality]] — institutional/organisational framing extends Jennings's call for explicit organisational relationships.
- Contrast with [[Actor Model]] — actors encapsulate state but not autonomy of response.
- Contrast with [[Intelligence Without Representation]] — Jennings is comfortable with knowledge-level abstractions Brooks is sceptical of.

## Conceptual Contribution
> Jennings articulates agent-orientation as a *software engineering* stance, not just an AI technique. By insisting that (a) autonomy is the diagnostic difference from objects, (b) interaction must be deferred from design time to run time, and (c) organisational relationships are first-class and evolvable, he gives MAS the conceptual backbone it needs to be taken seriously outside AI. For agent communication research, the paper's legacy is the "social level": ACLs, protocols, commitments, and institutions exist precisely because knowledge-level interaction among autonomous, organisationally-situated agents is what the paradigm is for. Every subsequent ACL design argument can be read as an attempt to fill in the interaction-and-organisation half of Jennings's canonical diagram.

## Tags
#agent-theory #software-engineering #multi-agent-systems #autonomy #knowledge-level #organisational-structure #Jennings #foundational
