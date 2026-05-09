# Commitment in Dialogue: Basic Concepts of Interpersonal Reasoning

**Reference:** Walton, D. N. & Krabbe, E. C. W. (1995). *Commitment in Dialogue: Basic Concepts of Interpersonal Reasoning*. SUNY Series in Logic and Language. State University of New York Press, Albany. [Internet Archive borrow](https://archive.org/details/commitmentindial0000walt) (book; institutional access via SUNY.)

## Summary
Walton and Krabbe synthesise two decades of work on formal dialectic ([[Fallacies - Hamblin|Hamblin 1970]] onward) and informal logic into a *typology of dialogue* and a corresponding theory of how participants' **commitments** evolve as a dialogue proceeds. Their central observation is that argumentation in natural settings is not a single uniform activity but a structured family of dialogue types, each characterised by its initial situation, the individual goals of the participants, and the shared goal of the dialogue. The six basic types they identify — **persuasion**, **negotiation**, **deliberation**, **inquiry**, **information-seeking**, **eristic** — are mutually distinguished by these three dimensions and by their characteristic legitimate moves. Across all types, every utterance updates each participant's *commitment store*: the public set of propositions to which they have committed, are committed by inference, and may be challenged on. The book gives semi-formal rules for each dialogue type, analyses *dialogue shifts* (moves that licitly or illicitly transition between dialogue types — e.g. a persuasion shifting to a negotiation), and uses the framework to give principled accounts of fallacies as illegitimate dialogue moves rather than logical errors. Its influence on multi-agent systems is enormous: every commitment-based ACL semantics ([[ACL Rethinking Principles|Singh]], [[A Commitment-Based Approach to Agent Communication|Fornara & Colombetti]]) inherits the Hamblin/Walton commitment-store concept; protocol-design work (e.g. ACRE, [[An Interaction-oriented Agent Framework for Open Environments]]) uses dialogue-type analysis to specify legitimate conversation policies.

## Key Ideas
- *Six basic dialogue types*: **persuasion** (resolve a conflict of opinion), **negotiation** (resolve a conflict of interest), **deliberation** (decide on a course of action), **inquiry** (establish proof of a hypothesis from agreed premises), **information-seeking** (transfer of information from informed to uninformed), **eristic** (vent emotion / display superiority). Each is characterised by initial situation × individual goals × shared goal.
- *Commitment store as the engine of dialogue*: every participant has a public set of commitments updated by their moves; speech acts add, retract, or qualify entries. The store is open to challenge by other participants under the dialogue's rules.
- *Dialectical / propositional commitments*: Walton & Krabbe distinguish explicit commitments (asserted propositions) from inferred commitments (entailed by, or presupposed by, what was said) — a distinction crucial for capturing implicit communication.
- *Dialogue shifts*: most real argumentation moves between dialogue types. Some shifts are *licit* (a persuasion may legitimately broaden into a deliberation); others are *illicit* (an information-seeking dialogue exploited as a covert persuasion is a fallacy of *digression*).
- *Fallacies as dialogue-rule violations*: rather than treating fallacies as defects of single arguments (the syllogistic tradition), they are analysed as moves that violate the rules of the dialogue type they occur in — a *circular argument* is fine in inquiry but fallacious in persuasion.
- *Profiles of dialogue*: a sequence diagram of typical turns within a dialogue type — the precursor of [[Conversation Policy]] / interaction-protocol diagrams in the ACL literature.

## Connections
- [[Argumentation Framework]]
- [[On the Acceptability of Arguments]]
- [[Fallacies - Hamblin]]
- [[Commitment Store]]
- [[Dialogue Typology]]
- [[Persuasion Dialogue]]
- [[Deliberation Dialogue]]
- [[Inquiry Dialogue]]
- [[Information-Seeking Dialogue]]
- [[Eristic Dialogue]]
- [[Negotiation]]
- [[Speech Act Theory]]
- [[Commitment-based Semantics]]
- [[Public Semantics]]
- [[ACL Rethinking Principles]]
- [[A Commitment-Based Approach to Agent Communication]]
- [[Commitment Machines - Yolum and Singh]]
- [[Coordinating Agents Using ACL Conversations]]
- [[ACRE Agent Conversation Reasoning Engine]]
- [[Conversation Policy]]
- [[Interaction Protocols]]
- [[Logic and Conversation]]
- [[Cooperative Principle]]

## Conceptual Contribution
- **Claim:** Argumentation is not a single uniform activity but a structured family of *dialogue types* characterised by the participants' goals; within each type, every utterance updates each participant's public *commitment store* under type-specific rules; fallacies are best analysed as illegitimate dialogue moves rather than as defective arguments.
- **Mechanism:** Six basic dialogue types defined by initial situation × individual goals × shared goal; dialogue rules per type; commitment-store update semantics; analysis of dialogue shifts and mixed dialogues; classification of fallacies as type-specific rule violations.
- **Concepts introduced/used:** [[Dialogue Typology]], [[Commitment Store]], [[Persuasion Dialogue]], [[Deliberation Dialogue]], [[Inquiry Dialogue]], [[Information-Seeking Dialogue]], [[Eristic Dialogue]], [[Negotiation]], Dialogue Shift, Profile of Dialogue.
- **Stance:** synthesis monograph / theoretical framework.
- **Relates to:** Provides the upstream typology that the commitment-based ACL programme ([[ACL Rethinking Principles|Singh]], [[A Commitment-Based Approach to Agent Communication|Fornara & Colombetti]], [[Commitment Machines - Yolum and Singh]]) takes as given when it makes commitments first-class. The Hamblin commitment-store mechanism ([[Fallacies - Hamblin]]) is the operational heart; Walton & Krabbe extend it with the dialogue-type framing. Conceptually adjacent to [[Cooperative Principle|Grice's cooperative principle]] but more granular: where Grice supplies a single cooperative norm, Walton & Krabbe show that the relevant cooperation is *type-specific* (persuasion ≠ negotiation ≠ inquiry). [[Coordinating Agents Using ACL Conversations]] (Cost et al.) and [[ACRE Agent Conversation Reasoning Engine]] are direct engineering descendants — Coloured Petri Nets and Dooley graphs are formal specifications of the kinds of dialogue Walton & Krabbe describe semi-formally. In the LLM-agent era the dialogue-type taxonomy is the obvious diagnostic for [[MAST Taxonomy|MAST]]-style failures (e.g. multi-agent systems unwittingly conducting *eristic* dialogues at scale, or persuasion-shifts hijacking deliberations) and a natural specification language for [[Conversation Policy|conversation-policy]] enforcement.

## Tags
#dialogue #argumentation #commitment-stores #foundations #walton #krabbe #pragmatics #acl-foundations
