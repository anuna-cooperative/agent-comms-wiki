# Enforceable Security Policies

**Reference:** Schneider, F. B. (2000). *Enforceable Security Policies.* ACM Transactions on Information and System Security (TISSEC) 3(1): 30–50. February 2000. [URL (Schneider's Cornell page)](https://www.cs.cornell.edu/fbs/publications/EnfSecPols.pdf) · [DOI](https://doi.org/10.1145/353323.353382)

## Summary
Schneider's paper is the theoretical backdrop for *trace-monitor enforcement* — the move that takes a stated security policy and asks, formally, *can this policy be enforced by a mechanism that observes program execution one step at a time and halts execution if a violation is about to occur?* The answer is *only if the policy is a safety property*: precisely, the policies enforceable by an *execution monitor* (EM) are exactly those whose violations are *finite-prefix detectable*. Liveness properties — "good thing eventually happens" — cannot be enforced by monitoring, because no finite prefix witnesses violation. Schneider formalises EM enforcement as a class of *security automata* — automata that read the program's execution one event at a time, transitioning over states that encode the policy's history, and halting the program upon entering a *no-good* state.

The result has three teeth. First, it gives a *precise, decidable* characterisation of the enforceable policies: EM-enforceable iff specifiable as a safety property over execution traces. Second, it cleanly *separates* the policy (the security automaton) from the mechanism (the EM machinery that interposes between the program and its environment), so the same EM machinery can enforce many policies by swapping the automaton. Third, it lays the groundwork for *inlined reference monitors* and *security-typed languages* (Schneider's later work with Erlingsson on SASI, Ligatti–Bauer–Walker on edit automata that generalise EM with *transformation* in addition to halting).

For the architecture this vault tracks, Schneider is the formal warrant for [[CBCL - Safe Self-Extending Agent Communication|CBCL]]'s R5 *monotone-verdict trace monitor* and for [[On the Monitorability of Session Types|session-type monitorability]] in general. CBCL's invariant — *only emit monotone verdicts* — is the safety-property restriction: a CBCL verdict is a finite-prefix witness, the verdict ledger is the security automaton's state, and the host's enforcement is precisely an EM in Schneider's sense. The paper also bounds *what CBCL cannot do*: liveness properties (every commitment is eventually discharged) are not EM-enforceable, only EM-monitorable for *violation of safety lower bounds* (e.g. a deadline expires → record commitment broken). The CBCL discussion section should cite Schneider for the formal precision and Ligatti–Bauer–Walker for the edit-automaton generalisation if transformations are wanted.

## Key Ideas
- *Execution Monitor (EM) enforcement*: a mechanism that observes program execution one event at a time and halts execution if continuing would violate the policy. Standard examples: reference monitors, system-call interposition, security wrappers.
- *Safety-property characterisation*: EM-enforceable policies are exactly the *safety properties* — properties whose violations are detectable on a finite prefix of execution. Liveness properties cannot be EM-enforced.
- *Security automata*: a formal model for EM enforcement. A security automaton is a (possibly infinite-state) automaton that reads execution events, maintains policy-relevant history, and transitions to a "no-good" state on violation; the EM halts the program at that point.
- *Policy / mechanism separation*: the security automaton specifies *what* is enforced; the EM machinery enforces *how*. Swapping automata changes the policy without changing the enforcement infrastructure.
- *Liveness is out of scope*: properties like "every request is eventually served" cannot be EM-enforced because no finite prefix witnesses violation. They can be *monitored* for violation of finite-bounded safety approximations (e.g. timeout-deadline as a safety surrogate).
- *Anti-Rice (constructively)*: Rice tells us most semantic properties of programs are undecidable, but EM enforcement *sidesteps* Rice by limiting attention to properties expressible as runtime-checkable trace predicates rather than as program properties.
- *Genealogical successors*: Ligatti–Bauer–Walker *edit automata* generalise EM by allowing the monitor to *transform* events (insert, suppress, replace), enlarging the enforceable class beyond pure safety to certain *renewal properties*; *inlined reference monitors* (Erlingsson–Schneider SASI) move the EM machinery into the program text itself.

## Connections
- [[Enforceable Security Policies]]
- [[Execution Monitor]]
- [[Security Automaton]]
- [[Inlined Reference Monitor]]
- [[Edit Automaton]]
- [[Safety Property]]
- [[Liveness Property]]
- [[Trace Property]]
- [[Linear Temporal Logic]]
- [[Runtime Verification]]
- [[Proof-Carrying Code - Necula]]
- [[An Axiomatic Basis for Computer Programming - Hoare]]
- [[Hoare Logic]]
- [[Classes of Recursively Enumerable Sets and Their Decision Problems]]
- [[Rice's Theorem]]
- [[Security Applications Of Formal Language Theory]]
- [[The Halting Problems of Network Stack Insecurity]]
- [[LangSec]]
- [[Verifiable Semantics for ACLs]]
- [[On the Monitorability of Session Types]]
- [[Multiparty Asynchronous Session Types]]
- [[Structured Communication-Centred Programming for Web Services]]
- [[A Logic of Authentication]]
- [[Authentication in Distributed Systems - Lampson Abadi Burrows Wobber]]
- [[Spi Calculus]]
- [[Capability Myths Demolished]]
- [[Robust Composition - Towards a Unified Approach to Access Control and Concurrency Control]]
- [[Defeating Prompt Injections by Design]]
- [[Distributed Security]]
- [[Agent Security]]
- [[Multi-Agent Security]]
- [[CBCL - Safe Self-Extending Agent Communication]]
- [[Commitment Machines - Yolum and Singh]]
- [[Flexible Protocol Specification and Execution]]
- [[A Commitment-Based Approach to Agent Communication]]

## Conceptual Contribution
- **Claim:** A security policy can be enforced by an execution monitor (a mechanism that observes one event at a time and halts on impending violation) iff it is a *safety property* — i.e., its violations are detectable on a finite prefix of execution. Liveness properties cannot be EM-enforced.
- **Mechanism:** Define EM enforcement formally: a (possibly infinite-state) *security automaton* reads execution events, maintains policy-relevant history, transitions on each event, and signals "no-good" on violation; the EM halts the program at the signalling step. Show that the class of policies so enforceable is exactly the safety properties (in the Alpern–Schneider sense). Separate the *automaton* (policy) from the *EM machinery* (mechanism), enabling policy-parametric enforcement.
- **Concepts introduced/used:** [[Execution Monitor]] (EM), [[Security Automaton]], [[Safety Property]], [[Liveness Property]], [[Trace Property]], [[Inlined Reference Monitor]], [[Edit Automaton]] (Ligatti–Bauer–Walker generalisation).
- **Stance:** foundational technical paper.
- **Relates to:** The formal warrant for [[CBCL - Safe Self-Extending Agent Communication|CBCL]]'s R5 monotone-verdict trace monitor — CBCL verdicts are finite-prefix witnesses, the verdict ledger is the security automaton's state, and host-side enforcement is exactly an EM. The paper also *bounds* what trace-monitor enforcement can do: liveness properties (every commitment eventually discharged) are not enforceable, only approximable via timeout-deadline safety surrogates. Pairs naturally with [[Proof-Carrying Code - Necula|Necula's PCC]] (static proof-bearing artefacts) — Schneider tells you which *dynamic* properties are runtime-monitorable, PCC tells you which *static* properties can be discharged at load time by a proof-checker. The genealogical successors are inlined reference monitors (Erlingsson–Schneider), edit automata (Ligatti–Bauer–Walker), and the entire runtime-verification literature. The [[LangSec]] pair is conceptually adjacent: LangSec restricts the *input language* so safety is decidable at parse time; Schneider's EM restricts the *enforced policy class* so safety is decidable at runtime. [[On the Monitorability of Session Types|monitorability of session types]] is the direct session-type analogue. The deeper conceptual map: Schneider is to *runtime enforcement* what Hoare is to *static specification* and PCC is to *load-time proof-checking*.

## Tags
#schneider #execution-monitor #security-automata #safety-property #enforceable-policies #foundations #runtime-verification #langsec #tissec
