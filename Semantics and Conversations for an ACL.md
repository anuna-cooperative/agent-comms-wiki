# Semantics and Conversations for an Agent Communication Language

**Reference:** Yannis Labrou and Tim Finin (1998). In *Readings in Agents* (Huhns & Singh eds., Morgan Kaufmann), reprinted from IJCAI-97. Source file: `labrou-finin-1998.pdf`. [URL](https://arxiv.org/abs/cs/9809034)

## Summary
Labrou and Finin supply the missing formal semantics for KQML. They treat KQML performatives as speech acts and, drawing on Searle and Vanderveken, describe each reserved performative (`tell`, `ask-if`, `advertise`, `sorry`, `broker-one`, ...) by its preconditions, postconditions, and completion conditions over the cognitive states (`BEL`, `KNOW`, `WANT`, `INT`) of sender and receiver. On top of this performative-level semantics they add a *conversation policy* layer: a Definite Clause Grammar specifying legal sequences of performatives (conversations), giving KQML a two-tier account of meaning — individual acts plus interaction protocols.

This is the canonical mentalistic semantics that [[ACL Rethinking Principles]] critiques: KQML's meaning is defined by what the agents are supposed to believe, know, and intend before and after sending each message, which is exactly the private, unverifiable mental-state grounding Singh objects to.

## Key Ideas
- KQML performatives carry *illocutionary force*; their meaning is given by speech-act-style preconditions and postconditions over agent mental states.
- Four primitive mental-state operators: `BEL(A,X)`, `KNOW(A,X)`, `WANT(A,X)`, `INT(A,X)`; conjunctions and negations permitted but disjunction forbidden inside `BEL`/`KNOW`/`WANT`/`INT`.
- Each performative specifies: intuitive meaning, content description, `Pre(A)`/`Pre(B)` preconditions, `Post(A)`/`Post(B)` postconditions, `Completion` condition, and an expected *response* performative.
- `advertise` is analysed as a *commissive* — the sender commits to being able to process a later performative of the advertised type; `tell` as assertive; `ask-if` as directive.
- Conversation policies: legal message sequences expressed as a DCG so that agents can plan and recognise multi-step exchanges (register-then-advertise-then-ask, broker patterns, etc.).
- Negation of a mental-state expression means "not provable" from the agent's knowledge base — making the semantics relative to the particular agent's reasoner.

## Connections
- [[ACL Rethinking Principles]]
- [[KQML]]
- [[FIPA-ACL]]
- [[Speech Act Theory]]
- [[Agent Communication Languages]]
- [[Mentalistic Semantics]]
- [[Conversation Policies]]

## Conceptual Contribution
- **Claim:** An Agent Communication Language acquires meaning at two layers — (1) per-performative speech-act semantics expressed as pre/post-conditions over the sender's and receiver's beliefs, knowledge, wants, and intentions, and (2) conversation policies expressed as a formal grammar over sequences of performatives — and this combination suffices to specify KQML.
- **Mechanism:** Adopts Austin/Searle/Vanderveken speech-act categories, introduces the `BEL/KNOW/WANT/INT` operators, writes out pre/post/completion schemas for five reserved performatives (`advertise`, `ask-if`, `tell`, `sorry`, `broker-one`), and layers a Definite Clause Grammar to compose them into conversations.
- **Concepts introduced/used:** [[Mentalistic Semantics]], [[Performatives]], [[Illocutionary Force]], [[Conversation Policies]], [[Preconditions and Postconditions]], [[Commissives]]
- **Stance:** constructive / foundational
- **Relates to:** Direct target of the [[ACL Rethinking Principles]] critique — Singh names this mental-state grounding as the reason KQML compliance cannot be verified. Supplies the machinery later reused by [[FIPA-ACL]] and problematised by [[Verifiable Semantics for ACLs]] and [[Commitment-based Semantics]].

## Tags
#acl #kqml #semantics #speech-acts #mentalistic
