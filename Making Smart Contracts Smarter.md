# Making Smart Contracts Smarter

**Reference:** Loi Luu, Duc-Hiep Chu, Hrishi Olickel, Prateek Saxena, and Aquinas Hobor (2016). *ACM CCS 2016*. Source file: `2016-633.pdf`

## Summary
Investigates security bugs in Ethereum smart contracts arising from a *semantic gap* between developers' intuitions and the actual behaviour of the underlying platform. The authors document four classes of vulnerability — transaction-ordering dependence, timestamp dependence, mishandled exceptions, and reentrancy — and formalise a lightweight operational semantics (EtherLite) for EVM execution.

They propose protocol-level remediations (guarded transactions, deterministic timestamps, better exception propagation) and build OYENTE, a symbolic-execution tool that analyses EVM bytecode directly. Running OYENTE on 19,366 live contracts flagged 8,833 as potentially buggy, including TheDAO.

## Key Ideas
- Semantic gap between Solidity intent and EVM reality causes systemic bugs
- Transaction-ordering dependence (TOD): miners reorder within a block
- Reentrancy exploited in TheDAO ($60M loss)
- Symbolic execution over EVM bytecode as audit tool
- "Guarded transactions" proposal: require expected-state precondition

## Connections
- [[Formalise Blockchain Interoperability Patterns]]
- [[PKI Layer Cake - Kaminsky Patterson Sassaman]]

## Conceptual Contribution
- **Claim:** Ethereum smart contracts suffer from a *semantic gap* between developers' assumptions and the actual EVM execution model — documenting and fixing this gap at the language-semantics level is critical and tractable.
- **Mechanism:** Identify four concrete bug classes: *transaction-ordering dependence* (TOD), *timestamp dependence*, *mishandled exceptions* (caller must explicitly check return of send), and *reentrancy* (the DAO vulnerability); formalise a lightweight operational semantics of Ethereum (EtherLite); propose semantic fixes (guarded transactions, deterministic timestamps, exception propagation); build OYENTE, a symbolic-execution tool that scans 19,366 real contracts and flags 8,833 vulnerable.
- **Concepts introduced/used:** [[Smart Contracts]], [[Transaction-Ordering Dependence]], [[Reentrancy]], [[Operational Semantics]], [[Symbolic Execution]], [[EVM]], [[Semantic Gap]]
- **Stance:** formal-semantic / empirical security
- **Relates to:** Same "formalise ambiguous informal specs" move as [[Formalise Blockchain Interoperability Patterns]]. Shares the *semantic-gap* diagnostic style with [[PKI Layer Cake - Kaminsky Patterson Sassaman]]. In the broader vault, complements [[Agents Secure Interaction in Data Driven Languages]] and [[Distributed Security]] as a case study of formal-method-driven vulnerability discovery.

## Tags
#smart-contracts #ethereum #security #symbolic-execution #formal-semantics
