# Gas Mechanism

Ethereum's metering system: every EVM opcode has a fixed gas cost; a transaction's sender prepays gas, execution halts when the limit is reached, and miners collect the fees regardless. The stated purpose ([[Ethereum]] yellow paper) is to "sidestep the inevitable issues stemming from Turing completeness."

[[House on Rock - LangSec in Ethereum Classic]] argues this conflates a *resource bound* (non-semantic, decidable) with a *safety guarantee* (semantic, undecidable per [[Rice's Theorem]]). Gas can show that a contract eventually halts; it cannot show that it behaves correctly. Worse, the accounting is itself adversarial: attackers are rewarded for gas-griefing or out-of-gas-reverting, and honest authors face perverse pressure to remove runtime sanity checks ([[Perverse Incentives]]) because conditionals cost gas.

## Tags
#ethereum #smart-contracts #gas #langsec
