# Parity Multisig

Two infamous 2017 incidents involving the Parity Wallet multisig contract on [[Ethereum]]:

**July 2017 — the "hack"** (~$30M): a flaw in the wallet's `initWallet` function allowed any caller to re-initialise the contract and claim ownership, because `initWallet` had no access control and could be invoked after deployment via [[Delegatecall]].

**November 2017 — the "freeze"** (~$280M): a security researcher experimenting with the library contract used `initWallet` to take ownership of the *shared library*, then invoked `selfdestruct` on it. Every deployed wallet that delegated to that library was instantaneously bricked, freezing ~$280M of ETH across hundreds of multisig deployments.

Both incidents turn on the same confluence: [[Delegatecall]] as naked `eval`, missing access controls, and [[Solidity]]'s default method visibility. [[House on Rock - LangSec in Ethereum Classic]] cites them as emblematic of the language-design failures the [[LangSec]] approach is meant to prevent.

## Tags
#ethereum #smart-contracts #security-incident
