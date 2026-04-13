# Logic and Conversation

**Reference:** Grice, H. P. (1975). In P. Cole & J. L. Morgan (Eds.), *Syntax and Semantics, Vol. 3: Speech Acts*, pp. 41–58. Academic Press. (Originally delivered as the 1967 William James Lectures at Harvard.) Source file: `grice_logic_and_conversation.pdf`. [URL](https://projects.illc.uva.nl/inquisitivesemantics/assets/files/papers/Grice1975.pdf)

## Summary
Grice's foundational paper introduces the theory of *conversational implicature*: the mechanism by which speakers convey more than they literally say. Starting from the divergences formalists find between natural-language connectives (and, or, if, not, all, some) and their formal analogues, Grice argues the divergences do not show natural language is defective; rather, they arise from principles governing rational cooperative exchange, not from logical form.

At the centre is the **Cooperative Principle**: "Make your conversational contribution such as is required, at the stage at which it occurs, by the accepted purpose or direction of the talk exchange in which you are engaged." The principle decomposes into four categories of maxims — **Quantity** (be as informative as required, no more), **Quality** (try to make your contribution true), **Relation** (be relevant), and **Manner** (be perspicuous). Speakers exploit these maxims — by apparently flouting them while the Cooperative Principle remains in force — to generate conversational implicatures that the hearer can calculate. The paper distinguishes *what is said* from *what is implicated*, and conventional from conversational implicatures, establishing the framework in which pragmatics has operated ever since. Its picture of communication as rational, cooperative, defeasible inference over an idealised shared purpose became a touchstone for ACL design, HCI dialogue systems, and the pragmatics of LLM prompting.

## Key Ideas
- What is said vs. what is implicated.
- Conventional vs. conversational implicature.
- Cooperative Principle as constitutive of rational discourse.
- Four maxim categories: Quantity, Quality, Relation, Manner.
- Implicatures arise from (apparent) maxim-flouting under the CP.
- Implicatures are calculable, cancellable, non-detachable.
- Natural-language/formal-logic divergences need not reflect semantic defect.

## Connections
- [[Speech Act Theory]]
- [[Speech Acts]]
- [[A Taxonomy of Illocutionary Acts]]
- [[Performatives]]
- [[Elephant 2000 - A Programming Language Based on Speech Acts]]
- [[Agent Communication Languages]]
- [[Agent Communication Languages - Rethinking the Principles]]
- [[LLM Agents]]
- [[Language Models are Few-Shot Learners]]

## Conceptual Contribution
- **Claim:** Successful communication rests on a presumed Cooperative Principle and its four categories of maxims; apparent violations of the maxims, against the background of presumed cooperation, generate implicatures — inferences about speaker meaning that go beyond literal content.
- **Mechanism:** Grice frames discourse as goal-directed rational cooperation; derives the Cooperative Principle as a rationality constraint on contributions; distinguishes its maxims by Kantian category; shows that a speaker who says p while *flouting* a maxim (e.g., irrelevantly, uninformatively, or obscurely) signals that a further proposition q must be inferred to restore the presumption of cooperation — q is then conversationally implicated. Implicatures are *calculable* from the maxims plus context, *cancellable* without contradiction, and *non-detachable* from what is said.
- **Concepts introduced/used:** [[Cooperative Principle]], [[Conversational Implicature]], [[Conventional Implicature]], [[Gricean Maxims]], [[Speaker Meaning]], [[What Is Said]]
- **Stance:** philosophical/pragmatic theory
- **Relates to:** Complements the illocutionary classification of [[A Taxonomy of Illocutionary Acts]] by supplying a theory of pragmatic enrichment; informs the semantic/pragmatic layer distinctions in [[Agent Communication Languages]] and critiques of mentalistic ACL semantics in [[Agent Communication Languages - Rethinking the Principles]]; underpins the rational-speaker assumptions implicit in prompt engineering and [[LLM Agents]].

## Tags
#pragmatics #speech-acts #philosophy-of-language #foundational #implicature
