# Computing Machinery and Intelligence

**Reference:** A. M. Turing (1950). *Computing Machinery and Intelligence.* Mind, 59(236), 433–460. DOI: 10.1093/mind/LIX.236.433. Source file: `t_article.pdf`. [URL](https://www.cs.ox.ac.uk/activities/ieg/e-library/sources/t_article.pdf)

## Summary
Turing replaces the ill-posed question "Can machines think?" with an operational one framed as the **imitation game**: an interrogator, communicating only by teleprinter, must decide which of two hidden respondents is a human and which is a machine. If a machine can play this game well enough that the interrogator misidentifies as often as in the original man-vs-woman version, we need not be troubled by the metaphysical question of whether it "really" thinks. Crucially, the criterion is *behavioural and communication-mediated*: the machine is judged solely on the natural-language answers it exchanges over a text channel, deliberately screening off physical appearance and voice so that intellectual capacity is what is tested.

Turing predicts that by the year 2000 a machine with roughly 10⁹ bits of storage could play the game well enough that an average interrogator would have no more than a 70% chance of a correct identification after five minutes of questioning. The bulk of the paper is a systematic rebuttal of nine anticipated objections — theological, "heads in the sand", mathematical (Gödel/Turing undecidability results), argument from consciousness (Jefferson), various "arguments from disability", Lady Lovelace's objection that machines can only do what they are programmed to, continuity of the nervous system, informality of behaviour, and extra-sensory perception. He closes by proposing that, rather than trying to program an adult mind directly, one should build a **child-machine** and educate it — an early articulation of machine learning — arguing that a learning process, including a random element, could bootstrap the required competence.

## Key Ideas
- **The imitation game (Turing Test):** intelligence is assessed operationally by indistinguishability in text-mediated conversation, not by introspection or physiology.
- **Communication as the test medium:** the teleprinter channel deliberately abstracts away body and voice, making natural-language message exchange the sole evidence — a stance directly relevant to judging conversational agents.
- **The digital computer as a discrete-state machine** that is *universal*: given enough storage and speed it can mimic any other discrete-state machine, so the question is one of programming, not of building a special "thinking" hardware.
- **Rebuttal of the mathematical objection:** Gödel/Turing limitative results bound formal systems, but humans are subject to analogous limitations, so they give no clear advantage to human over machine.
- **Lady Lovelace's objection answered:** "a machine can never do anything really new" is met by appeal to learning machines and to our own surprise at machine behaviour.
- **The child-machine and learning:** rather than hand-programming an adult intellect, build a simpler machine and subject it to an education process (with rewards, punishments, and randomness) — a seed of [[Machine Learning]].
- **Prediction:** by ~2000, ~10⁹ bits of memory would let a machine pass a five-minute test with ≥30% deception rate; and "at the end of the century… one will be able to speak of machines thinking without expecting to be contradicted."

## Connections
- [[On Computable Numbers with an Application to the Entscheidungsproblem]]
- [[Universal Turing Machine]]
- [[Turing Test]]
- [[Imitation Game]]
- [[Ascribing Mental Qualities to Machines]]
- [[Intentional Stance]]
- [[Machine Learning]]
- [[LLM Agents]]
- [[Agent Communication Languages]]

## Conceptual Contribution
- **Claim:** The question "can machines think?" should be replaced by an operational, behavioural test — success in a text-only imitation game — and the standard objections to attributing thought to machines do not withstand scrutiny.
- **Mechanism:** Philosophical / definitional. Defines the imitation game as an experimental criterion, grounds it in the universality of discrete-state (digital) computers, rebuts nine objections one by one, and proposes learning child-machines as the practical route to passing it.
- **Concepts introduced/used:** [[Turing Test]], [[Imitation Game]], [[Discrete State Machine]], [[Universal Turing Machine]], [[Machine Learning]], [[Intentional Stance]]
- **Stance:** foundational / philosophical
- **Relates to:** Companion to Turing's own [[On Computable Numbers with an Application to the Entscheidungsproblem]] (universality made precise). Headwater of the mentalistic tradition that [[Ascribing Mental Qualities to Machines]] formalises; its text-channel criterion prefigures how conversational and [[LLM Agents]] are evaluated for human-indistinguishable communication.

## Tags
#philosophy #foundations #ai-history #turing-test #machine-learning #intentional-stance
