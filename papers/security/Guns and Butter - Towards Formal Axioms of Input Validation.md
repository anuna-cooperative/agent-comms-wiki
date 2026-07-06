# Guns and Butter: Towards Formal Axioms of Input Validation

**Reference:** Robert J. Hansen & Meredith L. Patterson (2005). *Guns and Butter: Towards Formal Axioms of Input Validation.* Department of Computer Science, The University of Iowa; presented at Black Hat USA 2005 (dated June 30, 2005). [URL](https://blackhat.com/presentations/bh-usa-05/BH_US_05-Hansen-Patterson/HP2005.pdf)

## Summary
Widely regarded as the seminal [[LangSec]] paper, this short Black Hat 2005 talk reframes input validation as a problem of formal-language recognition rather than ad-hoc filtering. Surveying both real-world practice and the academic literature, the authors find almost no formal axioms for input validation and note that the state of the art is regexp-based allow/deny listing — which they show to be computationally insufficient for a large class of inputs. Their thesis is that a system's inputs form a formal language, and that validating an input means checking membership in that language with a recognizer of *appropriate* computational strength.

The core polemic is "guns *or* butter": defenders are told to trade off false positives (reject valid input, err toward safety) against false negatives (admit invalid input, err toward convenience). Hansen and Patterson observe that *both* are simply errors, and that the dichotomy is an artifact of using an underpowered mechanism. Their canonical example is the language `aⁿbⁿ`, which no regular expression can match exactly — any regexp will admit some `aᵐbⁿ, m≠n`. Shifting to a sufficiently strong mechanism (a pushdown automaton / context-free grammar) validates with perfect accuracy, giving both "guns and butter" at once.

They formalize this with a small set of definitions (validity, syntactic/semantic context Σ and Υ, M-sets, sublanguages) and theorems: **Minimum Validation Strength** (validate with a mechanism at least as strong as the one needed to *generate* the language), **Maximal Validation Strength** (don't validate with a *stronger* mechanism than necessary — expose attackers the weakest machine possible), and **Range of Validation** (validation must cover the full syntactic context ΣₛI that an input can influence, not just the input in isolation). A **Construction of Sublanguages** lemma shows how to carve a restricted sublanguage out of an insecure one. Applied to SQL, the recipe is to define a safe *sublanguage* of SQL that generates only known-good query shapes and validate the spliced command string against it with a pushdown automaton — defeating SQL injection not by blacklisting characters but by recognition against a minimized grammar.

## Key Ideas
- **Input validation is a recognition problem:** inputs are strings in a formal language; validate by membership-checking with a recognizer of correct Chomsky strength.
- **"Guns and butter", not "guns or butter":** the false-positive/false-negative tradeoff is an artifact of an underpowered mechanism; both outcomes are errors, and a stronger recognizer can eliminate both.
- **Regexps are insufficient:** they cannot match even `aⁿbⁿ`; self-reference to fake it makes the pattern no longer a regular expression.
- **Minimum Validation Strength:** validate with a mechanism at least as strong as the minimal one needed to *generate* the language.
- **Maximal Validation Strength:** do not validate with a mechanism *stronger* than necessary — expose the weakest machine to attackers (echoing Hoglund & McGraw's "engine for executing malicious programs delivered as crafted input").
- **Range of Validation:** validation must span the entire syntactic context ΣₛI an input can influence, not just the literal input.
- **Safe sublanguages:** construct a constrained sublanguage of an insecure command language so that only secure strings can be generated (demonstrated on SQL).
- **Syntactic vs. semantic context (Σ vs. Υ):** first formal specification of these notions per the authors; semantic malice is addressed only insofar as it is reachable through syntactic analysis.

## Connections
- [[LangSec]]
- [[Input Validation]]
- [[Security Applications Of Formal Language Theory]]
- [[PKI Layer Cake - Kaminsky Patterson Sassaman]]
- [[Shotgun Parsing]]
- [[Chomsky Hierarchy]]
- [[Context-Free Grammars]]
- [[Pushdown Automata]]
- [[Weird Machine]]
- [[Parser Differential]]
- [[CBCL - Safe Self-Extending Agent Communication]]

## Conceptual Contribution
- **Claim:** Input validation should be treated as a formal-language recognition problem; the recurring "safety vs. convenience" tradeoff is not fundamental but a symptom of validating with a mechanism weaker than the input language requires. Choosing a recognizer of exactly the right computational strength — and restricting inputs to a minimized safe sublanguage — makes perfectly accurate validation achievable.
- **Mechanism:** Defines validity, syntactic/semantic context (Σ, Υ), M-sets and sublanguages; proves Minimum Validation Strength, Maximal Validation Strength, and Range of Validation, plus a Construction-of-Sublanguages lemma; demonstrates the method by defining a safe context-free sublanguage of SQL and validating spliced command strings against it with a pushdown automaton to block SQL injection.
- **Concepts introduced/used:** [[LangSec]], [[Input Validation]], [[Chomsky Hierarchy]], [[Context-Free Grammars]], [[Pushdown Automata]], [[Shotgun Parsing]], [[Weird Machine]], [[Parser Differential]]
- **Stance:** foundational / formal
- **Relates to:** The origin point of the [[LangSec]] programme later systematized in [[Security Applications Of Formal Language Theory]] (Sassaman, Patterson, Bratus et al.) and applied in [[PKI Layer Cake - Kaminsky Patterson Sassaman]] and [[Exploit Programming - From Buffer Overflows To Weird Machines]]. Its "minimize language power, recognize before acting" discipline is exactly what [[CBCL - Safe Self-Extending Agent Communication]] enforces at the agent-message layer by constraining messages to a [[Deterministic Context-Free Language]].

## Tags
#langsec #input-validation #formal-languages #sql-injection #parser #security
