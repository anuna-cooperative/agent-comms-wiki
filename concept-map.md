# Conceptual Map

A guided conceptual tour through this vault. Where [[index]] lists the papers, this page lists the **ideas** and shows how they interlock. Every paper note now also carries a `## Conceptual Contribution` section (claim / mechanism / concepts / stance / relates-to).

---

## 1. The Central Tension: What Does a Message *Mean*?

Agent communication's perennial question — whose mental states does a message commit? — runs the length of this vault.

- **[[Speech Act Theory]]** (Austin → Searle → [[Foundations Of Illocutionary Logic]]) fixes a vocabulary: *illocutionary force*, *direction of fit*, *sincerity* and *preparatory* conditions. Every ACL after this inherits it.
- **[[Mentalistic Semantics]]** — grounding message meaning in the beliefs/intentions of sender and receiver. [[KQML]] ([[KQML Overview]], [[KQML Language And Protocol]], [[KQML as an Agent Communication Language]]) and [[FIPA-ACL]] adopt it.
- **[[Commitment-based Semantics]]** / **[[Public Semantics]]** — the counter-move. Singh's critique ([[ACL Rethinking Principles]], [[Agent Communication Languages - Rethinking the Principles]]) argues mentalistic semantics is **unverifiable**: we cannot inspect another agent's mind, only its public commitments. [[Agent Communication And Institutional Reality]] pushes further: every message is a *declaration* that alters social commitments; Searle's "counts-as" is the operative logic.
- **[[Verifiable Semantics]]** — [[Verifiable Semantics for ACLs]] formalises the critique by requiring grounding in program state so conformance is model-checkable. [[A Common Ontology Of ACLs]] offers a reconciliation: role-instanced public attitudes unify the two families.
- **[[Conversation Policy]]** / **[[Interaction Protocols]]** — even with messages nailed down, coordination needs conversations. [[Coordinating Agents Using ACL Conversations]] (Colored Petri Nets), [[ACRE Agent Conversation Reasoning Engine]] (Dooley graphs), and [[An Interaction-oriented Agent Framework for Open Environments]] (commitment-based protocols) make the *conversation* first-class.

Surveys mapping this debate: [[The State of the Art in Agent Communication Languages]], [[Trends in Agent Communication Language]].

## 2. The Language Stack

Messages compose into languages compose into protocols.

| Layer | Concept | Representative papers |
|---|---|---|
| Content | **[[KIF]]**, ontology term sets | [[KQML Overview]], [[Ontolingua Portable Ontology Specifications]], [[Handbook On Ontologies]] |
| Message | **[[Performatives]]** / illocutions | [[KQML]], [[FIPA-ACL]], [[Foundations Of Illocutionary Logic]] |
| Conversation | **[[Interaction Protocols]]** | [[Coordinating Agents Using ACL Conversations]], [[ACRE Agent Conversation Reasoning Engine]] |
| Transport | **[[Facilitators]]**, routing | [[KQML Language And Protocol]], [[Model Context Protocol]], [[Agent-to-Agent Protocol]] |

This same stack — content / message / conversation / transport — reappears in the modern LLM-agent protocol wave: see [[Survey Of AI Agent Protocols]] and [[Survey Of Agent Interoperability Protocols]], which place [[Model Context Protocol]] (tools), ACP, [[Agent-to-Agent Protocol]], and [[Agent Network Protocol]] at progressively higher layers.

## 3. How Does Shared Language *Arise*?

A separate tradition asks where meaning comes from rather than what it contains.

- **Linguistic foundations.** [[Three Models for the Description of Language]] establishes what structure a shared code must have (Chomsky hierarchy, transformational grammar). [[Algorithmic Information Theory - Grunwald Vitanyi]] provides the information-theoretic counterpart: meaning is compressed description.
- **[[Language Games]].** [[Language Games for Autonomous Robots]] (Steels) shows grounded lexicons *self-assemble* through situated interaction — no designer required. The same bootstrap appears decision-theoretically in [[Towards Automating the Evolution of Linguistic Competence]] and [[Toward Automated Evolution of ACLs]]: rational agents negotiate vocabulary when current language fails.
- **[[Emergent Communication]].** The deep-learning revival: [[Multi-Agent Cooperation and the Emergence of Natural Language]], [[Emergence of Grounded Compositional Language in Multi-Agent Populations]] — neural agents in referential/signalling games evolve compositional codes. [[On the Pitfalls of Measuring Emergent Communication]] is the sharpest critique: most metrics fail to distinguish real communication from confounds; measure **positive signalling** and **positive listening** with causal interventions.
- **[[Common Business Communication Language]]** is an analogue in the pre-ML era — an open-ended language negotiable between organisations with graceful partial-understanding fallback.
- **The LLM inflection point.** [[Why AI Agents Communicate In Human Language]] argues natural language is *exactly the wrong* inter-agent medium: lossy, non-differentiable, ambiguous. The thread rejoins the ACL debate a quarter-century later.

## 4. Extensibility: Grow the Language Toward the Problem

A recurring architectural instinct runs from 1960s language design through to modern agent protocols.

- **Programming-language origin.** [[Extensibility in Programming Language Design - Standish]] supplies the taxonomy (**[[Paraphrase]]** / **[[Orthophrase]]** / **[[Metaphrase]]**). [[The Extensible Language - Graham]] is the Lisp-flavoured manifesto: [[Bottom-up Programming]], [[Macros as Language Extension]], [[Code as Data]]. [[Creating Languages in Racket]] is its modern realisation; [[The Spoofax Language Workbench]] makes IDEs-from-grammars a production idea; [[A Modular Approach to Metatheoretic Reasoning for Extensible Languages]] supplies the formal backing (modular proofs across user-added fragments).
- **Distributed-system extensibility.** [[Extensible Distributed Coordination]] applies the same move to ZooKeeper-style coordination: sandboxed server-side extensions trump a fixed API.
- **Agent-communication extensibility.** Agora ([[A Scalable Communication Protocol for Networks of LLMs]]) is the *linguistic* realisation of this instinct for LLM agents: no fixed format can satisfy versatility × efficiency × portability (the "agent communication trilemma"); agents instead **negotiate [[Protocol Documents]]** identified by content hash and have LLMs write the routines. That is "grow the language toward the problem" at the network layer.

## 5. Agent Theory: What Kind of Thing Is an Agent?

- **[[Weak Agency]] vs [[Strong Agency]].** [[Intelligent Agents Theory and Practice]] (Wooldridge & Jennings) supplies the canonical split and the **theory / architecture / language** triad.
- **Theory.** [[Agent-Oriented Programming]] (Shoham) proposes agents as modules with formally-specified [[Mental State]] (beliefs, commitments, capabilities, choices); the AGENT-0 language encodes **honesty** and commitment constraints. [[BDI]] (Belief-Desire-Intention) is the dominant architecture across [[Multiagent Systems Sycara]], [[Ensuring Trustworthy and Ethical Behaviour in Intelligent Logical Agents]], [[A Common Ontology Of ACLs]].
- **Ethics and runtime self-oversight.** [[Ensuring Trustworthy and Ethical Behaviour in Intelligent Logical Agents]] requires an **[[Ethical Governor]]** with [[A-ILTL]] meta-rules as a [[Metacognitive Loop]].
- **Environment as first-class.** [[An Interaction-oriented Agent Framework for Open Environments]] elevates **[[Agents and Artifacts]]** (JaCaMo / Jason / CArtAgO / MOISE) — communication isn't only agent-to-agent but agent-to-artefact-to-agent.

## 6. Multi-Agent Coordination

- **The coherence problem.** [[Multiagent Systems Sycara]] names it: how do autonomous agents produce coherent global behaviour? Classic answers: [[Contract Net Protocol]], [[Joint Intentions]], [[Negotiation]].
- **Fragility of coordination.** [[Are Multiagent Systems Resilient to Communication Failures]] is a striking negative result: even a single missed message about a weakly-coupled agent can send game-theoretic MAS to arbitrarily bad equilibria. [[Why Do Multi-Agent LLM Systems Fail]] is its LLM-era empirical counterpart: the **[[MAST Taxonomy]]** shows failures are overwhelmingly *system-design* (specification / coordination / verification), not model-capability.
- **Population-scale design.** [[Levels Of Social Orchestration]] reframes the scaling question: leverage comes from protocol design, not bigger models — shift from **LLM** to **[[Large Population Models]]**. [[Ripple Effect Protocol]] is a concrete instance: share *counterfactual sensitivities* across agents, not just decisions.
- **Organisational substrate.** [[How Do Committees Invent]] (Conway's Law) is the ur-text: any designed system mirrors the communication structure of its designing organisation. This is the sociological shadow over every coordination result in the vault.

## 7. Self-* Systems and Biological Metaphors

A lineage that uses adaptation, awareness, and biology as organising ideas.

- **Self-reproduction.** [[Theory of Self-Reproducing Automata]] (von Neumann) gives the complication-threshold result: beyond a critical complexity automata can self-reproduce and evolve *iff* they tolerate local error.
- **Self-adaptive ensembles.** [[Self-Adaptation Self-Expression Self-Awareness ASCENS]] (the ASCENS project) factors self-* into three complementary capabilities along individual/collective × behaviour/structure axes. [[A Composite Self-organisation Mechanism in an Agent Network]] is an instance (DSmT trust fusion + multi-agent Q-learning on weighted relations).
- **Biological substrate.** [[Myconet Fungi Inspired Superpeer Overlay]] (fungal mycelium / stigmergy) produces resilient superpeer topologies. [[Computational Boundary of a Self]] (Levin) generalises selfhood to a **cognitive light cone** — any system with a goal-directed computational surface is a self at some scale.

## 8. Gossip and Probabilistic Coordination

- **Foundations.** [[Gossiping in Distributed Systems]] factors gossip into a three-parameter design space (peer selection / data exchanged / data processing) that unifies divergent (dissemination) and convergent (aggregation) protocols.
- **Aggregation.** [[Gossip-Based Computation of Aggregate Information]] (Push-Sum) and [[Gossip-based Aggregation in Large Dynamic Networks]] (push-pull on a [[Peer Sampling Service]]) establish **mass conservation** + **exponential convergence** for aggregates over volatile networks.
- **Application.** [[Myconet Fungi Inspired Superpeer Overlay]] uses newscast gossip; [[Edge Intelligence Survey]] uses gossip training across the cloud-edge-device hierarchy.

## 9. Trust, Reputation, and Open-System Robustness

- **Taxonomy.** [[Review on Computational Trust and Reputation Models]] decomposes trust into *direct experience*, *witness reputation*, *sociological reputation*, *prejudice*; and models into *cognitive* vs *game-theoretic*.
- **Context.** Mobile-agent-era concerns in [[DAgents Security Book Chapter]], [[Agent Tcl Flexible Secure Mobile Agents]], [[Agents Secure Interaction in Data Driven Languages]].
- **LLM-era.** [[AI Agents Under Threat]] surveys the four knowledge gaps (perception / brain / action across agent-to-{agent, env, memory}); [[MalTool Malicious Tool Attacks]] shows real harm lives in **tool implementations**, not tool descriptions.

## 10. Language-Theoretic Security

A tight sub-thread arguing that most security failures are really *recognition* failures.

- **[[LangSec]] core.** [[The Halting Problems of Network Stack Insecurity]] is foundational: over-powerful input languages make safety undecidable — the cure is to restrict inputs to what can be recognised by a minimal-power parser. [[Seven Turrets Of Babel]] catalogues the seven canonical anti-patterns (shotgun parsing etc.) and names **grammar-first validating recognisers** as the remedy.
- **Exploits as language ambiguity.** [[PKI Layer Cake - Kaminsky Patterson Sassaman]]: when CA and browser parse the same bytes differently, trust collapses — a **[[Parser Differential]]** attack.
- **Language-based defences.** [[A Language-Based Approach To Prevent DDoS]] (static detection of call-flow cycles in actor systems), [[Secure Communications Processing for Distributed Languages]] (cryptographic wrappers with full-abstraction guarantees), [[Security Kernel Lambda Calculus]] (lexical scope as a capability kernel — [[Capability Security]]), [[Architectural Patterns for Dependable Software Systems - SOL]] (SOL + SINS middleware, compositional formal dependability).

## 11. Ontologies and Shared Meaning

Necessary scaffolding for any ACL — and a field in its own right.

- [[Ontolingua Portable Ontology Specifications]] defines the Gruber formulation (**[[Ontology]]** = explicit specification of a **[[Conceptualization]]**) and portability via KIF translation.
- [[Handbook On Ontologies]] is the comprehensive reference (description logics, OWL, RDF, frame logic, semantic web).
- [[Ontology Change Classification and Survey]] tames the fragmented sub-literature (evolution / mapping / merging / alignment) into a coherent taxonomy — crucial for long-lived agent systems.
- [[A Common Ontology Of ACLs]] uses ontology technology to *reconcile* ACL semantic families.

## 12. Foundations Beneath It All

A few papers anchor the abstract ground everything else stands on.

- **Program semantics.** [[Assigning Meanings to Programs]] (Floyd) — assertions on flowchart edges; birth of axiomatic semantics. [[Foundations of Logic Programming - Lloyd]] — the declarative/procedural unity under SLD-resolution.
- **Information.** [[Algorithmic Information Theory - Grunwald Vitanyi]] — Kolmogorov complexity and MDL: the meaning of an object is the length of its shortest program.
- **Concurrency substrate.** [[Programming Erlang Second Edition]] — the actor-model textbook, **let-it-crash** + supervision trees. This is the operational grain of most distributed agent systems discussed above.
- **Architectural style.** [[Principled Design Of The Modern Web Architecture]] (Fielding / REST) — the explicit constraints (uniform interface, statelessness, hypermedia) that make internet-scale coordination possible. The modern LLM-agent protocols recapitulate these constraints deliberately.
- **Blockchain / smart contracts.** [[Making Smart Contracts Smarter]] (semantic gap between intent and EVM), [[Formalise Blockchain Interoperability Patterns]] (Event-B refinement proofs) — formal-methods vocabulary applied to a new coordination substrate.

## 13. The Modern LLM-Agent Era: How the Threads Converge

The contemporary LLM-agent wave recapitulates the full vault simultaneously.

- **From chatbots to agents.** [[From Eliza to XiaoIce - Social Chatbots]] supplies the direct design ancestry of user-facing conversational AI.
- **Framework.** [[Agents Framework - Zhou et al]] — declarative **[[Standard Operating Procedures (SOPs)]]** as symbolic plans driving LLM agents.
- **Collaboration.** [[Multi-Agent Collaboration in AI - Wasif Tunkel]] — role-specialised teams, human-in-the-loop. [[Why Do Multi-Agent LLM Systems Fail]] (MAST).
- **Protocol stack.** [[Survey Of AI Agent Protocols]], [[Survey Of Agent Interoperability Protocols]], [[Model Context Protocol]], [[Agent-to-Agent Protocol]], [[Agent Network Protocol]].
- **Native protocol design.** [[A Scalable Communication Protocol for Networks of LLMs]] (Agora / trilemma), [[Ripple Effect Protocol]] (sensitivity sharing), [[Levels Of Social Orchestration]] (population-scale).
- **Critique.** [[Why AI Agents Communicate In Human Language]] — the semantic-misalignment / differentiability critique of NL-as-protocol.
- **Security.** [[AI Agents Under Threat]], [[MalTool Malicious Tool Attacks]].

Each modern thread has a pre-LLM ancestor in this vault — which is the real point of the map.

---

## Four Cross-Cutting Debates

1. **Private vs public semantics** — mentalistic ([[KQML]], [[FIPA-ACL]]) vs commitment-based ([[ACL Rethinking Principles]], [[Agent Communication And Institutional Reality]]) vs grounded ([[Verifiable Semantics for ACLs]]). Reopened by [[Why AI Agents Communicate In Human Language]].
2. **Designed vs evolved languages** — standardised ([[FIPA-ACL]]) vs negotiated ([[Toward Automated Evolution of ACLs]], [[A Scalable Communication Protocol for Networks of LLMs]]) vs emergent ([[Language Games for Autonomous Robots]], [[Multi-Agent Cooperation and the Emergence of Natural Language]]).
3. **Centralised vs decentralised coordination** — facilitators ([[KQML Overview]]) vs gossip ([[Gossip-Based Computation of Aggregate Information]]) vs stigmergy ([[Myconet Fungi Inspired Superpeer Overlay]]) vs agent-environment ([[An Interaction-oriented Agent Framework for Open Environments]]).
4. **Trust through mental-state inspection vs through commitments vs through language-theoretic restriction** — [[Verifiable Semantics for ACLs]] vs [[ACL Rethinking Principles]] vs [[The Halting Problems of Network Stack Insecurity]].

See [[index]] for the full paper listing, [[README]] for vault conventions.
