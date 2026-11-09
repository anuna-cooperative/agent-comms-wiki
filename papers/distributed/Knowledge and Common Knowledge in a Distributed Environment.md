# Knowledge and Common Knowledge in a Distributed Environment

## Reference

Joseph Y. Halpern and Yoram Moses. “Knowledge and Common Knowledge in a Distributed Environment.” *Journal of the ACM* 37(3), 549–587 (1990). First presented at PODC 1984, pp. 50–61. [DOI](https://doi.org/10.1145/79147.79161) · [Author PDF](https://www.cs.cornell.edu/home/halpern/papers/common_knowledge.pdf) · [Full text](https://arxiv.org/html/cs/0006009v1) · [arXiv record](https://arxiv.org/abs/cs/0006009).

The arXiv deposit dates from 2000 and describes itself as essentially identical to the 1990 journal version. The paper received the [2009 Dijkstra Prize in Distributed Computing](https://www.podc.org/dijkstra/2009-dijkstra-prize/).

## Summary

Halpern and Moses give an epistemic foundation for distributed protocols: a system must achieve a global task even though each participant can act only on its local information. Messages and observations change what participants know, including what they know about one another's knowledge. Correct coordination therefore depends on attaining the particular individual or group knowledge that the task requires. The paper formalises these distinctions using [[Local History|local histories]], possible runs in [[Interpreted Systems|interpreted systems]], and operators for [[Individual Knowledge|individual]], [[Distributed Knowledge|distributed]], [[Everyone Knows|everyone’s]], and [[Common Knowledge|common knowledge]].

The [[Coordinated Attack Problem|coordinated attack problem]] exposes the limits of this process. Under the paper's specification, a correct simultaneous attack requires [[Common Knowledge|common knowledge]] that the attack is occurring. Under its [[Non-Guaranteed Communication|non-guaranteed-communication assumptions (NG1 and NG2)]], message exchange cannot establish common knowledge absent in the corresponding run without delivered messages. Consequently, no correct protocol can cause the generals to attack. This is a result about explicit assumptions and a particular coordination requirement; it does not establish that all agreement or useful coordination is impossible.

The paper develops [[Epsilon-Common Knowledge|bounded-time (ε)]], [[Eventual Common Knowledge|eventual]], and [[Timestamped Common Knowledge|timestamped]] variants of common knowledge that can support less demanding forms of coordination. Its notion of [[Internal Knowledge Consistency|internal knowledge consistency]] asks when treating something as common knowledge remains compatible with anything participants could later observe. Its contribution is both explanatory and practical: specify the knowledge a task needs, then determine whether the communication and timing model can supply it.

## Why Do We Have Protocols?

**Protocols let participants achieve a joint outcome using only local information.** They specify how messages and observations justify each participant’s next action. This is an interpretation of the paper's central argument, especially §1, rather than a quotation or a claim that there is one universal explanation of every kind of protocol.

The introduction's acknowledgement example makes the point concrete: after receiving an acknowledgement, a sender knows that its packet arrived and can safely discard it and move on. An acknowledgement changes the sender's grounds for acting. More demanding tasks may require knowing that another participant knows, or a stronger condition such as [[Everyone Knows|everyone knowing]] or [[Common Knowledge|common knowledge]].

The design question is therefore: **what must each participant know before acting, and what interaction can establish that knowledge under the actual delivery and timing assumptions?** Sections 7–8 show why adding acknowledgements cannot overcome an impossible coordination requirement; §§10–12 explore attainable alternatives.

## Key Ideas

- **[[Local History|Local information]], global requirements (§1).** A participant’s decision depends on its own observations and received messages, while correctness concerns the system as a whole.
- **[[Individual Knowledge|Knowledge]] through [[Epistemic Indistinguishability|indistinguishability]] (§6).** An agent knows a proposition when it holds at every point compatible with the agent's local view. This is a semantic property, not a requirement for an explicit internal knowledge database.
- **Group knowledge has distinct strengths (§3).** [[Common Knowledge]] implies [[Everyone Knows|everyone knows]], which implies [[Someone Knows|someone knows]], which implies [[Distributed Knowledge|distributed knowledge]]. Distributed knowledge pools information conceptually; it need not be available to any individual.
- **[[Common Knowledge|Common knowledge]] (§3).** Everyone knows a fact, everyone knows that everyone knows it, and so on through every finite depth of [[Higher-Order Knowledge|higher-order knowledge]].
- **[[Public Announcement|Public announcements]] (§2).** The [[Muddy Children Puzzle|muddy children puzzle]] shows that an announcement can change higher-order knowledge even when its content was already individually known.
- **[[Coordinated Attack Problem|Coordinated attack]] (§7, Proposition 4).** Successful simultaneous attack under the specified protocol conditions entails common knowledge of the attack.
- **Communication limits (§8, Theorem 5).** Under [[Non-Guaranteed Communication|NG1/NG2]], delivered messages cannot create common knowledge absent in a matching no-message run. Initially shared facts or a shared global clock require care; the theorem is not a blanket prohibition on any fact becoming common knowledge.
- **Weaker coordination (§§10–12).** [[Epsilon-Common Knowledge|Bounded-time]], [[Eventual Common Knowledge|eventual]], and [[Timestamped Common Knowledge|timestamped common knowledge]] capture useful alternatives. Concurrent common knowledge is discussed as subsequent work in the conclusion, not introduced here.

## Concepts Defined

| Concept | Notation | Meaning |
| --- | --- | --- |
| [[Individual Knowledge]] | `K_i φ` | Agent i can rule out every alternative in which φ is false. |
| [[Distributed Knowledge]] | `D_G φ` | Pooling the group’s information would establish φ. |
| [[Someone Knows]] | `S_G φ` | At least one member knows φ. |
| [[Everyone Knows]] | `E_G φ` | Every member individually knows φ. |
| [[Higher-Order Knowledge]] | `E_G^k φ` | Everyone knows that everyone knows, through k levels. |
| [[Common Knowledge]] | `C_G φ` | Every finite level of “everyone knows” holds. |
| [[Local History]] | `h(i,r,t)` | The observations available to a participant at a system point. |
| [[Epistemic Indistinguishability]] | `~_i` | Two system points look the same to agent i. |
| [[Coordinated Attack Problem]] | `—` | Simultaneous joint action challenged by unreliable delivery. |
| [[Non-Guaranteed Communication]] | `NG1 / NG2` | The precise delivery assumptions used for the impossibility result. |
| [[Epsilon-Common Knowledge]] | `C_G^ε φ` | Group knowledge supporting coordination within a bounded window. |
| [[Eventual Common Knowledge]] | `C_G^◇ φ` | A fixed-point knowledge condition allowing unbounded timing differences. |
| [[Timestamped Common Knowledge]] | `C_G^T φ` | Group knowledge relative to a shared local timestamp or phase. |
| [[Internal Knowledge Consistency]] | `—` | An idealised knowledge interpretation remains compatible with every local history. |
| [[Public Announcement]] | `—` | A shared observation that can change higher-order knowledge. |
| [[Greatest Fixed Point]] | `νX.F(X)` | The largest self-sustaining solution used to define common knowledge. |

The implication hierarchy is `C_G φ ⇒ E_G φ ⇒ S_G φ ⇒ D_G φ ⇒ φ`. Higher levels impose stronger requirements on the same fact. Temporal variants have their own definitions and should not be substituted into this hierarchy without additional assumptions.

## Connections

- [[Interaction Protocols]] — an epistemic explanation of the need for structured interaction.
- [[Common Knowledge]]
- [[Distributed Knowledge]]
- [[Epistemic Logic]]
- [[Epistemic S5]]
- [[Interpreted Systems]]
- [[Knowledge-Based Programs]]
- [[Muddy Children Puzzle]]
- [[Knowing What vs Knowing That]]
- [[The Synthesis of Digital Machines with Provable Epistemic Properties]] — an operational connection between knowledge specifications and agents.
- [[Time Clocks and the Ordering of Events in a Distributed System]] — a complementary account of causality and local observations.
- [[Impossibility of Distributed Consensus with One Faulty Process]] — a separate impossibility theorem with different task and failure assumptions; coordinated attack is not a proof of FLP.
- [[Agent Communication Languages - Rethinking the Principles]] — complements knowledge-based coordination with public commitments and externally verifiable agent communication semantics.

## Conceptual Contribution

- **Claim:** Distributed coordination depends on the individual and group knowledge required to justify local actions that jointly satisfy a global specification.
- **Mechanism:** Formal knowledge operators over indistinguishable local histories, a hierarchy of group knowledge, impossibility results under explicit communication assumptions, and weaker common-knowledge variants for attainable coordination.
- **Concepts introduced/used:** [[Common Knowledge]], [[Distributed Knowledge]], [[Epistemic Logic]], [[Interpreted Systems]], [[Interaction Protocols]], [[Knowledge-Based Programs]].
- **Stance:** foundational formal framework and impossibility analysis.
- **Relates to:** Supplies an epistemic foundation for interaction protocols. Complements Lamport's causal ordering and Singh's public social semantics; these address related but distinct aspects of inter-agent coordination.

## Source Verification

Reviewed on 27 October 2026 with `ar-crawl session`: arXiv record, full-text §§1, 7, 8, and 14, and the official Dijkstra Prize citation. Evidence, candidate comparisons, and the interpretation of “why protocols?” are recorded in Elephant theory `why-protocols` (`8dea6af67782ccbee8174b940a5979a6c2b2502bd2f1509cd6293330cae700ac`). Updated the existing note rather than creating a duplicate.

## Tags

#distributed-systems #epistemic-logic #common-knowledge #halpern-moses #foundational #knowledge-representation #coordination #muddy-children
