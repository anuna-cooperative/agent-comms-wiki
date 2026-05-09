# Convention: A Philosophical Study

**Reference:** Lewis, D. K. (1969). *Convention: A Philosophical Study*. Harvard University Press, Cambridge MA. (Reprinted 2002, Blackwell.) [SEP entry on Convention](https://plato.stanford.edu/entries/convention/) · [Wiley publisher page](https://www.wiley.com/en-us/Convention:+A+Philosophical+Study-p-9780631232568) (book; no full-text OA.)

## Summary
Lewis offers the first rigorous *game-theoretic* analysis of how shared conventions — including, paradigmatically, the conventions of language — arise and sustain themselves among rational agents without explicit agreement. The book opens by defining a **coordination problem**: a situation in which several agents have multiple equilibria available, all parties prefer reaching *some* equilibrium to none, and they are largely indifferent (or have non-conflicting preferences) over which equilibrium they reach. Lewis's central thesis is that a *convention* is a regularity in behaviour that is one solution to a coordination problem, sustained by **mutual expectation** — each party expects the others to follow the regularity, expects the others to expect them to follow it, and so on up an infinite hierarchy that Lewis was the first to formalise as **common knowledge**. The book applies this analysis to driving conventions (drive on the right vs left), signalling, currency, and at length to language: the conventions of meaning are coordination equilibria sustained by mutual expectation in a population of speakers; semantic content is what *would* be the case if the convention were followed. Lewis's framework supplies the philosophical foundation for every later treatment of *emergent* and *negotiated* meaning — emergent-communication research in MAS and deep learning, the ACL evolution programme, and the language-games tradition (Wittgenstein operationally, Steels formally) all proceed in the conceptual space Lewis defined. The common-knowledge construction is independently a foundational result for distributed-systems theory ([[Knowledge and Common Knowledge in a Distributed Environment|Halpern & Moses 1990]]) and game theory (Aumann 1976).

## Key Ideas
- *Coordination problem*: a strategic situation with multiple Pareto-comparable equilibria where no party prefers a non-equilibrium outcome and the parties' preferences over equilibria largely coincide. The classical examples — driving side, meeting place — generalise to language, money, social roles.
- *Convention as a self-sustaining regularity*: a regularity `R` is a convention iff (i) almost everyone conforms to `R`, (ii) almost everyone expects almost everyone else to conform to `R`, (iii) almost everyone prefers conforming on the assumption that others conform, and (iv) some alternative regularity could have been the convention instead (no party of the convention is *intrinsically* preferred).
- *Common knowledge*: the infinite hierarchy of mutual expectation that sustains a convention — `A` knows that `B` follows `R`; `A` knows that `B` knows that `A` follows `R`; and so on. Lewis was the first to give a formal account of this in social terms; the construction was rediscovered by Aumann in game theory and Halpern–Moses in distributed systems.
- *Salience and precedent as convention selectors*: when multiple equilibria are available, *salient* features (Schelling's focal points, see [[The Strategy of Conflict]]) and *historical precedent* select among them. There is no rationality-driven argument for which equilibrium becomes conventional; the answer is *contingent* on saliency.
- *Language as convention*: meaning is what would obtain if the convention were followed. Truth-conditions, communicative force, and reference are all conventionally fixed — but the convention is not arbitrary, it is sustained by everyone's expectation that everyone else will use words a particular way.
- *Conventions vs explicit agreements*: Lewis argues that explicit agreement is *neither necessary nor sufficient* for convention — many conventions arise without agreement (precedent does the work) and many agreements never become conventions (because mutual expectation does not develop).
- *Population vs pair*: conventions are population-level facts; one cannot have a convention with a single partner. Mutual expectation must extend across the relevant community for the regularity to be convention-grade.

## Connections
- [[Convention (Lewis)]]
- [[Coordination Game]]
- [[Common Knowledge (Convention)]]
- [[Knowledge and Common Knowledge in a Distributed Environment]]
- [[Focal Point]]
- [[The Strategy of Conflict]]
- [[Mutual Expectation]]
- [[Language Games for Autonomous Robots]]
- [[Multi-Agent Cooperation and the Emergence of Natural Language]]
- [[Emergence of Grounded Compositional Language in Multi-Agent Populations]]
- [[On the Pitfalls of Measuring Emergent Communication]]
- [[Lexicon Negotiation]]
- [[Towards Automating the Evolution of Linguistic Competence]]
- [[Toward Automated Evolution of ACLs]]
- [[Common Business Communication Language]]
- [[Why AI Agents Communicate In Human Language]]
- [[Norms and Obligations]]
- [[Speech Act Theory]]
- [[Logic and Conversation]]
- [[Cooperative Principle]]
- [[The Society of Mind]]
- [[Mentalistic Semantics]]
- [[Public Semantics]]

## Conceptual Contribution
- **Claim:** Conventions — including the conventions of language — are best analysed as solutions to coordination problems sustained by *mutual expectation* (formally, common knowledge) in a population of rational agents. There is nothing arbitrary about the convention's *function*, but the particular regularity that becomes conventional is contingent on salience, precedent, and historical accident.
- **Mechanism:** Game-theoretic analysis of coordination problems with multiple equilibria; definition of convention via four clauses (conformity, mutual expectation, conditional preference, alternativeness); explicit construction of common knowledge as an infinite hierarchy of expectations; application to driving conventions, signalling, currency, and at length to language semantics.
- **Concepts introduced/used:** [[Coordination Game]], [[Convention (Lewis)]], [[Common Knowledge (Convention)]], [[Mutual Expectation]], [[Focal Point]] (via dialogue with Schelling), Salience, Precedent, Convention vs Agreement.
- **Stance:** foundational philosophical monograph.
- **Relates to:** Direct philosophical foundation for every later treatment of *emergent meaning* and *negotiated language*: [[Language Games for Autonomous Robots|Steels' language games]] are operational realisations of Lewis's coordination-problem analysis with explicit interaction protocols; [[Multi-Agent Cooperation and the Emergence of Natural Language|Lazaridou et al.]] and the deep-learning emergent-communication line train neural agents to converge on Lewis-style conventions in referential games. The ACL-evolution programme ([[Toward Automated Evolution of ACLs]], [[Towards Automating the Evolution of Linguistic Competence]]) treats the ACL itself as an evolving Lewis-convention. Lewis's common-knowledge construction is independently the foundation of [[Knowledge and Common Knowledge in a Distributed Environment|Halpern & Moses 1990]] in distributed systems and Aumann (1976) in game theory — distributed protocols and conventional language share the same mathematical object. The framework also clarifies what is at stake in the [[Mentalistic Semantics]] vs [[Public Semantics]] debate in ACLs: Lewis-style conventions are *public-semantics* objects (mutual-expectation regularities) but their stability *depends on* something close to mentalistic conditions (each agent's expectations about others' beliefs), so the two semantic families are dual aspects of the same phenomenon rather than competitors. [[Why AI Agents Communicate In Human Language]] revisits Lewis from the LLM-agent angle: natural language is a particular Lewis-convention (a contingent equilibrium) and *not necessarily the optimal one* for inter-agent coordination.

## Tags
#convention #coordination #common-knowledge #lewis #philosophy-of-language #foundations #emergent-meaning
