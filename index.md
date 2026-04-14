# Agent Communications Vault

A curated, wikilink-connected reading vault on **agent communication languages, multi-agent systems, capability security, distributed systems, and LLM agents** — from McCarthy and Minsky through KQML/FIPA to modern LLM agent protocols.

Each note summarises a paper in its own words (summary, key ideas, conceptual contribution, connections) and is cross-linked to related concepts and papers, forming a navigable graph of the field.

Start with **[[concept-map]]** for a guided tour, or browse the map of content below.

## How to contribute

The vault is a plain-text [zetl](https://github.com/anuna-research/zetl) wikilink graph — every note is a markdown file with `[[wikilinks]]`. Contributions welcome:

1. Clone: `git clone https://github.com/anuna-cooperative/agent-comms-wiki.git`
2. Add or edit notes as plain markdown. New paper notes should follow the structure of existing ones (Reference, Summary, Key Ideas, Connections, Conceptual Contribution, Tags).
3. Run `zetl check` to validate links, and `zetl build` to preview the site locally.
4. Open a pull request at <https://github.com/anuna-cooperative/agent-comms-wiki>.

See [[README]] for detailed conventions.

---

## Map of Content

## Concept Hubs

- [[Agent Communication Languages]]
- [[KQML]]
- [[FIPA-ACL]]
- [[Speech Act Theory]]
- [[Multi-Agent Systems]]
- [[Agent-Oriented Programming]]
- [[Ontologies]]
- [[Gossip Protocols]]
- [[Trust and Reputation]]
- [[Self-Adaptive Systems]]
- [[Language Workbenches]]
- [[Edge Intelligence]]
- [[LLM Agents]]
- [[Distributed Security]]
- [[Emergent Communication]]

## Foundational

- [[Keeping CALM - When Distributed Consistency is Easy]] — Hellerstein & Alvaro 2019 ([[CALM Theorem]])
- [[Three Models for the Description of Language]] — Chomsky 1956
- [[Ascribing Mental Qualities to Machines]] — McCarthy 1979
- [[Elephant 2000 - A Programming Language Based on Speech Acts]] — McCarthy 1989 (PL ancestor of ACLs)
- [[Towards a Mathematical Science of Computation]] — McCarthy 1963
- [[Correctness of a Compiler for Arithmetic Expressions]] — McCarthy & Painter 1967
- [[First Order Theories of Individual Concepts and Propositions]] — McCarthy 1979b
- [[Programs with Common Sense]] — McCarthy 1959 (Advice Taker)
- [[Recursive Functions of Symbolic Expressions and Their Computation by Machine]] — McCarthy 1960 (Lisp)
- [[Some Philosophical Problems from the Standpoint of Artificial Intelligence]] — McCarthy & Hayes 1969 (situation calculus, frame problem)
- [[Epistemological Problems of Artificial Intelligence]] — McCarthy 1977
- [[Circumscription - A Form of Nonmonotonic Reasoning]] — McCarthy 1980 (AIJ 13)
- [[Circumscription - Applications to Formalizing Common Sense Knowledge]] — McCarthy 1986 (AIJ 28)
- [[Generality in Artificial Intelligence]] — McCarthy 1987 (Turing Award lecture)
- [[Modeling Rational Agents within a BDI-Architecture]] — Rao & Georgeff 1991
- [[Two Faces of Intention]] — Bratman 1984
- [[True Believers - The Intentional Strategy and Why It Works]] — Dennett 1981
- [[A Taxonomy of Illocutionary Acts]] — Searle 1975
- [[Logic and Conversation]] — Grice 1975
- [[Attention Is All You Need]] — Vaswani et al. 2017
- [[The Bitter Lesson]] — Sutton 2019
- [[Toward Principles for the Design of Ontologies Used for Knowledge Sharing]] — Gruber 1995
- [[Time Clocks and the Ordering of Events in a Distributed System]] — Lamport 1978
- [[Impossibility of Distributed Consensus with One Faulty Process]] — Fischer, Lynch & Paterson 1985 (FLP)
- [[Brewers Conjecture and the Feasibility of Consistent Available Partition-Tolerant Web Services]] — Gilbert & Lynch 2002 (CAP proof)
- [[Knowledge and Common Knowledge in a Distributed Environment]] — Halpern & Moses 1990
- [[End-to-End Arguments in System Design]] — Saltzer, Reed & Clark 1984
- [[A Universal Modular Actor Formalism for Artificial Intelligence]] — Hewitt, Bishop & Steiger 1973
- [[Communicating Sequential Processes]] — Hoare 1978
- [[Algorithm = Logic + Control]] — Kowalski 1979
- [[Can Programming Be Liberated from the von Neumann Style]] — Backus 1978 (Turing Award lecture)
- [[The Heart of Spritely - Distributed Objects and Capability Security]] — Lemmer-Webber, Farmer & Sims 2025 (Goblins / OCapN)
- [[Programming Semantics for Multiprogrammed Computations]] — Dennis & Van Horn 1966 (original capabilities)
- [[The Confused Deputy - Hardy]] — Hardy 1988
- [[EROS - A Fast Capability System]] — Shapiro, Smith & Farber 1999
- [[Capability-based Financial Instruments]] — Miller, Morningstar & Frantz 2000
- [[Capability Myths Demolished]] — Miller, Yee & Shapiro 2003
- [[Robust Composition - Towards a Unified Approach to Access Control and Concurrency Control]] — Miller 2006 (PhD thesis, THE E reference)
- [[Distributed Electronic Rights in JavaScript]] — Miller, Van Cutsem & Tulloh 2013
- [[Trustworthy Proxies - Virtualizing Objects with Invariants]] — Van Cutsem & Miller 2013
- [[A Framework for Representing Knowledge]] — Minsky 1974 (Frames)
- [[The Protection of Information in Computer Systems]] — Saltzer & Schroeder 1975
- [[Distributed Snapshots Determining Global States of Distributed Systems]] — Chandy & Lamport 1985
- [[Intelligence Without Representation]] — Brooks 1991
- [[The Extended Mind]] — Clark & Chalmers 1998
- [[The Part-Time Parliament]] — Lamport 1998 (Paxos)
- [[On Agent-Based Software Engineering]] — Jennings 2000
- [[The Semantic Web]] — Berners-Lee, Hendler & Lassila 2001
- [[ReAct Synergizing Reasoning and Acting in Language Models]] — Yao et al. 2023
- [[Reflexion Language Agents with Verbal Reinforcement Learning]] — Shinn et al. 2023
- [[The Knowledge Level]] — Newell 1982
- [[The Society of Mind]] — Minsky 1986 (MAS wellspring)
- [[How to Do Things with Words]] — Austin 1962
- [[Speech Acts - An Essay in the Philosophy of Language]] — Searle 1969
- [[Minds Brains and Science]] — Searle 1984
- [[Studies in the Way of Words]] — Grice 1989
- [[Epistemological Fault Lines Between Human and Artificial Intelligence]] — Quattrociocchi, Capraro & Perc 2025 (seven fault lines; Epistemia)
- [[What is it to Understand a Directive Speech Act]] — Dorschel 1989 (citation-only, paywalled)
- [[A Proof Method for Cyclic Programs]] — Francez & Pnueli 1978 (citation-only, paywalled)
- [[An Application of a Method for Analysis of Cyclic Programs]] — Francez 1978 (citation-only, paywalled)
- [[Intention Is Choice with Commitment]] — Cohen & Levesque 1990 (BDI logic)
- [[Deals Among Rational Agents]] — Rosenschein & Genesereth 1985
- [[The Synthesis of Digital Machines with Provable Epistemic Properties]] — Rosenschein & Kaelbling 1986
- [[IPFS Content-Addressed Versioned P2P File System]] — Benet 2014
- [[Theory of Self-Reproducing Automata]] — von Neumann
- [[Foundations of Logic Programming - Lloyd]]
- [[Foundations Of Illocutionary Logic]] — Searle & Vanderveken
- [[Assigning Meanings to Programs]] — Floyd
- [[Algorithmic Information Theory - Grunwald Vitanyi]]
- [[How Do Committees Invent]] — Conway
- [[Seven Turrets Of Babel]]

## Cited Foundations (mined from top papers)

- [[Semantics and Conversations for an ACL]] — Labrou & Finin 1998
- [[Multi-Agent Collaboration Mechanisms - Survey of LLMs]]
- [[Beyond Self-Talk - Communication-Centric Survey Of LLM Multi-Agent Systems]]
- [[Augmented Language Models - A Survey]] — Mialon et al.
- [[AutoGen - Multi-Agent Conversation Framework]]
- [[CAMEL Communicative Agents for Mind Exploration of LLM Society]]
- [[MetaGPT Meta Programming for Multi-Agent Collaboration]]
- [[MCP Landscape Security Threats And Future Research Directions]]
- [[Toolformer]]
- [[Chain-of-Thought Prompting]]
- [[Language Models are Few-Shot Learners]]
- [[Generative Agents]]
- [[The Rise and Potential of LLM-Based Agents]]
- [[Cicero Human-Level Play in Diplomacy]]

## Agent Communication Languages (ACLs)

- [[KQML Overview]]
- [[KQML as an Agent Communication Language]]
- [[KQML Language And Protocol]]
- [[ACL Rethinking Principles]] — Singh
- [[Agent Communication Languages - Rethinking the Principles]] — Singh (companion)
- [[KQML - A Language And Protocol For Knowledge And Information Exchange]] — Finin et al. AAAI WS-94
- [[The State of the Art in Agent Communication Languages]]
- [[Trends in Agent Communication Language]]
- [[A Common Ontology Of ACLs]]
- [[Toward Automated Evolution of ACLs]]
- [[Towards Automating the Evolution of Linguistic Competence]]
- [[Verifiable Semantics for ACLs]]
- [[Coordinating Agents Using ACL Conversations]]
- [[ACRE Agent Conversation Reasoning Engine]]
- [[Agent Communication And Institutional Reality]]
- [[Common Business Communication Language]]
- [[Semantic Description For Agent Design Patterns]]

## Multi-Agent Systems and Agent Theory

- [[Intelligent Agents Theory and Practice]] — Wooldridge
- [[Multiagent Systems Sycara]]
- [[Agent-Oriented Programming]] — Shoham
- [[The BOID Architecture]] — Broersen et al. (deontic BDI)
- [[Multi-Agent Collaboration in AI - Wasif Tunkel]]
- [[Are Multiagent Systems Resilient to Communication Failures]]
- [[Ensuring Trustworthy and Ethical Behaviour in Intelligent Logical Agents]]
- [[An Interaction-oriented Agent Framework for Open Environments]]
- [[Levels Of Social Orchestration]]

## LLM Agents & Modern AI Agents

- [[Agents Framework - Zhou et al]]
- [[A Scalable Communication Protocol for Networks of LLMs]]
- [[Survey Of AI Agent Protocols]]
- [[Survey Of Agent Interoperability Protocols]]
- [[Why AI Agents Communicate In Human Language]]
- [[Why Do Multi-Agent LLM Systems Fail]]
- [[Ripple Effect Protocol]]
- [[AI Agents Under Threat]]
- [[MalTool Malicious Tool Attacks]]
- [[ClawWorm Self-Propagating Attacks Across LLM Agent Ecosystems]]
- [[SoK The Attack Surface of Agentic AI]]
- [[Agents of Chaos]]
- [[Inter-Agent Trust Models - A Comparative Study]]
- [[Intent Formalization - A Grand Challenge for Reliable Coding]]
- [[From Eliza to XiaoIce - Social Chatbots]]

## Emergent Communication & Language Games

- [[Language Games for Autonomous Robots]] — Steels
- [[Multi-Agent Cooperation and the Emergence of Natural Language]]
- [[Emergence of Grounded Compositional Language in Multi-Agent Populations]]
- [[On the Pitfalls of Measuring Emergent Communication]]

## Ontologies & Knowledge Representation

- [[Ontolingua Portable Ontology Specifications]]
- [[Handbook On Ontologies]]
- [[Ontology Change Classification and Survey]]

## Programming Languages & Extensibility

- [[The Extensible Language - Graham]]
- [[Extensibility in Programming Language Design - Standish]]
- [[A Modular Approach to Metatheoretic Reasoning for Extensible Languages]]
- [[Creating Languages in Racket]]
- [[The Spoofax Language Workbench]]
- [[Programming Erlang Second Edition]]

## Security & Robust Distributed Systems

- [[Agent Tcl Flexible Secure Mobile Agents]]
- [[DAgents Security Book Chapter]]
- [[Secure Communications Processing for Distributed Languages]]
- [[A Language-Based Approach To Prevent DDoS]]
- [[The Halting Problems of Network Stack Insecurity]]
- [[PKI Layer Cake - Kaminsky Patterson Sassaman]]
- [[Security Kernel Lambda Calculus]]
- [[Agents Secure Interaction in Data Driven Languages]]
- [[Architectural Patterns for Dependable Software Systems - SOL]]
- [[Principled Design Of The Modern Web Architecture]]
- [[Extensible Distributed Coordination]]
- [[Security Applications Of Formal Language Theory]] — Sassaman et al. LangSec foundational
- [[Exploit Programming - From Buffer Overflows To Weird Machines]] — Bratus et al.

## Gossip & Peer-to-Peer

- [[Gossiping in Distributed Systems]]
- [[Gossip-based Aggregation in Large Dynamic Networks]]
- [[Gossip-Based Computation of Aggregate Information]]
- [[Myconet Fungi Inspired Superpeer Overlay]]

## Self-* Systems, Adaptation, Trust

- [[Self-Adaptation Self-Expression Self-Awareness ASCENS]]
- [[A Composite Self-organisation Mechanism in an Agent Network]]
- [[Computational Boundary of a Self]]
- [[Review on Computational Trust and Reputation Models]]

## Edge, Web, Blockchain

- [[Edge Intelligence Survey]]
- [[Making Smart Contracts Smarter]]
- [[Formalise Blockchain Interoperability Patterns]]
