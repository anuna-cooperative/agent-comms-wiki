# FIPA-ACL Specifications

**Reference:** Foundation for Intelligent Physical Agents (2002). *FIPA ACL Message Structure Specification* (FIPA00061) and *FIPA Communicative Act Library Specification* (FIPA00037). Geneva, December 2002. (FIPA was absorbed into the IEEE Computer Society in 2005; specifications remain the canonical reference.) [FIPA00061 (Message Structure)](http://www.fipa.org/specs/fipa00061/SC00061G.html) · [FIPA00037 (Communicative Act Library)](http://www.fipa.org/specs/fipa00037/SC00037J.html) · [FIPA00067 (Agent Message Transport)](http://www.fipa.org/specs/fipa00067/) · [IEEE FIPA standards committee](https://standards.ieee.org/develop/indconn/ec/fipa.html)

## Summary
The FIPA-ACL specifications are the standards-track distillation of the late-1990s mentalistic ACL programme: the wire format and semantics that "ended up shipping" as the canonical example of an industry-grade [[Agent Communication Languages|agent communication language]]. The suite splits into three documents that matter for ACL design. **FIPA00061** specifies the *message structure* — the surface syntax of an ACL message as a parameterised performative envelope with `:sender`, `:receiver`, `:content`, `:language`, `:ontology`, `:protocol`, `:conversation-id`, `:reply-with`, `:in-reply-to`, `:reply-by`, and a small set of related parameters. **FIPA00037** specifies the *communicative act library* — twenty-two performatives (*accept-proposal*, *agree*, *cancel*, *cfp*, *confirm*, *disconfirm*, *failure*, *inform*, *inform-if*, *inform-ref*, *not-understood*, *propagate*, *propose*, *proxy*, *query-if*, *query-ref*, *refuse*, *reject-proposal*, *request*, *request-when*, *request-whenever*, *subscribe*) — each given by feasibility precondition (FP) and rational effect (RE) expressed in the FIPA *Semantic Language* (SL) over beliefs, intentions, and uncertainty. **FIPA00067** specifies the *message transport* (HTTP, IIOP, WAP carriers; envelope and routing).

Two features make FIPA-ACL the canonical reference point — and the canonical negative example — for ACL semantics work. First, the *direct lineage from Cohen and Levesque*: the FP/RE structure of FIPA00037 is a streamlined adaptation of [[Communicative Actions for Artificial Agents - Cohen Levesque|Cohen and Levesque 1995]]. The semantics of *inform(p)* is, modulo notation, exactly the Cohen–Levesque definition: the sender believes `p`, believes the receiver does not know `p`, and intends the receiver to come to believe `p`. The semantics of *request* mirrors *attempt* over a hearer action. Second, the *unverifiability problem*: precisely because the semantics is given in terms of sender and receiver mental states, *no external observer can determine whether a message is FIPA-conformant*. A platform that ships *inform(p)* in violation of its feasibility preconditions (e.g. the sender does not believe `p`, i.e. is lying) is indistinguishable on the wire from a platform that ships a conformant *inform*. This is the deficiency [[ACL Rethinking Principles|Singh 1998]] names, [[Verifiable Semantics for ACLs|Wooldridge]] formalises, and the [[Commitment-based Semantics|commitment-based semantics]] tradition fixes.

For this vault, FIPA-ACL is the *engineered artefact* against which the public-semantics critique runs. The spec is well-engineered as a message format — the envelope, the protocol-id mechanism, the ontology / language slots are all sound — and the wire format itself has aged well. What has not aged well is the *semantics by mental-state precondition*: it is unverifiable, hostile to heterogeneous deployment, and incompatible with the [[Public Semantics|public-semantics]] / commitment-based programme that [[CBCL - Safe Self-Extending Agent Communication|CBCL]] inherits. The right reading is: keep the engineering, replace the semantics.

## Key Ideas
- *Three-part suite*: FIPA00061 (message structure), FIPA00037 (communicative act library), FIPA00067 (message transport).
- *Message structure*: `:sender`, `:receiver`, `:content`, `:language`, `:ontology`, `:protocol`, `:conversation-id`, `:reply-with`, `:in-reply-to`, `:reply-by`, `:performative`. Standard envelope; the `:content` slot carries an arbitrary content-language expression interpreted by the `:ontology`.
- *Twenty-two performatives*: from *accept-proposal* through *subscribe*, organised loosely into Searlean families (assertives, directives, commissives, declaratives). The set is small enough to remember and rich enough to cover most multi-agent interaction patterns.
- *Semantic Language (SL)*: FIPA's formal language for FP/RE definitions; a modal logic over belief, uncertainty, intention, and action, descended from Cohen and Levesque.
- *Feasibility precondition / rational effect*: each performative is defined by an FP (what must hold for the agent to perform the act in good faith) and an RE (what the agent intends to bring about). Both involve nested beliefs and intentions of sender and receiver.
- *Interaction protocols*: FIPA also standardises a small set of *interaction protocols* (FIPA-Request, FIPA-Query, FIPA-ContractNet, FIPA-IteratedContractNet, FIPA-EnglishAuction, FIPA-DutchAuction, FIPA-Brokering, FIPA-Recruiting, FIPA-Subscribe, FIPA-Propose) — finite state machines over performatives that script common conversational patterns.
- *Unverifiability is intrinsic*: the FP/RE conditions are stated over mental states; no external observer can check conformance without inspecting agent internals — a known design cost and the central target of the social-agency critique.

## Connections
- [[FIPA-ACL]]
- [[Communicative Actions for Artificial Agents - Cohen Levesque]]
- [[Intention Is Choice with Commitment]]
- [[Cohen and Levesque]]
- [[Mentalistic Semantics]]
- [[Rational Action Semantics]]
- [[Belief-Desire-Intention]]
- [[Speech Act Theory]]
- [[A Taxonomy of Illocutionary Acts]]
- [[KQML]]
- [[KQML Overview]]
- [[KQML as an Agent Communication Language]]
- [[The State of the Art in Agent Communication Languages]]
- [[Trends in Agent Communication Language]]
- [[Agent Communication Languages]]
- [[ACL Rethinking Principles]]
- [[Agent Communication Languages - Rethinking the Principles]]
- [[Verifiable Semantics for ACLs]]
- [[Semantics and Conversations for an ACL]]
- [[Public Semantics]]
- [[Commitment-based Semantics]]
- [[Commitment Machines - Yolum and Singh]]
- [[A Commitment-Based Approach to Agent Communication]]
- [[An Ontology for Commitments in Multiagent Systems - Singh]]
- [[Articulating Reasons - Brandom]]
- [[Languages and Language - Lewis]]
- [[CBCL - Safe Self-Extending Agent Communication]]
- [[Model Context Protocol]]
- [[Agent-to-Agent Protocol]]
- [[LACP]]
- [[Survey Of AI Agent Protocols]]

## Conceptual Contribution
- **Claim:** A standardised ACL can be built from a small set of performatives, each given by mental-state preconditions and intended effects in a modal logic, embedded in a standardised message envelope, with a standard library of interaction protocols. The result is *the* canonical industry ACL.
- **Mechanism:** Three coordinated specs. FIPA00061 fixes the wire format (envelope parameters and message routing). FIPA00037 fixes the performative semantics in SL, with each of twenty-two performatives given by FP and RE in terms of belief, uncertainty, and intention nested over sender and receiver. FIPA00067 specifies the message transport. A small library of interaction protocols (FIPA-Request, FIPA-ContractNet, etc.) gives canonical conversational patterns as finite state machines over performatives.
- **Concepts introduced/used:** [[FIPA Performative]], [[Semantic Language (FIPA SL)]], [[Feasibility Precondition]], [[Rational Effect]], [[FIPA Interaction Protocol]], [[ContractNet]], [[ACL Message Envelope]], [[Conversation ID]].
- **Stance:** standards specification suite / industry deliverable.
- **Relates to:** Direct standardisation of [[Communicative Actions for Artificial Agents - Cohen Levesque|Cohen and Levesque 1995]] — the FIPA00037 semantics is essentially that paper's framework with editorial smoothing. As the canonical engineering artefact of [[Mentalistic Semantics|mentalistic ACL semantics]], FIPA-ACL is the negative example for [[ACL Rethinking Principles|Singh 1998]], [[Verifiable Semantics for ACLs|Wooldridge]], [[Commitment Machines - Yolum and Singh|Yolum & Singh]], [[A Commitment-Based Approach to Agent Communication|Fornara & Colombetti]], and the [[Public Semantics|public-semantics]] tradition generally. [[CBCL - Safe Self-Extending Agent Communication|CBCL]] reuses the *engineering* of FIPA-ACL (typed performative envelope, conversation-id, ontology slot, protocol-id) while *replacing* the semantics with publicly verifiable commitment-based meaning. The modern LLM-agent protocol generation ([[Model Context Protocol]], [[Agent-to-Agent Protocol]], [[LACP]]) has retreated from FIPA's level of semantic ambition; the open question is whether that retreat will repeat the mentalistic mistake under a new guise (sycophantic JSON tool-calls) or learn from the FIPA experience.

## Tags
#fipa #acl #standard #mentalistic-semantics #performatives #classical-acl #message-envelope #specification
