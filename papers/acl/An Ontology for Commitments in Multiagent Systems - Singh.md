# An Ontology for Commitments in Multiagent Systems: Toward a Unification of Normative Concepts

**Reference:** Singh, M. P. (1999). *An Ontology for Commitments in Multiagent Systems: Toward a Unification of Normative Concepts.* Artificial Intelligence and Law 7(1): 97–113. Kluwer. [DOI](https://doi.org/10.1023/A:1008319631231) · [Author copy via Academia.edu](https://www.academia.edu/18636223/Ontology_for_commitments_in_multiagent_systems_toward_a_unification_of_normative_concepts) · [Singh publications (NCSU)](https://www.csc2.ncsu.edu/faculty/mpsingh/papers.html)

## Summary
This paper is the formal core of Singh's commitment-based programme — a piece that sits between the polemical [[ACL Rethinking Principles|*Rethinking the Principles*]] (1998) and the operationalised [[Commitment Machines - Yolum and Singh|commitment machines]] line (Yolum & Singh 2002). Singh argues that the multiplicity of *normative* concepts used across MAS, deontic logic, and law — *obligation*, *permission*, *prohibition*, *promise*, *contract*, *delegation*, *cancellation*, *release* — can be unified by taking the *social commitment* as the basic ontological primitive and reconstructing the rest as patterns over commitments. A social commitment is a four-place relation: a *debtor* is committed *to* a *creditor* for the *fulfilment* of some condition *in the context of* a particular institution or social scope. Once these four roles are fixed, the standard normative operations — *create*, *discharge*, *cancel*, *release*, *delegate*, *assign* — become commitment-state transitions, and the deontic vocabulary becomes a derived layer over the commitment substrate.

The construction is deliberately *public*: commitments live in the social state, not in the heads of any agent. A commitment exists when a publicly observable act has created it (a *promise* speech act, a *contract* signing, an *assertion* under appropriate sincerity context); it persists until a publicly observable act has discharged or cancelled it. The truth-conditions for "agent A is committed" are externally checkable: they reference the social record, not A's mental state. This is the exact alternative to the mentalistic semantics of FIPA / [[Communicative Actions for Artificial Agents - Cohen Levesque|Cohen and Levesque 1995]] that *Rethinking the Principles* called for. The paper also sets up the bridge to law: Singh notes the close fit with [[Jones-Sergot Normative Systems|Jones and Sergot's]] "count-as" relation, with [[Foundations of Logic Programming - Lloyd|deontic logic]], and with the [[Speaks-For Calculus|speaks-for]] tradition in distributed systems — establishing commitments as a *unifying* normative substrate across philosophy, law, MAS, and computer security.

For [[CBCL - Safe Self-Extending Agent Communication|CBCL]] and the broader [[Public Semantics|public-semantics]] line, this is the *ontology document*: it defines what "commitment" means precisely enough that protocol designers can map performatives onto commitment-state transitions and verifiers can monitor compliance from a transcript. The four-place structure (debtor, creditor, condition, context) maps almost directly onto the ledger-of-commitments architecture in [[A Commitment-Based Approach to Agent Communication|Fornara & Colombetti 2004]] and the *dialect contracts* in CBCL. The paper is also the place to cite when arguing that commitment-based ACL semantics is not merely a *behavioural surrogate* but a *real* normative theory with established connections to legal and deontic logic.

## Key Ideas
- *Commitment as the primitive normative concept*: a four-place relation `C(debtor, creditor, condition, context)` — agent `x` is committed to agent `y` for the fulfilment of condition `q` in the social context `s`. The four roles must always be specified; commitments without a creditor are degenerate.
- *Standard commitment operations*: *create* (a new commitment comes into being via a public act), *discharge* (the condition is satisfied), *cancel* (the debtor unilaterally retracts, possibly incurring meta-commitment), *release* (the creditor waives), *delegate* (the debtor passes the obligation to a third party with creditor consent), *assign* (the creditor passes the entitlement).
- *Conditional commitments*: `CC(x, y, p ⊃ q, s)` — `x` is committed to `y` to bring about `q` if `p` holds. The conditional structure handles contracts, contingent obligations, and protocol-state dependencies.
- *Discharge by satisfaction*: a commitment is discharged when its condition is satisfied (in the relevant social interpretation); discharge is monotone — once discharged, the commitment is closed.
- *Deontic vocabulary as derived*: *obligation*, *permission*, *prohibition*, *right*, and *duty* are reconstructable from commitment patterns plus the relevant institutional context.
- *Public, externally checkable semantics*: commitments are facts about the social record, not about agent mental states. Verification is by inspection of the transcript and the institutional rules.
- *Bridges to legal informatics and deontic logic*: the framework is explicitly compatible with [[Jones-Sergot Normative Systems|Jones and Sergot's]] count-as relation and with classical deontic-logic operators, positioning commitments as the *unifier* across philosophy, law, MAS, and distributed-security normative reasoning.

## Connections
- [[Commitment-based Semantics]]
- [[Social Commitment]]
- [[Conditional Commitment]]
- [[Commitments]]
- [[Commitment Operations]]
- [[Public Semantics]]
- [[Mentalistic Semantics]]
- [[Agent Communication Languages]]
- [[ACL Rethinking Principles]]
- [[Agent Communication Languages - Rethinking the Principles]]
- [[Commitment Machines - Yolum and Singh]]
- [[Flexible Protocol Specification and Execution]]
- [[A Commitment-Based Approach to Agent Communication]]
- [[Communicative Actions for Artificial Agents - Cohen Levesque]]
- [[Intention Is Choice with Commitment]]
- [[Speech Act Theory]]
- [[How to Do Things with Words]]
- [[Speech Acts - An Essay in the Philosophy of Language]]
- [[Foundations Of Illocutionary Logic]]
- [[Logic and Conversation]]
- [[Articulating Reasons - Brandom]]
- [[Making It Explicit - Brandom]]
- [[Deontic Scorekeeping]]
- [[Jones-Sergot Normative Systems]]
- [[Counts-As Relation]]
- [[Deontic Logic]]
- [[Authentication in Distributed Systems - Lampson Abadi Burrows Wobber]]
- [[Speaks-For Calculus]]
- [[Multi-Agent Systems]]
- [[Agent Communication And Institutional Reality]]
- [[CBCL - Safe Self-Extending Agent Communication]]

## Conceptual Contribution
- **Claim:** The proliferation of normative concepts across MAS, deontic logic, and law can be unified by taking the *social commitment* — a four-place relation `C(debtor, creditor, condition, context)` — as the basic primitive and reconstructing obligation, permission, prohibition, contract, and delegation as commitment patterns. Commitments are *public*: their existence is determined by observable acts and observable conditions, not by agent mental states.
- **Mechanism:** Define commitments as four-place relations (debtor / creditor / condition / context) and conditional commitments analogously. Specify the operations *create / discharge / cancel / release / delegate / assign* as commitment-state transitions. Show how standard deontic-logic operators and standard legal concepts (promise, contract, breach, novation) reduce to patterns over these primitives. Sketch the bridge to [[Jones-Sergot Normative Systems|Jones and Sergot's]] *count-as* analysis of institutional facts.
- **Concepts introduced/used:** [[Social Commitment]], [[Conditional Commitment]], [[Commitment Operations]] (*create / discharge / cancel / release / delegate / assign*), [[Debtor]], [[Creditor]], [[Condition]], [[Context (Commitment)]], [[Deontic Reduction]].
- **Stance:** foundational technical paper / unifying ontology.
- **Relates to:** The *formal* statement of the programme [[ACL Rethinking Principles|Singh 1998]] argued for polemically; the bridge to the operational accounts in [[Commitment Machines - Yolum and Singh|Yolum & Singh 2002]], [[Flexible Protocol Specification and Execution|Yolum & Singh 2002b]], and [[A Commitment-Based Approach to Agent Communication|Fornara & Colombetti 2004]]. The philosophical complement is [[Articulating Reasons - Brandom|Brandom]]: Singh's commitments are precisely the *commitment* leg of Brandom's deontic scorekeeping triple. The legal complement is [[Jones-Sergot Normative Systems|Jones & Sergot 1993]] — *count-as* gives the institutional grounding for what makes a publicly observable act count as creating a commitment. The distributed-systems complement is the [[Speaks-For Calculus|speaks-for]] tradition ([[Authentication in Distributed Systems - Lampson Abadi Burrows Wobber|Lampson et al. 1992]]) — credentials and delegated assertion authority are commitment patterns of the same family. [[CBCL - Safe Self-Extending Agent Communication|CBCL]]'s dialect contracts and verdict ledger directly instantiate this ontology at wire-format granularity.

## Tags
#singh #commitments #commitment-based-semantics #ontology #normative #public-semantics #acl #deontic #foundations
