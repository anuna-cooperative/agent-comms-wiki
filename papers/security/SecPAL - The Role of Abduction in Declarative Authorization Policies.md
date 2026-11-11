# SecPAL: The Role of Abduction in Declarative Authorization Policies

**Reference:** Moritz Y. Becker & Sebastian Nanz (2007). *The Role of Abduction in Declarative Authorization Policies*. Microsoft Research Technical Report MSR-TR-2007-105. [Technical report](https://www.microsoft.com/en-us/research/wp-content/uploads/2007/08/tr-2007-105.pdf)

> **Source note:** The supplied URL is MSR-TR-2007-105, whose actual title is *The Role of Abduction in Declarative Authorization Policies*, not the main SecPAL language report. It uses SecPAL as a principal application of its Datalog-based framework.

## Summary

Ordinary authorization evaluation is deductive: it asks whether a policy entails that a request is allowed. This report adds **abduction**, asking instead which missing facts or credentials would make a denied request succeed. The authors conservatively extend a tabled, Datalog-based policy evaluator to build proof graphs and return abductive explanations while preserving the answers of the deductive algorithm.

The technique supports three practical tasks: explaining denials to users, identifying policy changes during administration, and automating delegation by discovering credentials that would complete a proof. Because recursive policy rules can make search diverge, the report gives subsumption-based weakening and static termination conditions, together with soundness and completeness results. SecPAL supplies the running authorization language and demonstrates how issuer-qualified assertions and delegation fit the framework.

## Key Ideas

- **Deduction answers “is it allowed?”; abduction answers “what would make it allowed?”**
- **Proof graphs:** evaluation records alternative derivations rather than only a Boolean verdict.
- **Conservative extension:** deductive answers remain unchanged when abductive machinery is added.
- **Denial explanations:** missing premises become actionable explanations.
- **Automated delegation:** an abduced credential can identify a useful grant.
- **Termination controls:** subsumption weakening and static analysis bound recursive exploration.

## Connections

- [[PolicyMaker Compliance Checking]]
- [[Security Policy Languages and Enforcement]]
- [[SPKI-SDSI]]
- [[A Logic of Authentication]]
- [[GUARDTs - Decentralized Access Control for Replicated Data Types]]

## Conceptual Contribution

- **Claim:** Authorization engines should explain failure and synthesize remedies, not merely return allow/deny.
- **Mechanism:** Abductive extension of tabled Datalog evaluation using proof graphs and termination analysis.
- **Concepts introduced/used:** [[SecPAL]], [[Abduction]], [[Declarative Authorization]], [[Proof Graph]], [[Automated Delegation]], [[Subsumption Weakening]]
- **Stance:** policy-analysis algorithm and metatheory
- **Relates to:** Extends proof-oriented trust management from compliance decisions to explanations and credential synthesis.

## Tags

#secpal #authorization #datalog #abduction #policy-analysis #delegation
