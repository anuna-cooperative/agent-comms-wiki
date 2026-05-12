# On the Characterisation of Law and Computer Systems: The Normative Systems Perspective

**Reference:** Jones, A. J. I. & Sergot, M. (1993). *On the Characterisation of Law and Computer Systems: The Normative Systems Perspective.* In J.-J. Ch. Meyer & R. J. Wieringa (eds.), *Deontic Logic in Computer Science: Normative System Specification* (pp. 275–307). John Wiley & Sons. [Semantic Scholar record](https://www.semanticscholar.org/paper/On-the-characterization-of-law-and-computer-the-Jones-Sergot/f6966d4f8726ff90ac7196f64ffb4b1a2f9c230e) · [DEON 1991 precursor (workshop paper, more accessible)](https://www.researchgate.net/publication/2495117_On_the_characterisation_of_law_and_computer_systems_The_normative_systems_perspective) · [SEP: deontic logic](https://plato.stanford.edu/entries/logic-deontic/)

## Summary
Jones and Sergot's chapter is the founding statement of the *normative systems* programme in AI and computer science — the move that takes computer systems (including multi-agent systems) seriously as *normative* artefacts whose behaviour can be analysed in the same vocabulary as legal systems. The central technical contribution is a formal account of the **counts-as** relation: the relation by which a *brute* (physical, computational) event is treated by an institution as constituting a particular *institutional* event. A piece of paper of certain composition, signed in certain ways, *counts as* a contract in the legal institution; a particular sequence of bytes on the wire, conformant to a particular protocol, *counts as* a binding promise in an agent society. The counts-as relation is the *bridge* between brute facts and institutional facts, between syntactic events and their normative significance.

The paper develops counts-as as a conditional connective `⇒s` indexed by an institution `s`: `A ⇒s B` reads "in institution `s`, `A` counts as `B`." The counts-as connective is not classical material implication: it is *institution-relative*, *non-monotonic* (additional facts about the institutional context may defeat the count-as), and *constitutive* (the count-as relation is partly what makes the institution be the institution it is). The framework lets the authors model standard legal phenomena — speech-acts that create institutional roles, signing-procedures that count as enacting law, delegation that lets an agent's act count as another's, and the distinction between rules that *regulate* existing institutional activity and rules that *constitute* the institutional categories themselves. The Wieringa–Meyer volume's surrounding chapters develop deontic logics (obligation, permission, prohibition) that combine with counts-as to specify normative systems.

For [[CBCL - Safe Self-Extending Agent Communication|CBCL]] and the [[Public Semantics|public-semantics]] line, the counts-as relation is the missing institutional bridge between the wire format and the commitment-state. A CBCL dialect contract is precisely a counts-as specification: *in this dialect, this byte-sequence on the wire counts as a binding commitment with these debtor / creditor / condition / context slots*. Without counts-as, the move from "the agent emitted these bytes" to "the agent has incurred this commitment" is unprincipled; with counts-as, it is a well-defined institutional bridge inheriting decades of deontic-logic infrastructure. The paper is also the *unification point* for the broader normative MAS literature — [[An Ontology for Commitments in Multiagent Systems - Singh|Singh's commitments]], [[Agent Communication And Institutional Reality|Fornara–Colombetti–Verdicchio's institutional ACL]], and the broader European MAS deontic tradition (Boella, van der Torre, Castelfranchi, Carmo–Jones) all sit downstream.

## Key Ideas
- *Counts-as relation `⇒s`*: an institution-indexed conditional. `A ⇒s B` reads "in institution `s`, `A` counts as `B`." The bridge between brute facts (physical, computational events) and institutional facts (contracts, commitments, roles).
- *Constitutive vs regulative rules*: counts-as rules are *constitutive* — they partly define what the institution *is*. Regulative rules (deontic operators: obligation, permission, prohibition) presuppose the institutional categories and govern behaviour within them. The constitutive/regulative distinction goes back to Searle 1969; Jones–Sergot give it a formal home.
- *Non-monotonic, institution-relative, defeasible*: counts-as is not classical implication. Additional facts about the institutional context (a forged signature, an invalid delegation chain) may defeat a counts-as that would otherwise hold.
- *Institutions as the unit of normative analysis*: an institution is a coherent body of constitutive and regulative rules. Computer systems can host institutions exactly as legal systems do.
- *Empowerment*: certain institutional roles are *empowered* to perform certain acts (the judge can pronounce sentence; the agent in role `seller` can issue invoices). Empowerment is a counts-as fact about which acts of which role-holders count as which institutional acts.
- *Normative-position analysis*: drawing on Hohfeld's analysis of fundamental legal conceptions (right / duty / privilege / liability / power / immunity), the paper sketches how each Hohfeldian relation is reconstructible from constitutive-and-regulative-rule analyses.
- *Bridge to deontic logic*: combines naturally with standard deontic operators (`Os` "it is obligatory in `s` that", `Ps` "it is permitted in `s` that", etc.) to give a full normative-system specification language.

## Connections
- [[Normative Systems]]
- [[Counts-As Relation]]
- [[Deontic Logic]]
- [[Constitutive Rules]]
- [[Regulative Rules]]
- [[Institutional Facts]]
- [[Hohfeldian Analysis]]
- [[Empowerment]]
- [[Speech Act Theory]]
- [[How to Do Things with Words]]
- [[Speech Acts - An Essay in the Philosophy of Language]]
- [[Foundations Of Illocutionary Logic]]
- [[Logic and Conversation]]
- [[Convention - Lewis]]
- [[Languages and Language - Lewis]]
- [[Articulating Reasons - Brandom]]
- [[Making It Explicit - Brandom]]
- [[Deontic Scorekeeping]]
- [[Commitment-based Semantics]]
- [[An Ontology for Commitments in Multiagent Systems - Singh]]
- [[Commitment Machines - Yolum and Singh]]
- [[Flexible Protocol Specification and Execution]]
- [[A Commitment-Based Approach to Agent Communication]]
- [[Agent Communication And Institutional Reality]]
- [[ACL Rethinking Principles]]
- [[Multi-Agent Systems]]
- [[Authentication in Distributed Systems - Lampson Abadi Burrows Wobber]]
- [[Speaks-For Calculus]]
- [[Levels Of Social Orchestration]]
- [[Autonomic Service Component Ensembles]]
- [[CBCL - Safe Self-Extending Agent Communication]]

## Conceptual Contribution
- **Claim:** Legal systems and computer systems can be analysed in a single formal framework — the *normative system* — anchored by the *counts-as* relation, a constitutive bridge from brute facts to institutional facts. Deontic operators (obligation, permission, prohibition) then operate on the institutional categories the counts-as relation establishes.
- **Mechanism:** Introduce the institution-indexed conditional `⇒s` (counts-as in institution `s`), reflexive and transitive but non-monotonic and institution-relative. Distinguish *constitutive* rules (which establish institutional categories via counts-as) from *regulative* rules (which apply deontic operators within the institutional categories). Combine with standard deontic operators to specify the full normative system. Sketch how Hohfeld's fundamental legal conceptions reduce to constitutive/regulative patterns.
- **Concepts introduced/used:** [[Counts-As Relation]] `⇒s`, [[Constitutive Rules]], [[Regulative Rules]], [[Institutional Facts]], [[Brute Facts]], [[Empowerment]], [[Hohfeldian Analysis]], [[Normative Position]], [[Deontic Logic]].
- **Stance:** foundational technical chapter.
- **Relates to:** The *institutional bridge* missing from the [[Commitment-based Semantics|commitment-based semantics]] line — a CBCL dialect contract is a counts-as specification (this byte-sequence, in this dialect, counts as this commitment), and without counts-as the move from wire events to institutional commitments is unprincipled. Pairs directly with [[An Ontology for Commitments in Multiagent Systems - Singh|Singh 1999]] (commitments as the normative substrate) and with [[Agent Communication And Institutional Reality|Fornara, Colombetti & Verdicchio]] (institutional ACL semantics). The philosophical foundation is Searle 1969's [[Speech Acts - An Essay in the Philosophy of Language|constitutive/regulative distinction]] and Searle 1995's *Construction of Social Reality* (counts-as as social ontology); Jones–Sergot give the formal home. Compatible with [[Articulating Reasons - Brandom|Brandomian inferentialism]] as a *layer*: counts-as gives the institutional ontology, deontic scorekeeping gives the dynamics of commitment-undertaking within that ontology. The [[Speaks-For Calculus|speaks-for calculus]] of [[Authentication in Distributed Systems - Lampson Abadi Burrows Wobber|Lampson et al.]] is a counts-as fragment (this credential counts as authority to assert on behalf of). For [[CBCL - Safe Self-Extending Agent Communication|CBCL]], counts-as is the formal-vocabulary answer to "what does dialect installation actually *do* normatively?" — install rules give wire events institutional meaning.

## Tags
#jones-sergot #normative-systems #counts-as #deontic-logic #constitutive-rules #institutional-facts #foundations #commitment #legal-informatics #classical
