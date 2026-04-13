# Circumscription — Applications to Formalizing Common Sense Knowledge

**Reference:** John McCarthy (1986). "Applications of Circumscription to Formalizing Common Sense Knowledge." *Artificial Intelligence* 28(1): 89-116. Source file: `mccarthy-applications1986.pdf`. Sequel to the 1980 paper; see [[Circumscription - A Form of Nonmonotonic Reasoning]] for the original formulation and motivation. [URL](http://jmc.stanford.edu/articles/applications/applications.pdf)

## Summary
The 1986 sequel that supersedes the technical machinery of McCarthy's 1980 *Circumscription* paper. Where the 1980 paper introduced *predicate* and *domain* circumscription as rules of conjecture for handling the qualification problem, this paper presents a new, more *symmetric* version — now called *formula circumscription* — and shows how it, together with a uniform abnormality predicate `ab`, can formalise a wide range of common-sense reasoning tasks: *is-a* hierarchies with exceptions, the unique-names hypothesis, the *frame problem* (via circumscribing abnormality-of-fluents rather than asserting individual frame axioms), and defeasible defaults.

The central methodological move is to express a typical common-sense rule as "normally, P" — formalised as `∀x. ¬ab(aspect₁(x)) ⊃ P(x)` — and then *circumscribe `ab`* relative to the known facts, with certain other predicates and functions allowed to *vary* during the minimisation. Allowing predicates other than the one being minimised to vary was the key technical gap in the 1980 formulation; it is what lets circumscription express the frame problem properly (the `ab` predicate is circumscribed while the fluent values are varied), and what makes prioritised and parallel circumscriptions possible. Birds-fly/Tweety, blocks-on-blocks, and other benchmark examples are worked out in detail.

Alongside [[Ascribing Mental Qualities to Machines]] and [[First Order Theories of Individual Concepts and Propositions]], this is the paper that consolidates McCarthy's logicist programme for common-sense knowledge into a concrete technical agenda: formalise in sorted first-order logic, add concepts-as-individuals where modality is needed, use circumscription (over `ab`) to handle defaults and the frame problem, and build large reusable common-sense databases. It is the paper cited in the ACL/agent-communication literature whenever "McCarthy on circumscription" is invoked as a foundation for defeasible agent reasoning.

## Key Ideas
- *Formula circumscription* generalises predicate circumscription: circumscribe a formula with some predicates and functions allowed to vary.
- The *abnormality predicate* `ab` provides a uniform idiom: "normally P" becomes `¬ab(aspect(x)) ⊃ P(x)`, and the formalisation is combined with `ab` being circumscribed.
- Solves the *frame problem* via circumscribing `ab(aspect, action, fluent, situation)` while letting the fluents vary — no more individual frame axioms per (action, fluent) pair.
- Is-a hierarchies with exceptions: "birds fly except when abnormal", cancellation of inheritance via `ab`.
- Unique-names hypothesis stated and circumscribed in the same framework.
- *Prioritised circumscription* briefly explored: minimise one abnormality before another.
- Supersedes the 1980 paper; references in the literature "to this paper only would better refer to the latter paper in addition or to the latter paper only" (quoting McCarthy on the 1980 paper's jmc.stanford.edu page).

## Connections
- [[Circumscription - A Form of Nonmonotonic Reasoning]] — the 1980 original, whose formalism this paper supersedes while retaining its motivation.
- [[Programs with Common Sense]]
- [[Recursive Functions of Symbolic Expressions and Their Computation by Machine]]
- [[Some Philosophical Problems from the Standpoint of Artificial Intelligence]] — names the frame problem solved (or at least much reduced) here.
- [[Epistemological Problems of Artificial Intelligence]]
- [[Ascribing Mental Qualities to Machines]]
- [[First Order Theories of Individual Concepts and Propositions]]
- [[Generality in Artificial Intelligence]]
- [[Towards a Mathematical Science of Computation]]
- [[Correctness of a Compiler for Arithmetic Expressions]]
- [[Elephant 2000 - A Programming Language Based on Speech Acts]]
- [[Common Business Communication Language]]
- [[Common Sense Reasoning]]
- [[Knowledge Representation]]
- [[Non-monotonic Reasoning]]
- [[Circumscription]]
- [[Epistemic Logic]]
- [[The Knowledge Level]]
- [[The Society of Mind]]
- [[Formal Verification]]
- [[Frame Problem]]

## Conceptual Contribution
- **Claim:** Common-sense knowledge — including default rules, is-a hierarchies with exceptions, the unique-names hypothesis, and (most importantly) the frame problem — can be uniformly formalised by expressing "normally P" as `¬ab(aspect) ⊃ P`, then circumscribing `ab` while allowing other relevant predicates and functions to vary. This *formula circumscription* supersedes the 1980 predicate/domain circumscription.
- **Mechanism:** Formula circumscription schema: given `A(P;Q)` with P minimised and Q varied, conjoin the second-order sentence stating that no smaller assignment to P (with Q varied accordingly) satisfies `A`. Reduce `A` to first-order form in cases where second-order quantifiers can be eliminated. Uniform use of `ab(aspectᵢ(x))` to carry all defeasibility. Prioritised circumscription for ordering defaults.
- **Concepts introduced/used:** [[Formula Circumscription]], [[Abnormality Predicate]], [[Frame Problem]], [[Default Reasoning]], [[Is-a Hierarchy]], [[Unique Names Hypothesis]], [[Prioritised Circumscription]], [[Non-monotonic Reasoning]], [[Circumscription]].
- **Stance:** foundational
- **Relates to:** Supersedes [[Circumscription - A Form of Nonmonotonic Reasoning]]; provides the defeasibility infrastructure on which [[Elephant 2000 - A Programming Language Based on Speech Acts]] and [[Common Business Communication Language]] implicitly rely; one of the three McCarthy pillars alongside [[Ascribing Mental Qualities to Machines]] and [[First Order Theories of Individual Concepts and Propositions]]; technically addresses the frame problem named in [[Some Philosophical Problems from the Standpoint of Artificial Intelligence]] and the default-reasoning open problems listed in [[Epistemological Problems of Artificial Intelligence]].

## Tags
#foundational #mccarthy #non-monotonic #common-sense #knowledge-representation #circumscription #frame-problem #1986
