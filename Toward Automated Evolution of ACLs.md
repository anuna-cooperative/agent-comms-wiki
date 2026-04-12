# Toward Automated Evolution of Agent Communication Languages

**Reference:** Piotr J. Gmytrasiewicz, Matthew Summers, Dhruva Gopal (2001). *AAAI* (American Association for Artificial Intelligence). Source file: `gmytrasiewicz02towardAutomated.pdf`. [URL](https://www.cs.uic.edu/bin/view/Piotr/Publications)

## Summary
Instead of designing ACLs centrally (like KQML or FIPA), the authors propose letting rational, self-interested agents *evolve* a shared ACL on the fly when they encounter each other. Each agent has its own internal knowledge representation language (KRL) and decides, via Bayesian decision theory and expected-utility calculations, which messages are worth sending and which new ACL constructs are worth negotiating into the shared vocabulary.

Language creation is modeled as a negotiation game drawing on Rubinstein bargaining: agents propose grammatical rules and terminal labels, weigh them against translation/implementation costs and the value of faster communication, and reach Nash-equilibrium agreements. They illustrate with a Wumpus-world scenario, showing how pidgin ACLs grow into richer creole-like languages via unsupervised learning of transducers and negotiation of new lexicon/grammar productions.

## Key Ideas
- ACL emerges from pairwise negotiation instead of top-down standardization.
- Rational agents use expected-utility gains from communication to drive language extension.
- Translator modeled as a finite-state transducer between KRL and ACL.
- Rubinstein bargaining gives closed-form agreement on new ACL constructs.
- Evolution from pidgin to creole through repeated interaction.

## Connections
- [[Agent Communication Languages]]
- [[KQML]]
- [[FIPA-ACL]]
- [[Ontologies]]
- [[Multi-Agent Systems]]
- [[Language Games]]
- [[Emergent Communication]]
- [[Negotiation]]
- [[Conceptualization]]

## Conceptual Contribution
- **Claim:** Agent communication languages need not be standardised top-down (KQML, FIPA); rational agents can initiate, enrich, and evolve a shared ACL through game-theoretic negotiation driven by expected-utility gains from improved communication.
- **Mechanism:** Each agent owns a private KRL and a finite-state transducer translating KRL ↔ ACL; decision-theoretic message selection (Bayesian, utility-maximising) identifies candidate new lexical/grammatical constructs; a Rubinstein-bargaining model with time discounting, implementation cost, and identity assumptions yields Nash-equilibrium agreements that extend the shared ACL grammar. Illustrated on a Wumpus-world example.
- **Concepts introduced/used:** [[ACL Evolution]], [[Knowledge Representation Language]], [[Finite-State Transducer]], [[Rubinstein Bargaining]], [[Pidgin and Creole]], [[Value of Communication]], [[Unsupervised Grammar Induction]], [[Mechanism Design]]
- **Stance:** formal-semantic / engineering
- **Relates to:** Offers a decentralised alternative to the standardisation stance of [[KQML Overview]] and [[FIPA-ACL]]; resonates with [[Emergence of Grounded Compositional Language in Multi-Agent Populations]] and [[Emergent Communication]] which study language emergence from interaction; the bargaining apparatus parallels commitment-based approaches in [[Agent Communication And Institutional Reality]].

## Tags
#acl-evolution #negotiation #game-theory #language-emergence
