# KEVM

An executable formal semantics of the Ethereum Virtual Machine, written in the [[K Framework]] (Runtime Verification, Inc., 2017–). Unlike the Ethereum yellow paper (prose + informal pseudo-mathematics), KEVM is a machine-checkable specification: you can run a contract against KEVM and get the same result the semantics prescribes, byte-for-byte.

Its value is twofold. (1) **Reference semantics** — disputes about "what does this opcode do?" can be resolved by running KEVM, not by re-reading English prose. (2) **Verification target** — contracts can be proved correct *against KEVM* using the K framework's symbolic execution and theorem-proving tools, rather than against an ad-hoc test suite.

[[House on Rock - LangSec in Ethereum Classic]] holds up KEVM as the remediation [[Ethereum Classic]] should adopt: replace the yellow paper with an executable semantics and give verification tools a standard target.

## Tags
#ethereum #formal-semantics #verification #evm
