# Agent-Oriented Programming

**Reference:** Shoham, Y. (1993). *Artificial Intelligence 60, Elsevier*. Source file: `shoam-aop.pdf`. URL: https://www.infor.uva.es/~cllamas/MAS/AOP-Shoham.pdf

## Summary
Shoham introduces Agent-Oriented Programming (AOP) as a specialization of object-oriented programming in which the state of each module — now called an agent — is a mental state composed of beliefs, capabilities, decisions/choices, commitments, and obligations. Interpretation of these components is formally grounded in an extension of standard epistemic logics that adds temporality, obligation, decision, and capability operators.

Agents communicate via speech-act-inspired primitives (inform, request, offer, promise, decline, etc.), constrained by rules such as honesty and consistency. The paper defines a class of agent interpreters and presents AGENT-0, a concrete implemented language whose semantics is tied to the mental-state logic. Shoham also discusses "agentification" — converting arbitrary devices into AOP-programmable agents — and situates AOP against BDI architectures, speech act theory, and McCarthy's Elephant2000.

## Key Ideas
- AOP as OOP specialization with mental-state components.
- Agents constrained by honesty/consistency on communicative acts.
- Speech-act-typed primitives as message types.
- AGENT-0 language and interpreter.
- "Agentification" of arbitrary devices.

## Connections
- [[Agent-Oriented Programming]]
- [[Speech Act Theory]]
- [[Mental State]]
- [[Mentalistic Semantics]]
- [[Performatives]]
- [[BDI]]
- [[Strong Agency]]
- [[KQML]]
- [[Multi-Agent Systems]]
- [[Agent Communication Languages]]

## Conceptual Contribution
- **Claim:** Programming can be fruitfully specialised to an "agent" paradigm in which module state is a formally specified mental state and inter-module communication is a speech act constrained by rational/ethical rules.
- **Mechanism:** Shoham extends standard modal-epistemic logic with temporal, obligation, decision and capability operators, defines the mental-state components of an agent (belief, capability, commitment, choice, obligation), then specifies a generic agent interpreter cycle (update mental state, execute commitments, handle incoming messages) and instantiates it in AGENT-0, whose programs are condition-action rules over mental state and whose messages are typed INFORM/REQUEST/UNREQUEST primitives.
- **Concepts introduced/used:** [[Agent-Oriented Programming]], [[Mental State]], [[Commitment]], [[AGENT-0]], [[Speech Act Theory]], [[Agentification]], [[BDI]], [[Honesty Constraint]]
- **Stance:** foundational
- **Relates to:** Establishes the mentalistic ACL stance later criticised by [[Agent Communication Languages - Rethinking the Principles]] and surveyed by [[Intelligent Agents Theory and Practice]]; AGENT-0's speech-act primitives anticipate [[KQML as an Agent Communication Language]] and [[FIPA-ACL]]; the mental-state architecture is reused in [[An Interaction-oriented Agent Framework for Open Environments]].

## Tags
#aop #speech-acts #agents #programming-paradigm
