# Speech Acts: An Essay in the Philosophy of Language

**Reference:** John R. Searle (1969). *Speech Acts: An Essay in the Philosophy of Language*. Cambridge University Press. Source file: `Searle 1969 - Speech Acts.pdf`. [URL](https://web.archive.org/web/20240601112440/https://danielwharris.com/teaching/spring16/readings/SearleSpeechActs.pdf)

## Summary
Searle's foundational monograph gives speech-act theory its first systematic, philosophically defended treatment. Extending Austin's *How to Do Things with Words*, it argues that the minimal unit of linguistic communication is neither the symbol nor the sentence but the *production of the symbol in the performance of a speech act*. Searle develops a constitutive-rule analysis of illocutionary acts, codifies the felicity conditions of paradigm acts (promising, referring, predicating, asserting), and uses the framework to attack the fact/value distinction, deriving "ought" from "is" via the institutional fact of promising.

The book introduces the now-canonical machinery that McCarthy's [[Elephant 2000 - A Programming Language Based on Speech Acts]] imports as programming-language primitives: the force/content distinction `F(p)`, propositional-content conditions, preparatory conditions, sincerity conditions, and essential conditions. It is also the direct ancestor of [[Foundations Of Illocutionary Logic]], which formalises what Searle here develops discursively.

## Key Ideas
- **Speech acts as the unit of meaning:** producing a sentence under appropriate conditions *is* performing an illocutionary act; meaning reduces to a recursive theory of these acts.
- **Force vs. content `F(p)`:** every utterance factors into illocutionary force (assert, promise, request, ...) and propositional content.
- **Constitutive rules:** rules of the form "X counts as Y in context C" create institutional facts (promises, marriages) rather than merely regulating antecedent behaviour.
- **Felicity conditions** for promising (canonical analysis): propositional-content, preparatory, sincerity, and essential conditions — the template every later ACL performative inherits.
- **Reference and predication** as distinct speech acts, each with their own rules.
- **Institutional facts and the is/ought derivation** via promising as a constitutive practice.

## Connections
- [[Elephant 2000 - A Programming Language Based on Speech Acts]] — McCarthy's direct source for the speech-act vocabulary of Elephant
- [[Foundations Of Illocutionary Logic]] — Searle & Vanderveken 1985, formalises the present book
- [[Speech Act Theory]]
- [[Speech Acts]]
- [[Performatives]]
- [[Illocutionary Force]]
- [[Sincerity Conditions]]
- [[Preparatory Conditions]]
- [[Agent Communication And Institutional Reality]]
- [[KQML]]
- [[FIPA-ACL]]
- [[Agent Communication Languages]]
- [[Commitment-based Semantics]]

## Conceptual Contribution
- **Claim:** Linguistic communication is irreducibly act-theoretic: the minimal unit of meaning is the illocutionary act, analysable by constitutive rules and felicity conditions, and this analysis extends to reference, predication, and the generation of institutional facts.
- **Mechanism:** Case studies of promising, referring, and asserting yield a recursive schema `F(p)` with four condition-types (propositional-content / preparatory / sincerity / essential). The schema is then redeployed to distinguish regulative from constitutive rules and to dissolve the classical is/ought problem by showing that uttering "I promise" institutionally constitutes an obligation.
- **Concepts introduced/used:** [[Performatives]], [[Illocutionary Force]], [[Sincerity Conditions]], [[Preparatory Conditions]], [[Speech Act Theory]], [[Institutional Reality]], [[Commitment-based Semantics]]
- **Stance:** foundational / philosophical
- **Relates to:** Imported wholesale by [[Elephant 2000 - A Programming Language Based on Speech Acts]] as the philosophical basis for speech-act I/O; formalised by [[Foundations Of Illocutionary Logic]]; re-examined for multi-agent systems in [[Agent Communication And Institutional Reality]] and operationalised in [[KQML]] / [[FIPA-ACL]] performative sets. McCarthy explicitly departs from Searle by adopting a design stance on these primitives — see [[Abstract Performative]].

## Tags
#speech-acts #philosophy-of-language #foundational #searle #performatives
