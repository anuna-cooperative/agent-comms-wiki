# House on Rock - LangSec in Ethereum Classic

**Reference:** Meredith L. Patterson (2017). *How to Build a House That Doesn't Fall Apart* (talk). Ethereum Classic Summit, Hong Kong, November 2017. [YouTube](https://www.youtube.com/watch?v=rqqdFufARXA)

<iframe width="560" height="315" src="https://www.youtube.com/embed/rqqdFufARXA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Summary
A LangSec critique of Ethereum aimed at the Ethereum Classic community, framed around the parable of the wise and foolish builders and Philip K. Dick's "reality is that which, when you stop believing in it, doesn't go away." Patterson argues Ethereum was built on sand — an ad-hoc, non-executable yellow-paper semantics; a hand-rolled Solidity parser; a test suite with no coverage for `delegatecall` or invalid opcodes; a design culture that scorned formal methods until hundred-million-dollar losses forced the issue.

The central technical argument is that the **gas mechanism does not do what the yellow paper claims it does**. Gavin Wood's stated purpose — "sidestep the inevitable issues stemming from Turing completeness" — confuses a resource bound (a non-semantic, decidable property) with a safety guarantee (a semantic property that Rice's theorem makes undecidable in general). Gas cannot show a contract "does nothing malicious"; it can only show it eventually halts. Worse, gas creates an adversarial economic game with direct monetary reward for tricking the accounting, and a *perverse incentive* for honest developers to omit runtime sanity checks because conditionals cost gas.

Patterson's prescription for Ethereum Classic: standardise on KEVM (an executable operational semantics in the K framework), fix the VM test suite's gaps, build languages that don't hide implicit behaviour (method visibility defaults, fallback methods, `delegatecall` as naked `eval`), and invest in developer tools — IDEs, live debuggers, verification — that surface what a contract can actually do. "Code is law" requires the meaning of the code to be unambiguous, executable, and visible.

## Key Ideas
- **Rice's theorem bounds what gas can mean.** Non-trivial semantic properties of arbitrary programs are undecidable; resource bounds are non-semantic. Gas therefore cannot sidestep Turing-completeness-induced safety problems, contrary to the yellow paper.
- **Gas as adversarial game.** The accounting is an attack surface, not a safety property; attackers are paid to win. Honest contract authors are weakly pushed toward *removing* checks to keep gas costs competitive.
- **LangSec programmer–machine contract.** Inputs must have a formal grammar; two implementations of the same spec must accept/reject identical inputs; semantics must be executable so claims about behaviour can be verified mechanically.
- **Ad-hoc semantics breeds consensus failures.** When the yellow paper and `cpp-ethereum` disagree, `cpp-ethereum` wins — the denotational semantics is decorative. Discrepancies between clients have already caused real Ethereum consensus failures.
- **Test suites are part of software design.** Official VM tests have no coverage for invalid opcodes or `delegatecall` — the exact instruction at the heart of the Parity multisig hacks. "VM tests" is false advertising; downstream VM implementations inherit the blind spot.
- **Case studies of processing-fluency failure.**
  - *DAO:* mutual recursion across a defender/attacker code boundary, missed in reviews because reviewers examine functions one at a time (cf. Leveson: accidents emerge from *interactions*).
  - *Hacker Gold:* `=+` typed instead of `+=` — a hand-rolled recursive-descent parser caught nothing; a Bison grammar would have surfaced a shift/reduce conflict.
  - *Parity multisig (July 2017):* fallback method × `delegatecall` × public-by-default visibility = naked `eval` on attacker-controlled payload; $31M drained, $150M saved only by counter-theft.
  - *Parity multisig (Nov 2017):* library contract re-initialised by an outsider then `suicide`d, locking $153M in wallets whose code had vanished — "left-pad for multi-million-dollar table stakes."
- **KEVM** (K framework operational semantics) gives Ethereum an *executable* semantics; generated interpreter ~20× slower than `cpp-ethereum` but usable, and supports reachability-based proof of safety/liveness claims.
- **Cognitive-science constraint.** Miller's 7±2 bounds how much implicit state a programming language can demand before human reasoning fails. Solidity's implicit defaults (public methods, fallback dispatch, implicit conversions) exceed that budget.
- **"Worse is better" is unconscionable in a financial system.** Sacrificing correctness and completeness to ship first transfers the cost of undefined behaviour onto users.

## Connections
- [[Making Smart Contracts Smarter]] — same *semantic gap* diagnosis; OYENTE is the symbolic-execution complement to Patterson's formal-semantics prescription.
- [[Formalise Blockchain Interoperability Patterns]] — companion move: formalise what was informal.
- [[Security Applications Of Formal Language Theory]] — the Sassaman/Bratus/Patterson LangSec manifesto this talk operationalises for smart contracts.
- [[The Halting Problems of Network Stack Insecurity]] — parallel argument that parser/semantics weakness is the root cause of whole vulnerability classes.
- [[Exploit Programming - From Buffer Overflows To Weird Machines]] — "weird machines" framing applies directly to contracts driven off-spec via `delegatecall`.
- [[PKI Layer Cake - Kaminsky Patterson Sassaman]] — Patterson's earlier demonstration that grammatical discrepancies between implementations are exploitable (SSL CA forgery); same mechanism, different domain.
- [[A Language-Based Approach To Prevent DDoS]] — language-theoretic remediation as a general pattern.
- [[Operational Semantics]], [[Denotational Semantics]], [[EVM]], [[Solidity]], [[TheDAO]], [[Reentrancy]] — background concepts.
- [[An Unsolvable Problem of Elementary Number Theory]] — Church 1936; LangSec's undecidability heritage behind the Rice's-theorem argument against gas-as-safety.
- [[Über formal unentscheidbare Sätze der Principia Mathematica und verwandter Systeme I]] — Gödel 1931; the incompleteness ancestor of the semantic-limit arguments.

## Conceptual Contribution
- **Claim:** Ethereum's gas mechanism is mis-sold as a way around Turing-completeness-induced safety problems. It bounds resources (a non-semantic, decidable property) but cannot certify behavioural safety (a semantic property that Rice's theorem puts out of reach for arbitrary programs). The resulting system is an adversarial game with built-in incentives against runtime defensiveness, layered on an ad-hoc, non-executable semantics whose test suite doesn't exercise the opcodes most implicated in real losses.
- **Mechanism:** Diagnose Ethereum's failures through a LangSec lens — ill-defined input grammars, implementation-vs-specification semantic drift, implicit language behaviours exceeding cognitive budgets, test suites that falsely advertise completeness. Prescribe a concrete path for Ethereum Classic: adopt **KEVM** as an executable operational semantics; fix VM-test coverage gaps (`delegatecall`, invalid opcodes); design contract languages that make control flow, visibility, and gas cost legible; invest in live-debugging and reachability-based verification tools; treat the stack as 9-layered (physical → application → financial → political) and recognise decision-making as happening in the top layers.
- **Concepts introduced/used:** [[LangSec]], [[Rice's Theorem]], [[Gas Mechanism]], [[Perverse Incentives]], [[KEVM]], [[K Framework]], [[Operational Semantics]], [[Denotational Semantics]], [[Reachability Analysis]], [[Safety Property]], [[Liveness Property]], [[Fallback Method]], [[Delegatecall]], [[Reentrancy]], [[Processing Fluency]], [[Miller's 7±2]], [[Weird Machine]], [[Ethereum]], [[Ethereum Classic]], [[TheDAO]], [[Parity Multisig]], [[Smart Contracts]], [[Code is Law]].
- **Stance:** formal-semantic / LangSec critique of unverified systems handling money; pragmatic advocacy for Ethereum Classic as a substrate to rebuild on executable semantics.
- **Relates to:** Extends [[Making Smart Contracts Smarter]] by attacking the *justification* of gas rather than just its pathologies; extends [[Security Applications Of Formal Language Theory]] into the smart-contract domain; shares adversarial-discrepancy framing with [[PKI Layer Cake - Kaminsky Patterson Sassaman]]; complements the cognitive-ergonomics argument in [[Why Do Multi-Agent LLM Systems Fail]] — both argue that implicit state exceeds human reasoning budgets.

## Tags
#langsec #ethereum #ethereum-classic #smart-contracts #gas-mechanism #rice-theorem #formal-semantics #kevm #k-framework #processing-fluency #perverse-incentives #delegatecall #thedao #parity-multisig #talk
