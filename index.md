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
- [[Agent Security]]
- [[Prompt Injection]]
- [[Multi-Agent Security]]
- [[Agent Infrastructure]]
- [[Mechanism Design]]
- [[Algorithmic Collusion]]
- [[Information Markets]]
- [[Inferentialism]]
- [[Public Semantics]]
- [[Commitment-based Semantics]]
- [[Mentalistic Semantics]]
- [[Causal Inference]]
- [[Identifiability]]
- [[Set Theory]]
- [[Diagonalization]]

## Foundational

- [[Keeping CALM - When Distributed Consistency is Easy]] — Hellerstein & Alvaro 2019 ([[CALM Theorem]])
- [[Logic and Lattices for Distributed Programming]] — Conway, Marczak, Alvaro, Hellerstein & Maier 2012 (BloomL; lattice-typed monotonicity)
- [[Relational Transducers for Declarative Networking]] — Ameloot, Neven & Van den Bussche 2011 (the formal CALM-theorem proof)
- [[A Comprehensive Study of Convergent and Commutative Replicated Data Types]] — Shapiro, Preguiça, Baquero & Zawirski 2011 (CRDTs canonical reference)
- [[Concurrency Control in Groupware Systems]] — Ellis & Gibbs 1989 ([[Operational Transformation]]; foundational technique behind Google Docs)
- [[Three Models for the Description of Language]] — Chomsky 1956
- [[Distributional Structure]] — Harris 1954 (the [[Distributional Hypothesis]]: *difference of meaning correlates with difference of distribution*; headwater of [[Distributional Semantics]] and [[Word Embeddings]])
- [[A Mathematical Theory of Communication]] — Shannon 1948 (founding paper of information theory; [[Channel Capacity]], [[Shannon Entropy]])
- [[Classes of Recursively Enumerable Sets and Their Decision Problems]] — Rice 1953 ([[Rice's Theorem]]; semantic properties of programs are undecidable)
- [[A Robust Layered Control System]] — Brooks 1986 ([[Subsumption Architecture]]; founding [[Behaviour-Based Robotics|behaviour-based]] paper)
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
- [[AgentSpeak]] — Rao 1996 (operational BDI language; [[Jason (BDI runtime)|Jason]] is the dominant implementation)
- [[Concurrent Constraint Programming]] — Saraswat 1989/1993 ([[Ask-Tell]] over a [[Constraint Store|monotonic constraint store]]; unifies CLP, concurrent LP, process synchronisation)
- [[Two Faces of Intention]] — Bratman 1984
- [[Shared Cooperative Activity]] — Bratman 1992 ([[Meshing Subplans]]; three conditions for cooperation)
- [[SharedPlans]] — Grosz & Kraus 1996 (canonical computational framework for collaborative joint action; [[Mutual Belief]])
- [[We-intentions]] — Tuomela & Miller 1988 (irreducibility thesis: [[We-Intention|we-intentions]] are not reducible to individual I-intentions)
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
- [[Reasoning About Knowledge]] — Fagin, Halpern, Moses & Vardi 1995 (canonical textbook of [[Epistemic Logic|epistemic logic]]; [[Interpreted Systems|runs-and-systems]] semantics; [[Common Knowledge (Convention)|common knowledge]], [[Knowledge-Based Programs]])
- [[End-to-End Arguments in System Design]] — Saltzer, Reed & Clark 1984
- [[A Universal Modular Actor Formalism for Artificial Intelligence]] — Hewitt, Bishop & Steiger 1973
- [[Communicating Sequential Processes]] — Hoare 1978
- [[A Calculus of Communicating Systems]] — Milner 1980 ([[CCS]]; algebraic concurrency, [[Bisimulation]])
- [[A Calculus of Mobile Processes]] — Milner, Parrow & Walker 1992 (the [[Pi-Calculus]]; name-passing concurrency)
- [[Mobile Ambients]] — Cardelli & Gordon 1998 (locations as primary mobile entity; [[Ambient Calculus]])
- [[Linear Logic]] — Girard 1987 (resource-aware logic; [[Curry-Howard Correspondence]] for [[Session Types]])
- [[On the Acceptability of Arguments]] — Dung 1995 (abstract [[Argumentation Framework]]; nonmonotonic-reasoning unifier)
- [[Commitment in Dialogue]] — Walton & Krabbe 1995 ([[Dialogue Typology]]: persuasion / negotiation / deliberation / inquiry / information-seeking / eristic)
- [[Fallacies - Hamblin]] — Hamblin 1970 (founding text of formal dialectic; [[Commitment Store]])
- [[Convention - Lewis]] — Lewis 1969 (game-theoretic foundation of [[Convention (Lewis)|convention]]; [[Common Knowledge (Convention)]])
- [[The Strategy of Conflict]] — Schelling 1960 ([[Focal Point]] / [[Schelling Point]] coordination; credible commitment)
- [[The Evolution of Cooperation]] — Axelrod 1984 ([[Iterated Prisoners Dilemma]]; [[Tit-for-Tat]]; [[Reciprocity]])
- [[Counterspeculation Auctions and Competitive Sealed Tenders]] — Vickrey 1961 ([[Vickrey Auction]] / [[Second-Price Auction]]; [[Mechanism Design]] foundation)
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
- [[SPKI-SDSI]] — Rivest, Lampson, Ellison et al. 1996/1999 (RFC 2693; capability-style PKI; [[Linked Local Names]])
- [[Decentralized Identifiers]] — W3C 2022 ([[Decentralized Identifier|DIDs]] + [[Verifiable Credential|VCs]]; modern decentralised identity)
- [[x401 - HTTP Proof Requirement Protocol]] — Buchner & Agarwal (Proof / Circle) 2025 (HTTP-native route-scoped credential proof; [[Verifiable Presentation|VPs]] over [[OpenID4VP]]/[[OAuth 2.0]])
- [[Capn Proto]] — Varda 2013–present (modern [[CapTP]]; [[Three-Party Handoff]]; capability-secure RPC)
- [[A Framework for Representing Knowledge]] — Minsky 1974 (Frames)
- [[The Protection of Information in Computer Systems]] — Saltzer & Schroeder 1975
- [[Distributed Snapshots Determining Global States of Distributed Systems]] — Chandy & Lamport 1985
- [[Intelligence Without Representation]] — Brooks 1991
- [[The Extended Mind]] — Clark & Chalmers 1998
- [[The Part-Time Parliament]] — Lamport 1998 (Paxos)
- [[In Search of an Understandable Consensus Algorithm]] — Ongaro & Ousterhout 2014 ([[Raft]]; understandability-driven consensus)
- [[Practical Byzantine Fault Tolerance]] — Castro & Liskov 1999 ([[PBFT]]; the practical [[Byzantine Agreement]] protocol)
- [[HotStuff]] — Yin et al. 2019 (linear-and-responsive BFT; [[Chained Consensus]] underlying Diem/Aptos)
- [[Generative Communication in Linda]] — Gelernter 1985 ([[Linda (coordination)|Linda]] / [[Tuple Spaces|tuple spaces]]; canonical [[Coordination Language]])
- [[KLAIM]] — De Nicola, Ferrari & Pugliese 1998 (Linda + [[Locality (KLAIM)|localities]] + mobile `eval`; formal model for mobile agents)
- [[Reo]] — Arbab 2004 ([[Channel-based Coordination|channel-based]] coordination; programmable [[Connector (Reo)|connectors]]; algebraic counterpoint to Linda)
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
- [[Philosophical Investigations - Wittgenstein]] — Wittgenstein 1953 (meaning as use; language-games; rule-following; private-language argument — grandparent of [[Inferentialism]] and [[Public Semantics]])
- [[Two Dogmas of Empiricism - Quine]] — Quine 1951 (analytic-synthetic collapse; [[Semantic Holism]]; web of belief)
- [[Empiricism and the Philosophy of Mind - Sellars]] — Sellars 1956 ([[Myth of the Given]]; [[Space of Reasons]]; mentalistic talk as theoretical posit)
- [[Articulating Reasons - Brandom]] — Brandom 2000 (entry point to [[Inferentialism]]; [[Deontic Scorekeeping]]; [[Semantics-Without-Minds]])
- [[Making It Explicit - Brandom]] — Brandom 1994 (the full inferentialist treatise; reference manual)
- [[Assertion - Stalnaker]] — Stalnaker 1978 ([[Common Ground]] / [[Context Set]] update semantics; operational counterpart to Grice)
- [[Convention - Lewis]] — Lewis 1969 (game-theoretic [[Convention (Lewis)|convention]]; [[Common Knowledge (Convention)]])
- [[Languages and Language - Lewis]] — Lewis 1975 ([[Convention of Truthfulness]] and trust; abstract `L` vs social language)
- [[Jones-Sergot Normative Systems]] — Jones & Sergot 1993 ([[Counts-As Relation]]; constitutive/regulative rules; foundation of normative MAS)
- [[Epistemological Fault Lines Between Human and Artificial Intelligence]] — Quattrociocchi, Capraro & Perc 2025 (seven fault lines; Epistemia)
- [[What is it to Understand a Directive Speech Act]] — Dorschel 1989 (citation-only, paywalled)
- [[A Proof Method for Cyclic Programs]] — Francez & Pnueli 1978 (citation-only, paywalled)
- [[An Application of a Method for Analysis of Cyclic Programs]] — Francez 1978 (citation-only, paywalled)
- [[Intention Is Choice with Commitment]] — Cohen & Levesque 1990 (BDI logic)
- [[Communicative Actions for Artificial Agents - Cohen Levesque]] — Cohen & Levesque 1995 (ICMAS-95; high-water mark of [[Mentalistic Semantics]]; direct ancestor of FIPA-ACL)
- [[FIPA-ACL Specifications]] — FIPA 2002 (FIPA00037 Communicative Act Library; FIPA00061 Message Structure; canonical industry-grade ACL)
- [[An Ontology for Commitments in Multiagent Systems - Singh]] — Singh 1999 (formal four-place commitment ontology; unifies normative concepts across MAS, law, deontic logic)
- [[Deals Among Rational Agents]] — Rosenschein & Genesereth 1985
- [[The Synthesis of Digital Machines with Provable Epistemic Properties]] — Rosenschein & Kaelbling 1986
- [[IPFS Content-Addressed Versioned P2P File System]] — Benet 2014
- [[Theory of Self-Reproducing Automata]] — von Neumann
- [[Probabilistic Logics and the Synthesis of Reliable Organisms from Unreliable Components]] — von Neumann 1952 / 1956 (Caltech lectures, *Automata Studies*; founds [[Fault Tolerance|fault-tolerant computing]] via [[Triple Modular Redundancy|TMR]] and [[Multiplexing (von Neumann)|multiplexing]]; ε < 1/6 threshold; direct ancestor of [[PBFT|BFT]])
- [[Über eine elementare Frage der Mannigfaltigkeitslehre]] — Cantor 1891 (the [[Diagonalization|diagonal argument]]; [[Cantor's Theorem]]; uncountability and the transfinite hierarchy — headwater of Gödel/Turing/Church self-reference)
- [[Untersuchungen über die Grundlagen der Mengenlehre I]] — Zermelo 1908 (first axiomatization of [[Set Theory]]; Separation blocks [[Russell's Paradox]]; the foundation that becomes [[ZFC]])
- [[Zur Einführung der transfiniten Zahlen]] — von Neumann 1923 ([[Ordinals|von Neumann ordinals]]; each ordinal IS the set of its predecessors; classical counterpart to [[On Notation for Ordinal Numbers|Church–Kleene]])
- [[The Independence of the Continuum Hypothesis]] — Cohen 1963/64 ([[Forcing]]; [[Continuum Hypothesis|CH]] is independent of [[ZFC]] — the set-theoretic sibling of Gödel incompleteness)
- [[Foundations of Logic Programming - Lloyd]]
- [[Foundations Of Illocutionary Logic]] — Searle & Vanderveken
- [[Assigning Meanings to Programs]] — Floyd
- [[An Axiomatic Basis for Computer Programming - Hoare]] — Hoare 1969 ([[Hoare Logic]]; pre/post-conditions; loop invariant; root of contract-based verification)
- [[Algorithmic Information Theory - Grunwald Vitanyi]]
- [[How Do Committees Invent]] — Conway
- [[Seven Turrets Of Babel]]

## Causal Inference (CIVeX-adjacent)

- [[Causal Diagrams for Empirical Research - Pearl]] — Pearl 1995 (DAGs + [[do-Calculus]] + [[Backdoor Criterion]]; modern graphical causal inference)
- [[Causality - Pearl]] — Pearl 2000/2009 (Cambridge UP textbook; [[Structural Causal Model]]; [[Ladder of Causation]]; counterfactuals)
- [[Identification of Joint Interventional Distributions - Shpitser Pearl]] — Shpitser & Pearl 2006 (AAAI; complete [[ID Algorithm]]; do-calculus completeness)
- [[Potential Outcomes Framework - Rubin]] — Rubin 1974 ([[Rubin Causal Model]]; the other half of the causal toolkit; ignorability, ATE)

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
- [[Commitment Machines - Yolum and Singh]] — Yolum & Singh 2002 (ATAL-01; CM→FSM compilation, declarative meaning for protocol states)
- [[Flexible Protocol Specification and Execution]] — Yolum & Singh 2002 (commitment-based protocols, [[Event Calculus]])
- [[A Commitment-Based Approach to Agent Communication]] — Fornara & Colombetti 2004 (operational commitment semantics, [[Precommitment]])
- [[CBCL - Safe Self-Extending Agent Communication]] — O'Connor 2026 (LangSec '26; Lean 4-verified self-extending ACL constrained to [[Deterministic Context-Free Language|DCFL]]; realises McCarthy's [[Common Business Communication Language]])

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
- [[Structured Communication-Centred Programming for Web Services]] — Carbone, Honda & Yoshida ESOP 2007 / TOPLAS 2012 (the foundational [[Choreographic Programming]] paper)
- [[Multiparty Asynchronous Session Types]] — Honda, Yoshida & Carbone POPL 2008 (multiparty generalisation; global types → local types projection)
- [[Deadlock-freedom-by-design - Multiparty Asynchronous Global Programming]] — Carbone & Montesi POPL 2013 (global programming over interleaved multiparty sessions; [[Deadlock Freedom|deadlock-freedom]] by construction via [[Endpoint Projection]])
- [[Choral - Object-Oriented Choreographic Programming]] — Giallorenzo, Montesi & Peressotti TOPLAS 2024 (first mainstream [[Choreographic Programming]] language; roles as type parameters; [[Endpoint Projection]] compiles to per-role Java)
- [[HasChor - Functional Choreographic Programming]] — Shen, Kashiwa & Kuper ICFP 2023 (functional pearl; [[Choreographic Programming]] as a Haskell library; [[Endpoint Projection]] as monadic interpretation; higher-order, location-polymorphic choreographies)
- [[ChoRus - Library-Level Choreographic Programming in Rust]] — Kashiwa, Shen, Zare & Kuper 2023 / CP 2024 (first CP library for Rust; endpoint-projection-as-dependency-injection; choreographic enclaves scope [[Knowledge of Choice]])
- [[Introduction to Choreographies]] — Montesi 2023 (Cambridge UP; canonical textbook, citation-only)
- [[Knowledge of Choice]] — Montesi (bliki; realisability property requiring all affected participants be informed of a choice; [[Choreography Amendment|amendment]] via [[Selection (Choreography)|selections]])
- [[Pact - A Choreographic Language for Agentic Ecosystems]] — Gopinathan et al. 2026 (CP 2026; [[Choreographic Programming]] + game theory; LLM-era revival of mentalistic semantics)
- [[On the Monitorability of Session Types]] — Bartolo Burlò, Francalanza & Scalas 2021 (ECOOP; runtime monitor synthesis for [[Session Types]])
- [[Denotational Reasoning for Asynchronous Multiparty Session Types]] — McDermott & Yoshida ESOP 2026 (first [[Denotational Semantics|denotational semantics]] for asynchronous MPST; message-passing as a computational effect; [[Graded Monad|graded]] computation trees; proves communication optimisations)

## LLM Agents & Modern AI Agents

- [[Agents Framework - Zhou et al]]
- [[A Scalable Communication Protocol for Networks of LLMs]]
- [[Survey Of AI Agent Protocols]]
- [[Survey Of Agent Interoperability Protocols]]
- [[LLM Agent Communication Protocol Requires Urgent Standardization]] — Li, Liu & Yuen 2025 ([[LACP]], [[Narrow Waist Principle]])
- [[Why AI Agents Communicate In Human Language]]
- [[Why Do Multi-Agent LLM Systems Fail]]
- [[Ripple Effect Protocol]]
- [[AI Agents Under Threat]]
- [[MalTool Malicious Tool Attacks]]
- [[ClawWorm Self-Propagating Attacks Across LLM Agent Ecosystems]]
- [[SoK The Attack Surface of Agentic AI]]
- [[Open Challenges in Multi-Agent Security]] — Schroeder de Witt et al. 2025 (definition of [[Multi-Agent Security]] as a field; secret collusion, swarm attacks, network-effect threats)
- [[AgentDojo]] — Debenedetti et al. 2024 (NeurIPS; benchmark for prompt-injection attacks/defences on tool-using agents)
- [[Defeating Prompt Injections by Design]] — Debenedetti et al. 2025 ([[CaMeL]]; control-flow/data-flow separation + capability-gated tools)
- [[Privacy Reasoning in Ambiguous Contexts]] — Yi et al. 2025 (NeurIPS; [[Camber]] disambiguation framework; [[Contextual Integrity]])
- [[Trusted Machine Learning Models Unlock Private Inference]] — Shumailov et al. 2025 ([[Trusted Capable Model Environment|TCME]]; capable models as trusted third parties)
- [[Infrastructure for AI Agents]] — Chan et al. 2025 (TMLR; [[Agent Infrastructure]]: attribution, interaction shaping, detection & remediation)
- [[Agents of Chaos]]
- [[Inter-Agent Trust Models - A Comparative Study]]
- [[Intent Formalization - A Grand Challenge for Reliable Coding]]
- [[From Eliza to XiaoIce - Social Chatbots]]

## Agent Economy & Mechanism Design

- [[Virtual Agent Economies]] — Tomasev et al. 2025 ([[Sandbox Economy]]; [[Mission Economy]]; auction-based steerable agent markets)
- [[Mechanism Design for Large Language Models]] — Dütting et al. 2023 (WWW Best Paper; token-level auction over LLM-generated content; monotone aggregation ↔ second-price)
- [[Language Models Can Reduce Asymmetry in Information Markets]] — Rahaman et al. 2024 (evaluate + forget; resolving the [[Arrow Information Paradox|Arrow paradox]])
- [[NDAI Agreements]] — Stephenson et al. 2025 (TEEs + AI as an "ironclad NDA"; solving the [[Hold-Up Problem]])
- [[Do LLM Agents Have Regret]] — Park et al. 2024 ([[No-Regret Learning]]; [[Regret-Loss]] training; LLM equilibria in repeated games)
- [[Learning Collusion in Episodic Inventory-Constrained Markets]] — Friedrich et al. 2024 (AAMAS; deep-RL agents collude in airline-style perishable-good markets)
- [[Talk Judge Cooperate - Gossip-Driven Indirect Reciprocity in Self-Interested LLM Agents]] — Zhu et al. 2026 (ICML; [[ALIGN]]; [[Indirect Reciprocity]] via open-ended [[Gossip Protocols|gossip]]; reasoning beats chattiness for incentive-aligned cooperation)
- [[CoopEval - Benchmarking Cooperation-Sustaining Mechanisms and LLM Agents in Social Dilemmas]] — Tewolde et al. 2026 (cs.GT; benchmarks repetition / reputation / mediation / contracting on LLM [[Social Dilemma|social dilemmas]]; contracting and mediation win, repetition is brittle)

## Emergent Communication & Language Games

- [[Language Games for Autonomous Robots]] — Steels
- [[Multi-Agent Cooperation and the Emergence of Natural Language]]
- [[Emergence of Grounded Compositional Language in Multi-Agent Populations]]
- [[On the Pitfalls of Measuring Emergent Communication]]

## Ontologies & Knowledge Representation

- [[Ontolingua Portable Ontology Specifications]]
- [[Handbook On Ontologies]]
- [[Ontology Change Classification and Survey]]
- [[Emergent Semantics Principles and Issues]] — Aberer, Cudré-Mauroux, Ouksel et al. 2004 (DASFAA; semantic interoperability as a bottom-up, self-organising process)

## Programming Languages & Extensibility

- [[The Extensible Language - Graham]]
- [[Extensibility in Programming Language Design - Standish]]
- [[A Modular Approach to Metatheoretic Reasoning for Extensible Languages]]
- [[Creating Languages in Racket]]
- [[The Spoofax Language Workbench]]
- [[Programming Erlang Second Edition]]

## Security & Robust Distributed Systems

- [[A Logic of Authentication]] — Burrows, Abadi & Needham 1990 ([[BAN Logic]]; first widely-adopted protocol-verification method)
- [[Spi Calculus]] — Abadi & Gordon 1997 ([[Pi-Calculus]] + cryptographic primitives; security as process equivalence)
- [[Using Encryption for Authentication]] — Needham & Schroeder 1978 ([[Needham-Schroeder Protocol]]; canonical case-study under the [[Lowe Attack]])
- [[Agent Tcl Flexible Secure Mobile Agents]]
- [[DAgents Security Book Chapter]]
- [[Secure Communications Processing for Distributed Languages]]
- [[A Language-Based Approach To Prevent DDoS]]
- [[The Halting Problems of Network Stack Insecurity]]
- [[Proof-Carrying Code - Necula]] — Necula 1997 (POPL; ship the proof with the code; architectural ancestor of [[CBCL - Safe Self-Extending Agent Communication|CBCL]]'s R4 split and CIVeX certificates)
- [[Enforceable Security Policies - Schneider]] — Schneider 2000 (TISSEC; [[Execution Monitor]] enforcement; safety-property characterisation; backdrop for R5 monotone-verdict trace monitor)
- [[Authentication in Distributed Systems - Lampson Abadi Burrows Wobber]] — Lampson, Abadi, Burrows & Wobber 1992 (TOCS; [[Speaks-For Calculus]]; compound principals; foundation for [[SPKI-SDSI]] and modern delegated credentials)
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
- [[Chord]] — Stoica et al. 2001 (canonical [[Distributed Hash Table]]; `O(log N)` lookup via finger table)
- [[Kademlia]] — Maymounkov & Mazières 2002 ([[XOR Metric]] DHT underlying IPFS / Ethereum / BitTorrent)

## Self-* Systems, Adaptation, Trust

- [[Self-Adaptation Self-Expression Self-Awareness ASCENS]]
- [[A Composite Self-organisation Mechanism in an Agent Network]]
- [[Computational Boundary of a Self]]
- [[Review on Computational Trust and Reputation Models]]

## Edge, Web, Blockchain

- [[Edge Intelligence Survey]]
- [[Making Smart Contracts Smarter]]
- [[Formalise Blockchain Interoperability Patterns]]
- [[House on Rock - LangSec in Ethereum Classic]] — Patterson 2017 (ETC Summit talk; Rice's theorem vs. the gas model)
