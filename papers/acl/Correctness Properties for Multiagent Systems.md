# Correctness Properties for Multiagent Systems

**Reference:** Singh, M. P. & Chopra, A. K. (2009). DALT 2009 workshop paper; revised proceedings published in *Declarative Agent Languages and Technologies VII*, LNCS 5948 (2010), pp. 192–207. [Author-hosted PDF](https://www.csc2.ncsu.edu/faculty/mpsingh/papers/mas/aamas-dalt-09.pdf). [Page 9: summary of correctness properties](https://www.csc2.ncsu.edu/faculty/mpsingh/papers/mas/aamas-dalt-09.pdf#page=9).

## Summary

Singh and Chopra organize multiagent-system correctness around interactions among independently designed and motivated agents. Message ordering alone cannot establish whether those interactions make business sense. Instead, messages create or alter practical [[Commitments]], written `C(debtor, creditor, antecedent, consequent)`: the debtor owes the consequent to the creditor if the antecedent holds. This supports flexible enactments while retaining an explicit account of who owes what to whom.

The paper distinguishes properties of agents, roles, and protocols. Interoperability combines safety, liveness, and commitment alignment; compliance concerns actually discharging commitments. These are independent: agents can agree that a payment is owed while the debtor refuses to pay. Protocol transparency asks whether participants receive enough evidence to judge their debtors' compliance. Conformance, operability, refinement, and compatibility support modular protocol engineering, but semantic refinement alone does not guarantee that individual roles can be substituted.

Distribution matters throughout: the analysis assumes asynchronous, reliable, pairwise order-preserving messaging, rather than an instantly shared commitment store. Different local observations can produce disagreement even when agents use the same message meanings. This is a conceptual characterization and research agenda, not a complete formal calculus or an implemented verification procedure; the authors explicitly leave practical decision algorithms open.

## Key Ideas

- **Meaning before message sequences:** a purchase may legitimately deliver before payment or use a third party, provided the relevant commitments are handled correctly.
- **Alignment is asymmetric:** whenever a creditor concludes that it is owed a commitment, the corresponding debtor must recognize that debt. This is stronger than merely accepting each other's message syntax.
- **Conformance preserves expectations:** a conforming role meets the obligations expected of the original role while imposing no additional expectations on others; an agent can similarly conform to a role.
- **Operability concerns the protocol's roles:** protocol permissions alone do not ensure progress. A buyer that insists on delivery first and a seller that insists on payment first can deadlock even when both conform to a permissive purchase protocol.
- **Compliance needs evidence and assumptions:** runtime observations can establish fulfillment in particular enactments. Detecting nonfulfillment eventually requires a deadline; proofs about arbitrary open-system agents require more than a protocol specification.
- **Transparency is an information-flow requirement:** an obligation can be fulfilled without the creditor being able to verify it if relevant events remain hidden among other participants.
- **Refinement is not compatibility:** paying by check can realize an abstract payment through additional roles and steps, but a check-processing participant need not interoperate with a participant expecting direct payment and a separate receipt.

## Correctness Properties at a Glance

The linked page 9 contains Table 2. The questions below paraphrase its classification using the definitions in Section 3.

| Property | Applies to | Question |
| --- | --- | --- |
| Interoperability | Agents and roles | Are their messaging and commitment expectations mutually workable? |
| Safety | Agents and roles | Can participants handle the messages and arrival orders that occur? |
| Liveness | Agents and roles | Does interaction make progress rather than block? |
| Alignment | Agents and roles | Does each debtor recognize the commitments expected by its creditors? |
| Conformance | Roles; also agents instantiating roles | Does a replacement meet existing expectations without adding demands? |
| Operability | Protocols | Are the specified roles interoperable? |
| Compliance | Agents | Are their commitments discharged? |
| Transparency | Protocols | Can each role verify its debtors' compliance? |
| Refinement | Protocols | Does a more detailed protocol realize behavior allowed by the abstract one? |
| Compatibility | Protocols | Do roles in one protocol conform to roles in the other? |

## Connections

- [[Commitment-based Semantics]] — message meanings as changes in public social relationships.
- [[Interaction Protocols]] — protocols as reusable interaction interfaces, with correctness criteria beyond ordering.
- [[Flexible Protocol Specification and Execution]] — earlier commitment-based planning account; this paper broadens the correctness taxonomy.
- [[An Ontology for Commitments in Multiagent Systems - Singh]] — foundational commitment representation and operations.
- [[Verifiable Semantics for ACLs]] — observable evidence and the limits of verification.
- [[Semantics and Verification of Information-Based Protocols]] — a later, distinct treatment of information flow and protocol verification.
- [[Epistemic Logic]] — relevant to the distinction between fulfillment and a creditor's ability to know it occurred.

## Conceptual Contribution

- **Claim:** Correctness in open multiagent systems requires distinct criteria for meaningful agreement, fulfillment, observability, and modular substitution.
- **Mechanism:** Interpret messages through directed conditional commitments; characterize correctness over the local expectations and observations of agents and roles, then lift these distinctions to protocol design.
- **Concepts introduced/used:** [[Commitments]], [[Commitment-based Semantics]], [[Interaction Protocols]], [[Interoperability]], [[Safety Property]], [[Liveness Property]], [[Local History]], [[Protocol Verification]].
- **Stance:** interaction-oriented / declarative / distributed-systems engineering.
- **Relates to:** Extends the flexibility argument of [[Flexible Protocol Specification and Execution]] into a taxonomy of correctness properties. Complements message-flow and session-type approaches with business-level meaning while emphasizing asynchronous local observations rather than a globally shared social state.

## Tags

#acl #multi-agent #commitments #protocols #correctness #interoperability #verification
