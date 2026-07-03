# Message Sequence Charts: A Survey

**Reference:** Genest, B. & Muscholl, A. (2005). *Message Sequence Charts: A Survey.* In *Proc. 5th International Conference on Application of Concurrency to System Design (ACSD 2005)*, St. Malo, France, pp. 2–4. IEEE Computer Society. DOI [10.1109/ACSD.2005.25](https://doi.org/10.1109/ACSD.2005.25). (Invited survey; a fuller treatment appears in Genest, Muscholl & Peled, *Message Sequence Charts*, LNCS 3098, 2004.) [URL](https://dblp.org/db/conf/acsd/acsd2005.html).

## Summary
This invited survey by Genest and Muscholl maps the theory of **Message Sequence Charts (MSCs)** and their compositional extension, **high-level MSCs (HMSCs / MSC-graphs)**, from the standpoint of concurrency theory and automata. An MSC gives a partial-order (visual) semantics to one communication scenario among asynchronously communicating processes; an HMSC glues MSCs with choice, concatenation and loops to specify infinite families of scenarios. The survey organises the main results of the field: the formal (partial-order and language) semantics of MSCs, the expressiveness and closure properties of HMSC languages, and — crucially — the tight relationship between HMSC specifications and **communicating finite-state machines** (channel automata) that implement them.

The recurring theme is that unrestricted MSC/HMSC specifications quickly become intractable, so the theory is built around well-behaved subclasses. The survey reviews **bounded** (channel-bounded) and **existentially-bounded** MSC languages — those realizable with finite communication buffers — and the notions of *safe* / *local-choice* HMSCs that admit deadlock-free distributed implementations, connecting directly to the realizability programme of [[Realizability and Verification of MSC Graphs]]. It surveys the decidability frontier for model-checking MSCs against HMSC specifications and for comparing specifications, noting where problems become undecidable and which structural restrictions restore decidability. As a short roadmap paper it is best read as an entry point and index into the MSC literature rather than as a single technical result.

## Key Ideas
- **MSC semantics:** a single scenario as a labelled partial order over send/receive events among asynchronous processes.
- **HMSC / MSC-graph:** MSCs composed by choice, sequential concatenation and iteration to describe (possibly infinite) sets of scenarios.
- **Communicating automata correspondence:** HMSC specifications versus their implementation by communicating finite-state machines with message channels — the central object of the theory.
- **Bounded and existentially-bounded MSCs:** the tractable subclasses realizable with finite buffers; the setting in which most positive (decidability) results live.
- **Realizability & safe/local-choice HMSCs:** the structural conditions under which a specification has a deadlock-free distributed implementation.
- **Decidability landscape:** which model-checking and comparison problems are decidable, and which structural restrictions are needed to recover decidability.
- **Survey scope:** a compact roadmap and bibliographic index into the MSC/HMSC literature.

## Connections
- [[Message Sequence Charts]]
- [[Realizability and Verification of MSC Graphs]]
- [[Communicating Finite State Machines]]
- [[Realizability]]
- [[Multiparty Compatibility in Communicating Automata]]
- [[Deciding Choreography Realizability]]
- [[Communicating Sequential Processes]]

## Conceptual Contribution
- **Claim:** The MSC/HMSC formalism is best understood through its correspondence with communicating automata and through the tractable subclasses (bounded, existentially-bounded, local-choice) for which realizability and verification are decidable; unrestricted specifications are intractable.
- **Mechanism:** A survey that assembles the partial-order semantics of MSCs, the language theory of HMSCs, the channel-automata implementation model, and the decidability results for the well-behaved subclasses into a single map of the field.
- **Concepts introduced/used:** [[Message Sequence Charts]], HMSC / MSC-graph, [[Communicating Finite State Machines]], bounded / existentially-bounded MSC languages, safe / local-choice HMSCs, [[Realizability]].
- **Stance:** survey / expository
- **Relates to:** The companion technical anchor is [[Realizability and Verification of MSC Graphs]] (Alur–Etessami–Yannakakis); the same communicating-automata-vs-global-specification tension is later cast in session-type terms by [[Multiparty Compatibility in Communicating Automata]] and in service-choreography terms by [[Deciding Choreography Realizability]].

## Tags
#message-sequence-charts #survey #communicating-automata #realizability #concurrency-theory #foundational
