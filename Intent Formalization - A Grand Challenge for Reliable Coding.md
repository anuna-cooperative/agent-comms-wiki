# Intent Formalization: A Grand Challenge for Reliable Coding in the Age of AI Agents

**Reference:** Shuvendu K. Lahiri (2026). *arXiv:2603.17150v1 (Microsoft Research)*. Source file: `2603.17150v1.pdf`. [URL](https://arxiv.org/abs/2603.17150)

## Summary
Agentic AI can now write whole systems from brief prompts — "vibe coding" — but the *intent gap* between what a user means and what a program does has exploded accordingly. Lahiri argues that the central reliability bottleneck is no longer code generation but **intent formalization**: the automatic translation of informal user intent into checkable formal specifications. Lightweight tests, runtime contracts, logical contracts (Dafny, F*, Verus), and domain-specific languages lie on a single tradeoff spectrum — all formal, all checkable, differing only in coverage and cost.

The paper reframes the question of "can AI write the code?" as "can AI help us specify what the code should do, and then verify it does?". Early research (GPT-4 generating Defects4J-catching postconditions; ClassInvGen; AutoVerus) already shows LLMs can produce meaningful, non-syntactic specifications. The key open bottleneck is **validating specifications**: since only the user knows their intent, there is no oracle — soundness/completeness must be estimated via semi-automated proxies (mutation testing, test-derived metrics). Research agenda: scaling beyond benchmarks, compositionality under change, richer logics, and human-AI specification interaction.

## Key Ideas
- **Intent gap** = semantic distance between informal NL requirements and operational code; agentic AI amplifies it at scale
- AI-generated code is *plausible by construction*, not *correct by construction*
- **Intent formalization spectrum:** tests → code contracts (assertions, pre/post/invariants) → logical contracts (Dafny/F*/Verus) → DSLs with verified synthesis
- **Soundness/completeness** of specifications w.r.t. tests, without requiring a code-side oracle
- Complementary to spec-driven development tools (GitHub Spec Kit) — closes their informality gap
- Not *autoformalization*: cheap, targeted spec fragments beat full NL→logic translation

## Connections
- [[LLM Agents]]
- [[Formal Verification]]
- [[Hoare Logic]]
- [[Operational Semantics]]
- [[Domain-Specific Languages]]
- [[Why Do Multi-Agent LLM Systems Fail]]
- [[MAST Taxonomy]]
- [[Assigning Meanings to Programs]]
- [[Foundations of Logic Programming - Lloyd]]
- [[Making Smart Contracts Smarter]]
- [[Agents of Chaos]]

## Conceptual Contribution
- **Claim:** The reliability bottleneck for agentic coding is not code generation but *intent formalization* — LLMs can and should produce formal, checkable specifications of what code must satisfy, along a cost/coverage spectrum from tests to DSLs.
- **Mechanism:** Survey empirical results (GPT-4 postcondition generation, ClassInvGen class invariants, AutoVerus/VeriStruct module-level verification) showing LLMs can lift NL intent to Dafny/Verus contracts; propose test-based soundness/completeness measurement for specs.
- **Concepts introduced/used:** [[Intent Gap]], [[Intent Formalization]], [[Code Contracts]], [[Logical Contracts]], [[Verified Synthesis]], [[Specification Validation]], [[Specification Soundness]], [[Specification Completeness]], [[Vibe Coding]], [[Dafny]], [[Verus]], [[F*]]
- **Stance:** foundational / research-agenda
- **Relates to:** Sister paper to [[Why Do Multi-Agent LLM Systems Fail]] — where MAST identifies specification/coordination/verification as the dominant failure modes, this paper prescribes *how* to close the specification leg. Puts Floyd-Hoare program semantics ([[Assigning Meanings to Programs]], [[Hoare Logic]]) at the centre of LLM tooling. Shares the "semantic gap between intent and runtime" diagnosis with [[Making Smart Contracts Smarter]].

## Tags
#llm-agents #formal-verification #specification #intent-formalization #vibe-coding
