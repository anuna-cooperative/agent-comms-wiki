# CBCL Technical Overview Wiki Gaps

**Reference:** Hugo O’Connor, Anuna Research, and Aaron Snoswell, QUT GenAI Lab. *CBCL: safe self-extending agent communication*, October 2026. Source: `/Users/anuna-01/Desktop/cbcl-technical-overview.pdf`, 74 pages. Reviewed against this wiki on 6 October 2026 using `zetl list`, `zetl view`, and `zetl search`.

The wiki already explains CBCL’s DCFL boundary, homoiconic dialect exchange, prefix-free dispatch, R1–R3, and much of R4–R5. The major missing content is the progression from a safe language to runtime role protocols, convergent shared objects, and replaceable confined interfaces. The existing [[CBCL - Safe Self-Extending Agent Communication]] note also needs several qualifications where its implementation claims exceed the overview’s stated guarantees.

Page references below refer to the supplied PDF. Implementation and experimental claims are attributed to that overview; they are not an independent code audit. Existing paper summaries should retain their original publication scope, with later implementation material clearly separated.

## Highest priority additions

### R6 roles and runtime endpoint projection

**PDF pp. 42–48.** R6 appears only as a brief connection in the CBCL note. [[Endpoint Projection]], [[Session Types]], and [[BSPL]] provide useful background, but do not explain CBCL’s mechanism.

Add a dedicated account of:

- Singleton and indexed roles, `:roles`, and performative `:from` and `:to` annotations.
- The signed, content-addressed `with-roles` cast at the thread root. Nomination is not consent: an authenticated act ratifies a sending role. Every declared role observes the cast-bearing root.
- Install checks for role completeness, coherent choosers, projectability, causal locality, reachability, and resolved chooser cardinality. Indexed roles also require locality checking against the instantiated cast.
- Local send/receive projections derived from a runtime-installed dialect over unordered, lossy delivery.
- The local-to-global correspondence: soundness for closed P-safe configurations; completeness and exactness for compatible families that agree on hashes, delivery, predecessors, and cast. This does not establish progress under withholding, safety of arbitrary deviant executions, support for recursive protocols, or necessity of projectability.
- The delivery cost of causal locality: 3 of 10 finite protocols pass unchanged; 7 require 1–12 extra header deliveries. Routing derivation is opt-in; unmodified nonlocal protocols are refused by default. Indexed groups can incur quadratic cost. The 144 Rust/Lean fixtures are cross-checks, not a runtime proof.

**Suggested placement:** a CBCL role-protocol concept note linked from the CBCL paper, [[Endpoint Projection]], [[Session Types]], and [[BSPL]]. Add a paper summary for Deniélou and Yoshida’s *Dynamic multirole session types* (2011), which the wiki does not currently list.

### R7 shared objects and state semantics

**PDF pp. 49–59.** No R7 account, `defineContract` example, or CBCL state-rule explanation was found. General [[CRDTs]] and [[CALM Theorem]] coverage does not fill this gap.

Explain the three identities separately: the contract is a dialect self-address; the instance is the hash of its accepted opener; the view has its own digest and binds to the contract. A JSON contract compiles to the dialect’s vocabulary, field shapes, causal protocol, and state clause.

The essential model is `state = fold(accepted acts)`. The accepted set converges by union; state is independent of arrival order and duplicate delivery. `pick` selects the greatest content address, not the newest timestamp or deepest causal act. Convergence does not imply fairness.

Document the closed LL(1) state grammar and its fourteen fixed rule forms: `last`, `latest-per-signer`, `latest-per-key`, `exists`, `count`, `events`, `set-union`, `values`, `values-per-key`, `register-per-key`, `observed-set`, `counter`, `histogram`, and `sum`. Explain which rules support replacement and deletion, how accepted `:replaces` references remove observed writes from `current`, and why unnamed concurrent writes survive. `:replaces` is reserved, compiler-added, and unavailable for rule reads.

Two distinctions are particularly important:

- A `domain` rule filters contributions to state. An out-of-domain act can remain accepted while contributing nothing. The binder separately refuses an out-of-domain local intent.
- Acceptance stays monotone because it does not depend on changing state values. Derived state can replace or remove values without retracting accepted acts.

Include the poll example and state bounds: default maximum string 2048 bytes, list 64 elements, number 10^12, and 32 fields. Record the kernel’s permutation/duplicate invariance, replacement exclusion, add-wins property, and single contribution per address; distinguish Lean kernel proofs from corpus validation of the implementation.

**Suggested placement:** a CBCL shared-objects concept note, with a separate state-rules reference if needed, connected to [[CRDTs]], [[CALM Theorem]], [[Canonical Serialization]], and the CBCL paper.

### The shared action binder and object SDK

**PDF pp. 63–65.** The wiki does not explain `cbcl/object` or the action path used by both people and agents.

Add `verb + fields → bind and verify → host signs and sends → admit and fold`. The binder derives signer, recipients, thread, causal links, and replacement metadata from accepted context. Caller-supplied routing, roles, recipients, or `:replaces` are refused as forgeries. Its seven steps are admission, domain checking, recipient resolution, replacement selection, predecessor selection, canonical construction, and verification. It returns an act or a typed reject without side effects, so discarding its result is a dry run.

Received records are accepted, pending when predecessors are missing, or rejected. The SDK does not authenticate transport signatures; hosts must authenticate records before appending them to `ThreadStore`. Include a short `defineContract`, `agent.act`, and `agent.read` example that makes this host responsibility explicit.

**Suggested placement:** alongside the shared-objects account, linked to [[Agentic TCB]] and [[Canonical Serialization]].

### Replaceable views and explicit interface authority

**PDF pp. 60–66.** Existing capability-security literature is relevant, but `@cbcl/view` and its enforcement boundary are missing.

Explain declarative `text`, `value`, and `form` components, contract-bound view identities, bundle import, and rejection of a view bound to another dialect. Switching views preserves the instance address and history.

For custom views, author JavaScript runs in QuickJS/WASM; the trusted host owns the DOM in a script-disabled iframe and exposes a closed JSON bridge. Object actions are intents passed through the binder. External requests require individually granted, declared HTTPS destinations, GET, fixed response types, and named query parameters. Approved requests can disclose object data through those parameters. Images and styles require declared-resource approval; nested CSS URLs remain blocked. Revocation or view changes cancel requests, remove grants, and invalidate old mount authority. The overview reports custom interaction for Chromium/Firefox and a default state view for Safari/WebKit.

**Suggested placement:** a CBCL views concept note linked to [[Ambient Authority]], [[Agentic TCB]], and the shared-objects note.

## Important corrections and qualifications

1. **Deployed verdicts differ from the abstract lattice account — PDF p. 31.** The CBCL note describes verification as a lattice homomorphism with permanent verdicts. Add the deployed `any`/`all` caveat: validity is sticky, but every intermediate verdict is not permanent; final rejection waits for references to resolve. Keep dialect-integrity verdicts (`Valid`, `Unsigned`, `Invalid`) separate from causal verdicts (`Unknown`, `Valid`, `Violation`).

2. **Proofs and differential tests have different scope — PDF pp. 24, 39, 46, 48, 57.** Replace the claim that differential testing “eliminat[es] spec-implementation parser differentials” with agreement on tested cases. Rust/Lean correspondence is checked, not proved end to end. The overview reports 251 theorems, about 7,400 lines, and 21 modules on p. 39, with the first 176 and later 75 broken out there; R6 and state proofs appear separately elsewhere. Date these figures rather than treating them as interchangeable with the wiki’s 380+ declaration count, test counts, or original paper totals.

3. **R4 integrity is not established proof-carrying dialect code — PDF pp. 23–24.** [[Proof-Carrying Code - Necula]], the CBCL note, and [[index]] describe R4 as shipping dialect contracts with Lean proofs and a certified verifier. The overview describes optional signatures over canonical encoding and permits unsigned definitions with a warning. Qualify proof-carrying code as an architectural analogy unless another source establishes the claimed implementation.

4. **Language guarantees do not establish semantic honesty — PDF pp. 14, 34, 36, 67.** Add the explicit limits: structurally valid fields can carry secrets; tools and external effects remain outside the parser/template guarantee; compromised authorised peers, pre-primed context, flattened validated fields, key distribution/revocation, and off-channel coalitions remain outside scope. `:examples` catch misconfiguration, not semantic agreement. Qualify the CBCL note’s stronger claims about fully determined meaning and observable semantic divergence.

5. **Old limitations need layer-specific scope — PDF pp. 54–58.** The existing prohibition on aggregation over variable-length collections needs to be identified as a limitation of the language/template layer or original paper. R7 now supplies bounded state aggregation, histograms, sums, and replacement/removal. Fixed state rules do not imply arbitrary recursive or context-sensitive template computation.

## Missing empirical evidence

**PDF pp. 34–36.** Add the overview’s tool-boundary and malicious-peer experiments, including failures as well as successful defences. Distinguish natural-language, JSON shim, and native S-expression bindings.

- Novel tool poisoning: GLM-5.1 leaks in 21/100 baseline trials versus 0/100 with the restrictive shape; relaxing the shape to a string-valued location yields 1/100. Published poisoning already scores 0/100 without CBCL for all tested models, so that case supplies no measured improvement.
- The `mcp-server-git` argument-injection case succeeds 30/30 without CBCL and is admitted by shape checking; shape plus application value checking yields 0/30. Types alone do not constrain dangerous string values.
- Yao’s millionaire: all shim/native cells show zero leaks, with the reported interval extending to 3.7%; the defence includes a salt check for the free-form field.
- Private set intersection: shim results are indistinguishable from no CBCL for three of four models; native binding reduces leakage to 0–1%, with residual leakage in a required plaintext field. Zero observed leaks is not a general security proof.

Record N = 100 per peer-experiment cell, four models, two games, three bindings, and the five attack patterns. The overview attributes the table to a NeurIPS 2026 submission; preserve that status.

**PDF pp. 40–41, 68.** Add a dated runtime/reproduction section: one Rust core supplies WASM, BEAM NIF, and C FFI bindings; pure verification, binding, and folding are separated from host I/O. The overview reports Apple M4 medians of 386 ns for a simple pipeline and 1.03 μs for meta definition, plus 2.6 ms for 100-agent gossip convergence. These are specific measurements, not universal bounds. Its end-to-end poll baseline is `cbcl-bus 20de8f50` and `cbcl-rs e5189d4`, with publish, human and agent votes, view switching, signed-action inspection, and a read-only frontier pin.

## Secondary literature additions

The following references from the overview lack corresponding named coverage in the wiki’s page list/searches:

- *Dynamic multirole session types* — Deniélou and Yoshida, 2011; the most direct missing R6 antecedent, PDF pp. 47, 71.
- *Research report: AI security is a LangSec problem* — von Hippel and Miyazono, 2025; structured output, tool descriptions/results, and peer channels as input-language boundaries, PDF pp. 12, 74.
- *High-assurance input validation: locking the front door* — Fisher, 2021; the validation methodology behind the implementation story, PDF pp. 38, 71.
- *Taming OpenClaw* and *FormalJudge* — PDF reference list pp. 70, 74. These are lower priority than the missing R6/R7 mechanisms. [[ClawWorm Self-Propagating Attacks Across LLM Agent Ecosystems]] is already covered.

## Suggested update order

First qualify the existing CBCL note’s verdict, proof, R4, and semantic claims. Then add R6 roles, R7 objects/state, the action binder, and confined views. Add the experimental and reproduction account next, followed by the missing foundational papers. Link the new accounts from [[index]] and [[concept-map]] and update the relevant concept hubs. Preserve the original April paper summary and label the October overview material as a later technical account.
