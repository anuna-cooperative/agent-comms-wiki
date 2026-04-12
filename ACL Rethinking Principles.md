# Agent Communication Languages: Rethinking the Principles

**Reference:** Munindar P. Singh (1998). *IEEE Computer*, December 1998, pp. 40-47. Source file: `computer-acl-98.pdf`

## Summary
Singh surveys the state of Agent Communication Languages (ACLs) such as KQML and FIPA/Arcol, and argues that their dominant mental-agency semantics (defining communicative acts in terms of beliefs and intentions) is conceptually unsatisfying and practically untestable because we cannot read agents' minds. He proposes a conceptual shift to *social agency*: ACL semantics should be grounded in a public perspective on commitments, roles, and societies, so compliance with the standard is observable and testable.

The paper maps the ACL design space along two critical dimensions — *meaning* (perspective, type, basis, context, coverage of communicative acts) and *agent construction* (design vs. execution autonomy) — and shows how both KQML and Arcol emphasize private, mental-state semantics and thus fail to enable true heterogeneous interoperation. Singh's alternative emphasizes protocols, roles, and "society management" infrastructure as a richer public substrate for ACLs.

## Key Ideas
- Mental-agency ACL semantics (KQML, Arcol, early FIPA) cannot be verified without inspecting agent internals.
- ACLs need a *public* perspective, conventional meaning, pragmatics, and full coverage of communicative act categories.
- Seven categories of communicative acts: assertives, directives, commissives, permissives, prohibitives, declaratives, expressives.
- Social agency replaces BDI with commitments, roles, and societies as the semantic basis.
- Dialects/idiolects arise when only private perspectives are considered.

## Connections
- [[FIPA-ACL]]
- [[KQML]]
- [[Speech Act Theory]]
- [[Agent Communication Languages]]
- [[Multi-Agent Systems]]

## Conceptual Contribution
- **Claim:** Agent Communication Language semantics must abandon mental agency (beliefs/intentions) and be grounded in a public, social perspective (commitments, roles, societies) in order to be testable and support heterogeneous interoperation.
- **Mechanism:** Surveys KQML, Arcol, FIPA; lays out a two-dimensional design space (meaning × agent construction); shows that mental-state semantics cannot determine compliance; proposes social-agency framework using protocols, roles, and "society management" infrastructure.
- **Concepts introduced/used:** [[Mentalistic Semantics]], [[Public Semantics]], [[Social Agency]], [[Commitments]], [[Communicative Acts]], [[Verifiable Semantics]], [[Interoperability]], [[Dialects and Idiolects]]
- **Stance:** critique / foundational
- **Relates to:** Direct antecedent to [[Verifiable Semantics for ACLs]] (Wooldridge) which formalises the verification problem Singh names. Sharpens the critique of the mentalistic approach underlying [[KQML Overview]] and [[FIPA-ACL]], and motivates commitment-based frameworks such as [[Agent Communication And Institutional Reality]].

## Tags
#acl #semantics #social-agency #interoperability
