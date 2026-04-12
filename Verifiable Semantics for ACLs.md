# Verifiable Semantics for Agent Communication Languages

**Reference:** Michael Wooldridge (1998). *ICMAS-98 (International Conference on Multi-Agent Systems)*. Source file: `icmas98.pdf`. URL: https://doi.org/10.1109/ICMAS.1998.699219

## Summary
Wooldridge tackles a central problem for ACL standardization: how can an external observer verify that an agent conforms to an ACL's semantics when semantics are expressed in modal BDI logic (beliefs, desires, intentions)? He formalizes an *agent communication framework* as a tuple containing agent programs, local states, a communication language, a semantic language, and interpretation functions, and defines precisely what it means for a framework to be *verifiable*: whether one can decide, from program text alone, that the semantic conditions for a sent message are satisfied.

He shows that KQML and FIPA-97 ACL, which define the "sincerity condition" for an `inform` act using multi-modal quantified logics like SL, are not practically verifiable — deciding whether an agent program really believes what it says requires checking undecidable properties. In contrast, he gives two example frameworks with verifiable (even co-NP-complete) semantics by grounding meaning in program states rather than unobservable mental attitudes. The paper's upshot: practical ACL conformance testing requires public, state-based semantics.

## Key Ideas
- Formal agent communication framework as a 2n+4 tuple.
- Verifiability = decidability of semantic conformance from program text.
- KQML and FIPA-97 semantics (SL modal logic) are not practically verifiable.
- Grounding semantics in program states yields co-NP-complete verifiability.
- Motivates social/public commitment-based ACL semantics.

## Connections
- [[KQML]]
- [[FIPA-ACL]]
- [[Speech Act Theory]]
- [[Agent Communication Languages]]
- [[Verifiable Semantics]]
- [[Public Semantics]]
- [[Commitment-based Semantics]]
- [[Mental State]]
- [[Mentalistic Semantics]]
- [[BDI]]

## Conceptual Contribution
- **Claim:** An ACL standard is only useful if one can check whether an implementation respects it; existing ACLs (KQML, FIPA-97) whose semantics are given in multi-modal BDI logics are not practically verifiable, so ACL semantics should instead be grounded in program states.
- **Mechanism:** Formalises an agent communication framework as a (2n+4)-tuple of agent programs, local states, communication language L_C, semantic language L_S, and interpretations; defines verifiability as decidability (in polynomial time) of whether an agent program respects a message's semantic precondition; shows FIPA's SL semantics undecidable; constructs two verifiable example frameworks (classical propositional logic, grounded propositional epistemic logic) with co-NP-complete verification.
- **Concepts introduced/used:** [[Verifiable Semantics]], [[Agent Communication Framework]], [[Sincerity Condition]], [[Grounded Semantics]], [[Program Semantics]], [[Model Checking]], [[BDI Logic]], [[Mentalistic Semantics]]
- **Stance:** formal-semantic / critique
- **Relates to:** Formal companion to [[ACL Rethinking Principles]] — Singh's social-agency argument becomes Wooldridge's verifiability theorem. Undermines the semantic ambitions of [[KQML Overview]] and [[FIPA-ACL]]; motivates commitment-based approaches such as [[Agent Communication And Institutional Reality]] and the program-grounded framework in [[Foundations Of Illocutionary Logic]].

## Tags
#acl #semantics #verification #modal-logic
