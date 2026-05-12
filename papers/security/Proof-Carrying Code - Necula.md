# Proof-Carrying Code

**Reference:** Necula, G. C. (1997). *Proof-Carrying Code.* In *Proceedings of the 24th ACM SIGPLAN-SIGACT Symposium on Principles of Programming Languages (POPL '97)*, Paris, January 1997, pp. 106–119. ACM. [URL (author's Berkeley page, original PostScript)](https://people.eecs.berkeley.edu/~necula/Papers/pcc_popl97.ps.gz) · [URL (Illinois course PDF mirror)](https://courses.grainger.illinois.edu/cs421/fa2010/papers/necula-pcc.pdf) · [DOI (ACM)](https://doi.org/10.1145/263699.263712)

## Summary
*Proof-Carrying Code* (PCC) is the architectural ancestor of every "ship a proof with the artefact, verify the proof rather than re-deriving safety from scratch" pattern in the modern security stack — including [[CBCL - Safe Self-Extending Agent Communication|CBCL]]'s R4 split (host runs a small certified verifier on each dialect contract proof), CIVeX certificates (causal-identifiability artefacts shipped from prover to host), [[A Logic of Authentication|BAN]]-style protocol soundness certificates, and TEE attestations. The premise is direct: untrusted code arrives at a host that must run it under a *safety policy* (no out-of-bounds memory access, no division by zero, no privilege escalation, only sanctioned syscalls). Re-deriving safety on every load is expensive (general program analysis is undecidable, conservative approximations reject too much real code) and shifts trust onto the host's analyser. PCC inverts the burden: the *code producer* generates a machine-checkable proof that the code respects the policy, and the *code consumer* checks the proof. Proof checking is mechanical, syntactic, decidable, and cheap; proof finding (the work that produced the proof) is hard and lives on the producer's side.

The technical content of the paper is the framework that makes this practical. Necula defines a safety policy as a set of *rules* in a first-order theory over machine states; programs come accompanied by a *safety predicate* whose proof in this theory entails the policy. Proofs are encoded in a *logical framework* (LF / Edinburgh Logical Framework), so the proof-checker is a single, small, generic LF type-checker independent of the safety policy. Necula demonstrates the architecture on a packet-filter benchmark: a *Berkeley Packet Filter* untrusted assembler program is verified to terminate, stay in bounds, and call no syscalls — by checking ~5 KB of LF proof against the BPF policy, in milliseconds. The signal is that the *verifier* is tiny and policy-parameterised; safety becomes a function of *proof checkability* rather than of expensive whole-program analysis.

For the security agenda this vault tracks, PCC is foundational in three respects. First, it generalises *capability-secure* thinking ([[Programming Semantics for Multiprogrammed Computations|Dennis & Van Horn 1966]], [[EROS - A Fast Capability System|Shapiro et al.]]) from access control to *behavioural conformance*: the proof is a behavioural capability the producer holds, the verifier is the gatekeeper. Second, it operationalises [[Classes of Recursively Enumerable Sets and Their Decision Problems|Rice's theorem]] in a constructive direction — Rice says semantic properties of arbitrary programs are undecidable, but PCC shows that *with a proof in hand*, checking that the proof establishes the semantic property is trivial. Third, it is the architectural pattern that [[CBCL - Safe Self-Extending Agent Communication|CBCL]]'s R4 split inherits literally: a CBCL dialect contract is the code, a Lean 4 proof that the contract is well-formed and policy-respecting is the certificate, and the host's small Lean kernel check is the PCC verifier. The discussion section of any CBCL/CIVeX paper should cite PCC explicitly.

## Key Ideas
- *Ship the proof with the artefact*: the code producer (who knows why the code is safe) generates a proof; the code consumer checks the proof. Proof-checking is cheap, mechanical, syntactic, and decidable; the *finding* of proofs is hard and lives on the producer's side.
- *Safety policy = first-order theory*: a safety policy is a set of inference rules in a first-order theory over machine states and operations. Programs come with a safety predicate; a proof of the predicate in the theory entails the policy.
- *Logical Framework as the proof carrier*: proofs are LF terms (Edinburgh Logical Framework). The verifier is an off-the-shelf LF type-checker — small, generic, policy-parameterised. Trusted code base: the LF type-checker plus the policy rules.
- *Asymmetry of effort*: producer effort scales with program complexity; consumer effort scales with *proof size*, which is bounded by program size in practice but does *not* depend on the difficulty of the underlying analysis.
- *Decoupling of policy from verifier*: changing the safety policy means changing the inference-rule set; the LF checker is reused unchanged. New policies can be deployed without re-validating the verifier.
- *No trust in the producer*: a malicious producer can submit malicious code, but cannot generate a verifiable proof for it (under soundness of the policy). The producer is *untrusted*; the verifier is the trust anchor.
- *Packet-filter benchmark*: BPF programs, originally trusted via interpretation in a kernel sandbox, are PCC-verified to be safe to run as native code. Verification cost drops from microseconds-per-packet (interpreter) to a one-time millisecond proof check at load time.
- *Generalises to many policies*: type safety, memory safety, resource bounds, information-flow control, even fine-grained behavioural contracts — all expressible as PCC safety policies.

## Connections
- [[Proof-Carrying Code]]
- [[Logical Framework]]
- [[Type Theory]]
- [[Curry-Howard Correspondence]]
- [[Linear Logic]]
- [[Classes of Recursively Enumerable Sets and Their Decision Problems]]
- [[Rice's Theorem]]
- [[An Axiomatic Basis for Computer Programming]]
- [[Hoare Logic]]
- [[Assigning Meanings to Programs]]
- [[Enforceable Security Policies - Schneider]]
- [[Security Applications Of Formal Language Theory]]
- [[The Halting Problems of Network Stack Insecurity]]
- [[House on Rock - LangSec in Ethereum Classic]]
- [[LangSec]]
- [[Programming Semantics for Multiprogrammed Computations]]
- [[EROS - A Fast Capability System]]
- [[Capability Myths Demolished]]
- [[Robust Composition - Towards a Unified Approach to Access Control and Concurrency Control]]
- [[A Logic of Authentication]]
- [[Authentication in Distributed Systems - Lampson Abadi Burrows Wobber]]
- [[Spi Calculus]]
- [[Trusted Machine Learning Models Unlock Private Inference]]
- [[Infrastructure for AI Agents]]
- [[Defeating Prompt Injections by Design]]
- [[Making Smart Contracts Smarter]]
- [[Verifiable Semantics for ACLs]]
- [[Distributed Security]]
- [[Agent Security]]
- [[Multi-Agent Security]]
- [[CBCL - Safe Self-Extending Agent Communication]]

## Conceptual Contribution
- **Claim:** Safe execution of untrusted code under a stated safety policy can be achieved by having the *code producer* ship a machine-checkable proof of policy compliance with the code, and having the *code consumer* check the proof rather than re-derive safety. This inverts the standard burden: hard-to-derive properties become trivial-to-check given the right artefact.
- **Mechanism:** Express the safety policy as a first-order theory over machine states; require submissions to include a proof of the program's safety predicate; encode proofs in a Logical Framework (LF) so the consumer-side checker is a generic LF type-checker independent of the policy. The trusted code base is the LF checker plus the policy rules; the producer is untrusted. Demonstrated on the Berkeley Packet Filter, where PCC verification runs in milliseconds at load and replaces interpreter-based sandboxing.
- **Concepts introduced/used:** [[Proof-Carrying Code]], [[Safety Policy]], [[Safety Predicate]], [[Logical Framework]] (LF), [[Producer-Consumer Asymmetry]], [[Verifier]], [[Trusted Code Base]], [[Behavioural Capability]].
- **Stance:** foundational technical paper / architectural pattern.
- **Relates to:** The *architectural ancestor* of [[CBCL - Safe Self-Extending Agent Communication|CBCL]]'s R4 split — dialect contracts are shipped with Lean 4 proofs of well-formedness and policy compliance; the host's small Lean kernel check is the PCC verifier. PCC is *the* citation for "ship the proof, check the proof." Operationalises [[Classes of Recursively Enumerable Sets and Their Decision Problems|Rice's theorem]] in a constructive direction: undecidable in general, decidable *with the producer's proof in hand*. The natural pair is [[Enforceable Security Policies - Schneider|Schneider 2000]] — Schneider characterises *which* policies are enforceable by trace monitoring; PCC characterises *how* a code consumer can verify static policies without re-deriving them. The verification heritage runs through [[An Axiomatic Basis for Computer Programming|Hoare 1969]] / [[Assigning Meanings to Programs|Floyd]] (axiomatic semantics and inductive assertions) to PCC's LF-encoded proofs. The [[LangSec]] tradition ([[The Halting Problems of Network Stack Insecurity|Sassaman et al.]]) is the dual move: restrict the input language so safety becomes decidable *without* a producer-side proof. CBCL combines both: a DCFL surface (LangSec) with proof-carrying dialect contracts (PCC).

## Tags
#proof-carrying-code #necula #formal-verification #langsec #logical-framework #foundational #security #pcc #architectural-pattern #classical
