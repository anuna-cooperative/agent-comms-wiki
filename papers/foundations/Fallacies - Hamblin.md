# Fallacies

**Reference:** Hamblin, C. L. (1970). *Fallacies*. Methuen, London. (Reprinted 1986 by Vale Press; reissued 2022 by University Press of America.) [Google Books preview](https://books.google.com/books/about/Fallacies.html?id=0whlEAAAQBAJ) · [McMaster summary](https://www.humanities.mcmaster.ca/~hitchckd/hamblin.htm) (book; no full-text OA.)

## Summary
Hamblin's *Fallacies* is the founding text of the modern revival of formal dialectic. The book has two halves. The first is a magisterial historical and critical survey demolishing what Hamblin calls the *Standard Treatment*: the lazy textbook tradition of cataloguing fallacies as freestanding logical errors, traceable to a misreading of Aristotle that has propagated unchanged through two thousand years of logic textbooks. Hamblin shows that almost every "fallacy" in the standard inventory either is not actually fallacious in context, is fallacious for reasons orthogonal to those typically given, or is incoherent as classified. The second half supplies a constructive alternative: a *formal dialectical* treatment in which arguments are evaluated not in isolation but as moves within rule-governed dialogues. The technical centrepiece is the **commitment store**: each participant in a dialogue has a public set of propositions to which they have committed, updated by their dialogue moves under explicit rules (statements add commitments, "Why?"-challenges may force retraction or defence, concessions add to the conceder's store, and so on). A move is *fallacious* iff it violates the rules of the dialogue type — a context-relative notion that finally distinguishes (e.g.) when *petitio principii* is genuinely circular reasoning and when it is licit appeal to shared ground. The book inaugurated the dialectical tradition that runs through [[Commitment in Dialogue|Walton & Krabbe 1995]], Mackenzie, Pollock, and the entire computational-argumentation field; the commitment-store concept is the operational ancestor of every [[Commitment-based Semantics|commitment-based ACL]] semantics.

## Key Ideas
- *The Standard Treatment is incoherent*: the textbook list of fallacies (begging the question, ad hominem, ad baculum, equivocation, …) cannot be analysed at the level of individual arguments because what counts as fallacious depends on the dialogue context and the participants' shared and individual commitments.
- *Arguments live in dialogues*: an argument is a move in a structured exchange; its assessment requires the dialogue's rules — what are the legal moves, what does each move oblige one to defend, what counts as winning?
- *Commitment store as the engine*: each participant's public commitment set is updated by their moves; the dialogue's rules govern what one is licensed to say given the current state of one's own and others' stores.
- *Why-because-question games*: Hamblin gives explicit toy dialogue systems (variants of the "H system") in which moves are *Statement*, *Question*, *Challenge*, *Retract*, *Resolve* and the rules govern what each licenses or requires.
- *Fallacies as dialogue-rule violations*: petitio principii becomes the move of trying to use as a premise something the opponent has not yet committed to (or has explicitly challenged); ad hominem becomes the illicit shift from a persuasion to a personal-attack dialogue; etc.
- *Recovery of Aristotle*: Hamblin's reading of Aristotle's *Sophistical Refutations* shows that the original treatment was already dialectical — it was the medieval and modern textbook tradition that flattened it into a list of logical errors.
- *The book's lasting move*: not a particular dialogue system but the *programme* of taking dialogue as the primary unit of analysis, which Walton & Krabbe (1995) and the computational-argumentation literature (Prakken, Vreeswijk, McBurney, Parsons) made operational.

## Connections
- [[Commitment Store]]
- [[Commitment in Dialogue]]
- [[Dialogue Typology]]
- [[Persuasion Dialogue]]
- [[Argumentation Framework]]
- [[On the Acceptability of Arguments]]
- [[Speech Act Theory]]
- [[Logic and Conversation]]
- [[A Taxonomy of Illocutionary Acts]]
- [[Public Semantics]]
- [[Commitment-based Semantics]]
- [[ACL Rethinking Principles]]
- [[Coordinating Agents Using ACL Conversations]]
- [[ACRE Agent Conversation Reasoning Engine]]

## Conceptual Contribution
- **Claim:** Fallacies cannot be analysed as defects of single arguments; they are violations of the rules of the dialogue type within which the argument is offered. The right unit of analysis is the *dialogue*, with explicit rules governing each participant's *commitment store* and the legitimate moves that update it.
- **Mechanism:** Critical demolition of the Standard Treatment via close textual reading from Aristotle through 19th-century logic textbooks; constructive presentation of toy dialogue systems (the "H system" and variants) with explicit move-rules and commitment-store updates; reanalysis of canonical fallacies as type-specific rule violations.
- **Concepts introduced/used:** [[Commitment Store]], Formal Dialectic, Dialogue Move, Why-Statement-Resolve game, *petitio principii* qua dialectical fault, Standard Treatment.
- **Stance:** founding theoretical monograph of modern dialectic.
- **Relates to:** Direct ancestor of [[Commitment in Dialogue]] (Walton & Krabbe 1995), which extends Hamblin's commitment-store machinery into a six-type [[Dialogue Typology|dialogue typology]] and supplies the framework that the ACL commitment-based semantics tradition takes as given. The commitment-store concept is the operational primitive of [[ACL Rethinking Principles|Singh's]] critique of mentalistic ACL semantics: where KQML / FIPA-ACL ground meaning in private mental states, Singh grounds it in *public commitments* — a direct lift of Hamblin into multi-agent communication. The dialectical-rules approach is also the upstream ancestor of structured argumentation systems (ASPIC+, ABA, DeLP) that instantiate Dung's [[Argumentation Framework|abstract framework]] with rule languages, and of dialogue-game protocol specifications ([[Coordinating Agents Using ACL Conversations]], [[ACRE Agent Conversation Reasoning Engine]]). On the LLM-agent side, Hamblin's central insight — that the fallaciousness of a move depends on the dialogue type and rules — is precisely the diagnostic missing from most LLM-agent debate / self-consistency setups: there is no commitment store, no dialogue type, and so no principled way to identify illegitimate moves.

## Tags
#dialogue #formal-dialectic #commitment-stores #fallacies #foundations #hamblin #pragmatics
