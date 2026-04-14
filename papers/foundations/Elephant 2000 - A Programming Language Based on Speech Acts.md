# Elephant 2000: A Programming Language Based on Speech Acts

**Reference:** John McCarthy (1989, revised). *Formal Reasoning Group, Stanford University*. Source file: `elephant.pdf`. [URL](http://jmc.stanford.edu/articles/elephant/elephant.pdf)

> *"I meant what I said, and I said what I meant. / An elephant's faithful, one hundred percent! / moreover, / An elephant never forgets!"*

## Summary
McCarthy proposes **Elephant 2000**, a speculative programming language whose inputs and outputs are *speech acts* — requests, questions, offers, acceptances, declinations, permissions, and promises — rather than ordinary I/O. A program's correctness is then partly defined by the "happy performance" of those acts in Austin's sense: answers must be truthful and responsive, promises must be kept, and the program must not accept what it has no authority to accept. The paper is an essay of seven design theses, most strikingly:

- An Elephant program is itself a *logical sentence* (or syntactic sugar for one); its extensional correctness properties follow by logical consequence without a separate theory of programming à la Hoare.
- Elephant programs do not need data structures: they can refer directly to the past (history of events and states), just as natural-language speakers do ("the passenger *has* a reservation iff she made one and hasn't cancelled it").
- Programs have both **input-output** specifications (generalising illocutionary speech acts) and **accomplishment** specifications (generalising perlocutionary acts — what the program actually brings about in the world).
- Commercial transactions exchange **obligations**; an Elephant program's specification may include the fact that the obligation exchange happens as intended, again as a logical sentence.

McCarthy explicitly departs from Searle/Austin by taking a **design stance** (Dennett) on speech acts, introducing **abstract performatives** (including purely internal commitments the agent makes to itself) as a category of program event. The paper is the direct programming-language-side ancestor of modern [[Agent Communication Languages]], [[Commitment-based Semantics]], and [[Intent Formalization]] — all written a decade before the ACL field got going.

## Key Ideas
- **Speech-act I-O language:** programs communicate via `request`, `question`, `offer`, `accept`, `decline`, `permission`, `promise`, `assertion`, plus internal `commitment`
- **Program-as-logical-sentence:** extensional properties are logical consequences, no Hoare axioms required
- **Direct reference to the past:** no data structures, just history queries (`has-reservation(psgr, flt) ≡ made-reservation ∧ ¬cancelled`)
- **Illocutionary vs. perlocutionary specs:** input-output (program's own behaviour) vs. accomplishment (effects in the world)
- **Abstract performatives** — internal commitments whose content is independent of outward expression
- **Obligation exchange** as a first-class specification element for commercial/institutional programs
- Takes a **design stance** on speech acts — adapts Austin/Searle rather than inheriting them
- Authority / permission / obligation are *specification* concerns: the program need not be conscious of them
- Explicit claim: deliberately *non-AI* — Elephant usages that do not require intelligence are the focus

## Connections
- [[Ascribing Mental Qualities to Machines]] — McCarthy's prior paper on when it's useful to ascribe beliefs/intentions to programs
- [[Common Business Communication Language]] — McCarthy 1982, explicitly cited as the motivating application
- [[Towards a Mathematical Science of Computation]] — McCarthy 1963; originates the program-as-logical-object agenda Elephant radicalises.
- [[Correctness of a Compiler for Arithmetic Expressions]] — McCarthy & Painter 1967; first proof-of-concept for the verification programme Elephant extends to speech-act semantics.
- [[First Order Theories of Individual Concepts and Propositions]] — McCarthy 1979; the logical machinery for propositional attitudes that Elephant's commitments and history-referring constructs presuppose.
- [[Circumscription - A Form of Nonmonotonic Reasoning]] — McCarthy 1986; the defeasibility substrate for commitment revision.
- [[The Knowledge Level]] — Newell 1982; Elephant is a programming language whose *native* level of description is Newell's knowledge level.
- [[Foundations Of Illocutionary Logic]] — Searle & Vanderveken, the philosophical spine McCarthy adapts
- [[Speech Act Theory]]
- [[Agent Communication Languages]]
- [[KQML]]
- [[KQML Overview]]
- [[KQML as an Agent Communication Language]]
- [[FIPA-ACL]]
- [[Performatives]]
- [[Commitment-based Semantics]]
- [[Agent Communication And Institutional Reality]]
- [[Agent-Oriented Programming]]
- [[Intention Is Choice with Commitment]]
- [[Assigning Meanings to Programs]]
- [[Hoare Logic]]
- [[Formal Verification]]
- [[Verifiable Semantics]]
- [[Foundations of Logic Programming - Lloyd]]
- [[Intent Formalization - A Grand Challenge for Reliable Coding]]
- [[A Scalable Communication Protocol for Networks of LLMs]]
- [[Institutional Reality]]

## Conceptual Contribution
- **Claim:** A programming language's inputs and outputs should be speech acts, and a program's correctness should be partly defined by the "happy performance" of those acts — truthfulness of answers, responsiveness to questions, fidelity of promises, legitimacy of authority. Such programs are themselves logical sentences, so no separate Hoare-style programming logic is needed.
- **Mechanism:** Seven design theses unified by a single move — take Austin/Searle's speech-act framework as a programming-language primitive rather than an application-level pattern. Introduce abstract performatives (internal commitments) and direct past-reference to replace conventional data structures. Give two specification tiers (input-output = illocutionary, accomplishment = perlocutionary) so verification can connect the program text to its real-world effects via axiomatic theories of the environment.
- **Concepts introduced/used:** [[Abstract Performative]], [[Happy Performance]], [[Illocutionary Specification]], [[Perlocutionary Specification]], [[Obligation Exchange]], [[Design Stance]], [[History-Referring Programs]], [[Program as Logical Sentence]], [[Simple Promise]], [[Type 1 and Type 2 Obligations]], [[Performatives]], [[Speech Act Theory]], [[Common Sense Reasoning]]
- **Stance:** foundational / manifesto
- **Relates to:** Written a decade before [[KQML]], [[KQML Overview]], and [[FIPA-ACL]], this paper is their direct programming-language ancestor: the idea that messages are performatives with formal sincerity/truthfulness conditions is exactly what [[KQML as an Agent Communication Language]] and [[Foundations Of Illocutionary Logic]] later operationalise. McCarthy's **abstract performatives** and explicit **obligation exchange** prefigure the commitment-based ACL semantics of [[Agent Communication And Institutional Reality]] and the critique-and-reconstruction in [[ACL Rethinking Principles]]. The "program as a logical sentence, specifications deduced from it" stance deliberately displaces [[Assigning Meanings to Programs]] / [[Hoare Logic]] — anticipating the Dafny/Verus approach that [[Intent Formalization - A Grand Challenge for Reliable Coding]] now takes for LLM-generated code. [[A Scalable Communication Protocol for Networks of LLMs]] (Agora) revives the same impulse — programs whose *protocols* are negotiated speech-act sets — in the LLM-agent era.

## Tags
#speech-acts #programming-languages #commitments #performatives #foundational #mccarthy #elephant-2000
